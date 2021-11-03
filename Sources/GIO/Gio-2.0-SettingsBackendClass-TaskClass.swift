import CGLib
import GLib
import GLibObject

/// Metatype/GType declaration for SettingsBackend
public extension SettingsBackendClassRef {
    
    /// This getter returns the GLib type identifier registered for `SettingsBackend`
    static var metatypeReference: GType { g_settings_backend_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GSettingsBackendClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GSettingsBackendClass.self) }
    
    static var metatype: GSettingsBackendClass? { metatypePointer?.pointee } 
    
    static var wrapper: SettingsBackendClassRef? { SettingsBackendClassRef(metatypePointer) }
    
    
}

// MARK: - SettingsBackendClass Record

/// Class structure for `GSettingsBackend`.
///
/// The `SettingsBackendClassProtocol` protocol exposes the methods and properties of an underlying `GSettingsBackendClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SettingsBackendClass`.
/// Alternatively, use `SettingsBackendClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol SettingsBackendClassProtocol {
        /// Untyped pointer to the underlying `GSettingsBackendClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSettingsBackendClass` instance.
    var _ptr: UnsafeMutablePointer<GSettingsBackendClass>! { get }

    /// Required Initialiser for types conforming to `SettingsBackendClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Class structure for `GSettingsBackend`.
///
/// The `SettingsBackendClassRef` type acts as a lightweight Swift reference to an underlying `GSettingsBackendClass` instance.
/// It exposes methods that can operate on this data type through `SettingsBackendClassProtocol` conformance.
/// Use `SettingsBackendClassRef` only as an `unowned` reference to an existing `GSettingsBackendClass` instance.
///
public struct SettingsBackendClassRef: SettingsBackendClassProtocol {
        /// Untyped pointer to the underlying `GSettingsBackendClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SettingsBackendClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSettingsBackendClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSettingsBackendClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSettingsBackendClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSettingsBackendClass>?) {
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

    /// Reference intialiser for a related type that implements `SettingsBackendClassProtocol`
    @inlinable init<T: SettingsBackendClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: SettingsBackendClass Record: SettingsBackendClassProtocol extension (methods and fields)
public extension SettingsBackendClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSettingsBackendClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GSettingsBackendClass>! { return ptr?.assumingMemoryBound(to: GSettingsBackendClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var read is unavailable because read is void

    // var getWritable is unavailable because get_writable is void

    // var write is unavailable because write is void

    // var writeTree is unavailable because write_tree is void

    // var reset is unavailable because reset is void

    // var subscribe is unavailable because subscribe is void

    // var unsubscribe is unavailable because unsubscribe is void

    // var sync is unavailable because sync is void

    // var getPermission is unavailable because get_permission is void

    // var readUserValue is unavailable because read_user_value is void

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for Settings
public extension SettingsClassRef {
    
    /// This getter returns the GLib type identifier registered for `Settings`
    static var metatypeReference: GType { g_settings_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GSettingsClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GSettingsClass.self) }
    
    static var metatype: GSettingsClass? { metatypePointer?.pointee } 
    
    static var wrapper: SettingsClassRef? { SettingsClassRef(metatypePointer) }
    
    
}

// MARK: - SettingsClass Record


///
/// The `SettingsClassProtocol` protocol exposes the methods and properties of an underlying `GSettingsClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SettingsClass`.
/// Alternatively, use `SettingsClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol SettingsClassProtocol {
        /// Untyped pointer to the underlying `GSettingsClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSettingsClass` instance.
    var _ptr: UnsafeMutablePointer<GSettingsClass>! { get }

    /// Required Initialiser for types conforming to `SettingsClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `SettingsClassRef` type acts as a lightweight Swift reference to an underlying `GSettingsClass` instance.
/// It exposes methods that can operate on this data type through `SettingsClassProtocol` conformance.
/// Use `SettingsClassRef` only as an `unowned` reference to an existing `GSettingsClass` instance.
///
public struct SettingsClassRef: SettingsClassProtocol {
        /// Untyped pointer to the underlying `GSettingsClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SettingsClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSettingsClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSettingsClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSettingsClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSettingsClass>?) {
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

    /// Reference intialiser for a related type that implements `SettingsClassProtocol`
    @inlinable init<T: SettingsClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: SettingsClass Record: SettingsClassProtocol extension (methods and fields)
public extension SettingsClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSettingsClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GSettingsClass>! { return ptr?.assumingMemoryBound(to: GSettingsClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var writableChanged is unavailable because writable_changed is void

    // var changed is unavailable because changed is void

    // var writableChangeEvent is unavailable because writable_change_event is void

    // var changeEvent is unavailable because change_event is void

    @inlinable var padding: (gpointer?, gpointer?, gpointer?, gpointer?, gpointer?, gpointer?, gpointer?, gpointer?, gpointer?, gpointer?, gpointer?, gpointer?, gpointer?, gpointer?, gpointer?, gpointer?, gpointer?, gpointer?, gpointer?, gpointer?) {
        get {
            let rv = _ptr.pointee.padding
            return rv
        }
    }

}



// MARK: - SettingsSchema Record

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
///
/// The `SettingsSchemaProtocol` protocol exposes the methods and properties of an underlying `GSettingsSchema` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SettingsSchema`.
/// Alternatively, use `SettingsSchemaRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol SettingsSchemaProtocol {
        /// Untyped pointer to the underlying `GSettingsSchema` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSettingsSchema` instance.
    var settings_schema_ptr: UnsafeMutablePointer<GSettingsSchema>! { get }

    /// Required Initialiser for types conforming to `SettingsSchemaProtocol`
    init(raw: UnsafeMutableRawPointer)
}

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
///
/// The `SettingsSchemaRef` type acts as a lightweight Swift reference to an underlying `GSettingsSchema` instance.
/// It exposes methods that can operate on this data type through `SettingsSchemaProtocol` conformance.
/// Use `SettingsSchemaRef` only as an `unowned` reference to an existing `GSettingsSchema` instance.
///
public struct SettingsSchemaRef: SettingsSchemaProtocol {
        /// Untyped pointer to the underlying `GSettingsSchema` instance.
    /// For type-safe access, use the generated, typed pointer `settings_schema_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SettingsSchemaRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSettingsSchema>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSettingsSchema>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSettingsSchema>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSettingsSchema>?) {
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

    /// Reference intialiser for a related type that implements `SettingsSchemaProtocol`
    @inlinable init<T: SettingsSchemaProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

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
///
/// The `SettingsSchema` type acts as a reference-counted owner of an underlying `GSettingsSchema` instance.
/// It provides the methods that can operate on this data type through `SettingsSchemaProtocol` conformance.
/// Use `SettingsSchema` as a strong reference or owner of a `GSettingsSchema` instance.
///
open class SettingsSchema: SettingsSchemaProtocol {
        /// Untyped pointer to the underlying `GSettingsSchema` instance.
    /// For type-safe access, use the generated, typed pointer `settings_schema_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SettingsSchema` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GSettingsSchema>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SettingsSchema` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GSettingsSchema>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SettingsSchema` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SettingsSchema` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SettingsSchema` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GSettingsSchema>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SettingsSchema` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GSettingsSchema>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GSettingsSchema`.
    /// i.e., ownership is transferred to the `SettingsSchema` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GSettingsSchema>) {
        ptr = UnsafeMutableRawPointer(op)
        g_settings_schema_ref(ptr.assumingMemoryBound(to: GSettingsSchema.self))
    }

    /// Reference intialiser for a related type that implements `SettingsSchemaProtocol`
    /// Will retain `GSettingsSchema`.
    /// - Parameter other: an instance of a related type that implements `SettingsSchemaProtocol`
    @inlinable public init<T: SettingsSchemaProtocol>(_ other: T) {
        ptr = other.ptr
        g_settings_schema_ref(ptr.assumingMemoryBound(to: GSettingsSchema.self))
    }

    /// Releases the underlying `GSettingsSchema` instance using `g_settings_schema_unref`.
    deinit {
        g_settings_schema_unref(ptr.assumingMemoryBound(to: GSettingsSchema.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_settings_schema_ref(ptr.assumingMemoryBound(to: GSettingsSchema.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_settings_schema_ref(ptr.assumingMemoryBound(to: GSettingsSchema.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_settings_schema_ref(ptr.assumingMemoryBound(to: GSettingsSchema.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_settings_schema_ref(ptr.assumingMemoryBound(to: GSettingsSchema.self))
    }



}

// MARK: no SettingsSchema properties

// MARK: no SettingsSchema signals

// MARK: SettingsSchema has no signals
// MARK: SettingsSchema Record: SettingsSchemaProtocol extension (methods and fields)
public extension SettingsSchemaProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSettingsSchema` instance.
    @inlinable var settings_schema_ptr: UnsafeMutablePointer<GSettingsSchema>! { return ptr?.assumingMemoryBound(to: GSettingsSchema.self) }

    /// Get the ID of `schema`.
    @inlinable func getID() -> String! {
        let rv = g_settings_schema_get_id(settings_schema_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the key named `name` from `schema`.
    /// 
    /// It is a programmer error to request a key that does not exist.  See
    /// `g_settings_schema_list_keys()`.
    @inlinable func getKey(name: UnsafePointer<gchar>!) -> SettingsSchemaKeyRef! {
        let rv = SettingsSchemaKeyRef(gconstpointer: gconstpointer(g_settings_schema_get_key(settings_schema_ptr, name)))
        return rv
    }

    /// Gets the path associated with `schema`, or `nil`.
    /// 
    /// Schemas may be single-instance or relocatable.  Single-instance
    /// schemas correspond to exactly one set of keys in the backend
    /// database: those located at the path returned by this function.
    /// 
    /// Relocatable schemas can be referenced by other schemas and can
    /// therefore describe multiple sets of keys at different locations.  For
    /// relocatable schemas, this function will return `nil`.
    @inlinable func getPath() -> String! {
        let rv = g_settings_schema_get_path(settings_schema_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Checks if `schema` has a key named `name`.
    @inlinable func hasKey(name: UnsafePointer<gchar>!) -> Bool {
        let rv = ((g_settings_schema_has_key(settings_schema_ptr, name)) != 0)
        return rv
    }

    /// Gets the list of children in `schema`.
    /// 
    /// You should free the return value with `g_strfreev()` when you are done
    /// with it.
    @inlinable func listChildren() -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        let rv = g_settings_schema_list_children(settings_schema_ptr)
        return rv
    }

    /// Introspects the list of keys on `schema`.
    /// 
    /// You should probably not be calling this function from "normal" code
    /// (since you should already know what keys are in your schema).  This
    /// function is intended for introspection reasons.
    @inlinable func listKeys() -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        let rv = g_settings_schema_list_keys(settings_schema_ptr)
        return rv
    }

    /// Increase the reference count of `schema`, returning a new reference.
    @discardableResult @inlinable func ref() -> SettingsSchemaRef! {
        guard let rv = SettingsSchemaRef(gconstpointer: gconstpointer(g_settings_schema_ref(settings_schema_ptr))) else { return nil }
        return rv
    }

    /// Decrease the reference count of `schema`, possibly freeing it.
    @inlinable func unref() {
        g_settings_schema_unref(settings_schema_ptr)
    
    }
    /// Get the ID of `schema`.
    @inlinable var id: String! {
        /// Get the ID of `schema`.
        get {
            let rv = g_settings_schema_get_id(settings_schema_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the path associated with `schema`, or `nil`.
    /// 
    /// Schemas may be single-instance or relocatable.  Single-instance
    /// schemas correspond to exactly one set of keys in the backend
    /// database: those located at the path returned by this function.
    /// 
    /// Relocatable schemas can be referenced by other schemas and can
    /// therefore describe multiple sets of keys at different locations.  For
    /// relocatable schemas, this function will return `nil`.
    @inlinable var path: String! {
        /// Gets the path associated with `schema`, or `nil`.
        /// 
        /// Schemas may be single-instance or relocatable.  Single-instance
        /// schemas correspond to exactly one set of keys in the backend
        /// database: those located at the path returned by this function.
        /// 
        /// Relocatable schemas can be referenced by other schemas and can
        /// therefore describe multiple sets of keys at different locations.  For
        /// relocatable schemas, this function will return `nil`.
        get {
            let rv = g_settings_schema_get_path(settings_schema_ptr).map({ String(cString: $0) })
            return rv
        }
    }


}



// MARK: - SettingsSchemaKey Record

/// `GSettingsSchemaKey` is an opaque data structure and can only be accessed
/// using the following functions.
///
/// The `SettingsSchemaKeyProtocol` protocol exposes the methods and properties of an underlying `GSettingsSchemaKey` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SettingsSchemaKey`.
/// Alternatively, use `SettingsSchemaKeyRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol SettingsSchemaKeyProtocol {
        /// Untyped pointer to the underlying `GSettingsSchemaKey` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSettingsSchemaKey` instance.
    var settings_schema_key_ptr: UnsafeMutablePointer<GSettingsSchemaKey>! { get }

    /// Required Initialiser for types conforming to `SettingsSchemaKeyProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GSettingsSchemaKey` is an opaque data structure and can only be accessed
/// using the following functions.
///
/// The `SettingsSchemaKeyRef` type acts as a lightweight Swift reference to an underlying `GSettingsSchemaKey` instance.
/// It exposes methods that can operate on this data type through `SettingsSchemaKeyProtocol` conformance.
/// Use `SettingsSchemaKeyRef` only as an `unowned` reference to an existing `GSettingsSchemaKey` instance.
///
public struct SettingsSchemaKeyRef: SettingsSchemaKeyProtocol {
        /// Untyped pointer to the underlying `GSettingsSchemaKey` instance.
    /// For type-safe access, use the generated, typed pointer `settings_schema_key_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SettingsSchemaKeyRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSettingsSchemaKey>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSettingsSchemaKey>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSettingsSchemaKey>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSettingsSchemaKey>?) {
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

    /// Reference intialiser for a related type that implements `SettingsSchemaKeyProtocol`
    @inlinable init<T: SettingsSchemaKeyProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaKeyProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaKeyProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaKeyProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaKeyProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaKeyProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// `GSettingsSchemaKey` is an opaque data structure and can only be accessed
/// using the following functions.
///
/// The `SettingsSchemaKey` type acts as a reference-counted owner of an underlying `GSettingsSchemaKey` instance.
/// It provides the methods that can operate on this data type through `SettingsSchemaKeyProtocol` conformance.
/// Use `SettingsSchemaKey` as a strong reference or owner of a `GSettingsSchemaKey` instance.
///
open class SettingsSchemaKey: SettingsSchemaKeyProtocol {
        /// Untyped pointer to the underlying `GSettingsSchemaKey` instance.
    /// For type-safe access, use the generated, typed pointer `settings_schema_key_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SettingsSchemaKey` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GSettingsSchemaKey>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SettingsSchemaKey` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GSettingsSchemaKey>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SettingsSchemaKey` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SettingsSchemaKey` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SettingsSchemaKey` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GSettingsSchemaKey>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SettingsSchemaKey` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GSettingsSchemaKey>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GSettingsSchemaKey`.
    /// i.e., ownership is transferred to the `SettingsSchemaKey` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GSettingsSchemaKey>) {
        ptr = UnsafeMutableRawPointer(op)
        g_settings_schema_key_ref(ptr.assumingMemoryBound(to: GSettingsSchemaKey.self))
    }

    /// Reference intialiser for a related type that implements `SettingsSchemaKeyProtocol`
    /// Will retain `GSettingsSchemaKey`.
    /// - Parameter other: an instance of a related type that implements `SettingsSchemaKeyProtocol`
    @inlinable public init<T: SettingsSchemaKeyProtocol>(_ other: T) {
        ptr = other.ptr
        g_settings_schema_key_ref(ptr.assumingMemoryBound(to: GSettingsSchemaKey.self))
    }

    /// Releases the underlying `GSettingsSchemaKey` instance using `g_settings_schema_key_unref`.
    deinit {
        g_settings_schema_key_unref(ptr.assumingMemoryBound(to: GSettingsSchemaKey.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaKeyProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaKeyProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_settings_schema_key_ref(ptr.assumingMemoryBound(to: GSettingsSchemaKey.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaKeyProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaKeyProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_settings_schema_key_ref(ptr.assumingMemoryBound(to: GSettingsSchemaKey.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaKeyProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaKeyProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_settings_schema_key_ref(ptr.assumingMemoryBound(to: GSettingsSchemaKey.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaKeyProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaKeyProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_settings_schema_key_ref(ptr.assumingMemoryBound(to: GSettingsSchemaKey.self))
    }



}

// MARK: no SettingsSchemaKey properties

// MARK: no SettingsSchemaKey signals

// MARK: SettingsSchemaKey has no signals
// MARK: SettingsSchemaKey Record: SettingsSchemaKeyProtocol extension (methods and fields)
public extension SettingsSchemaKeyProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSettingsSchemaKey` instance.
    @inlinable var settings_schema_key_ptr: UnsafeMutablePointer<GSettingsSchemaKey>! { return ptr?.assumingMemoryBound(to: GSettingsSchemaKey.self) }

    /// Gets the default value for `key`.
    /// 
    /// Note that this is the default value according to the schema.  System
    /// administrator defaults and lockdown are not visible via this API.
    @inlinable func getDefaultValue() -> GLib.VariantRef! {
        let rv = GLib.VariantRef(g_settings_schema_key_get_default_value(settings_schema_key_ptr))
        return rv
    }

    /// Gets the description for `key`.
    /// 
    /// If no description has been provided in the schema for `key`, returns
    /// `nil`.
    /// 
    /// The description can be one sentence to several paragraphs in length.
    /// Paragraphs are delimited with a double newline.  Descriptions can be
    /// translated and the value returned from this function is is the
    /// current locale.
    /// 
    /// This function is slow.  The summary and description information for
    /// the schemas is not stored in the compiled schema database so this
    /// function has to parse all of the source XML files in the schema
    /// directory.
    @inlinable func getDescription() -> String! {
        let rv = g_settings_schema_key_get_description(settings_schema_key_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the name of `key`.
    @inlinable func getName() -> String! {
        let rv = g_settings_schema_key_get_name(settings_schema_key_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Queries the range of a key.
    /// 
    /// This function will return a `GVariant` that fully describes the range
    /// of values that are valid for `key`.
    /// 
    /// The type of `GVariant` returned is `(sv)`. The string describes
    /// the type of range restriction in effect. The type and meaning of
    /// the value contained in the variant depends on the string.
    /// 
    /// If the string is `'type'` then the variant contains an empty array.
    /// The element type of that empty array is the expected type of value
    /// and all values of that type are valid.
    /// 
    /// If the string is `'enum'` then the variant contains an array
    /// enumerating the possible values. Each item in the array is
    /// a possible valid value and no other values are valid.
    /// 
    /// If the string is `'flags'` then the variant contains an array. Each
    /// item in the array is a value that may appear zero or one times in an
    /// array to be used as the value for this key. For example, if the
    /// variant contained the array `['x', 'y']` then the valid values for
    /// the key would be `[]`, `['x']`, `['y']`, `['x', 'y']` and
    /// `['y', 'x']`.
    /// 
    /// Finally, if the string is `'range'` then the variant contains a pair
    /// of like-typed values -- the minimum and maximum permissible values
    /// for this key.
    /// 
    /// This information should not be used by normal programs.  It is
    /// considered to be a hint for introspection purposes.  Normal programs
    /// should already know what is permitted by their own schema.  The
    /// format may change in any way in the future -- but particularly, new
    /// forms may be added to the possibilities described above.
    /// 
    /// You should free the returned value with `g_variant_unref()` when it is
    /// no longer needed.
    @inlinable func getRange() -> GLib.VariantRef! {
        let rv = GLib.VariantRef(g_settings_schema_key_get_range(settings_schema_key_ptr))
        return rv
    }

    /// Gets the summary for `key`.
    /// 
    /// If no summary has been provided in the schema for `key`, returns
    /// `nil`.
    /// 
    /// The summary is a short description of the purpose of the key; usually
    /// one short sentence.  Summaries can be translated and the value
    /// returned from this function is is the current locale.
    /// 
    /// This function is slow.  The summary and description information for
    /// the schemas is not stored in the compiled schema database so this
    /// function has to parse all of the source XML files in the schema
    /// directory.
    @inlinable func getSummary() -> String! {
        let rv = g_settings_schema_key_get_summary(settings_schema_key_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the `GVariantType` of `key`.
    @inlinable func getValueType() -> GLib.VariantTypeRef! {
        let rv = GLib.VariantTypeRef(g_settings_schema_key_get_value_type(settings_schema_key_ptr))
        return rv
    }

    /// Checks if the given `value` is within the
    /// permitted range for `key`.
    /// 
    /// It is a programmer error if `value` is not of the correct type — you
    /// must check for this first.
    @inlinable func rangeCheck<VariantT: GLib.VariantProtocol>(value: VariantT) -> Bool {
        let rv = ((g_settings_schema_key_range_check(settings_schema_key_ptr, value.variant_ptr)) != 0)
        return rv
    }

    /// Increase the reference count of `key`, returning a new reference.
    @discardableResult @inlinable func ref() -> SettingsSchemaKeyRef! {
        guard let rv = SettingsSchemaKeyRef(gconstpointer: gconstpointer(g_settings_schema_key_ref(settings_schema_key_ptr))) else { return nil }
        return rv
    }

    /// Decrease the reference count of `key`, possibly freeing it.
    @inlinable func unref() {
        g_settings_schema_key_unref(settings_schema_key_ptr)
    
    }
    /// Gets the default value for `key`.
    /// 
    /// Note that this is the default value according to the schema.  System
    /// administrator defaults and lockdown are not visible via this API.
    @inlinable var defaultValue: GLib.VariantRef! {
        /// Gets the default value for `key`.
        /// 
        /// Note that this is the default value according to the schema.  System
        /// administrator defaults and lockdown are not visible via this API.
        get {
            let rv = GLib.VariantRef(g_settings_schema_key_get_default_value(settings_schema_key_ptr))
            return rv
        }
    }

    /// Gets the description for `key`.
    /// 
    /// If no description has been provided in the schema for `key`, returns
    /// `nil`.
    /// 
    /// The description can be one sentence to several paragraphs in length.
    /// Paragraphs are delimited with a double newline.  Descriptions can be
    /// translated and the value returned from this function is is the
    /// current locale.
    /// 
    /// This function is slow.  The summary and description information for
    /// the schemas is not stored in the compiled schema database so this
    /// function has to parse all of the source XML files in the schema
    /// directory.
    @inlinable var description: String! {
        /// Gets the description for `key`.
        /// 
        /// If no description has been provided in the schema for `key`, returns
        /// `nil`.
        /// 
        /// The description can be one sentence to several paragraphs in length.
        /// Paragraphs are delimited with a double newline.  Descriptions can be
        /// translated and the value returned from this function is is the
        /// current locale.
        /// 
        /// This function is slow.  The summary and description information for
        /// the schemas is not stored in the compiled schema database so this
        /// function has to parse all of the source XML files in the schema
        /// directory.
        get {
            let rv = g_settings_schema_key_get_description(settings_schema_key_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the name of `key`.
    @inlinable var name: String! {
        /// Gets the name of `key`.
        get {
            let rv = g_settings_schema_key_get_name(settings_schema_key_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Queries the range of a key.
    /// 
    /// This function will return a `GVariant` that fully describes the range
    /// of values that are valid for `key`.
    /// 
    /// The type of `GVariant` returned is `(sv)`. The string describes
    /// the type of range restriction in effect. The type and meaning of
    /// the value contained in the variant depends on the string.
    /// 
    /// If the string is `'type'` then the variant contains an empty array.
    /// The element type of that empty array is the expected type of value
    /// and all values of that type are valid.
    /// 
    /// If the string is `'enum'` then the variant contains an array
    /// enumerating the possible values. Each item in the array is
    /// a possible valid value and no other values are valid.
    /// 
    /// If the string is `'flags'` then the variant contains an array. Each
    /// item in the array is a value that may appear zero or one times in an
    /// array to be used as the value for this key. For example, if the
    /// variant contained the array `['x', 'y']` then the valid values for
    /// the key would be `[]`, `['x']`, `['y']`, `['x', 'y']` and
    /// `['y', 'x']`.
    /// 
    /// Finally, if the string is `'range'` then the variant contains a pair
    /// of like-typed values -- the minimum and maximum permissible values
    /// for this key.
    /// 
    /// This information should not be used by normal programs.  It is
    /// considered to be a hint for introspection purposes.  Normal programs
    /// should already know what is permitted by their own schema.  The
    /// format may change in any way in the future -- but particularly, new
    /// forms may be added to the possibilities described above.
    /// 
    /// You should free the returned value with `g_variant_unref()` when it is
    /// no longer needed.
    @inlinable var range: GLib.VariantRef! {
        /// Queries the range of a key.
        /// 
        /// This function will return a `GVariant` that fully describes the range
        /// of values that are valid for `key`.
        /// 
        /// The type of `GVariant` returned is `(sv)`. The string describes
        /// the type of range restriction in effect. The type and meaning of
        /// the value contained in the variant depends on the string.
        /// 
        /// If the string is `'type'` then the variant contains an empty array.
        /// The element type of that empty array is the expected type of value
        /// and all values of that type are valid.
        /// 
        /// If the string is `'enum'` then the variant contains an array
        /// enumerating the possible values. Each item in the array is
        /// a possible valid value and no other values are valid.
        /// 
        /// If the string is `'flags'` then the variant contains an array. Each
        /// item in the array is a value that may appear zero or one times in an
        /// array to be used as the value for this key. For example, if the
        /// variant contained the array `['x', 'y']` then the valid values for
        /// the key would be `[]`, `['x']`, `['y']`, `['x', 'y']` and
        /// `['y', 'x']`.
        /// 
        /// Finally, if the string is `'range'` then the variant contains a pair
        /// of like-typed values -- the minimum and maximum permissible values
        /// for this key.
        /// 
        /// This information should not be used by normal programs.  It is
        /// considered to be a hint for introspection purposes.  Normal programs
        /// should already know what is permitted by their own schema.  The
        /// format may change in any way in the future -- but particularly, new
        /// forms may be added to the possibilities described above.
        /// 
        /// You should free the returned value with `g_variant_unref()` when it is
        /// no longer needed.
        get {
            let rv = GLib.VariantRef(g_settings_schema_key_get_range(settings_schema_key_ptr))
            return rv
        }
    }

    /// Gets the summary for `key`.
    /// 
    /// If no summary has been provided in the schema for `key`, returns
    /// `nil`.
    /// 
    /// The summary is a short description of the purpose of the key; usually
    /// one short sentence.  Summaries can be translated and the value
    /// returned from this function is is the current locale.
    /// 
    /// This function is slow.  The summary and description information for
    /// the schemas is not stored in the compiled schema database so this
    /// function has to parse all of the source XML files in the schema
    /// directory.
    @inlinable var summary: String! {
        /// Gets the summary for `key`.
        /// 
        /// If no summary has been provided in the schema for `key`, returns
        /// `nil`.
        /// 
        /// The summary is a short description of the purpose of the key; usually
        /// one short sentence.  Summaries can be translated and the value
        /// returned from this function is is the current locale.
        /// 
        /// This function is slow.  The summary and description information for
        /// the schemas is not stored in the compiled schema database so this
        /// function has to parse all of the source XML files in the schema
        /// directory.
        get {
            let rv = g_settings_schema_key_get_summary(settings_schema_key_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the `GVariantType` of `key`.
    @inlinable var valueType: GLib.VariantTypeRef! {
        /// Gets the `GVariantType` of `key`.
        get {
            let rv = GLib.VariantTypeRef(g_settings_schema_key_get_value_type(settings_schema_key_ptr))
            return rv
        }
    }


}



// MARK: - SettingsSchemaSource Record

/// This is an opaque structure type.  You may not access it directly.
///
/// The `SettingsSchemaSourceProtocol` protocol exposes the methods and properties of an underlying `GSettingsSchemaSource` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SettingsSchemaSource`.
/// Alternatively, use `SettingsSchemaSourceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol SettingsSchemaSourceProtocol {
        /// Untyped pointer to the underlying `GSettingsSchemaSource` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSettingsSchemaSource` instance.
    var settings_schema_source_ptr: UnsafeMutablePointer<GSettingsSchemaSource>! { get }

    /// Required Initialiser for types conforming to `SettingsSchemaSourceProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// This is an opaque structure type.  You may not access it directly.
///
/// The `SettingsSchemaSourceRef` type acts as a lightweight Swift reference to an underlying `GSettingsSchemaSource` instance.
/// It exposes methods that can operate on this data type through `SettingsSchemaSourceProtocol` conformance.
/// Use `SettingsSchemaSourceRef` only as an `unowned` reference to an existing `GSettingsSchemaSource` instance.
///
public struct SettingsSchemaSourceRef: SettingsSchemaSourceProtocol {
        /// Untyped pointer to the underlying `GSettingsSchemaSource` instance.
    /// For type-safe access, use the generated, typed pointer `settings_schema_source_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SettingsSchemaSourceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSettingsSchemaSource>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSettingsSchemaSource>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSettingsSchemaSource>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSettingsSchemaSource>?) {
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

    /// Reference intialiser for a related type that implements `SettingsSchemaSourceProtocol`
    @inlinable init<T: SettingsSchemaSourceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaSourceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaSourceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaSourceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaSourceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaSourceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Attempts to create a new schema source corresponding to the contents
    /// of the given directory.
    /// 
    /// This function is not required for normal uses of `GSettings` but it
    /// may be useful to authors of plugin management systems.
    /// 
    /// The directory should contain a file called `gschemas.compiled` as
    /// produced by the [glib-compile-schemas](#glib-compile-schemas) tool.
    /// 
    /// If `trusted` is `true` then `gschemas.compiled` is trusted not to be
    /// corrupted. This assumption has a performance advantage, but can result
    /// in crashes or inconsistent behaviour in the case of a corrupted file.
    /// Generally, you should set `trusted` to `true` for files installed by the
    /// system and to `false` for files in the home directory.
    /// 
    /// In either case, an empty file or some types of corruption in the file will
    /// result in `G_FILE_ERROR_INVAL` being returned.
    /// 
    /// If `parent` is non-`nil` then there are two effects.
    /// 
    /// First, if `g_settings_schema_source_lookup()` is called with the
    /// `recursive` flag set to `true` and the schema can not be found in the
    /// source, the lookup will recurse to the parent.
    /// 
    /// Second, any references to other schemas specified within this
    /// source (ie: `child` or `extends`) references may be resolved
    /// from the `parent`.
    /// 
    /// For this second reason, except in very unusual situations, the
    /// `parent` should probably be given as the default schema source, as
    /// returned by `g_settings_schema_source_get_default()`.
    @inlinable init<SettingsSchemaSourceT: SettingsSchemaSourceProtocol>(directory: UnsafePointer<gchar>!, parent: SettingsSchemaSourceT?, trusted: Bool) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_settings_schema_source_new_from_directory(directory, parent?.settings_schema_source_ptr, gboolean((trusted) ? 1 : 0), &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Attempts to create a new schema source corresponding to the contents
    /// of the given directory.
    /// 
    /// This function is not required for normal uses of `GSettings` but it
    /// may be useful to authors of plugin management systems.
    /// 
    /// The directory should contain a file called `gschemas.compiled` as
    /// produced by the [glib-compile-schemas](#glib-compile-schemas) tool.
    /// 
    /// If `trusted` is `true` then `gschemas.compiled` is trusted not to be
    /// corrupted. This assumption has a performance advantage, but can result
    /// in crashes or inconsistent behaviour in the case of a corrupted file.
    /// Generally, you should set `trusted` to `true` for files installed by the
    /// system and to `false` for files in the home directory.
    /// 
    /// In either case, an empty file or some types of corruption in the file will
    /// result in `G_FILE_ERROR_INVAL` being returned.
    /// 
    /// If `parent` is non-`nil` then there are two effects.
    /// 
    /// First, if `g_settings_schema_source_lookup()` is called with the
    /// `recursive` flag set to `true` and the schema can not be found in the
    /// source, the lookup will recurse to the parent.
    /// 
    /// Second, any references to other schemas specified within this
    /// source (ie: `child` or `extends`) references may be resolved
    /// from the `parent`.
    /// 
    /// For this second reason, except in very unusual situations, the
    /// `parent` should probably be given as the default schema source, as
    /// returned by `g_settings_schema_source_get_default()`.
    @inlinable static func newFrom<SettingsSchemaSourceT: SettingsSchemaSourceProtocol>(directory: UnsafePointer<gchar>!, parent: SettingsSchemaSourceT?, trusted: Bool) throws -> SettingsSchemaSourceRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = SettingsSchemaSourceRef(gconstpointer: gconstpointer(g_settings_schema_source_new_from_directory(directory, parent?.settings_schema_source_ptr, gboolean((trusted) ? 1 : 0), &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
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
    @inlinable static func getDefault() -> SettingsSchemaSourceRef! {
        guard let rv = SettingsSchemaSourceRef(gconstpointer: gconstpointer(g_settings_schema_source_get_default())) else { return nil }
        return rv
    }
}

/// This is an opaque structure type.  You may not access it directly.
///
/// The `SettingsSchemaSource` type acts as a reference-counted owner of an underlying `GSettingsSchemaSource` instance.
/// It provides the methods that can operate on this data type through `SettingsSchemaSourceProtocol` conformance.
/// Use `SettingsSchemaSource` as a strong reference or owner of a `GSettingsSchemaSource` instance.
///
open class SettingsSchemaSource: SettingsSchemaSourceProtocol {
        /// Untyped pointer to the underlying `GSettingsSchemaSource` instance.
    /// For type-safe access, use the generated, typed pointer `settings_schema_source_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SettingsSchemaSource` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GSettingsSchemaSource>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SettingsSchemaSource` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GSettingsSchemaSource>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SettingsSchemaSource` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SettingsSchemaSource` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SettingsSchemaSource` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GSettingsSchemaSource>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SettingsSchemaSource` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GSettingsSchemaSource>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GSettingsSchemaSource`.
    /// i.e., ownership is transferred to the `SettingsSchemaSource` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GSettingsSchemaSource>) {
        ptr = UnsafeMutableRawPointer(op)
        g_settings_schema_source_ref(ptr.assumingMemoryBound(to: GSettingsSchemaSource.self))
    }

    /// Reference intialiser for a related type that implements `SettingsSchemaSourceProtocol`
    /// Will retain `GSettingsSchemaSource`.
    /// - Parameter other: an instance of a related type that implements `SettingsSchemaSourceProtocol`
    @inlinable public init<T: SettingsSchemaSourceProtocol>(_ other: T) {
        ptr = other.ptr
        g_settings_schema_source_ref(ptr.assumingMemoryBound(to: GSettingsSchemaSource.self))
    }

    /// Releases the underlying `GSettingsSchemaSource` instance using `g_settings_schema_source_unref`.
    deinit {
        g_settings_schema_source_unref(ptr.assumingMemoryBound(to: GSettingsSchemaSource.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaSourceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaSourceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_settings_schema_source_ref(ptr.assumingMemoryBound(to: GSettingsSchemaSource.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaSourceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaSourceProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_settings_schema_source_ref(ptr.assumingMemoryBound(to: GSettingsSchemaSource.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaSourceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaSourceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_settings_schema_source_ref(ptr.assumingMemoryBound(to: GSettingsSchemaSource.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaSourceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaSourceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_settings_schema_source_ref(ptr.assumingMemoryBound(to: GSettingsSchemaSource.self))
    }

    /// Attempts to create a new schema source corresponding to the contents
    /// of the given directory.
    /// 
    /// This function is not required for normal uses of `GSettings` but it
    /// may be useful to authors of plugin management systems.
    /// 
    /// The directory should contain a file called `gschemas.compiled` as
    /// produced by the [glib-compile-schemas](#glib-compile-schemas) tool.
    /// 
    /// If `trusted` is `true` then `gschemas.compiled` is trusted not to be
    /// corrupted. This assumption has a performance advantage, but can result
    /// in crashes or inconsistent behaviour in the case of a corrupted file.
    /// Generally, you should set `trusted` to `true` for files installed by the
    /// system and to `false` for files in the home directory.
    /// 
    /// In either case, an empty file or some types of corruption in the file will
    /// result in `G_FILE_ERROR_INVAL` being returned.
    /// 
    /// If `parent` is non-`nil` then there are two effects.
    /// 
    /// First, if `g_settings_schema_source_lookup()` is called with the
    /// `recursive` flag set to `true` and the schema can not be found in the
    /// source, the lookup will recurse to the parent.
    /// 
    /// Second, any references to other schemas specified within this
    /// source (ie: `child` or `extends`) references may be resolved
    /// from the `parent`.
    /// 
    /// For this second reason, except in very unusual situations, the
    /// `parent` should probably be given as the default schema source, as
    /// returned by `g_settings_schema_source_get_default()`.
    @inlinable public init<SettingsSchemaSourceT: SettingsSchemaSourceProtocol>(directory: UnsafePointer<gchar>!, parent: SettingsSchemaSourceT?, trusted: Bool) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_settings_schema_source_new_from_directory(directory, parent?.settings_schema_source_ptr, gboolean((trusted) ? 1 : 0), &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Attempts to create a new schema source corresponding to the contents
    /// of the given directory.
    /// 
    /// This function is not required for normal uses of `GSettings` but it
    /// may be useful to authors of plugin management systems.
    /// 
    /// The directory should contain a file called `gschemas.compiled` as
    /// produced by the [glib-compile-schemas](#glib-compile-schemas) tool.
    /// 
    /// If `trusted` is `true` then `gschemas.compiled` is trusted not to be
    /// corrupted. This assumption has a performance advantage, but can result
    /// in crashes or inconsistent behaviour in the case of a corrupted file.
    /// Generally, you should set `trusted` to `true` for files installed by the
    /// system and to `false` for files in the home directory.
    /// 
    /// In either case, an empty file or some types of corruption in the file will
    /// result in `G_FILE_ERROR_INVAL` being returned.
    /// 
    /// If `parent` is non-`nil` then there are two effects.
    /// 
    /// First, if `g_settings_schema_source_lookup()` is called with the
    /// `recursive` flag set to `true` and the schema can not be found in the
    /// source, the lookup will recurse to the parent.
    /// 
    /// Second, any references to other schemas specified within this
    /// source (ie: `child` or `extends`) references may be resolved
    /// from the `parent`.
    /// 
    /// For this second reason, except in very unusual situations, the
    /// `parent` should probably be given as the default schema source, as
    /// returned by `g_settings_schema_source_get_default()`.
    @inlinable public static func newFrom<SettingsSchemaSourceT: SettingsSchemaSourceProtocol>(directory: UnsafePointer<gchar>!, parent: SettingsSchemaSourceT?, trusted: Bool) throws -> SettingsSchemaSource! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = SettingsSchemaSource(gconstpointer: gconstpointer(g_settings_schema_source_new_from_directory(directory, parent?.settings_schema_source_ptr, gboolean((trusted) ? 1 : 0), &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
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
    @inlinable public static func getDefault() -> SettingsSchemaSource! {
        guard let rv = SettingsSchemaSource(gconstpointer: gconstpointer(g_settings_schema_source_get_default())) else { return nil }
        return rv
    }

}

// MARK: no SettingsSchemaSource properties

// MARK: no SettingsSchemaSource signals

// MARK: SettingsSchemaSource has no signals
// MARK: SettingsSchemaSource Record: SettingsSchemaSourceProtocol extension (methods and fields)
public extension SettingsSchemaSourceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSettingsSchemaSource` instance.
    @inlinable var settings_schema_source_ptr: UnsafeMutablePointer<GSettingsSchemaSource>! { return ptr?.assumingMemoryBound(to: GSettingsSchemaSource.self) }

    /// Lists the schemas in a given source.
    /// 
    /// If `recursive` is `true` then include parent sources.  If `false` then
    /// only include the schemas from one source (ie: one directory).  You
    /// probably want `true`.
    /// 
    /// Non-relocatable schemas are those for which you can call
    /// `g_settings_new()`.  Relocatable schemas are those for which you must
    /// use `g_settings_new_with_path()`.
    /// 
    /// Do not call this function from normal programs.  This is designed for
    /// use by database editors, commandline tools, etc.
    @inlinable func listSchemas(recursive: Bool, nonRelocatable: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>?>!, relocatable: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>?>!) {
        g_settings_schema_source_list_schemas(settings_schema_source_ptr, gboolean((recursive) ? 1 : 0), nonRelocatable, relocatable)
    
    }

    /// Looks up a schema with the identifier `schema_id` in `source`.
    /// 
    /// This function is not required for normal uses of `GSettings` but it
    /// may be useful to authors of plugin management systems or to those who
    /// want to introspect the content of schemas.
    /// 
    /// If the schema isn't found directly in `source` and `recursive` is `true`
    /// then the parent sources will also be checked.
    /// 
    /// If the schema isn't found, `nil` is returned.
    @inlinable func lookup(schemaID: UnsafePointer<gchar>!, recursive: Bool) -> SettingsSchemaRef! {
        let rv = SettingsSchemaRef(gconstpointer: gconstpointer(g_settings_schema_source_lookup(settings_schema_source_ptr, schemaID, gboolean((recursive) ? 1 : 0))))
        return rv
    }

    /// Increase the reference count of `source`, returning a new reference.
    @discardableResult @inlinable func ref() -> SettingsSchemaSourceRef! {
        guard let rv = SettingsSchemaSourceRef(gconstpointer: gconstpointer(g_settings_schema_source_ref(settings_schema_source_ptr))) else { return nil }
        return rv
    }

    /// Decrease the reference count of `source`, possibly freeing it.
    @inlinable func unref() {
        g_settings_schema_source_unref(settings_schema_source_ptr)
    
    }


}



/// Metatype/GType declaration for SimpleActionGroup
public extension SimpleActionGroupClassRef {
    
    /// This getter returns the GLib type identifier registered for `SimpleActionGroup`
    static var metatypeReference: GType { g_simple_action_group_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GSimpleActionGroupClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GSimpleActionGroupClass.self) }
    
    static var metatype: GSimpleActionGroupClass? { metatypePointer?.pointee } 
    
    static var wrapper: SimpleActionGroupClassRef? { SimpleActionGroupClassRef(metatypePointer) }
    
    
}

// MARK: - SimpleActionGroupClass Record


///
/// The `SimpleActionGroupClassProtocol` protocol exposes the methods and properties of an underlying `GSimpleActionGroupClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SimpleActionGroupClass`.
/// Alternatively, use `SimpleActionGroupClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol SimpleActionGroupClassProtocol {
        /// Untyped pointer to the underlying `GSimpleActionGroupClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSimpleActionGroupClass` instance.
    var _ptr: UnsafeMutablePointer<GSimpleActionGroupClass>! { get }

    /// Required Initialiser for types conforming to `SimpleActionGroupClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `SimpleActionGroupClassRef` type acts as a lightweight Swift reference to an underlying `GSimpleActionGroupClass` instance.
/// It exposes methods that can operate on this data type through `SimpleActionGroupClassProtocol` conformance.
/// Use `SimpleActionGroupClassRef` only as an `unowned` reference to an existing `GSimpleActionGroupClass` instance.
///
public struct SimpleActionGroupClassRef: SimpleActionGroupClassProtocol {
        /// Untyped pointer to the underlying `GSimpleActionGroupClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SimpleActionGroupClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSimpleActionGroupClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSimpleActionGroupClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSimpleActionGroupClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSimpleActionGroupClass>?) {
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

    /// Reference intialiser for a related type that implements `SimpleActionGroupClassProtocol`
    @inlinable init<T: SimpleActionGroupClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: SimpleActionGroupClass Record: SimpleActionGroupClassProtocol extension (methods and fields)
public extension SimpleActionGroupClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSimpleActionGroupClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GSimpleActionGroupClass>! { return ptr?.assumingMemoryBound(to: GSimpleActionGroupClass.self) }


    // var parentClass is unavailable because parent_class is private

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for SimpleAsyncResult
public extension SimpleAsyncResultClassRef {
    
    /// This getter returns the GLib type identifier registered for `SimpleAsyncResult`
    static var metatypeReference: GType { g_simple_async_result_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GSimpleAsyncResultClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GSimpleAsyncResultClass.self) }
    
    static var metatype: GSimpleAsyncResultClass? { metatypePointer?.pointee } 
    
    static var wrapper: SimpleAsyncResultClassRef? { SimpleAsyncResultClassRef(metatypePointer) }
    
    
}

// MARK: - SimpleAsyncResultClass Record


///
/// The `SimpleAsyncResultClassProtocol` protocol exposes the methods and properties of an underlying `GSimpleAsyncResultClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SimpleAsyncResultClass`.
/// Alternatively, use `SimpleAsyncResultClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol SimpleAsyncResultClassProtocol {
        /// Untyped pointer to the underlying `GSimpleAsyncResultClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSimpleAsyncResultClass` instance.
    var _ptr: UnsafeMutablePointer<GSimpleAsyncResultClass>! { get }

    /// Required Initialiser for types conforming to `SimpleAsyncResultClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `SimpleAsyncResultClassRef` type acts as a lightweight Swift reference to an underlying `GSimpleAsyncResultClass` instance.
/// It exposes methods that can operate on this data type through `SimpleAsyncResultClassProtocol` conformance.
/// Use `SimpleAsyncResultClassRef` only as an `unowned` reference to an existing `GSimpleAsyncResultClass` instance.
///
public struct SimpleAsyncResultClassRef: SimpleAsyncResultClassProtocol {
        /// Untyped pointer to the underlying `GSimpleAsyncResultClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SimpleAsyncResultClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSimpleAsyncResultClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSimpleAsyncResultClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSimpleAsyncResultClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSimpleAsyncResultClass>?) {
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

    /// Reference intialiser for a related type that implements `SimpleAsyncResultClassProtocol`
    @inlinable init<T: SimpleAsyncResultClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleAsyncResultClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleAsyncResultClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleAsyncResultClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleAsyncResultClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleAsyncResultClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: SimpleAsyncResultClass Record: SimpleAsyncResultClassProtocol extension (methods and fields)
public extension SimpleAsyncResultClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSimpleAsyncResultClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GSimpleAsyncResultClass>! { return ptr?.assumingMemoryBound(to: GSimpleAsyncResultClass.self) }



}



/// Metatype/GType declaration for SimpleProxyResolver
public extension SimpleProxyResolverClassRef {
    
    /// This getter returns the GLib type identifier registered for `SimpleProxyResolver`
    static var metatypeReference: GType { g_simple_proxy_resolver_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GSimpleProxyResolverClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GSimpleProxyResolverClass.self) }
    
    static var metatype: GSimpleProxyResolverClass? { metatypePointer?.pointee } 
    
    static var wrapper: SimpleProxyResolverClassRef? { SimpleProxyResolverClassRef(metatypePointer) }
    
    
}

// MARK: - SimpleProxyResolverClass Record


///
/// The `SimpleProxyResolverClassProtocol` protocol exposes the methods and properties of an underlying `GSimpleProxyResolverClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SimpleProxyResolverClass`.
/// Alternatively, use `SimpleProxyResolverClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol SimpleProxyResolverClassProtocol {
        /// Untyped pointer to the underlying `GSimpleProxyResolverClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSimpleProxyResolverClass` instance.
    var _ptr: UnsafeMutablePointer<GSimpleProxyResolverClass>! { get }

    /// Required Initialiser for types conforming to `SimpleProxyResolverClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `SimpleProxyResolverClassRef` type acts as a lightweight Swift reference to an underlying `GSimpleProxyResolverClass` instance.
/// It exposes methods that can operate on this data type through `SimpleProxyResolverClassProtocol` conformance.
/// Use `SimpleProxyResolverClassRef` only as an `unowned` reference to an existing `GSimpleProxyResolverClass` instance.
///
public struct SimpleProxyResolverClassRef: SimpleProxyResolverClassProtocol {
        /// Untyped pointer to the underlying `GSimpleProxyResolverClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SimpleProxyResolverClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSimpleProxyResolverClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSimpleProxyResolverClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSimpleProxyResolverClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSimpleProxyResolverClass>?) {
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

    /// Reference intialiser for a related type that implements `SimpleProxyResolverClassProtocol`
    @inlinable init<T: SimpleProxyResolverClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: SimpleProxyResolverClass Record: SimpleProxyResolverClassProtocol extension (methods and fields)
public extension SimpleProxyResolverClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSimpleProxyResolverClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GSimpleProxyResolverClass>! { return ptr?.assumingMemoryBound(to: GSimpleProxyResolverClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var GReserved1 is unavailable because _g_reserved1 is void

    // var GReserved2 is unavailable because _g_reserved2 is void

    // var GReserved3 is unavailable because _g_reserved3 is void

    // var GReserved4 is unavailable because _g_reserved4 is void

    // var GReserved5 is unavailable because _g_reserved5 is void

}



/// Metatype/GType declaration for SocketAddress
public extension SocketAddressClassRef {
    
    /// This getter returns the GLib type identifier registered for `SocketAddress`
    static var metatypeReference: GType { g_socket_address_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GSocketAddressClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GSocketAddressClass.self) }
    
    static var metatype: GSocketAddressClass? { metatypePointer?.pointee } 
    
    static var wrapper: SocketAddressClassRef? { SocketAddressClassRef(metatypePointer) }
    
    
}

// MARK: - SocketAddressClass Record


///
/// The `SocketAddressClassProtocol` protocol exposes the methods and properties of an underlying `GSocketAddressClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SocketAddressClass`.
/// Alternatively, use `SocketAddressClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol SocketAddressClassProtocol {
        /// Untyped pointer to the underlying `GSocketAddressClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSocketAddressClass` instance.
    var _ptr: UnsafeMutablePointer<GSocketAddressClass>! { get }

    /// Required Initialiser for types conforming to `SocketAddressClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `SocketAddressClassRef` type acts as a lightweight Swift reference to an underlying `GSocketAddressClass` instance.
/// It exposes methods that can operate on this data type through `SocketAddressClassProtocol` conformance.
/// Use `SocketAddressClassRef` only as an `unowned` reference to an existing `GSocketAddressClass` instance.
///
public struct SocketAddressClassRef: SocketAddressClassProtocol {
        /// Untyped pointer to the underlying `GSocketAddressClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SocketAddressClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSocketAddressClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSocketAddressClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSocketAddressClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSocketAddressClass>?) {
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

    /// Reference intialiser for a related type that implements `SocketAddressClassProtocol`
    @inlinable init<T: SocketAddressClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: SocketAddressClass Record: SocketAddressClassProtocol extension (methods and fields)
public extension SocketAddressClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSocketAddressClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GSocketAddressClass>! { return ptr?.assumingMemoryBound(to: GSocketAddressClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var getFamily is unavailable because get_family is void

    // var getNativeSize is unavailable because get_native_size is void

    // var toNative is unavailable because to_native is void

}



/// Metatype/GType declaration for SocketAddressEnumerator
public extension SocketAddressEnumeratorClassRef {
    
    /// This getter returns the GLib type identifier registered for `SocketAddressEnumerator`
    static var metatypeReference: GType { g_socket_address_enumerator_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GSocketAddressEnumeratorClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GSocketAddressEnumeratorClass.self) }
    
    static var metatype: GSocketAddressEnumeratorClass? { metatypePointer?.pointee } 
    
    static var wrapper: SocketAddressEnumeratorClassRef? { SocketAddressEnumeratorClassRef(metatypePointer) }
    
    
}

// MARK: - SocketAddressEnumeratorClass Record

/// Class structure for `GSocketAddressEnumerator`.
///
/// The `SocketAddressEnumeratorClassProtocol` protocol exposes the methods and properties of an underlying `GSocketAddressEnumeratorClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SocketAddressEnumeratorClass`.
/// Alternatively, use `SocketAddressEnumeratorClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol SocketAddressEnumeratorClassProtocol {
        /// Untyped pointer to the underlying `GSocketAddressEnumeratorClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSocketAddressEnumeratorClass` instance.
    var _ptr: UnsafeMutablePointer<GSocketAddressEnumeratorClass>! { get }

    /// Required Initialiser for types conforming to `SocketAddressEnumeratorClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Class structure for `GSocketAddressEnumerator`.
///
/// The `SocketAddressEnumeratorClassRef` type acts as a lightweight Swift reference to an underlying `GSocketAddressEnumeratorClass` instance.
/// It exposes methods that can operate on this data type through `SocketAddressEnumeratorClassProtocol` conformance.
/// Use `SocketAddressEnumeratorClassRef` only as an `unowned` reference to an existing `GSocketAddressEnumeratorClass` instance.
///
public struct SocketAddressEnumeratorClassRef: SocketAddressEnumeratorClassProtocol {
        /// Untyped pointer to the underlying `GSocketAddressEnumeratorClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SocketAddressEnumeratorClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSocketAddressEnumeratorClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSocketAddressEnumeratorClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSocketAddressEnumeratorClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSocketAddressEnumeratorClass>?) {
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

    /// Reference intialiser for a related type that implements `SocketAddressEnumeratorClassProtocol`
    @inlinable init<T: SocketAddressEnumeratorClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressEnumeratorClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressEnumeratorClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressEnumeratorClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressEnumeratorClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressEnumeratorClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: SocketAddressEnumeratorClass Record: SocketAddressEnumeratorClassProtocol extension (methods and fields)
public extension SocketAddressEnumeratorClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSocketAddressEnumeratorClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GSocketAddressEnumeratorClass>! { return ptr?.assumingMemoryBound(to: GSocketAddressEnumeratorClass.self) }


    // var parentClass is unavailable because parent_class is private

    // var next is unavailable because next is void

    // var nextAsync is unavailable because next_async is void

    // var nextFinish is unavailable because next_finish is void

}



/// Metatype/GType declaration for Socket
public extension SocketClassRef {
    
    /// This getter returns the GLib type identifier registered for `Socket`
    static var metatypeReference: GType { g_socket_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GSocketClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GSocketClass.self) }
    
    static var metatype: GSocketClass? { metatypePointer?.pointee } 
    
    static var wrapper: SocketClassRef? { SocketClassRef(metatypePointer) }
    
    
}

// MARK: - SocketClass Record


///
/// The `SocketClassProtocol` protocol exposes the methods and properties of an underlying `GSocketClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SocketClass`.
/// Alternatively, use `SocketClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol SocketClassProtocol {
        /// Untyped pointer to the underlying `GSocketClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSocketClass` instance.
    var _ptr: UnsafeMutablePointer<GSocketClass>! { get }

    /// Required Initialiser for types conforming to `SocketClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `SocketClassRef` type acts as a lightweight Swift reference to an underlying `GSocketClass` instance.
/// It exposes methods that can operate on this data type through `SocketClassProtocol` conformance.
/// Use `SocketClassRef` only as an `unowned` reference to an existing `GSocketClass` instance.
///
public struct SocketClassRef: SocketClassProtocol {
        /// Untyped pointer to the underlying `GSocketClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SocketClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSocketClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSocketClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSocketClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSocketClass>?) {
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

    /// Reference intialiser for a related type that implements `SocketClassProtocol`
    @inlinable init<T: SocketClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: SocketClass Record: SocketClassProtocol extension (methods and fields)
public extension SocketClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSocketClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GSocketClass>! { return ptr?.assumingMemoryBound(to: GSocketClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var GReserved1 is unavailable because _g_reserved1 is void

    // var GReserved2 is unavailable because _g_reserved2 is void

    // var GReserved3 is unavailable because _g_reserved3 is void

    // var GReserved4 is unavailable because _g_reserved4 is void

    // var GReserved5 is unavailable because _g_reserved5 is void

    // var GReserved6 is unavailable because _g_reserved6 is void

    // var GReserved7 is unavailable because _g_reserved7 is void

    // var GReserved8 is unavailable because _g_reserved8 is void

    // var GReserved9 is unavailable because _g_reserved9 is void

    // var GReserved10 is unavailable because _g_reserved10 is void

}



/// Metatype/GType declaration for SocketClient
public extension SocketClientClassRef {
    
    /// This getter returns the GLib type identifier registered for `SocketClient`
    static var metatypeReference: GType { g_socket_client_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GSocketClientClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GSocketClientClass.self) }
    
    static var metatype: GSocketClientClass? { metatypePointer?.pointee } 
    
    static var wrapper: SocketClientClassRef? { SocketClientClassRef(metatypePointer) }
    
    
}

// MARK: - SocketClientClass Record


///
/// The `SocketClientClassProtocol` protocol exposes the methods and properties of an underlying `GSocketClientClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SocketClientClass`.
/// Alternatively, use `SocketClientClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol SocketClientClassProtocol {
        /// Untyped pointer to the underlying `GSocketClientClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSocketClientClass` instance.
    var _ptr: UnsafeMutablePointer<GSocketClientClass>! { get }

    /// Required Initialiser for types conforming to `SocketClientClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `SocketClientClassRef` type acts as a lightweight Swift reference to an underlying `GSocketClientClass` instance.
/// It exposes methods that can operate on this data type through `SocketClientClassProtocol` conformance.
/// Use `SocketClientClassRef` only as an `unowned` reference to an existing `GSocketClientClass` instance.
///
public struct SocketClientClassRef: SocketClientClassProtocol {
        /// Untyped pointer to the underlying `GSocketClientClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SocketClientClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSocketClientClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSocketClientClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSocketClientClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSocketClientClass>?) {
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

    /// Reference intialiser for a related type that implements `SocketClientClassProtocol`
    @inlinable init<T: SocketClientClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: SocketClientClass Record: SocketClientClassProtocol extension (methods and fields)
public extension SocketClientClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSocketClientClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GSocketClientClass>! { return ptr?.assumingMemoryBound(to: GSocketClientClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var event is unavailable because event is void

    // var GReserved1 is unavailable because _g_reserved1 is void

    // var GReserved2 is unavailable because _g_reserved2 is void

    // var GReserved3 is unavailable because _g_reserved3 is void

    // var GReserved4 is unavailable because _g_reserved4 is void

}



/// Metatype/GType declaration for SocketConnectable
public extension SocketConnectableIfaceRef {
    
    /// This getter returns the GLib type identifier registered for `SocketConnectable`
    static var metatypeReference: GType { g_socket_connectable_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GSocketConnectableIface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GSocketConnectableIface.self) }
    
    static var metatype: GSocketConnectableIface? { metatypePointer?.pointee } 
    
    static var wrapper: SocketConnectableIfaceRef? { SocketConnectableIfaceRef(metatypePointer) }
    
    
}

// MARK: - SocketConnectableIface Record

/// Provides an interface for returning a `GSocketAddressEnumerator`
/// and `GProxyAddressEnumerator`
///
/// The `SocketConnectableIfaceProtocol` protocol exposes the methods and properties of an underlying `GSocketConnectableIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SocketConnectableIface`.
/// Alternatively, use `SocketConnectableIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol SocketConnectableIfaceProtocol {
        /// Untyped pointer to the underlying `GSocketConnectableIface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSocketConnectableIface` instance.
    var _ptr: UnsafeMutablePointer<GSocketConnectableIface>! { get }

    /// Required Initialiser for types conforming to `SocketConnectableIfaceProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Provides an interface for returning a `GSocketAddressEnumerator`
/// and `GProxyAddressEnumerator`
///
/// The `SocketConnectableIfaceRef` type acts as a lightweight Swift reference to an underlying `GSocketConnectableIface` instance.
/// It exposes methods that can operate on this data type through `SocketConnectableIfaceProtocol` conformance.
/// Use `SocketConnectableIfaceRef` only as an `unowned` reference to an existing `GSocketConnectableIface` instance.
///
public struct SocketConnectableIfaceRef: SocketConnectableIfaceProtocol {
        /// Untyped pointer to the underlying `GSocketConnectableIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SocketConnectableIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSocketConnectableIface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSocketConnectableIface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSocketConnectableIface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSocketConnectableIface>?) {
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

    /// Reference intialiser for a related type that implements `SocketConnectableIfaceProtocol`
    @inlinable init<T: SocketConnectableIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectableIfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectableIfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectableIfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectableIfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectableIfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: SocketConnectableIface Record: SocketConnectableIfaceProtocol extension (methods and fields)
public extension SocketConnectableIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSocketConnectableIface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GSocketConnectableIface>! { return ptr?.assumingMemoryBound(to: GSocketConnectableIface.self) }


    /// The parent interface.
    @inlinable var gIface: GTypeInterface {
        /// The parent interface.
        get {
            let rv = _ptr.pointee.g_iface
            return rv
        }
    }

    // var enumerate is unavailable because enumerate is void

    // var proxyEnumerate is unavailable because proxy_enumerate is void

    // var toString is unavailable because to_string is void

}



/// Metatype/GType declaration for SocketConnection
public extension SocketConnectionClassRef {
    
    /// This getter returns the GLib type identifier registered for `SocketConnection`
    static var metatypeReference: GType { g_socket_connection_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GSocketConnectionClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GSocketConnectionClass.self) }
    
    static var metatype: GSocketConnectionClass? { metatypePointer?.pointee } 
    
    static var wrapper: SocketConnectionClassRef? { SocketConnectionClassRef(metatypePointer) }
    
    
}

// MARK: - SocketConnectionClass Record


///
/// The `SocketConnectionClassProtocol` protocol exposes the methods and properties of an underlying `GSocketConnectionClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SocketConnectionClass`.
/// Alternatively, use `SocketConnectionClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol SocketConnectionClassProtocol {
        /// Untyped pointer to the underlying `GSocketConnectionClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSocketConnectionClass` instance.
    var _ptr: UnsafeMutablePointer<GSocketConnectionClass>! { get }

    /// Required Initialiser for types conforming to `SocketConnectionClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `SocketConnectionClassRef` type acts as a lightweight Swift reference to an underlying `GSocketConnectionClass` instance.
/// It exposes methods that can operate on this data type through `SocketConnectionClassProtocol` conformance.
/// Use `SocketConnectionClassRef` only as an `unowned` reference to an existing `GSocketConnectionClass` instance.
///
public struct SocketConnectionClassRef: SocketConnectionClassProtocol {
        /// Untyped pointer to the underlying `GSocketConnectionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SocketConnectionClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSocketConnectionClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSocketConnectionClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSocketConnectionClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSocketConnectionClass>?) {
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

    /// Reference intialiser for a related type that implements `SocketConnectionClassProtocol`
    @inlinable init<T: SocketConnectionClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: SocketConnectionClass Record: SocketConnectionClassProtocol extension (methods and fields)
public extension SocketConnectionClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSocketConnectionClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GSocketConnectionClass>! { return ptr?.assumingMemoryBound(to: GSocketConnectionClass.self) }


    @inlinable var parentClass: GIOStreamClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var GReserved1 is unavailable because _g_reserved1 is void

    // var GReserved2 is unavailable because _g_reserved2 is void

    // var GReserved3 is unavailable because _g_reserved3 is void

    // var GReserved4 is unavailable because _g_reserved4 is void

    // var GReserved5 is unavailable because _g_reserved5 is void

    // var GReserved6 is unavailable because _g_reserved6 is void

}



/// Metatype/GType declaration for SocketControlMessage
public extension SocketControlMessageClassRef {
    
    /// This getter returns the GLib type identifier registered for `SocketControlMessage`
    static var metatypeReference: GType { g_socket_control_message_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GSocketControlMessageClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GSocketControlMessageClass.self) }
    
    static var metatype: GSocketControlMessageClass? { metatypePointer?.pointee } 
    
    static var wrapper: SocketControlMessageClassRef? { SocketControlMessageClassRef(metatypePointer) }
    
    
}

// MARK: - SocketControlMessageClass Record

/// Class structure for `GSocketControlMessage`.
///
/// The `SocketControlMessageClassProtocol` protocol exposes the methods and properties of an underlying `GSocketControlMessageClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SocketControlMessageClass`.
/// Alternatively, use `SocketControlMessageClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol SocketControlMessageClassProtocol {
        /// Untyped pointer to the underlying `GSocketControlMessageClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSocketControlMessageClass` instance.
    var _ptr: UnsafeMutablePointer<GSocketControlMessageClass>! { get }

    /// Required Initialiser for types conforming to `SocketControlMessageClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Class structure for `GSocketControlMessage`.
///
/// The `SocketControlMessageClassRef` type acts as a lightweight Swift reference to an underlying `GSocketControlMessageClass` instance.
/// It exposes methods that can operate on this data type through `SocketControlMessageClassProtocol` conformance.
/// Use `SocketControlMessageClassRef` only as an `unowned` reference to an existing `GSocketControlMessageClass` instance.
///
public struct SocketControlMessageClassRef: SocketControlMessageClassProtocol {
        /// Untyped pointer to the underlying `GSocketControlMessageClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SocketControlMessageClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSocketControlMessageClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSocketControlMessageClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSocketControlMessageClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSocketControlMessageClass>?) {
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

    /// Reference intialiser for a related type that implements `SocketControlMessageClassProtocol`
    @inlinable init<T: SocketControlMessageClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessageClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessageClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessageClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessageClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessageClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: SocketControlMessageClass Record: SocketControlMessageClassProtocol extension (methods and fields)
public extension SocketControlMessageClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSocketControlMessageClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GSocketControlMessageClass>! { return ptr?.assumingMemoryBound(to: GSocketControlMessageClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var getSize is unavailable because get_size is void

    // var getLevel is unavailable because get_level is void

    // var getType is unavailable because get_type is void

    // var serialize is unavailable because serialize is void

    // var deserialize is unavailable because deserialize is void

    // var GReserved1 is unavailable because _g_reserved1 is void

    // var GReserved2 is unavailable because _g_reserved2 is void

    // var GReserved3 is unavailable because _g_reserved3 is void

    // var GReserved4 is unavailable because _g_reserved4 is void

    // var GReserved5 is unavailable because _g_reserved5 is void

}



/// Metatype/GType declaration for SocketListener
public extension SocketListenerClassRef {
    
    /// This getter returns the GLib type identifier registered for `SocketListener`
    static var metatypeReference: GType { g_socket_listener_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GSocketListenerClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GSocketListenerClass.self) }
    
    static var metatype: GSocketListenerClass? { metatypePointer?.pointee } 
    
    static var wrapper: SocketListenerClassRef? { SocketListenerClassRef(metatypePointer) }
    
    
}

// MARK: - SocketListenerClass Record

/// Class structure for `GSocketListener`.
///
/// The `SocketListenerClassProtocol` protocol exposes the methods and properties of an underlying `GSocketListenerClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SocketListenerClass`.
/// Alternatively, use `SocketListenerClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol SocketListenerClassProtocol {
        /// Untyped pointer to the underlying `GSocketListenerClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSocketListenerClass` instance.
    var _ptr: UnsafeMutablePointer<GSocketListenerClass>! { get }

    /// Required Initialiser for types conforming to `SocketListenerClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Class structure for `GSocketListener`.
///
/// The `SocketListenerClassRef` type acts as a lightweight Swift reference to an underlying `GSocketListenerClass` instance.
/// It exposes methods that can operate on this data type through `SocketListenerClassProtocol` conformance.
/// Use `SocketListenerClassRef` only as an `unowned` reference to an existing `GSocketListenerClass` instance.
///
public struct SocketListenerClassRef: SocketListenerClassProtocol {
        /// Untyped pointer to the underlying `GSocketListenerClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SocketListenerClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSocketListenerClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSocketListenerClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSocketListenerClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSocketListenerClass>?) {
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

    /// Reference intialiser for a related type that implements `SocketListenerClassProtocol`
    @inlinable init<T: SocketListenerClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: SocketListenerClass Record: SocketListenerClassProtocol extension (methods and fields)
public extension SocketListenerClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSocketListenerClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GSocketListenerClass>! { return ptr?.assumingMemoryBound(to: GSocketListenerClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var changed is unavailable because changed is void

    // var event is unavailable because event is void

    // var GReserved2 is unavailable because _g_reserved2 is void

    // var GReserved3 is unavailable because _g_reserved3 is void

    // var GReserved4 is unavailable because _g_reserved4 is void

    // var GReserved5 is unavailable because _g_reserved5 is void

    // var GReserved6 is unavailable because _g_reserved6 is void

}



/// Metatype/GType declaration for SocketService
public extension SocketServiceClassRef {
    
    /// This getter returns the GLib type identifier registered for `SocketService`
    static var metatypeReference: GType { g_socket_service_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GSocketServiceClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GSocketServiceClass.self) }
    
    static var metatype: GSocketServiceClass? { metatypePointer?.pointee } 
    
    static var wrapper: SocketServiceClassRef? { SocketServiceClassRef(metatypePointer) }
    
    
}

// MARK: - SocketServiceClass Record

/// Class structure for `GSocketService`.
///
/// The `SocketServiceClassProtocol` protocol exposes the methods and properties of an underlying `GSocketServiceClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SocketServiceClass`.
/// Alternatively, use `SocketServiceClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol SocketServiceClassProtocol {
        /// Untyped pointer to the underlying `GSocketServiceClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSocketServiceClass` instance.
    var _ptr: UnsafeMutablePointer<GSocketServiceClass>! { get }

    /// Required Initialiser for types conforming to `SocketServiceClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Class structure for `GSocketService`.
///
/// The `SocketServiceClassRef` type acts as a lightweight Swift reference to an underlying `GSocketServiceClass` instance.
/// It exposes methods that can operate on this data type through `SocketServiceClassProtocol` conformance.
/// Use `SocketServiceClassRef` only as an `unowned` reference to an existing `GSocketServiceClass` instance.
///
public struct SocketServiceClassRef: SocketServiceClassProtocol {
        /// Untyped pointer to the underlying `GSocketServiceClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SocketServiceClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSocketServiceClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSocketServiceClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSocketServiceClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSocketServiceClass>?) {
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

    /// Reference intialiser for a related type that implements `SocketServiceClassProtocol`
    @inlinable init<T: SocketServiceClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServiceClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServiceClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServiceClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServiceClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServiceClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: SocketServiceClass Record: SocketServiceClassProtocol extension (methods and fields)
public extension SocketServiceClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSocketServiceClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GSocketServiceClass>! { return ptr?.assumingMemoryBound(to: GSocketServiceClass.self) }


    @inlinable var parentClass: GSocketListenerClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var incoming is unavailable because incoming is void

    // var GReserved1 is unavailable because _g_reserved1 is void

    // var GReserved2 is unavailable because _g_reserved2 is void

    // var GReserved3 is unavailable because _g_reserved3 is void

    // var GReserved4 is unavailable because _g_reserved4 is void

    // var GReserved5 is unavailable because _g_reserved5 is void

    // var GReserved6 is unavailable because _g_reserved6 is void

}



// MARK: - SrvTarget Record

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
///
/// The `SrvTargetProtocol` protocol exposes the methods and properties of an underlying `GSrvTarget` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SrvTarget`.
/// Alternatively, use `SrvTargetRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol SrvTargetProtocol {
        /// Untyped pointer to the underlying `GSrvTarget` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSrvTarget` instance.
    var srv_target_ptr: UnsafeMutablePointer<GSrvTarget>! { get }

    /// Required Initialiser for types conforming to `SrvTargetProtocol`
    init(raw: UnsafeMutableRawPointer)
}

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
///
/// The `SrvTargetRef` type acts as a lightweight Swift reference to an underlying `GSrvTarget` instance.
/// It exposes methods that can operate on this data type through `SrvTargetProtocol` conformance.
/// Use `SrvTargetRef` only as an `unowned` reference to an existing `GSrvTarget` instance.
///
public struct SrvTargetRef: SrvTargetProtocol {
        /// Untyped pointer to the underlying `GSrvTarget` instance.
    /// For type-safe access, use the generated, typed pointer `srv_target_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SrvTargetRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSrvTarget>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSrvTarget>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSrvTarget>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSrvTarget>?) {
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

    /// Reference intialiser for a related type that implements `SrvTargetProtocol`
    @inlinable init<T: SrvTargetProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SrvTargetProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SrvTargetProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SrvTargetProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SrvTargetProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SrvTargetProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GSrvTarget` with the given parameters.
    /// 
    /// You should not need to use this; normally `GSrvTargets` are
    /// created by `GResolver`.
    @inlinable init( hostname: UnsafePointer<gchar>!, port: guint16, priority: guint16, weight: guint16) {
        let rv = g_srv_target_new(hostname, port, priority, weight)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

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
///
/// The `SrvTarget` type acts as an owner of an underlying `GSrvTarget` instance.
/// It provides the methods that can operate on this data type through `SrvTargetProtocol` conformance.
/// Use `SrvTarget` as a strong reference or owner of a `GSrvTarget` instance.
///
open class SrvTarget: SrvTargetProtocol {
        /// Untyped pointer to the underlying `GSrvTarget` instance.
    /// For type-safe access, use the generated, typed pointer `srv_target_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SrvTarget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GSrvTarget>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SrvTarget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GSrvTarget>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SrvTarget` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SrvTarget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SrvTarget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GSrvTarget>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SrvTarget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GSrvTarget>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GSrvTarget` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `SrvTarget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GSrvTarget>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GSrvTarget, cannot ref(srv_target_ptr)
    }

    /// Reference intialiser for a related type that implements `SrvTargetProtocol`
    /// `GSrvTarget` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `SrvTargetProtocol`
    @inlinable public init<T: SrvTargetProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GSrvTarget, cannot ref(srv_target_ptr)
    }

    /// Do-nothing destructor for `GSrvTarget`.
    deinit {
        // no reference counting for GSrvTarget, cannot unref(srv_target_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SrvTargetProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SrvTargetProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GSrvTarget, cannot ref(srv_target_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SrvTargetProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SrvTargetProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GSrvTarget, cannot ref(srv_target_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SrvTargetProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SrvTargetProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GSrvTarget, cannot ref(srv_target_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SrvTargetProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SrvTargetProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GSrvTarget, cannot ref(srv_target_ptr)
    }

    /// Creates a new `GSrvTarget` with the given parameters.
    /// 
    /// You should not need to use this; normally `GSrvTargets` are
    /// created by `GResolver`.
    @inlinable public init( hostname: UnsafePointer<gchar>!, port: guint16, priority: guint16, weight: guint16) {
        let rv = g_srv_target_new(hostname, port, priority, weight)
        ptr = UnsafeMutableRawPointer(rv)
    }


}

// MARK: no SrvTarget properties

// MARK: no SrvTarget signals

// MARK: SrvTarget has no signals
// MARK: SrvTarget Record: SrvTargetProtocol extension (methods and fields)
public extension SrvTargetProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSrvTarget` instance.
    @inlinable var srv_target_ptr: UnsafeMutablePointer<GSrvTarget>! { return ptr?.assumingMemoryBound(to: GSrvTarget.self) }

    /// Copies `target`
    @inlinable func copy() -> SrvTargetRef! {
        guard let rv = SrvTargetRef(gconstpointer: gconstpointer(g_srv_target_copy(srv_target_ptr))) else { return nil }
        return rv
    }

    /// Frees `target`
    @inlinable func free() {
        g_srv_target_free(srv_target_ptr)
    
    }

    /// Gets `target`'s hostname (in ASCII form; if you are going to present
    /// this to the user, you should use `g_hostname_is_ascii_encoded()` to
    /// check if it contains encoded Unicode segments, and use
    /// `g_hostname_to_unicode()` to convert it if it does.)
    @inlinable func getHostname() -> String! {
        let rv = g_srv_target_get_hostname(srv_target_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets `target`'s port
    @inlinable func getPort() -> guint16 {
        let rv = g_srv_target_get_port(srv_target_ptr)
        return rv
    }

    /// Gets `target`'s priority. You should not need to look at this;
    /// `GResolver` already sorts the targets according to the algorithm in
    /// RFC 2782.
    @inlinable func getPriority() -> guint16 {
        let rv = g_srv_target_get_priority(srv_target_ptr)
        return rv
    }

    /// Gets `target`'s weight. You should not need to look at this;
    /// `GResolver` already sorts the targets according to the algorithm in
    /// RFC 2782.
    @inlinable func getWeight() -> guint16 {
        let rv = g_srv_target_get_weight(srv_target_ptr)
        return rv
    }
    /// Gets `target`'s hostname (in ASCII form; if you are going to present
    /// this to the user, you should use `g_hostname_is_ascii_encoded()` to
    /// check if it contains encoded Unicode segments, and use
    /// `g_hostname_to_unicode()` to convert it if it does.)
    @inlinable var hostname: String! {
        /// Gets `target`'s hostname (in ASCII form; if you are going to present
        /// this to the user, you should use `g_hostname_is_ascii_encoded()` to
        /// check if it contains encoded Unicode segments, and use
        /// `g_hostname_to_unicode()` to convert it if it does.)
        get {
            let rv = g_srv_target_get_hostname(srv_target_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets `target`'s port
    @inlinable var port: guint16 {
        /// Gets `target`'s port
        get {
            let rv = g_srv_target_get_port(srv_target_ptr)
            return rv
        }
    }

    /// Gets `target`'s priority. You should not need to look at this;
    /// `GResolver` already sorts the targets according to the algorithm in
    /// RFC 2782.
    @inlinable var priority: guint16 {
        /// Gets `target`'s priority. You should not need to look at this;
        /// `GResolver` already sorts the targets according to the algorithm in
        /// RFC 2782.
        get {
            let rv = g_srv_target_get_priority(srv_target_ptr)
            return rv
        }
    }

    /// Gets `target`'s weight. You should not need to look at this;
    /// `GResolver` already sorts the targets according to the algorithm in
    /// RFC 2782.
    @inlinable var weight: guint16 {
        /// Gets `target`'s weight. You should not need to look at this;
        /// `GResolver` already sorts the targets according to the algorithm in
        /// RFC 2782.
        get {
            let rv = g_srv_target_get_weight(srv_target_ptr)
            return rv
        }
    }


}



// MARK: - StaticResource Record

/// `GStaticResource` is an opaque data structure and can only be accessed
/// using the following functions.
///
/// The `StaticResourceProtocol` protocol exposes the methods and properties of an underlying `GStaticResource` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StaticResource`.
/// Alternatively, use `StaticResourceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol StaticResourceProtocol {
        /// Untyped pointer to the underlying `GStaticResource` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GStaticResource` instance.
    var _ptr: UnsafeMutablePointer<GStaticResource>! { get }

    /// Required Initialiser for types conforming to `StaticResourceProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GStaticResource` is an opaque data structure and can only be accessed
/// using the following functions.
///
/// The `StaticResourceRef` type acts as a lightweight Swift reference to an underlying `GStaticResource` instance.
/// It exposes methods that can operate on this data type through `StaticResourceProtocol` conformance.
/// Use `StaticResourceRef` only as an `unowned` reference to an existing `GStaticResource` instance.
///
public struct StaticResourceRef: StaticResourceProtocol {
        /// Untyped pointer to the underlying `GStaticResource` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension StaticResourceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GStaticResource>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GStaticResource>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GStaticResource>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GStaticResource>?) {
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

    /// Reference intialiser for a related type that implements `StaticResourceProtocol`
    @inlinable init<T: StaticResourceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StaticResourceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StaticResourceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StaticResourceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StaticResourceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StaticResourceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// `GStaticResource` is an opaque data structure and can only be accessed
/// using the following functions.
///
/// The `StaticResource` type acts as an owner of an underlying `GStaticResource` instance.
/// It provides the methods that can operate on this data type through `StaticResourceProtocol` conformance.
/// Use `StaticResource` as a strong reference or owner of a `GStaticResource` instance.
///
open class StaticResource: StaticResourceProtocol {
        /// Untyped pointer to the underlying `GStaticResource` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StaticResource` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GStaticResource>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StaticResource` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GStaticResource>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StaticResource` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StaticResource` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StaticResource` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GStaticResource>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StaticResource` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GStaticResource>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GStaticResource` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `StaticResource` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GStaticResource>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GStaticResource, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `StaticResourceProtocol`
    /// `GStaticResource` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `StaticResourceProtocol`
    @inlinable public init<T: StaticResourceProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GStaticResource, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GStaticResource`.
    deinit {
        // no reference counting for GStaticResource, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StaticResourceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StaticResourceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GStaticResource, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StaticResourceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StaticResourceProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GStaticResource, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StaticResourceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StaticResourceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GStaticResource, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StaticResourceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StaticResourceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GStaticResource, cannot ref(_ptr)
    }



}

// MARK: no StaticResource properties

// MARK: no StaticResource signals

// MARK: StaticResource has no signals
// MARK: StaticResource Record: StaticResourceProtocol extension (methods and fields)
public extension StaticResourceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GStaticResource` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GStaticResource>! { return ptr?.assumingMemoryBound(to: GStaticResource.self) }

    /// Finalized a GResource initialized by `g_static_resource_init()`.
    /// 
    /// This is normally used by code generated by
    /// [glib-compile-resources](#glib-compile-resources)
    /// and is not typically used by other code.
    @inlinable func fini() {
        g_static_resource_fini(_ptr)
    
    }

    /// Gets the GResource that was registered by a call to `g_static_resource_init()`.
    /// 
    /// This is normally used by code generated by
    /// [glib-compile-resources](#glib-compile-resources)
    /// and is not typically used by other code.
    @inlinable func getResource() -> ResourceRef! {
        let rv = ResourceRef(gconstpointer: gconstpointer(g_static_resource_get_resource(_ptr)))
        return rv
    }

    /// Initializes a GResource from static data using a
    /// GStaticResource.
    /// 
    /// This is normally used by code generated by
    /// [glib-compile-resources](#glib-compile-resources)
    /// and is not typically used by other code.
    @inlinable func init_() {
        g_static_resource_init(_ptr)
    
    }
    /// Gets the GResource that was registered by a call to `g_static_resource_init()`.
    /// 
    /// This is normally used by code generated by
    /// [glib-compile-resources](#glib-compile-resources)
    /// and is not typically used by other code.
    @inlinable var resource: ResourceRef! {
        /// Gets the GResource that was registered by a call to `g_static_resource_init()`.
        /// 
        /// This is normally used by code generated by
        /// [glib-compile-resources](#glib-compile-resources)
        /// and is not typically used by other code.
        get {
            let rv = ResourceRef(gconstpointer: gconstpointer(g_static_resource_get_resource(_ptr)))
            return rv
        }
    }

    // var data is unavailable because data is private

    // var dataLen is unavailable because data_len is private

    // var _resource is unavailable because resource is private

    // var next is unavailable because next is private

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for Task
public extension TaskClassRef {
    
    /// This getter returns the GLib type identifier registered for `Task`
    static var metatypeReference: GType { g_task_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GTaskClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GTaskClass.self) }
    
    static var metatype: GTaskClass? { metatypePointer?.pointee } 
    
    static var wrapper: TaskClassRef? { TaskClassRef(metatypePointer) }
    
    
}

// MARK: - TaskClass Record


///
/// The `TaskClassProtocol` protocol exposes the methods and properties of an underlying `GTaskClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TaskClass`.
/// Alternatively, use `TaskClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TaskClassProtocol {
        /// Untyped pointer to the underlying `GTaskClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTaskClass` instance.
    var _ptr: UnsafeMutablePointer<GTaskClass>! { get }

    /// Required Initialiser for types conforming to `TaskClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `TaskClassRef` type acts as a lightweight Swift reference to an underlying `GTaskClass` instance.
/// It exposes methods that can operate on this data type through `TaskClassProtocol` conformance.
/// Use `TaskClassRef` only as an `unowned` reference to an existing `GTaskClass` instance.
///
public struct TaskClassRef: TaskClassProtocol {
        /// Untyped pointer to the underlying `GTaskClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TaskClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTaskClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTaskClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTaskClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTaskClass>?) {
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

    /// Reference intialiser for a related type that implements `TaskClassProtocol`
    @inlinable init<T: TaskClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TaskClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TaskClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TaskClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TaskClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TaskClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TaskClass Record: TaskClassProtocol extension (methods and fields)
public extension TaskClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTaskClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTaskClass>! { return ptr?.assumingMemoryBound(to: GTaskClass.self) }



}



