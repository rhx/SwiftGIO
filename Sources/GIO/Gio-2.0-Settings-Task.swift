import CGLib
import GLib
import GLibObject

// MARK: - Settings Class

/// The `SettingsProtocol` protocol exposes the methods and properties of an underlying `GSettings` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Settings`.
/// Alternatively, use `SettingsRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GSettings` class provides a convenient API for storing and retrieving
/// application settings.
/// 
/// Reads and writes can be considered to be non-blocking.  Reading
/// settings with `GSettings` is typically extremely fast: on
/// approximately the same order of magnitude (but slower than) a
/// `GHashTable` lookup.  Writing settings is also extremely fast in terms
/// of time to return to your application, but can be extremely expensive
/// for other threads and other processes.  Many settings backends
/// (including dconf) have lazy initialisation which means in the common
/// case of the user using their computer without modifying any settings
/// a lot of work can be avoided.  For dconf, the D-Bus service doesn't
/// even need to be started in this case.  For this reason, you should
/// only ever modify `GSettings` keys in response to explicit user action.
/// Particular care should be paid to ensure that modifications are not
/// made during startup -- for example, when setting the initial value
/// of preferences widgets.  The built-in `g_settings_bind()` functionality
/// is careful not to write settings in response to notify signals as a
/// result of modifications that it makes to widgets.
/// 
/// When creating a GSettings instance, you have to specify a schema
/// that describes the keys in your settings and their types and default
/// values, as well as some other information.
/// 
/// Normally, a schema has a fixed path that determines where the settings
/// are stored in the conceptual global tree of settings. However, schemas
/// can also be '[relocatable](#gsettings-relocatable)', i.e. not equipped with
/// a fixed path. This is
/// useful e.g. when the schema describes an 'account', and you want to be
/// able to store a arbitrary number of accounts.
/// 
/// Paths must start with and end with a forward slash character ('/')
/// and must not contain two sequential slash characters.  Paths should
/// be chosen based on a domain name associated with the program or
/// library to which the settings belong.  Examples of paths are
/// "/org/gtk/settings/file-chooser/" and "/ca/desrt/dconf-editor/".
/// Paths should not start with "/apps/", "/desktop/" or "/system/" as
/// they often did in GConf.
/// 
/// Unlike other configuration systems (like GConf), GSettings does not
/// restrict keys to basic types like strings and numbers. GSettings stores
/// values as `GVariant`, and allows any `GVariantType` for keys. Key names
/// are restricted to lowercase characters, numbers and '-'. Furthermore,
/// the names must begin with a lowercase character, must not end
/// with a '-', and must not contain consecutive dashes.
/// 
/// Similar to GConf, the default values in GSettings schemas can be
/// localized, but the localized values are stored in gettext catalogs
/// and looked up with the domain that is specified in the
/// `gettext-domain` attribute of the <schemalist> or <schema>
/// elements and the category that is specified in the `l10n` attribute of
/// the <default> element. The string which is translated includes all text in
/// the <default> element, including any surrounding quotation marks.
/// 
/// The `l10n` attribute must be set to `messages` or `time`, and sets the
/// [locale category for
/// translation](https://www.gnu.org/software/gettext/manual/html_node/Aspects.html`index`-locale-categories-1).
/// The `messages` category should be used by default; use `time` for
/// translatable date or time formats. A translation comment can be added as an
/// XML comment immediately above the <default> element — it is recommended to
/// add these comments to aid translators understand the meaning and
/// implications of the default value. An optional translation `context`
/// attribute can be set on the <default> element to disambiguate multiple
/// defaults which use the same string.
/// 
/// For example:
/// ```
///  <default l10n='messages' context='Banned words'>['bad', 'words']</default>
/// ```
/// 
/// Translations of default values must remain syntactically valid serialized
/// `GVariants` (e.g. retaining any surrounding quotation marks) or runtime
/// errors will occur.
/// 
/// GSettings uses schemas in a compact binary form that is created
/// by the [glib-compile-schemas](#glib-compile-schemas)
/// utility. The input is a schema description in an XML format.
/// 
/// A DTD for the gschema XML format can be found here:
/// [gschema.dtd](https://git.gnome.org/browse/glib/tree/gio/gschema.dtd)
/// 
/// The [glib-compile-schemas](#glib-compile-schemas) tool expects schema
/// files to have the extension `.gschema.xml`.
/// 
/// At runtime, schemas are identified by their id (as specified in the
/// id attribute of the <schema> element). The convention for schema
/// ids is to use a dotted name, similar in style to a D-Bus bus name,
/// e.g. "org.gnome.SessionManager". In particular, if the settings are
/// for a specific service that owns a D-Bus bus name, the D-Bus bus name
/// and schema id should match. For schemas which deal with settings not
/// associated with one named application, the id should not use
/// StudlyCaps, e.g. "org.gnome.font-rendering".
/// 
/// In addition to `GVariant` types, keys can have types that have
/// enumerated types. These can be described by a <choice>,
/// <enum> or <flags> element, as seen in the
/// [example](#schema-enumerated). The underlying type of such a key
/// is string, but you can use `g_settings_get_enum()`, `g_settings_set_enum()`,
/// `g_settings_get_flags()`, `g_settings_set_flags()` access the numeric values
/// corresponding to the string value of enum and flags keys.
/// 
/// An example for default value:
/// ```
/// <schemalist>
///   <schema id="org.gtk.Test" path="/org/gtk/Test/" gettext-domain="test">
/// 
///     <key name="greeting" type="s">
///       <default l10n="messages">"Hello, earthlings"</default>
///       <summary>A greeting</summary>
///       <description>
///         Greeting of the invading martians
///       </description>
///     </key>
/// 
///     <key name="box" type="(ii)">
///       <default>(20,30)</default>
///     </key>
/// 
///     <key name="empty-string" type="s">
///       <default>""</default>
///       <summary>Empty strings have to be provided in GVariant form</summary>
///     </key>
/// 
///   </schema>
/// </schemalist>
/// ```
/// 
/// An example for ranges, choices and enumerated types:
/// ```
/// <schemalist>
/// 
///   <enum id="org.gtk.Test.myenum">
///     <value nick="first" value="1"/>
///     <value nick="second" value="2"/>
///   </enum>
/// 
///   <flags id="org.gtk.Test.myflags">
///     <value nick="flag1" value="1"/>
///     <value nick="flag2" value="2"/>
///     <value nick="flag3" value="4"/>
///   </flags>
/// 
///   <schema id="org.gtk.Test">
/// 
///     <key name="key-with-range" type="i">
///       <range min="1" max="100"/>
///       <default>10</default>
///     </key>
/// 
///     <key name="key-with-choices" type="s">
///       <choices>
///         <choice value='Elisabeth'/>
///         <choice value='Annabeth'/>
///         <choice value='Joe'/>
///       </choices>
///       <aliases>
///         <alias value='Anna' target='Annabeth'/>
///         <alias value='Beth' target='Elisabeth'/>
///       </aliases>
///       <default>'Joe'</default>
///     </key>
/// 
///     <key name='enumerated-key' enum='org.gtk.Test.myenum'>
///       <default>'first'</default>
///     </key>
/// 
///     <key name='flags-key' flags='org.gtk.Test.myflags'>
///       <default>["flag1","flag2"]</default>
///     </key>
///   </schema>
/// </schemalist>
/// ```
/// 
/// ## Vendor overrides
/// 
/// Default values are defined in the schemas that get installed by
/// an application. Sometimes, it is necessary for a vendor or distributor
/// to adjust these defaults. Since patching the XML source for the schema
/// is inconvenient and error-prone,
/// [glib-compile-schemas](#glib-compile-schemas) reads so-called vendor
/// override' files. These are keyfiles in the same directory as the XML
/// schema sources which can override default values. The schema id serves
/// as the group name in the key file, and the values are expected in
/// serialized GVariant form, as in the following example:
/// ```
///     [org.gtk.Example]
///     key1='string'
///     key2=1.5
/// ```
/// 
/// glib-compile-schemas expects schema files to have the extension
/// `.gschema.override`.
/// 
/// ## Binding
/// 
/// A very convenient feature of GSettings lets you bind `GObject` properties
/// directly to settings, using `g_settings_bind()`. Once a GObject property
/// has been bound to a setting, changes on either side are automatically
/// propagated to the other side. GSettings handles details like mapping
/// between GObject and GVariant types, and preventing infinite cycles.
/// 
/// This makes it very easy to hook up a preferences dialog to the
/// underlying settings. To make this even more convenient, GSettings
/// looks for a boolean property with the name "sensitivity" and
/// automatically binds it to the writability of the bound setting.
/// If this 'magic' gets in the way, it can be suppressed with the
/// `G_SETTINGS_BIND_NO_SENSITIVITY` flag.
/// 
/// ## Relocatable schemas # <a name="gsettings-relocatable"></a>
/// 
/// A relocatable schema is one with no `path` attribute specified on its
/// <schema> element. By using `g_settings_new_with_path()`, a `GSettings` object
/// can be instantiated for a relocatable schema, assigning a path to the
/// instance. Paths passed to `g_settings_new_with_path()` will typically be
/// constructed dynamically from a constant prefix plus some form of instance
/// identifier; but they must still be valid GSettings paths. Paths could also
/// be constant and used with a globally installed schema originating from a
/// dependency library.
/// 
/// For example, a relocatable schema could be used to store geometry information
/// for different windows in an application. If the schema ID was
/// `org.foo.MyApp.Window`, it could be instantiated for paths
/// `/org/foo/MyApp/main/`, `/org/foo/MyApp/document-1/`,
/// `/org/foo/MyApp/document-2/`, etc. If any of the paths are well-known
/// they can be specified as <child> elements in the parent schema, e.g.:
/// ```
/// <schema id="org.foo.MyApp" path="/org/foo/MyApp/">
///   <child name="main" schema="org.foo.MyApp.Window"/>
/// </schema>
/// ```
/// 
/// ## Build system integration # <a name="gsettings-build-system"></a>
/// 
/// GSettings comes with autotools integration to simplify compiling and
/// installing schemas. To add GSettings support to an application, add the
/// following to your `configure.ac`:
/// ```
/// GLIB_GSETTINGS
/// ```
/// 
/// In the appropriate `Makefile.am`, use the following snippet to compile and
/// install the named schema:
/// ```
/// gsettings_SCHEMAS = org.foo.MyApp.gschema.xml
/// EXTRA_DIST = $(gsettings_SCHEMAS)
/// 
/// @GSETTINGS_RULES@
/// ```
/// 
/// No changes are needed to the build system to mark a schema XML file for
/// translation. Assuming it sets the `gettext-domain` attribute, a schema may
/// be marked for translation by adding it to `POTFILES.in`, assuming gettext
/// 0.19 is in use (the preferred method for translation):
/// ```
/// data/org.foo.MyApp.gschema.xml
/// ```
/// 
/// Alternatively, if intltool 0.50.1 is in use:
/// ```
/// [type: gettext/gsettings]data/org.foo.MyApp.gschema.xml
/// ```
/// 
/// GSettings will use gettext to look up translations for the <summary> and
/// <description> elements, and also any <default> elements which have a `l10n`
/// attribute set. Translations must not be included in the `.gschema.xml` file
/// by the build system, for example by using intltool XML rules with a
/// `.gschema.xml.in` template.
/// 
/// If an enumerated type defined in a C header file is to be used in a GSettings
/// schema, it can either be defined manually using an <enum> element in the
/// schema XML, or it can be extracted automatically from the C header. This
/// approach is preferred, as it ensures the two representations are always
/// synchronised. To do so, add the following to the relevant `Makefile.am`:
/// ```
/// gsettings_ENUM_NAMESPACE = org.foo.MyApp
/// gsettings_ENUM_FILES = my-app-enums.h my-app-misc.h
/// ```
/// 
/// `gsettings_ENUM_NAMESPACE` specifies the schema namespace for the enum files,
/// which are specified in `gsettings_ENUM_FILES`. This will generate a
/// `org.foo.MyApp.enums.xml` file containing the extracted enums, which will be
/// automatically included in the schema compilation, install and uninstall
/// rules. It should not be committed to version control or included in
/// `EXTRA_DIST`.
public protocol SettingsProtocol: ObjectProtocol {
        /// Untyped pointer to the underlying `GSettings` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSettings` instance.
    var settings_ptr: UnsafeMutablePointer<GSettings> { get }
}

/// The `SettingsRef` type acts as a lightweight Swift reference to an underlying `GSettings` instance.
/// It exposes methods that can operate on this data type through `SettingsProtocol` conformance.
/// Use `SettingsRef` only as an `unowned` reference to an existing `GSettings` instance.
///
/// The `GSettings` class provides a convenient API for storing and retrieving
/// application settings.
/// 
/// Reads and writes can be considered to be non-blocking.  Reading
/// settings with `GSettings` is typically extremely fast: on
/// approximately the same order of magnitude (but slower than) a
/// `GHashTable` lookup.  Writing settings is also extremely fast in terms
/// of time to return to your application, but can be extremely expensive
/// for other threads and other processes.  Many settings backends
/// (including dconf) have lazy initialisation which means in the common
/// case of the user using their computer without modifying any settings
/// a lot of work can be avoided.  For dconf, the D-Bus service doesn't
/// even need to be started in this case.  For this reason, you should
/// only ever modify `GSettings` keys in response to explicit user action.
/// Particular care should be paid to ensure that modifications are not
/// made during startup -- for example, when setting the initial value
/// of preferences widgets.  The built-in `g_settings_bind()` functionality
/// is careful not to write settings in response to notify signals as a
/// result of modifications that it makes to widgets.
/// 
/// When creating a GSettings instance, you have to specify a schema
/// that describes the keys in your settings and their types and default
/// values, as well as some other information.
/// 
/// Normally, a schema has a fixed path that determines where the settings
/// are stored in the conceptual global tree of settings. However, schemas
/// can also be '[relocatable](#gsettings-relocatable)', i.e. not equipped with
/// a fixed path. This is
/// useful e.g. when the schema describes an 'account', and you want to be
/// able to store a arbitrary number of accounts.
/// 
/// Paths must start with and end with a forward slash character ('/')
/// and must not contain two sequential slash characters.  Paths should
/// be chosen based on a domain name associated with the program or
/// library to which the settings belong.  Examples of paths are
/// "/org/gtk/settings/file-chooser/" and "/ca/desrt/dconf-editor/".
/// Paths should not start with "/apps/", "/desktop/" or "/system/" as
/// they often did in GConf.
/// 
/// Unlike other configuration systems (like GConf), GSettings does not
/// restrict keys to basic types like strings and numbers. GSettings stores
/// values as `GVariant`, and allows any `GVariantType` for keys. Key names
/// are restricted to lowercase characters, numbers and '-'. Furthermore,
/// the names must begin with a lowercase character, must not end
/// with a '-', and must not contain consecutive dashes.
/// 
/// Similar to GConf, the default values in GSettings schemas can be
/// localized, but the localized values are stored in gettext catalogs
/// and looked up with the domain that is specified in the
/// `gettext-domain` attribute of the <schemalist> or <schema>
/// elements and the category that is specified in the `l10n` attribute of
/// the <default> element. The string which is translated includes all text in
/// the <default> element, including any surrounding quotation marks.
/// 
/// The `l10n` attribute must be set to `messages` or `time`, and sets the
/// [locale category for
/// translation](https://www.gnu.org/software/gettext/manual/html_node/Aspects.html`index`-locale-categories-1).
/// The `messages` category should be used by default; use `time` for
/// translatable date or time formats. A translation comment can be added as an
/// XML comment immediately above the <default> element — it is recommended to
/// add these comments to aid translators understand the meaning and
/// implications of the default value. An optional translation `context`
/// attribute can be set on the <default> element to disambiguate multiple
/// defaults which use the same string.
/// 
/// For example:
/// ```
///  <default l10n='messages' context='Banned words'>['bad', 'words']</default>
/// ```
/// 
/// Translations of default values must remain syntactically valid serialized
/// `GVariants` (e.g. retaining any surrounding quotation marks) or runtime
/// errors will occur.
/// 
/// GSettings uses schemas in a compact binary form that is created
/// by the [glib-compile-schemas](#glib-compile-schemas)
/// utility. The input is a schema description in an XML format.
/// 
/// A DTD for the gschema XML format can be found here:
/// [gschema.dtd](https://git.gnome.org/browse/glib/tree/gio/gschema.dtd)
/// 
/// The [glib-compile-schemas](#glib-compile-schemas) tool expects schema
/// files to have the extension `.gschema.xml`.
/// 
/// At runtime, schemas are identified by their id (as specified in the
/// id attribute of the <schema> element). The convention for schema
/// ids is to use a dotted name, similar in style to a D-Bus bus name,
/// e.g. "org.gnome.SessionManager". In particular, if the settings are
/// for a specific service that owns a D-Bus bus name, the D-Bus bus name
/// and schema id should match. For schemas which deal with settings not
/// associated with one named application, the id should not use
/// StudlyCaps, e.g. "org.gnome.font-rendering".
/// 
/// In addition to `GVariant` types, keys can have types that have
/// enumerated types. These can be described by a <choice>,
/// <enum> or <flags> element, as seen in the
/// [example](#schema-enumerated). The underlying type of such a key
/// is string, but you can use `g_settings_get_enum()`, `g_settings_set_enum()`,
/// `g_settings_get_flags()`, `g_settings_set_flags()` access the numeric values
/// corresponding to the string value of enum and flags keys.
/// 
/// An example for default value:
/// ```
/// <schemalist>
///   <schema id="org.gtk.Test" path="/org/gtk/Test/" gettext-domain="test">
/// 
///     <key name="greeting" type="s">
///       <default l10n="messages">"Hello, earthlings"</default>
///       <summary>A greeting</summary>
///       <description>
///         Greeting of the invading martians
///       </description>
///     </key>
/// 
///     <key name="box" type="(ii)">
///       <default>(20,30)</default>
///     </key>
/// 
///     <key name="empty-string" type="s">
///       <default>""</default>
///       <summary>Empty strings have to be provided in GVariant form</summary>
///     </key>
/// 
///   </schema>
/// </schemalist>
/// ```
/// 
/// An example for ranges, choices and enumerated types:
/// ```
/// <schemalist>
/// 
///   <enum id="org.gtk.Test.myenum">
///     <value nick="first" value="1"/>
///     <value nick="second" value="2"/>
///   </enum>
/// 
///   <flags id="org.gtk.Test.myflags">
///     <value nick="flag1" value="1"/>
///     <value nick="flag2" value="2"/>
///     <value nick="flag3" value="4"/>
///   </flags>
/// 
///   <schema id="org.gtk.Test">
/// 
///     <key name="key-with-range" type="i">
///       <range min="1" max="100"/>
///       <default>10</default>
///     </key>
/// 
///     <key name="key-with-choices" type="s">
///       <choices>
///         <choice value='Elisabeth'/>
///         <choice value='Annabeth'/>
///         <choice value='Joe'/>
///       </choices>
///       <aliases>
///         <alias value='Anna' target='Annabeth'/>
///         <alias value='Beth' target='Elisabeth'/>
///       </aliases>
///       <default>'Joe'</default>
///     </key>
/// 
///     <key name='enumerated-key' enum='org.gtk.Test.myenum'>
///       <default>'first'</default>
///     </key>
/// 
///     <key name='flags-key' flags='org.gtk.Test.myflags'>
///       <default>["flag1","flag2"]</default>
///     </key>
///   </schema>
/// </schemalist>
/// ```
/// 
/// ## Vendor overrides
/// 
/// Default values are defined in the schemas that get installed by
/// an application. Sometimes, it is necessary for a vendor or distributor
/// to adjust these defaults. Since patching the XML source for the schema
/// is inconvenient and error-prone,
/// [glib-compile-schemas](#glib-compile-schemas) reads so-called vendor
/// override' files. These are keyfiles in the same directory as the XML
/// schema sources which can override default values. The schema id serves
/// as the group name in the key file, and the values are expected in
/// serialized GVariant form, as in the following example:
/// ```
///     [org.gtk.Example]
///     key1='string'
///     key2=1.5
/// ```
/// 
/// glib-compile-schemas expects schema files to have the extension
/// `.gschema.override`.
/// 
/// ## Binding
/// 
/// A very convenient feature of GSettings lets you bind `GObject` properties
/// directly to settings, using `g_settings_bind()`. Once a GObject property
/// has been bound to a setting, changes on either side are automatically
/// propagated to the other side. GSettings handles details like mapping
/// between GObject and GVariant types, and preventing infinite cycles.
/// 
/// This makes it very easy to hook up a preferences dialog to the
/// underlying settings. To make this even more convenient, GSettings
/// looks for a boolean property with the name "sensitivity" and
/// automatically binds it to the writability of the bound setting.
/// If this 'magic' gets in the way, it can be suppressed with the
/// `G_SETTINGS_BIND_NO_SENSITIVITY` flag.
/// 
/// ## Relocatable schemas # <a name="gsettings-relocatable"></a>
/// 
/// A relocatable schema is one with no `path` attribute specified on its
/// <schema> element. By using `g_settings_new_with_path()`, a `GSettings` object
/// can be instantiated for a relocatable schema, assigning a path to the
/// instance. Paths passed to `g_settings_new_with_path()` will typically be
/// constructed dynamically from a constant prefix plus some form of instance
/// identifier; but they must still be valid GSettings paths. Paths could also
/// be constant and used with a globally installed schema originating from a
/// dependency library.
/// 
/// For example, a relocatable schema could be used to store geometry information
/// for different windows in an application. If the schema ID was
/// `org.foo.MyApp.Window`, it could be instantiated for paths
/// `/org/foo/MyApp/main/`, `/org/foo/MyApp/document-1/`,
/// `/org/foo/MyApp/document-2/`, etc. If any of the paths are well-known
/// they can be specified as <child> elements in the parent schema, e.g.:
/// ```
/// <schema id="org.foo.MyApp" path="/org/foo/MyApp/">
///   <child name="main" schema="org.foo.MyApp.Window"/>
/// </schema>
/// ```
/// 
/// ## Build system integration # <a name="gsettings-build-system"></a>
/// 
/// GSettings comes with autotools integration to simplify compiling and
/// installing schemas. To add GSettings support to an application, add the
/// following to your `configure.ac`:
/// ```
/// GLIB_GSETTINGS
/// ```
/// 
/// In the appropriate `Makefile.am`, use the following snippet to compile and
/// install the named schema:
/// ```
/// gsettings_SCHEMAS = org.foo.MyApp.gschema.xml
/// EXTRA_DIST = $(gsettings_SCHEMAS)
/// 
/// @GSETTINGS_RULES@
/// ```
/// 
/// No changes are needed to the build system to mark a schema XML file for
/// translation. Assuming it sets the `gettext-domain` attribute, a schema may
/// be marked for translation by adding it to `POTFILES.in`, assuming gettext
/// 0.19 is in use (the preferred method for translation):
/// ```
/// data/org.foo.MyApp.gschema.xml
/// ```
/// 
/// Alternatively, if intltool 0.50.1 is in use:
/// ```
/// [type: gettext/gsettings]data/org.foo.MyApp.gschema.xml
/// ```
/// 
/// GSettings will use gettext to look up translations for the <summary> and
/// <description> elements, and also any <default> elements which have a `l10n`
/// attribute set. Translations must not be included in the `.gschema.xml` file
/// by the build system, for example by using intltool XML rules with a
/// `.gschema.xml.in` template.
/// 
/// If an enumerated type defined in a C header file is to be used in a GSettings
/// schema, it can either be defined manually using an <enum> element in the
/// schema XML, or it can be extracted automatically from the C header. This
/// approach is preferred, as it ensures the two representations are always
/// synchronised. To do so, add the following to the relevant `Makefile.am`:
/// ```
/// gsettings_ENUM_NAMESPACE = org.foo.MyApp
/// gsettings_ENUM_FILES = my-app-enums.h my-app-misc.h
/// ```
/// 
/// `gsettings_ENUM_NAMESPACE` specifies the schema namespace for the enum files,
/// which are specified in `gsettings_ENUM_FILES`. This will generate a
/// `org.foo.MyApp.enums.xml` file containing the extracted enums, which will be
/// automatically included in the schema compilation, install and uninstall
/// rules. It should not be committed to version control or included in
/// `EXTRA_DIST`.
public struct SettingsRef: SettingsProtocol {
        /// Untyped pointer to the underlying `GSettings` instance.
    /// For type-safe access, use the generated, typed pointer `settings_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SettingsRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSettings>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SettingsProtocol`
    init<T: SettingsProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GSettings` object with the schema specified by
    /// `schema_id`.
    /// 
    /// Signals on the newly created `GSettings` object will be dispatched
    /// via the thread-default `GMainContext` in effect at the time of the
    /// call to `g_settings_new()`.  The new `GSettings` will hold a reference
    /// on the context.  See `g_main_context_push_thread_default()`.
    init( schema_id: UnsafePointer<gchar>) {
        let rv: UnsafeMutablePointer<GSettings>! = cast(g_settings_new(schema_id))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }

    /// Creates a new `GSettings` object with a given schema, backend and
    /// path.
    /// 
    /// It should be extremely rare that you ever want to use this function.
    /// It is made available for advanced use-cases (such as plugin systems
    /// that want to provide access to schemas loaded from custom locations,
    /// etc).
    /// 
    /// At the most basic level, a `GSettings` object is a pure composition of
    /// 4 things: a `GSettingsSchema`, a `GSettingsBackend`, a path within that
    /// backend, and a `GMainContext` to which signals are dispatched.
    /// 
    /// This constructor therefore gives you full control over constructing
    /// `GSettings` instances.  The first 3 parameters are given directly as
    /// `schema`, `backend` and `path`, and the main context is taken from the
    /// thread-default (as per `g_settings_new()`).
    /// 
    /// If `backend` is `nil` then the default backend is used.
    /// 
    /// If `path` is `nil` then the path from the schema is used.  It is an
    /// error if `path` is `nil` and the schema has no path of its own or if
    /// `path` is non-`nil` and not equal to the path that the schema does
    /// have.
    init(full schema: SettingsSchemaProtocol, backend: SettingsBackendProtocol, path: UnsafePointer<gchar>) {
        let rv: UnsafeMutablePointer<GSettings>! = cast(g_settings_new_full(cast(schema.ptr), cast(backend.ptr), path))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }

    /// Creates a new `GSettings` object with the schema specified by
    /// `schema_id` and a given `GSettingsBackend`.
    /// 
    /// Creating a `GSettings` object with a different backend allows accessing
    /// settings from a database other than the usual one. For example, it may make
    /// sense to pass a backend corresponding to the "defaults" settings database on
    /// the system to get a settings object that modifies the system default
    /// settings instead of the settings for this user.
    init(backend schema_id: UnsafePointer<gchar>, backend: SettingsBackendProtocol) {
        let rv: UnsafeMutablePointer<GSettings>! = cast(g_settings_new_with_backend(schema_id, cast(backend.ptr)))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }

    /// Creates a new `GSettings` object with the schema specified by
    /// `schema_id` and a given `GSettingsBackend` and path.
    /// 
    /// This is a mix of `g_settings_new_with_backend()` and
    /// `g_settings_new_with_path()`.
    init(backendAndPath schema_id: UnsafePointer<gchar>, backend: SettingsBackendProtocol, path: UnsafePointer<gchar>) {
        let rv: UnsafeMutablePointer<GSettings>! = cast(g_settings_new_with_backend_and_path(schema_id, cast(backend.ptr), path))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }

    /// Creates a new `GSettings` object with the relocatable schema specified
    /// by `schema_id` and a given path.
    /// 
    /// You only need to do this if you want to directly create a settings
    /// object with a schema that doesn't have a specified path of its own.
    /// That's quite rare.
    /// 
    /// It is a programmer error to call this function for a schema that
    /// has an explicitly specified path.
    /// 
    /// It is a programmer error if `path` is not a valid path.  A valid path
    /// begins and ends with '/' and does not contain two consecutive '/'
    /// characters.
    init(path schema_id: UnsafePointer<gchar>, path: UnsafePointer<gchar>) {
        let rv: UnsafeMutablePointer<GSettings>! = cast(g_settings_new_with_path(schema_id, path))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
    /// Creates a new `GSettings` object with a given schema, backend and
    /// path.
    /// 
    /// It should be extremely rare that you ever want to use this function.
    /// It is made available for advanced use-cases (such as plugin systems
    /// that want to provide access to schemas loaded from custom locations,
    /// etc).
    /// 
    /// At the most basic level, a `GSettings` object is a pure composition of
    /// 4 things: a `GSettingsSchema`, a `GSettingsBackend`, a path within that
    /// backend, and a `GMainContext` to which signals are dispatched.
    /// 
    /// This constructor therefore gives you full control over constructing
    /// `GSettings` instances.  The first 3 parameters are given directly as
    /// `schema`, `backend` and `path`, and the main context is taken from the
    /// thread-default (as per `g_settings_new()`).
    /// 
    /// If `backend` is `nil` then the default backend is used.
    /// 
    /// If `path` is `nil` then the path from the schema is used.  It is an
    /// error if `path` is `nil` and the schema has no path of its own or if
    /// `path` is non-`nil` and not equal to the path that the schema does
    /// have.
    static func new(full schema: SettingsSchemaProtocol, backend: SettingsBackendProtocol, path: UnsafePointer<gchar>) -> SettingsRef! {
        let rv: UnsafeMutablePointer<GSettings>! = cast(g_settings_new_full(cast(schema.ptr), cast(backend.ptr), path))
        return rv.map { SettingsRef(cast($0)) }
    }

    /// Creates a new `GSettings` object with the schema specified by
    /// `schema_id` and a given `GSettingsBackend`.
    /// 
    /// Creating a `GSettings` object with a different backend allows accessing
    /// settings from a database other than the usual one. For example, it may make
    /// sense to pass a backend corresponding to the "defaults" settings database on
    /// the system to get a settings object that modifies the system default
    /// settings instead of the settings for this user.
    static func newWith(backend schema_id: UnsafePointer<gchar>, backend: SettingsBackendProtocol) -> SettingsRef! {
        let rv: UnsafeMutablePointer<GSettings>! = cast(g_settings_new_with_backend(schema_id, cast(backend.ptr)))
        return rv.map { SettingsRef(cast($0)) }
    }

    /// Creates a new `GSettings` object with the schema specified by
    /// `schema_id` and a given `GSettingsBackend` and path.
    /// 
    /// This is a mix of `g_settings_new_with_backend()` and
    /// `g_settings_new_with_path()`.
    static func newWith(backendAndPath schema_id: UnsafePointer<gchar>, backend: SettingsBackendProtocol, path: UnsafePointer<gchar>) -> SettingsRef! {
        let rv: UnsafeMutablePointer<GSettings>! = cast(g_settings_new_with_backend_and_path(schema_id, cast(backend.ptr), path))
        return rv.map { SettingsRef(cast($0)) }
    }

    /// Creates a new `GSettings` object with the relocatable schema specified
    /// by `schema_id` and a given path.
    /// 
    /// You only need to do this if you want to directly create a settings
    /// object with a schema that doesn't have a specified path of its own.
    /// That's quite rare.
    /// 
    /// It is a programmer error to call this function for a schema that
    /// has an explicitly specified path.
    /// 
    /// It is a programmer error if `path` is not a valid path.  A valid path
    /// begins and ends with '/' and does not contain two consecutive '/'
    /// characters.
    static func newWith(path schema_id: UnsafePointer<gchar>, path: UnsafePointer<gchar>) -> SettingsRef! {
        let rv: UnsafeMutablePointer<GSettings>! = cast(g_settings_new_with_path(schema_id, path))
        return rv.map { SettingsRef(cast($0)) }
    }
}

/// The `Settings` type acts as a reference-counted owner of an underlying `GSettings` instance.
/// It provides the methods that can operate on this data type through `SettingsProtocol` conformance.
/// Use `Settings` as a strong reference or owner of a `GSettings` instance.
///
/// The `GSettings` class provides a convenient API for storing and retrieving
/// application settings.
/// 
/// Reads and writes can be considered to be non-blocking.  Reading
/// settings with `GSettings` is typically extremely fast: on
/// approximately the same order of magnitude (but slower than) a
/// `GHashTable` lookup.  Writing settings is also extremely fast in terms
/// of time to return to your application, but can be extremely expensive
/// for other threads and other processes.  Many settings backends
/// (including dconf) have lazy initialisation which means in the common
/// case of the user using their computer without modifying any settings
/// a lot of work can be avoided.  For dconf, the D-Bus service doesn't
/// even need to be started in this case.  For this reason, you should
/// only ever modify `GSettings` keys in response to explicit user action.
/// Particular care should be paid to ensure that modifications are not
/// made during startup -- for example, when setting the initial value
/// of preferences widgets.  The built-in `g_settings_bind()` functionality
/// is careful not to write settings in response to notify signals as a
/// result of modifications that it makes to widgets.
/// 
/// When creating a GSettings instance, you have to specify a schema
/// that describes the keys in your settings and their types and default
/// values, as well as some other information.
/// 
/// Normally, a schema has a fixed path that determines where the settings
/// are stored in the conceptual global tree of settings. However, schemas
/// can also be '[relocatable](#gsettings-relocatable)', i.e. not equipped with
/// a fixed path. This is
/// useful e.g. when the schema describes an 'account', and you want to be
/// able to store a arbitrary number of accounts.
/// 
/// Paths must start with and end with a forward slash character ('/')
/// and must not contain two sequential slash characters.  Paths should
/// be chosen based on a domain name associated with the program or
/// library to which the settings belong.  Examples of paths are
/// "/org/gtk/settings/file-chooser/" and "/ca/desrt/dconf-editor/".
/// Paths should not start with "/apps/", "/desktop/" or "/system/" as
/// they often did in GConf.
/// 
/// Unlike other configuration systems (like GConf), GSettings does not
/// restrict keys to basic types like strings and numbers. GSettings stores
/// values as `GVariant`, and allows any `GVariantType` for keys. Key names
/// are restricted to lowercase characters, numbers and '-'. Furthermore,
/// the names must begin with a lowercase character, must not end
/// with a '-', and must not contain consecutive dashes.
/// 
/// Similar to GConf, the default values in GSettings schemas can be
/// localized, but the localized values are stored in gettext catalogs
/// and looked up with the domain that is specified in the
/// `gettext-domain` attribute of the <schemalist> or <schema>
/// elements and the category that is specified in the `l10n` attribute of
/// the <default> element. The string which is translated includes all text in
/// the <default> element, including any surrounding quotation marks.
/// 
/// The `l10n` attribute must be set to `messages` or `time`, and sets the
/// [locale category for
/// translation](https://www.gnu.org/software/gettext/manual/html_node/Aspects.html`index`-locale-categories-1).
/// The `messages` category should be used by default; use `time` for
/// translatable date or time formats. A translation comment can be added as an
/// XML comment immediately above the <default> element — it is recommended to
/// add these comments to aid translators understand the meaning and
/// implications of the default value. An optional translation `context`
/// attribute can be set on the <default> element to disambiguate multiple
/// defaults which use the same string.
/// 
/// For example:
/// ```
///  <default l10n='messages' context='Banned words'>['bad', 'words']</default>
/// ```
/// 
/// Translations of default values must remain syntactically valid serialized
/// `GVariants` (e.g. retaining any surrounding quotation marks) or runtime
/// errors will occur.
/// 
/// GSettings uses schemas in a compact binary form that is created
/// by the [glib-compile-schemas](#glib-compile-schemas)
/// utility. The input is a schema description in an XML format.
/// 
/// A DTD for the gschema XML format can be found here:
/// [gschema.dtd](https://git.gnome.org/browse/glib/tree/gio/gschema.dtd)
/// 
/// The [glib-compile-schemas](#glib-compile-schemas) tool expects schema
/// files to have the extension `.gschema.xml`.
/// 
/// At runtime, schemas are identified by their id (as specified in the
/// id attribute of the <schema> element). The convention for schema
/// ids is to use a dotted name, similar in style to a D-Bus bus name,
/// e.g. "org.gnome.SessionManager". In particular, if the settings are
/// for a specific service that owns a D-Bus bus name, the D-Bus bus name
/// and schema id should match. For schemas which deal with settings not
/// associated with one named application, the id should not use
/// StudlyCaps, e.g. "org.gnome.font-rendering".
/// 
/// In addition to `GVariant` types, keys can have types that have
/// enumerated types. These can be described by a <choice>,
/// <enum> or <flags> element, as seen in the
/// [example](#schema-enumerated). The underlying type of such a key
/// is string, but you can use `g_settings_get_enum()`, `g_settings_set_enum()`,
/// `g_settings_get_flags()`, `g_settings_set_flags()` access the numeric values
/// corresponding to the string value of enum and flags keys.
/// 
/// An example for default value:
/// ```
/// <schemalist>
///   <schema id="org.gtk.Test" path="/org/gtk/Test/" gettext-domain="test">
/// 
///     <key name="greeting" type="s">
///       <default l10n="messages">"Hello, earthlings"</default>
///       <summary>A greeting</summary>
///       <description>
///         Greeting of the invading martians
///       </description>
///     </key>
/// 
///     <key name="box" type="(ii)">
///       <default>(20,30)</default>
///     </key>
/// 
///     <key name="empty-string" type="s">
///       <default>""</default>
///       <summary>Empty strings have to be provided in GVariant form</summary>
///     </key>
/// 
///   </schema>
/// </schemalist>
/// ```
/// 
/// An example for ranges, choices and enumerated types:
/// ```
/// <schemalist>
/// 
///   <enum id="org.gtk.Test.myenum">
///     <value nick="first" value="1"/>
///     <value nick="second" value="2"/>
///   </enum>
/// 
///   <flags id="org.gtk.Test.myflags">
///     <value nick="flag1" value="1"/>
///     <value nick="flag2" value="2"/>
///     <value nick="flag3" value="4"/>
///   </flags>
/// 
///   <schema id="org.gtk.Test">
/// 
///     <key name="key-with-range" type="i">
///       <range min="1" max="100"/>
///       <default>10</default>
///     </key>
/// 
///     <key name="key-with-choices" type="s">
///       <choices>
///         <choice value='Elisabeth'/>
///         <choice value='Annabeth'/>
///         <choice value='Joe'/>
///       </choices>
///       <aliases>
///         <alias value='Anna' target='Annabeth'/>
///         <alias value='Beth' target='Elisabeth'/>
///       </aliases>
///       <default>'Joe'</default>
///     </key>
/// 
///     <key name='enumerated-key' enum='org.gtk.Test.myenum'>
///       <default>'first'</default>
///     </key>
/// 
///     <key name='flags-key' flags='org.gtk.Test.myflags'>
///       <default>["flag1","flag2"]</default>
///     </key>
///   </schema>
/// </schemalist>
/// ```
/// 
/// ## Vendor overrides
/// 
/// Default values are defined in the schemas that get installed by
/// an application. Sometimes, it is necessary for a vendor or distributor
/// to adjust these defaults. Since patching the XML source for the schema
/// is inconvenient and error-prone,
/// [glib-compile-schemas](#glib-compile-schemas) reads so-called vendor
/// override' files. These are keyfiles in the same directory as the XML
/// schema sources which can override default values. The schema id serves
/// as the group name in the key file, and the values are expected in
/// serialized GVariant form, as in the following example:
/// ```
///     [org.gtk.Example]
///     key1='string'
///     key2=1.5
/// ```
/// 
/// glib-compile-schemas expects schema files to have the extension
/// `.gschema.override`.
/// 
/// ## Binding
/// 
/// A very convenient feature of GSettings lets you bind `GObject` properties
/// directly to settings, using `g_settings_bind()`. Once a GObject property
/// has been bound to a setting, changes on either side are automatically
/// propagated to the other side. GSettings handles details like mapping
/// between GObject and GVariant types, and preventing infinite cycles.
/// 
/// This makes it very easy to hook up a preferences dialog to the
/// underlying settings. To make this even more convenient, GSettings
/// looks for a boolean property with the name "sensitivity" and
/// automatically binds it to the writability of the bound setting.
/// If this 'magic' gets in the way, it can be suppressed with the
/// `G_SETTINGS_BIND_NO_SENSITIVITY` flag.
/// 
/// ## Relocatable schemas # <a name="gsettings-relocatable"></a>
/// 
/// A relocatable schema is one with no `path` attribute specified on its
/// <schema> element. By using `g_settings_new_with_path()`, a `GSettings` object
/// can be instantiated for a relocatable schema, assigning a path to the
/// instance. Paths passed to `g_settings_new_with_path()` will typically be
/// constructed dynamically from a constant prefix plus some form of instance
/// identifier; but they must still be valid GSettings paths. Paths could also
/// be constant and used with a globally installed schema originating from a
/// dependency library.
/// 
/// For example, a relocatable schema could be used to store geometry information
/// for different windows in an application. If the schema ID was
/// `org.foo.MyApp.Window`, it could be instantiated for paths
/// `/org/foo/MyApp/main/`, `/org/foo/MyApp/document-1/`,
/// `/org/foo/MyApp/document-2/`, etc. If any of the paths are well-known
/// they can be specified as <child> elements in the parent schema, e.g.:
/// ```
/// <schema id="org.foo.MyApp" path="/org/foo/MyApp/">
///   <child name="main" schema="org.foo.MyApp.Window"/>
/// </schema>
/// ```
/// 
/// ## Build system integration # <a name="gsettings-build-system"></a>
/// 
/// GSettings comes with autotools integration to simplify compiling and
/// installing schemas. To add GSettings support to an application, add the
/// following to your `configure.ac`:
/// ```
/// GLIB_GSETTINGS
/// ```
/// 
/// In the appropriate `Makefile.am`, use the following snippet to compile and
/// install the named schema:
/// ```
/// gsettings_SCHEMAS = org.foo.MyApp.gschema.xml
/// EXTRA_DIST = $(gsettings_SCHEMAS)
/// 
/// @GSETTINGS_RULES@
/// ```
/// 
/// No changes are needed to the build system to mark a schema XML file for
/// translation. Assuming it sets the `gettext-domain` attribute, a schema may
/// be marked for translation by adding it to `POTFILES.in`, assuming gettext
/// 0.19 is in use (the preferred method for translation):
/// ```
/// data/org.foo.MyApp.gschema.xml
/// ```
/// 
/// Alternatively, if intltool 0.50.1 is in use:
/// ```
/// [type: gettext/gsettings]data/org.foo.MyApp.gschema.xml
/// ```
/// 
/// GSettings will use gettext to look up translations for the <summary> and
/// <description> elements, and also any <default> elements which have a `l10n`
/// attribute set. Translations must not be included in the `.gschema.xml` file
/// by the build system, for example by using intltool XML rules with a
/// `.gschema.xml.in` template.
/// 
/// If an enumerated type defined in a C header file is to be used in a GSettings
/// schema, it can either be defined manually using an <enum> element in the
/// schema XML, or it can be extracted automatically from the C header. This
/// approach is preferred, as it ensures the two representations are always
/// synchronised. To do so, add the following to the relevant `Makefile.am`:
/// ```
/// gsettings_ENUM_NAMESPACE = org.foo.MyApp
/// gsettings_ENUM_FILES = my-app-enums.h my-app-misc.h
/// ```
/// 
/// `gsettings_ENUM_NAMESPACE` specifies the schema namespace for the enum files,
/// which are specified in `gsettings_ENUM_FILES`. This will generate a
/// `org.foo.MyApp.enums.xml` file containing the extracted enums, which will be
/// automatically included in the schema compilation, install and uninstall
/// rules. It should not be committed to version control or included in
/// `EXTRA_DIST`.
open class Settings: Object, SettingsProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Settings` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSettings>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GSettings`.
    /// i.e., ownership is transferred to the `Settings` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSettings>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `SettingsProtocol`
    /// Will retain `GSettings`.
    /// - Parameter other: an instance of a related type that implements `SettingsProtocol`
    public init<T: SettingsProtocol>(settings other: T) {
        super.init(retaining: cast(other.settings_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GSettings` object with the schema specified by
    /// `schema_id`.
    /// 
    /// Signals on the newly created `GSettings` object will be dispatched
    /// via the thread-default `GMainContext` in effect at the time of the
    /// call to `g_settings_new()`.  The new `GSettings` will hold a reference
    /// on the context.  See `g_main_context_push_thread_default()`.
    public init( schema_id: UnsafePointer<gchar>) {
        let rv: UnsafeMutablePointer<GSettings>! = cast(g_settings_new(schema_id))
        super.init(cast(rv))
    }

    /// Creates a new `GSettings` object with a given schema, backend and
    /// path.
    /// 
    /// It should be extremely rare that you ever want to use this function.
    /// It is made available for advanced use-cases (such as plugin systems
    /// that want to provide access to schemas loaded from custom locations,
    /// etc).
    /// 
    /// At the most basic level, a `GSettings` object is a pure composition of
    /// 4 things: a `GSettingsSchema`, a `GSettingsBackend`, a path within that
    /// backend, and a `GMainContext` to which signals are dispatched.
    /// 
    /// This constructor therefore gives you full control over constructing
    /// `GSettings` instances.  The first 3 parameters are given directly as
    /// `schema`, `backend` and `path`, and the main context is taken from the
    /// thread-default (as per `g_settings_new()`).
    /// 
    /// If `backend` is `nil` then the default backend is used.
    /// 
    /// If `path` is `nil` then the path from the schema is used.  It is an
    /// error if `path` is `nil` and the schema has no path of its own or if
    /// `path` is non-`nil` and not equal to the path that the schema does
    /// have.
    public init(full schema: SettingsSchemaProtocol, backend: SettingsBackendProtocol, path: UnsafePointer<gchar>) {
        let rv: UnsafeMutablePointer<GSettings>! = cast(g_settings_new_full(cast(schema.ptr), cast(backend.ptr), path))
        super.init(cast(rv))
    }

    /// Creates a new `GSettings` object with the schema specified by
    /// `schema_id` and a given `GSettingsBackend`.
    /// 
    /// Creating a `GSettings` object with a different backend allows accessing
    /// settings from a database other than the usual one. For example, it may make
    /// sense to pass a backend corresponding to the "defaults" settings database on
    /// the system to get a settings object that modifies the system default
    /// settings instead of the settings for this user.
    public init(backend schema_id: UnsafePointer<gchar>, backend: SettingsBackendProtocol) {
        let rv: UnsafeMutablePointer<GSettings>! = cast(g_settings_new_with_backend(schema_id, cast(backend.ptr)))
        super.init(cast(rv))
    }

    /// Creates a new `GSettings` object with the schema specified by
    /// `schema_id` and a given `GSettingsBackend` and path.
    /// 
    /// This is a mix of `g_settings_new_with_backend()` and
    /// `g_settings_new_with_path()`.
    public init(backendAndPath schema_id: UnsafePointer<gchar>, backend: SettingsBackendProtocol, path: UnsafePointer<gchar>) {
        let rv: UnsafeMutablePointer<GSettings>! = cast(g_settings_new_with_backend_and_path(schema_id, cast(backend.ptr), path))
        super.init(cast(rv))
    }

    /// Creates a new `GSettings` object with the relocatable schema specified
    /// by `schema_id` and a given path.
    /// 
    /// You only need to do this if you want to directly create a settings
    /// object with a schema that doesn't have a specified path of its own.
    /// That's quite rare.
    /// 
    /// It is a programmer error to call this function for a schema that
    /// has an explicitly specified path.
    /// 
    /// It is a programmer error if `path` is not a valid path.  A valid path
    /// begins and ends with '/' and does not contain two consecutive '/'
    /// characters.
    public init(path schema_id: UnsafePointer<gchar>, path: UnsafePointer<gchar>) {
        let rv: UnsafeMutablePointer<GSettings>! = cast(g_settings_new_with_path(schema_id, path))
        super.init(cast(rv))
    }

    /// Creates a new `GSettings` object with a given schema, backend and
    /// path.
    /// 
    /// It should be extremely rare that you ever want to use this function.
    /// It is made available for advanced use-cases (such as plugin systems
    /// that want to provide access to schemas loaded from custom locations,
    /// etc).
    /// 
    /// At the most basic level, a `GSettings` object is a pure composition of
    /// 4 things: a `GSettingsSchema`, a `GSettingsBackend`, a path within that
    /// backend, and a `GMainContext` to which signals are dispatched.
    /// 
    /// This constructor therefore gives you full control over constructing
    /// `GSettings` instances.  The first 3 parameters are given directly as
    /// `schema`, `backend` and `path`, and the main context is taken from the
    /// thread-default (as per `g_settings_new()`).
    /// 
    /// If `backend` is `nil` then the default backend is used.
    /// 
    /// If `path` is `nil` then the path from the schema is used.  It is an
    /// error if `path` is `nil` and the schema has no path of its own or if
    /// `path` is non-`nil` and not equal to the path that the schema does
    /// have.
    public static func new(full schema: SettingsSchemaProtocol, backend: SettingsBackendProtocol, path: UnsafePointer<gchar>) -> Settings! {
        let rv: UnsafeMutablePointer<GSettings>! = cast(g_settings_new_full(cast(schema.ptr), cast(backend.ptr), path))
        return rv.map { Settings(cast($0)) }
    }

    /// Creates a new `GSettings` object with the schema specified by
    /// `schema_id` and a given `GSettingsBackend`.
    /// 
    /// Creating a `GSettings` object with a different backend allows accessing
    /// settings from a database other than the usual one. For example, it may make
    /// sense to pass a backend corresponding to the "defaults" settings database on
    /// the system to get a settings object that modifies the system default
    /// settings instead of the settings for this user.
    public static func newWith(backend schema_id: UnsafePointer<gchar>, backend: SettingsBackendProtocol) -> Settings! {
        let rv: UnsafeMutablePointer<GSettings>! = cast(g_settings_new_with_backend(schema_id, cast(backend.ptr)))
        return rv.map { Settings(cast($0)) }
    }

    /// Creates a new `GSettings` object with the schema specified by
    /// `schema_id` and a given `GSettingsBackend` and path.
    /// 
    /// This is a mix of `g_settings_new_with_backend()` and
    /// `g_settings_new_with_path()`.
    public static func newWith(backendAndPath schema_id: UnsafePointer<gchar>, backend: SettingsBackendProtocol, path: UnsafePointer<gchar>) -> Settings! {
        let rv: UnsafeMutablePointer<GSettings>! = cast(g_settings_new_with_backend_and_path(schema_id, cast(backend.ptr), path))
        return rv.map { Settings(cast($0)) }
    }

    /// Creates a new `GSettings` object with the relocatable schema specified
    /// by `schema_id` and a given path.
    /// 
    /// You only need to do this if you want to directly create a settings
    /// object with a schema that doesn't have a specified path of its own.
    /// That's quite rare.
    /// 
    /// It is a programmer error to call this function for a schema that
    /// has an explicitly specified path.
    /// 
    /// It is a programmer error if `path` is not a valid path.  A valid path
    /// begins and ends with '/' and does not contain two consecutive '/'
    /// characters.
    public static func newWith(path schema_id: UnsafePointer<gchar>, path: UnsafePointer<gchar>) -> Settings! {
        let rv: UnsafeMutablePointer<GSettings>! = cast(g_settings_new_with_path(schema_id, path))
        return rv.map { Settings(cast($0)) }
    }

}

public enum SettingsPropertyName: String, PropertyNameProtocol {
    /// The name of the context that the settings are stored in.
    case backend = "backend"
    /// Whether the `GSettings` object is in 'delay-apply' mode. See
    /// `g_settings_delay()` for details.
    case delayApply = "delay-apply"
    /// If this property is `true`, the `GSettings` object has outstanding
    /// changes that will be applied when `g_settings_apply()` is called.
    case hasUnapplied = "has-unapplied"
    /// The path within the backend where the settings are stored.
    case path = "path"
    /// The name of the schema that describes the types of keys
    /// for this `GSettings` object.
    /// 
    /// The type of this property is *not* `GSettingsSchema`.
    /// `GSettingsSchema` has only existed since version 2.32 and
    /// unfortunately this name was used in previous versions to refer to
    /// the schema ID rather than the schema itself.  Take care to use the
    /// 'settings-schema' property if you wish to pass in a
    /// `GSettingsSchema`.
    ///
    /// **schema is deprecated:**
    /// Use the 'schema-id' property instead.  In a future
    /// version, this property may instead refer to a #GSettingsSchema.
    case schema = "schema"
    /// The name of the schema that describes the types of keys
    /// for this `GSettings` object.
    case schemaID = "schema-id"
    /// The `GSettingsSchema` describing the types of keys for this
    /// `GSettings` object.
    /// 
    /// IDeally, this property would be called 'schema'.  `GSettingsSchema`
    /// has only existed since version 2.32, however, and before then the
    /// 'schema' property was used to refer to the ID of the schema rather
    /// than the schema itself.  Take care.
    case settingsSchema = "settings-schema"
}

public extension SettingsProtocol {
    /// Bind a `SettingsPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: SettingsPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(settings_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

    /// Get the value of a Settings property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    func get(property: SettingsPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Settings property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    func set(property: SettingsPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum SettingsSignalName: String, SignalNameProtocol {
    /// The "change-event" signal is emitted once per change event that
    /// affects this settings object.  You should connect to this signal
    /// only if you are interested in viewing groups of changes before they
    /// are split out into multiple emissions of the "changed" signal.
    /// For most use cases it is more appropriate to use the "changed" signal.
    /// 
    /// In the event that the change event applies to one or more specified
    /// keys, `keys` will be an array of `GQuark` of length `n_keys`.  In the
    /// event that the change event applies to the `GSettings` object as a
    /// whole (ie: potentially every key has been changed) then `keys` will
    /// be `nil` and `n_keys` will be 0.
    /// 
    /// The default handler for this signal invokes the "changed" signal
    /// for each affected key.  If any other connected handler returns
    /// `true` then this default functionality will be suppressed.
    case changeEvent = "change-event"
    /// The "changed" signal is emitted when a key has potentially changed.
    /// You should call one of the `g_settings_get()` calls to check the new
    /// value.
    /// 
    /// This signal supports detailed connections.  You can connect to the
    /// detailed signal "changed`x`" in order to only receive callbacks
    /// when key "x" changes.
    /// 
    /// Note that `settings` only emits this signal if you have read `key` at
    /// least once while a signal handler was already connected for `key`.
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
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The "writable-change-event" signal is emitted once per writability
    /// change event that affects this settings object.  You should connect
    /// to this signal if you are interested in viewing groups of changes
    /// before they are split out into multiple emissions of the
    /// "writable-changed" signal.  For most use cases it is more
    /// appropriate to use the "writable-changed" signal.
    /// 
    /// In the event that the writability change applies only to a single
    /// key, `key` will be set to the `GQuark` for that key.  In the event
    /// that the writability change affects the entire settings object,
    /// `key` will be 0.
    /// 
    /// The default handler for this signal invokes the "writable-changed"
    /// and "changed" signals for each affected key.  This is done because
    /// changes in writability might also imply changes in value (if for
    /// example, a new mandatory setting is introduced).  If any other
    /// connected handler returns `true` then this default functionality
    /// will be suppressed.
    case writableChangeEvent = "writable-change-event"
    /// The "writable-changed" signal is emitted when the writability of a
    /// key has potentially changed.  You should call
    /// `g_settings_is_writable()` in order to determine the new status.
    /// 
    /// This signal supports detailed connections.  You can connect to the
    /// detailed signal "writable-changed`x`" in order to only receive
    /// callbacks when the writability of "x" changes.
    case writableChanged = "writable-changed"
    /// The name of the context that the settings are stored in.
    case notifyBackend = "notify::backend"
    /// Whether the `GSettings` object is in 'delay-apply' mode. See
    /// `g_settings_delay()` for details.
    case notifyDelayApply = "notify::delay-apply"
    /// If this property is `true`, the `GSettings` object has outstanding
    /// changes that will be applied when `g_settings_apply()` is called.
    case notifyHasUnapplied = "notify::has-unapplied"
    /// The path within the backend where the settings are stored.
    case notifyPath = "notify::path"
    /// The name of the schema that describes the types of keys
    /// for this `GSettings` object.
    /// 
    /// The type of this property is *not* `GSettingsSchema`.
    /// `GSettingsSchema` has only existed since version 2.32 and
    /// unfortunately this name was used in previous versions to refer to
    /// the schema ID rather than the schema itself.  Take care to use the
    /// 'settings-schema' property if you wish to pass in a
    /// `GSettingsSchema`.
    ///
    /// **schema is deprecated:**
    /// Use the 'schema-id' property instead.  In a future
    /// version, this property may instead refer to a #GSettingsSchema.
    case notifySchema = "notify::schema"
    /// The name of the schema that describes the types of keys
    /// for this `GSettings` object.
    case notifySchemaID = "notify::schema-id"
    /// The `GSettingsSchema` describing the types of keys for this
    /// `GSettings` object.
    /// 
    /// IDeally, this property would be called 'schema'.  `GSettingsSchema`
    /// has only existed since version 2.32, however, and before then the
    /// 'schema' property was used to refer to the ID of the schema rather
    /// than the schema itself.  Take care.
    case notifySettingsSchema = "notify::settings-schema"
}

public extension SettingsProtocol {
    /// Connect a `SettingsSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: SettingsSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(settings_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: Settings Class: SettingsProtocol extension (methods and fields)
public extension SettingsProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSettings` instance.
    var settings_ptr: UnsafeMutablePointer<GSettings> { return ptr.assumingMemoryBound(to: GSettings.self) }

    /// Applies any changes that have been made to the settings.  This
    /// function does nothing unless `settings` is in 'delay-apply' mode;
    /// see `g_settings_delay()`.  In the normal case settings are always
    /// applied immediately.
    func apply() {
        g_settings_apply(cast(settings_ptr))
    
    }

    /// Create a binding between the `key` in the `settings` object
    /// and the property `property` of `object`.
    /// 
    /// The binding uses the default GIO mapping functions to map
    /// between the settings and property values. These functions
    /// handle booleans, numeric types and string types in a
    /// straightforward way. Use `g_settings_bind_with_mapping()` if
    /// you need a custom mapping, or map between types that are not
    /// supported by the default mapping functions.
    /// 
    /// Unless the `flags` include `G_SETTINGS_BIND_NO_SENSITIVITY`, this
    /// function also establishes a binding between the writability of
    /// `key` and the "sensitive" property of `object` (if `object` has
    /// a boolean property by that name). See `g_settings_bind_writable()`
    /// for more details about writable bindings.
    /// 
    /// Note that the lifecycle of the binding is tied to `object`,
    /// and that you can have only one binding per object property.
    /// If you bind the same property twice on the same object, the second
    /// binding overrides the first one.
    func bind(key: UnsafePointer<gchar>, object: ObjectProtocol, property: UnsafePointer<gchar>, flags: SettingsBindFlags) {
        g_settings_bind(cast(settings_ptr), key, cast(object.ptr), property, flags.value)
    
    }

    /// Create a binding between the `key` in the `settings` object
    /// and the property `property` of `object`.
    /// 
    /// The binding uses the provided mapping functions to map between
    /// settings and property values.
    /// 
    /// Note that the lifecycle of the binding is tied to `object`,
    /// and that you can have only one binding per object property.
    /// If you bind the same property twice on the same object, the second
    /// binding overrides the first one.
    func bindWithMapping(key: UnsafePointer<gchar>, object: ObjectProtocol, property: UnsafePointer<gchar>, flags: SettingsBindFlags, getMapping get_mapping: @escaping SettingsBindGetMapping, setMapping set_mapping: @escaping SettingsBindSetMapping, userData user_data: UnsafeMutableRawPointer, destroy: @escaping GLib.DestroyNotify) {
        g_settings_bind_with_mapping(cast(settings_ptr), key, cast(object.ptr), property, flags.value, get_mapping, set_mapping, cast(user_data), destroy)
    
    }

    /// Create a binding between the writability of `key` in the
    /// `settings` object and the property `property` of `object`.
    /// The property must be boolean; "sensitive" or "visible"
    /// properties of widgets are the most likely candidates.
    /// 
    /// Writable bindings are always uni-directional; changes of the
    /// writability of the setting will be propagated to the object
    /// property, not the other way.
    /// 
    /// When the `inverted` argument is `true`, the binding inverts the
    /// value as it passes from the setting to the object, i.e. `property`
    /// will be set to `true` if the key is not writable.
    /// 
    /// Note that the lifecycle of the binding is tied to `object`,
    /// and that you can have only one binding per object property.
    /// If you bind the same property twice on the same object, the second
    /// binding overrides the first one.
    func bindWritable(key: UnsafePointer<gchar>, object: ObjectProtocol, property: UnsafePointer<gchar>, inverted: Bool) {
        g_settings_bind_writable(cast(settings_ptr), key, cast(object.ptr), property, gboolean(inverted ? 1 : 0))
    
    }

    /// Creates a `GAction` corresponding to a given `GSettings` key.
    /// 
    /// The action has the same name as the key.
    /// 
    /// The value of the key becomes the state of the action and the action
    /// is enabled when the key is writable.  Changing the state of the
    /// action results in the key being written to.  Changes to the value or
    /// writability of the key cause appropriate change notifications to be
    /// emitted for the action.
    /// 
    /// For boolean-valued keys, action activations take no parameter and
    /// result in the toggling of the value.  For all other types,
    /// activations take the new value for the key (which must have the
    /// correct type).
    func createAction(key: UnsafePointer<gchar>) -> UnsafeMutablePointer<GAction>! {
        let rv: UnsafeMutablePointer<GAction>! = cast(g_settings_create_action(cast(settings_ptr), key))
        return cast(rv)
    }

    /// Changes the `GSettings` object into 'delay-apply' mode. In this
    /// mode, changes to `settings` are not immediately propagated to the
    /// backend, but kept locally until `g_settings_apply()` is called.
    func delay() {
        g_settings_delay(cast(settings_ptr))
    
    }


    // *** get() is not available because it has a varargs (...) parameter!


    /// Gets the value that is stored at `key` in `settings`.
    /// 
    /// A convenience variant of `g_settings_get()` for booleans.
    /// 
    /// It is a programmer error to give a `key` that isn't specified as
    /// having a boolean type in the schema for `settings`.
    func getBoolean(key: UnsafePointer<gchar>) -> Bool {
        let rv = g_settings_get_boolean(cast(settings_ptr), key)
        return Bool(rv != 0)
    }

    /// Creates a child settings object which has a base path of
    /// `base-path/`name``, where `base-path` is the base path of
    /// `settings`.
    /// 
    /// The schema for the child settings object must have been declared
    /// in the schema of `settings` using a <child> element.
    func getChild(name: UnsafePointer<gchar>) -> UnsafeMutablePointer<GSettings>! {
        let rv: UnsafeMutablePointer<GSettings>! = cast(g_settings_get_child(cast(settings_ptr), name))
        return cast(rv)
    }

    /// Gets the "default value" of a key.
    /// 
    /// This is the value that would be read if `g_settings_reset()` were to be
    /// called on the key.
    /// 
    /// Note that this may be a different value than returned by
    /// `g_settings_schema_key_get_default_value()` if the system administrator
    /// has provided a default value.
    /// 
    /// Comparing the return values of `g_settings_get_default_value()` and
    /// `g_settings_get_value()` is not sufficient for determining if a value
    /// has been set because the user may have explicitly set the value to
    /// something that happens to be equal to the default.  The difference
    /// here is that if the default changes in the future, the user's key
    /// will still be set.
    /// 
    /// This function may be useful for adding an indication to a UI of what
    /// the default value was before the user set it.
    /// 
    /// It is a programmer error to give a `key` that isn't contained in the
    /// schema for `settings`.
    func getDefaultValue(key: UnsafePointer<gchar>) -> UnsafeMutablePointer<GVariant>! {
        let rv: UnsafeMutablePointer<GVariant>! = cast(g_settings_get_default_value(cast(settings_ptr), key))
        return cast(rv)
    }

    /// Gets the value that is stored at `key` in `settings`.
    /// 
    /// A convenience variant of `g_settings_get()` for doubles.
    /// 
    /// It is a programmer error to give a `key` that isn't specified as
    /// having a 'double' type in the schema for `settings`.
    func getDouble(key: UnsafePointer<gchar>) -> Double {
        let rv: Double = cast(g_settings_get_double(cast(settings_ptr), key))
        return cast(rv)
    }

    /// Gets the value that is stored in `settings` for `key` and converts it
    /// to the enum value that it represents.
    /// 
    /// In order to use this function the type of the value must be a string
    /// and it must be marked in the schema file as an enumerated type.
    /// 
    /// It is a programmer error to give a `key` that isn't contained in the
    /// schema for `settings` or is not marked as an enumerated type.
    /// 
    /// If the value stored in the configuration database is not a valid
    /// value for the enumerated type then this function will return the
    /// default value.
    func getEnum(key: UnsafePointer<gchar>) -> Int {
        let rv: Int = cast(g_settings_get_enum(cast(settings_ptr), key))
        return Int(rv)
    }

    /// Gets the value that is stored in `settings` for `key` and converts it
    /// to the flags value that it represents.
    /// 
    /// In order to use this function the type of the value must be an array
    /// of strings and it must be marked in the schema file as a flags type.
    /// 
    /// It is a programmer error to give a `key` that isn't contained in the
    /// schema for `settings` or is not marked as a flags type.
    /// 
    /// If the value stored in the configuration database is not a valid
    /// value for the flags type then this function will return the default
    /// value.
    func getFlags(key: UnsafePointer<gchar>) -> Int {
        let rv: Int = cast(g_settings_get_flags(cast(settings_ptr), key))
        return Int(rv)
    }

    /// Returns whether the `GSettings` object has any unapplied
    /// changes.  This can only be the case if it is in 'delayed-apply' mode.
    func getHasUnapplied() -> Bool {
        let rv = g_settings_get_has_unapplied(cast(settings_ptr))
        return Bool(rv != 0)
    }

    /// Gets the value that is stored at `key` in `settings`.
    /// 
    /// A convenience variant of `g_settings_get()` for 32-bit integers.
    /// 
    /// It is a programmer error to give a `key` that isn't specified as
    /// having a int32 type in the schema for `settings`.
    func getInt(key: UnsafePointer<gchar>) -> Int {
        let rv: Int = cast(g_settings_get_int(cast(settings_ptr), key))
        return Int(rv)
    }

    /// Gets the value that is stored at `key` in `settings`.
    /// 
    /// A convenience variant of `g_settings_get()` for 64-bit integers.
    /// 
    /// It is a programmer error to give a `key` that isn't specified as
    /// having a int64 type in the schema for `settings`.
    func getInt64(key: UnsafePointer<gchar>) -> Int64 {
        let rv = g_settings_get_int64(cast(settings_ptr), key)
        return Int64(rv)
    }

    /// Gets the value that is stored at `key` in `settings`, subject to
    /// application-level validation/mapping.
    /// 
    /// You should use this function when the application needs to perform
    /// some processing on the value of the key (for example, parsing).  The
    /// `mapping` function performs that processing.  If the function
    /// indicates that the processing was unsuccessful (due to a parse error,
    /// for example) then the mapping is tried again with another value.
    /// 
    /// This allows a robust 'fall back to defaults' behaviour to be
    /// implemented somewhat automatically.
    /// 
    /// The first value that is tried is the user's setting for the key.  If
    /// the mapping function fails to map this value, other values may be
    /// tried in an unspecified order (system or site defaults, translated
    /// schema default values, untranslated schema default values, etc).
    /// 
    /// If the mapping function fails for all possible values, one additional
    /// attempt is made: the mapping function is called with a `nil` value.
    /// If the mapping function still indicates failure at this point then
    /// the application will be aborted.
    /// 
    /// The result parameter for the `mapping` function is pointed to a
    /// `gpointer` which is initially set to `nil`.  The same pointer is given
    /// to each invocation of `mapping`.  The final value of that `gpointer` is
    /// what is returned by this function.  `nil` is valid; it is returned
    /// just as any other value would be.
    func getMapped(key: UnsafePointer<gchar>, mapping: @escaping SettingsGetMapping, userData user_data: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer! {
        let rv: UnsafeMutableRawPointer! = cast(g_settings_get_mapped(cast(settings_ptr), key, mapping, cast(user_data)))
        return cast(rv)
    }

    /// Queries the range of a key.
    ///
    /// **get_range is deprecated:**
    /// Use g_settings_schema_key_get_range() instead.
    @available(*, deprecated) func getRange(key: UnsafePointer<gchar>) -> UnsafeMutablePointer<GVariant>! {
        let rv: UnsafeMutablePointer<GVariant>! = cast(g_settings_get_range(cast(settings_ptr), key))
        return cast(rv)
    }

    /// Gets the value that is stored at `key` in `settings`.
    /// 
    /// A convenience variant of `g_settings_get()` for strings.
    /// 
    /// It is a programmer error to give a `key` that isn't specified as
    /// having a string type in the schema for `settings`.
    func getString(key: UnsafePointer<gchar>) -> String! {
        let rv: String! = cast(g_settings_get_string(cast(settings_ptr), key))
        return cast(rv)
    }

    /// A convenience variant of `g_settings_get()` for string arrays.
    /// 
    /// It is a programmer error to give a `key` that isn't specified as
    /// having an array of strings type in the schema for `settings`.
    func getStrv(key: UnsafePointer<gchar>) -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        let rv: UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! = cast(g_settings_get_strv(cast(settings_ptr), key))
        return cast(rv)
    }

    /// Gets the value that is stored at `key` in `settings`.
    /// 
    /// A convenience variant of `g_settings_get()` for 32-bit unsigned
    /// integers.
    /// 
    /// It is a programmer error to give a `key` that isn't specified as
    /// having a uint32 type in the schema for `settings`.
    func getUint(key: UnsafePointer<gchar>) -> Int {
        let rv: Int = cast(g_settings_get_uint(cast(settings_ptr), key))
        return Int(rv)
    }

    /// Gets the value that is stored at `key` in `settings`.
    /// 
    /// A convenience variant of `g_settings_get()` for 64-bit unsigned
    /// integers.
    /// 
    /// It is a programmer error to give a `key` that isn't specified as
    /// having a uint64 type in the schema for `settings`.
    func getUint64(key: UnsafePointer<gchar>) -> UInt64 {
        let rv = g_settings_get_uint64(cast(settings_ptr), key)
        return UInt64(rv)
    }

    /// Checks the "user value" of a key, if there is one.
    /// 
    /// The user value of a key is the last value that was set by the user.
    /// 
    /// After calling `g_settings_reset()` this function should always return
    /// `nil` (assuming something is not wrong with the system
    /// configuration).
    /// 
    /// It is possible that `g_settings_get_value()` will return a different
    /// value than this function.  This can happen in the case that the user
    /// set a value for a key that was subsequently locked down by the system
    /// administrator -- this function will return the user's old value.
    /// 
    /// This function may be useful for adding a "reset" option to a UI or
    /// for providing indication that a particular value has been changed.
    /// 
    /// It is a programmer error to give a `key` that isn't contained in the
    /// schema for `settings`.
    func getUserValue(key: UnsafePointer<gchar>) -> UnsafeMutablePointer<GVariant>! {
        let rv: UnsafeMutablePointer<GVariant>! = cast(g_settings_get_user_value(cast(settings_ptr), key))
        return cast(rv)
    }

    /// Gets the value that is stored in `settings` for `key`.
    /// 
    /// It is a programmer error to give a `key` that isn't contained in the
    /// schema for `settings`.
    func getValue(key: UnsafePointer<gchar>) -> UnsafeMutablePointer<GVariant>! {
        let rv: UnsafeMutablePointer<GVariant>! = cast(g_settings_get_value(cast(settings_ptr), key))
        return cast(rv)
    }

    /// Finds out if a key can be written or not
    func isWritable(name: UnsafePointer<gchar>) -> Bool {
        let rv = g_settings_is_writable(cast(settings_ptr), name)
        return Bool(rv != 0)
    }

    /// Gets the list of children on `settings`.
    /// 
    /// The list is exactly the list of strings for which it is not an error
    /// to call `g_settings_get_child()`.
    /// 
    /// There is little reason to call this function from "normal" code, since
    /// you should already know what children are in your schema. This function
    /// may still be useful there for introspection reasons, however.
    /// 
    /// You should free the return value with `g_strfreev()` when you are done
    /// with it.
    func listChildren() -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        let rv: UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! = cast(g_settings_list_children(cast(settings_ptr)))
        return cast(rv)
    }

    /// Introspects the list of keys on `settings`.
    /// 
    /// You should probably not be calling this function from "normal" code
    /// (since you should already know what keys are in your schema).  This
    /// function is intended for introspection reasons.
    /// 
    /// You should free the return value with `g_strfreev()` when you are done
    /// with it.
    ///
    /// **list_keys is deprecated:**
    /// Use g_settings_schema_list_keys() instead.
    @available(*, deprecated) func listKeys() -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        let rv: UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! = cast(g_settings_list_keys(cast(settings_ptr)))
        return cast(rv)
    }

    /// Checks if the given `value` is of the correct type and within the
    /// permitted range for `key`.
    ///
    /// **range_check is deprecated:**
    /// Use g_settings_schema_key_range_check() instead.
    @available(*, deprecated) func rangeCheck(key: UnsafePointer<gchar>, value: VariantProtocol) -> Bool {
        let rv = g_settings_range_check(cast(settings_ptr), key, cast(value.ptr))
        return Bool(rv != 0)
    }

    /// Resets `key` to its default value.
    /// 
    /// This call resets the key, as much as possible, to its default value.
    /// That might be the value specified in the schema or the one set by the
    /// administrator.
    func reset(key: UnsafePointer<gchar>) {
        g_settings_reset(cast(settings_ptr), key)
    
    }

    /// Reverts all non-applied changes to the settings.  This function
    /// does nothing unless `settings` is in 'delay-apply' mode; see
    /// `g_settings_delay()`.  In the normal case settings are always applied
    /// immediately.
    /// 
    /// Change notifications will be emitted for affected keys.
    func revert() {
        g_settings_revert(cast(settings_ptr))
    
    }


    // *** set() is not available because it has a varargs (...) parameter!


    /// Sets `key` in `settings` to `value`.
    /// 
    /// A convenience variant of `g_settings_set()` for booleans.
    /// 
    /// It is a programmer error to give a `key` that isn't specified as
    /// having a boolean type in the schema for `settings`.
    func setBoolean(key: UnsafePointer<gchar>, value: Bool) -> Bool {
        let rv = g_settings_set_boolean(cast(settings_ptr), key, gboolean(value ? 1 : 0))
        return Bool(rv != 0)
    }

    /// Sets `key` in `settings` to `value`.
    /// 
    /// A convenience variant of `g_settings_set()` for doubles.
    /// 
    /// It is a programmer error to give a `key` that isn't specified as
    /// having a 'double' type in the schema for `settings`.
    func setDouble(key: UnsafePointer<gchar>, value: gdouble) -> Bool {
        let rv = g_settings_set_double(cast(settings_ptr), key, value)
        return Bool(rv != 0)
    }

    /// Looks up the enumerated type nick for `value` and writes it to `key`,
    /// within `settings`.
    /// 
    /// It is a programmer error to give a `key` that isn't contained in the
    /// schema for `settings` or is not marked as an enumerated type, or for
    /// `value` not to be a valid value for the named type.
    /// 
    /// After performing the write, accessing `key` directly with
    /// `g_settings_get_string()` will return the 'nick' associated with
    /// `value`.
    func setEnum(key: UnsafePointer<gchar>, value: CInt) -> Bool {
        let rv = g_settings_set_enum(cast(settings_ptr), key, gint(value))
        return Bool(rv != 0)
    }

    /// Looks up the flags type nicks for the bits specified by `value`, puts
    /// them in an array of strings and writes the array to `key`, within
    /// `settings`.
    /// 
    /// It is a programmer error to give a `key` that isn't contained in the
    /// schema for `settings` or is not marked as a flags type, or for `value`
    /// to contain any bits that are not value for the named type.
    /// 
    /// After performing the write, accessing `key` directly with
    /// `g_settings_get_strv()` will return an array of 'nicks'; one for each
    /// bit in `value`.
    func setFlags(key: UnsafePointer<gchar>, value: CUnsignedInt) -> Bool {
        let rv = g_settings_set_flags(cast(settings_ptr), key, guint(value))
        return Bool(rv != 0)
    }

    /// Sets `key` in `settings` to `value`.
    /// 
    /// A convenience variant of `g_settings_set()` for 32-bit integers.
    /// 
    /// It is a programmer error to give a `key` that isn't specified as
    /// having a int32 type in the schema for `settings`.
    func setInt(key: UnsafePointer<gchar>, value: CInt) -> Bool {
        let rv = g_settings_set_int(cast(settings_ptr), key, gint(value))
        return Bool(rv != 0)
    }

    /// Sets `key` in `settings` to `value`.
    /// 
    /// A convenience variant of `g_settings_set()` for 64-bit integers.
    /// 
    /// It is a programmer error to give a `key` that isn't specified as
    /// having a int64 type in the schema for `settings`.
    func setInt64(key: UnsafePointer<gchar>, value: Int64) -> Bool {
        let rv = g_settings_set_int64(cast(settings_ptr), key, gint64(value))
        return Bool(rv != 0)
    }

    /// Sets `key` in `settings` to `value`.
    /// 
    /// A convenience variant of `g_settings_set()` for strings.
    /// 
    /// It is a programmer error to give a `key` that isn't specified as
    /// having a string type in the schema for `settings`.
    func setString(key: UnsafePointer<gchar>, value: UnsafePointer<gchar>) -> Bool {
        let rv = g_settings_set_string(cast(settings_ptr), key, value)
        return Bool(rv != 0)
    }

    /// Sets `key` in `settings` to `value`.
    /// 
    /// A convenience variant of `g_settings_set()` for string arrays.  If
    /// `value` is `nil`, then `key` is set to be the empty array.
    /// 
    /// It is a programmer error to give a `key` that isn't specified as
    /// having an array of strings type in the schema for `settings`.
    func setStrv(key: UnsafePointer<gchar>, value: UnsafePointer<UnsafePointer<gchar>>) -> Bool {
        let rv = g_settings_set_strv(cast(settings_ptr), key, cast(value))
        return Bool(rv != 0)
    }

    /// Sets `key` in `settings` to `value`.
    /// 
    /// A convenience variant of `g_settings_set()` for 32-bit unsigned
    /// integers.
    /// 
    /// It is a programmer error to give a `key` that isn't specified as
    /// having a uint32 type in the schema for `settings`.
    func setUint(key: UnsafePointer<gchar>, value: CUnsignedInt) -> Bool {
        let rv = g_settings_set_uint(cast(settings_ptr), key, guint(value))
        return Bool(rv != 0)
    }

    /// Sets `key` in `settings` to `value`.
    /// 
    /// A convenience variant of `g_settings_set()` for 64-bit unsigned
    /// integers.
    /// 
    /// It is a programmer error to give a `key` that isn't specified as
    /// having a uint64 type in the schema for `settings`.
    func setUint64(key: UnsafePointer<gchar>, value: UInt64) -> Bool {
        let rv = g_settings_set_uint64(cast(settings_ptr), key, guint64(value))
        return Bool(rv != 0)
    }

    /// Sets `key` in `settings` to `value`.
    /// 
    /// It is a programmer error to give a `key` that isn't contained in the
    /// schema for `settings` or for `value` to have the incorrect type, per
    /// the schema.
    /// 
    /// If `value` is floating then this function consumes the reference.
    func setValue(key: UnsafePointer<gchar>, value: VariantProtocol) -> Bool {
        let rv = g_settings_set_value(cast(settings_ptr), key, cast(value.ptr))
        return Bool(rv != 0)
    }
    /// Returns whether the `GSettings` object has any unapplied
    /// changes.  This can only be the case if it is in 'delayed-apply' mode.
    var hasUnapplied: Bool {
        /// Returns whether the `GSettings` object has any unapplied
        /// changes.  This can only be the case if it is in 'delayed-apply' mode.
        get {
            let rv = g_settings_get_has_unapplied(cast(settings_ptr))
            return Bool(rv != 0)
        }
    }

    var parentInstance: GObject {
        get {
            let rv: GObject = cast(settings_ptr.pointee.parent_instance)
            return rv
        }
    }

    var priv: UnsafeMutablePointer<GSettingsPrivate> {
        get {
            let rv: UnsafeMutablePointer<GSettingsPrivate> = cast(settings_ptr.pointee.priv)
            return rv
        }
    }

}



// MARK: - SettingsBackend Class

/// The `SettingsBackendProtocol` protocol exposes the methods and properties of an underlying `GSettingsBackend` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SettingsBackend`.
/// Alternatively, use `SettingsBackendRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GSettingsBackend` interface defines a generic interface for
/// non-strictly-typed data that is stored in a hierarchy. To implement
/// an alternative storage backend for `GSettings`, you need to implement
/// the `GSettingsBackend` interface and then make it implement the
/// extension point `G_SETTINGS_BACKEND_EXTENSION_POINT_NAME`.
/// 
/// The interface defines methods for reading and writing values, a
/// method for determining if writing of certain values will fail
/// (lockdown) and a change notification mechanism.
/// 
/// The semantics of the interface are very precisely defined and
/// implementations must carefully adhere to the expectations of
/// callers that are documented on each of the interface methods.
/// 
/// Some of the `GSettingsBackend` functions accept or return a `GTree`.
/// These trees always have strings as keys and `GVariant` as values.
/// `g_settings_backend_create_tree()` is a convenience function to create
/// suitable trees.
/// 
/// The `GSettingsBackend` API is exported to allow third-party
/// implementations, but does not carry the same stability guarantees
/// as the public GIO API. For this reason, you have to define the
/// C preprocessor symbol `G_SETTINGS_ENABLE_BACKEND` before including
/// `gio/gsettingsbackend.h`.
public protocol SettingsBackendProtocol: ObjectProtocol {
        /// Untyped pointer to the underlying `GSettingsBackend` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSettingsBackend` instance.
    var settings_backend_ptr: UnsafeMutablePointer<GSettingsBackend> { get }
}

/// The `SettingsBackendRef` type acts as a lightweight Swift reference to an underlying `GSettingsBackend` instance.
/// It exposes methods that can operate on this data type through `SettingsBackendProtocol` conformance.
/// Use `SettingsBackendRef` only as an `unowned` reference to an existing `GSettingsBackend` instance.
///
/// The `GSettingsBackend` interface defines a generic interface for
/// non-strictly-typed data that is stored in a hierarchy. To implement
/// an alternative storage backend for `GSettings`, you need to implement
/// the `GSettingsBackend` interface and then make it implement the
/// extension point `G_SETTINGS_BACKEND_EXTENSION_POINT_NAME`.
/// 
/// The interface defines methods for reading and writing values, a
/// method for determining if writing of certain values will fail
/// (lockdown) and a change notification mechanism.
/// 
/// The semantics of the interface are very precisely defined and
/// implementations must carefully adhere to the expectations of
/// callers that are documented on each of the interface methods.
/// 
/// Some of the `GSettingsBackend` functions accept or return a `GTree`.
/// These trees always have strings as keys and `GVariant` as values.
/// `g_settings_backend_create_tree()` is a convenience function to create
/// suitable trees.
/// 
/// The `GSettingsBackend` API is exported to allow third-party
/// implementations, but does not carry the same stability guarantees
/// as the public GIO API. For this reason, you have to define the
/// C preprocessor symbol `G_SETTINGS_ENABLE_BACKEND` before including
/// `gio/gsettingsbackend.h`.
public struct SettingsBackendRef: SettingsBackendProtocol {
        /// Untyped pointer to the underlying `GSettingsBackend` instance.
    /// For type-safe access, use the generated, typed pointer `settings_backend_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SettingsBackendRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSettingsBackend>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SettingsBackendProtocol`
    init<T: SettingsBackendProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Returns the default `GSettingsBackend`. It is possible to override
    /// the default by setting the `GSETTINGS_BACKEND` environment variable
    /// to the name of a settings backend.
    /// 
    /// The user gets a reference to the backend.
    static func getDefault() -> SettingsBackendRef! {
        let rv: UnsafeMutablePointer<GSettingsBackend>! = cast(g_settings_backend_get_default())
        return rv.map { SettingsBackendRef(cast($0)) }
    }
}

/// The `SettingsBackend` type acts as a reference-counted owner of an underlying `GSettingsBackend` instance.
/// It provides the methods that can operate on this data type through `SettingsBackendProtocol` conformance.
/// Use `SettingsBackend` as a strong reference or owner of a `GSettingsBackend` instance.
///
/// The `GSettingsBackend` interface defines a generic interface for
/// non-strictly-typed data that is stored in a hierarchy. To implement
/// an alternative storage backend for `GSettings`, you need to implement
/// the `GSettingsBackend` interface and then make it implement the
/// extension point `G_SETTINGS_BACKEND_EXTENSION_POINT_NAME`.
/// 
/// The interface defines methods for reading and writing values, a
/// method for determining if writing of certain values will fail
/// (lockdown) and a change notification mechanism.
/// 
/// The semantics of the interface are very precisely defined and
/// implementations must carefully adhere to the expectations of
/// callers that are documented on each of the interface methods.
/// 
/// Some of the `GSettingsBackend` functions accept or return a `GTree`.
/// These trees always have strings as keys and `GVariant` as values.
/// `g_settings_backend_create_tree()` is a convenience function to create
/// suitable trees.
/// 
/// The `GSettingsBackend` API is exported to allow third-party
/// implementations, but does not carry the same stability guarantees
/// as the public GIO API. For this reason, you have to define the
/// C preprocessor symbol `G_SETTINGS_ENABLE_BACKEND` before including
/// `gio/gsettingsbackend.h`.
open class SettingsBackend: Object, SettingsBackendProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SettingsBackend` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSettingsBackend>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GSettingsBackend`.
    /// i.e., ownership is transferred to the `SettingsBackend` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSettingsBackend>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `SettingsBackendProtocol`
    /// Will retain `GSettingsBackend`.
    /// - Parameter other: an instance of a related type that implements `SettingsBackendProtocol`
    public init<T: SettingsBackendProtocol>(settingsBackend other: T) {
        super.init(retaining: cast(other.settings_backend_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }


    /// Returns the default `GSettingsBackend`. It is possible to override
    /// the default by setting the `GSETTINGS_BACKEND` environment variable
    /// to the name of a settings backend.
    /// 
    /// The user gets a reference to the backend.
    public static func getDefault() -> SettingsBackend! {
        let rv: UnsafeMutablePointer<GSettingsBackend>! = cast(g_settings_backend_get_default())
        return rv.map { SettingsBackend(cast($0)) }
    }

}

// MARK: no SettingsBackend properties

public enum SettingsBackendSignalName: String, SignalNameProtocol {
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

}

public extension SettingsBackendProtocol {
    /// Connect a `SettingsBackendSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: SettingsBackendSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(settings_backend_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: SettingsBackend Class: SettingsBackendProtocol extension (methods and fields)
public extension SettingsBackendProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSettingsBackend` instance.
    var settings_backend_ptr: UnsafeMutablePointer<GSettingsBackend> { return ptr.assumingMemoryBound(to: GSettingsBackend.self) }

    /// Signals that a single key has possibly changed.  Backend
    /// implementations should call this if a key has possibly changed its
    /// value.
    /// 
    /// `key` must be a valid key (ie starting with a slash, not containing
    /// '//', and not ending with a slash).
    /// 
    /// The implementation must call this function during any call to
    /// `g_settings_backend_write()`, before the call returns (except in the
    /// case that no keys are actually changed and it cares to detect this
    /// fact).  It may not rely on the existence of a mainloop for
    /// dispatching the signal later.
    /// 
    /// The implementation may call this function at any other time it likes
    /// in response to other events (such as changes occurring outside of the
    /// program).  These calls may originate from a mainloop or may originate
    /// in response to any other action (including from calls to
    /// `g_settings_backend_write()`).
    /// 
    /// In the case that this call is in response to a call to
    /// `g_settings_backend_write()` then `origin_tag` must be set to the same
    /// value that was passed to that call.
    func changed(key: UnsafePointer<gchar>, originTag origin_tag: UnsafeMutableRawPointer) {
        g_settings_backend_changed(cast(settings_backend_ptr), key, cast(origin_tag))
    
    }

    /// This call is a convenience wrapper.  It gets the list of changes from
    /// `tree`, computes the longest common prefix and calls
    /// `g_settings_backend_changed()`.
    func changed(tree: TreeProtocol, originTag origin_tag: UnsafeMutableRawPointer) {
        g_settings_backend_changed_tree(cast(settings_backend_ptr), cast(tree.ptr), cast(origin_tag))
    
    }

    /// Signals that a list of keys have possibly changed.  Backend
    /// implementations should call this if keys have possibly changed their
    /// values.
    /// 
    /// `path` must be a valid path (ie starting and ending with a slash and
    /// not containing '//').  Each string in `items` must form a valid key
    /// name when `path` is prefixed to it (ie: each item must not start or
    /// end with '/' and must not contain '//').
    /// 
    /// The meaning of this signal is that any of the key names resulting
    /// from the contatenation of `path` with each item in `items` may have
    /// changed.
    /// 
    /// The same rules for when notifications must occur apply as per
    /// `g_settings_backend_changed()`.  These two calls can be used
    /// interchangeably if exactly one item has changed (although in that
    /// case `g_settings_backend_changed()` is definitely preferred).
    /// 
    /// For efficiency reasons, the implementation should strive for `path` to
    /// be as long as possible (ie: the longest common prefix of all of the
    /// keys that were changed) but this is not strictly required.
    func keysChanged(path: UnsafePointer<gchar>, items: UnsafePointer<UnsafePointer<gchar>>, originTag origin_tag: UnsafeMutableRawPointer) {
        g_settings_backend_keys_changed(cast(settings_backend_ptr), path, cast(items), cast(origin_tag))
    
    }

    /// Signals that all keys below a given path may have possibly changed.
    /// Backend implementations should call this if an entire path of keys
    /// have possibly changed their values.
    /// 
    /// `path` must be a valid path (ie starting and ending with a slash and
    /// not containing '//').
    /// 
    /// The meaning of this signal is that any of the key which has a name
    /// starting with `path` may have changed.
    /// 
    /// The same rules for when notifications must occur apply as per
    /// `g_settings_backend_changed()`.  This call might be an appropriate
    /// reasponse to a 'reset' call but implementations are also free to
    /// explicitly list the keys that were affected by that call if they can
    /// easily do so.
    /// 
    /// For efficiency reasons, the implementation should strive for `path` to
    /// be as long as possible (ie: the longest common prefix of all of the
    /// keys that were changed) but this is not strictly required.  As an
    /// example, if this function is called with the path of "/" then every
    /// single key in the application will be notified of a possible change.
    func pathChanged(path: UnsafePointer<gchar>, originTag origin_tag: UnsafeMutableRawPointer) {
        g_settings_backend_path_changed(cast(settings_backend_ptr), path, cast(origin_tag))
    
    }

    /// Signals that the writability of all keys below a given path may have
    /// changed.
    /// 
    /// Since GSettings performs no locking operations for itself, this call
    /// will always be made in response to external events.
    func pathWritableChanged(path: UnsafePointer<gchar>) {
        g_settings_backend_path_writable_changed(cast(settings_backend_ptr), path)
    
    }

    /// Signals that the writability of a single key has possibly changed.
    /// 
    /// Since GSettings performs no locking operations for itself, this call
    /// will always be made in response to external events.
    func writableChanged(key: UnsafePointer<gchar>) {
        g_settings_backend_writable_changed(cast(settings_backend_ptr), key)
    
    }

    var parentInstance: GObject {
        get {
            let rv: GObject = cast(settings_backend_ptr.pointee.parent_instance)
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - SimpleAction Class

/// The `SimpleActionProtocol` protocol exposes the methods and properties of an underlying `GSimpleAction` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SimpleAction`.
/// Alternatively, use `SimpleActionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GSimpleAction` is the obvious simple implementation of the `GAction`
/// interface. This is the easiest way to create an action for purposes of
/// adding it to a `GSimpleActionGroup`.
/// 
/// See also `GtkAction`.
public protocol SimpleActionProtocol: ObjectProtocol, ActionProtocol {
        /// Untyped pointer to the underlying `GSimpleAction` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSimpleAction` instance.
    var simple_action_ptr: UnsafeMutablePointer<GSimpleAction> { get }
}

/// The `SimpleActionRef` type acts as a lightweight Swift reference to an underlying `GSimpleAction` instance.
/// It exposes methods that can operate on this data type through `SimpleActionProtocol` conformance.
/// Use `SimpleActionRef` only as an `unowned` reference to an existing `GSimpleAction` instance.
///
/// A `GSimpleAction` is the obvious simple implementation of the `GAction`
/// interface. This is the easiest way to create an action for purposes of
/// adding it to a `GSimpleActionGroup`.
/// 
/// See also `GtkAction`.
public struct SimpleActionRef: SimpleActionProtocol {
        /// Untyped pointer to the underlying `GSimpleAction` instance.
    /// For type-safe access, use the generated, typed pointer `simple_action_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SimpleActionRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSimpleAction>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SimpleActionProtocol`
    init<T: SimpleActionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new action.
    /// 
    /// The created action is stateless. See `g_simple_action_new_stateful()` to create
    /// an action that has state.
    init( name: UnsafePointer<gchar>, parameterType parameter_type: VariantTypeProtocol) {
        let rv: UnsafeMutablePointer<GSimpleAction>! = cast(g_simple_action_new(name, cast(parameter_type.ptr)))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }

    /// Creates a new stateful action.
    /// 
    /// All future state values must have the same `GVariantType` as the initial
    /// `state`.
    /// 
    /// If the `state` `GVariant` is floating, it is consumed.
    init(stateful name: UnsafePointer<gchar>, parameterType parameter_type: VariantTypeProtocol, state: VariantProtocol) {
        let rv: UnsafeMutablePointer<GSimpleAction>! = cast(g_simple_action_new_stateful(name, cast(parameter_type.ptr), cast(state.ptr)))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
    /// Creates a new stateful action.
    /// 
    /// All future state values must have the same `GVariantType` as the initial
    /// `state`.
    /// 
    /// If the `state` `GVariant` is floating, it is consumed.
    static func new(stateful name: UnsafePointer<gchar>, parameterType parameter_type: VariantTypeProtocol, state: VariantProtocol) -> SimpleActionRef! {
        let rv: UnsafeMutablePointer<GSimpleAction>! = cast(g_simple_action_new_stateful(name, cast(parameter_type.ptr), cast(state.ptr)))
        return rv.map { SimpleActionRef(cast($0)) }
    }
}

/// The `SimpleAction` type acts as a reference-counted owner of an underlying `GSimpleAction` instance.
/// It provides the methods that can operate on this data type through `SimpleActionProtocol` conformance.
/// Use `SimpleAction` as a strong reference or owner of a `GSimpleAction` instance.
///
/// A `GSimpleAction` is the obvious simple implementation of the `GAction`
/// interface. This is the easiest way to create an action for purposes of
/// adding it to a `GSimpleActionGroup`.
/// 
/// See also `GtkAction`.
open class SimpleAction: Object, SimpleActionProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SimpleAction` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSimpleAction>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GSimpleAction`.
    /// i.e., ownership is transferred to the `SimpleAction` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSimpleAction>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `SimpleActionProtocol`
    /// Will retain `GSimpleAction`.
    /// - Parameter other: an instance of a related type that implements `SimpleActionProtocol`
    public init<T: SimpleActionProtocol>(simpleAction other: T) {
        super.init(retaining: cast(other.simple_action_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new action.
    /// 
    /// The created action is stateless. See `g_simple_action_new_stateful()` to create
    /// an action that has state.
    public init( name: UnsafePointer<gchar>, parameterType parameter_type: VariantTypeProtocol) {
        let rv: UnsafeMutablePointer<GSimpleAction>! = cast(g_simple_action_new(name, cast(parameter_type.ptr)))
        super.init(cast(rv))
    }

    /// Creates a new stateful action.
    /// 
    /// All future state values must have the same `GVariantType` as the initial
    /// `state`.
    /// 
    /// If the `state` `GVariant` is floating, it is consumed.
    public init(stateful name: UnsafePointer<gchar>, parameterType parameter_type: VariantTypeProtocol, state: VariantProtocol) {
        let rv: UnsafeMutablePointer<GSimpleAction>! = cast(g_simple_action_new_stateful(name, cast(parameter_type.ptr), cast(state.ptr)))
        super.init(cast(rv))
    }

    /// Creates a new stateful action.
    /// 
    /// All future state values must have the same `GVariantType` as the initial
    /// `state`.
    /// 
    /// If the `state` `GVariant` is floating, it is consumed.
    public static func new(stateful name: UnsafePointer<gchar>, parameterType parameter_type: VariantTypeProtocol, state: VariantProtocol) -> SimpleAction! {
        let rv: UnsafeMutablePointer<GSimpleAction>! = cast(g_simple_action_new_stateful(name, cast(parameter_type.ptr), cast(state.ptr)))
        return rv.map { SimpleAction(cast($0)) }
    }

}

public enum SimpleActionPropertyName: String, PropertyNameProtocol {
    /// If `action` is currently enabled.
    /// 
    /// If the action is disabled then calls to `g_action_activate()` and
    /// `g_action_change_state()` have no effect.
    case enabled = "enabled"
    /// The name of the action. This is mostly meaningful for identifying
    /// the action once it has been added to a `GSimpleActionGroup`.
    case name = "name"
    /// The type of the parameter that must be given when activating the
    /// action.
    case parameterType = "parameter-type"
    /// The state of the action, or `nil` if the action is stateless.
    case state = "state"
    /// The `GVariantType` of the state that the action has, or `nil` if the
    /// action is stateless.
    case stateType = "state-type"
}

public extension SimpleActionProtocol {
    /// Bind a `SimpleActionPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: SimpleActionPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(simple_action_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

    /// Get the value of a SimpleAction property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    func get(property: SimpleActionPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a SimpleAction property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    func set(property: SimpleActionPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum SimpleActionSignalName: String, SignalNameProtocol {
    /// Indicates that the action was just activated.
    /// 
    /// `parameter` will always be of the expected type, i.e. the parameter type
    /// specified when the action was created. If an incorrect type is given when
    /// activating the action, this signal is not emitted.
    /// 
    /// Since GLib 2.40, if no handler is connected to this signal then the
    /// default behaviour for boolean-stated actions with a `nil` parameter
    /// type is to toggle them via the `GSimpleAction::change`-state signal.
    /// For stateful actions where the state type is equal to the parameter
    /// type, the default is to forward them directly to
    /// `GSimpleAction::change`-state.  This should allow almost all users
    /// of `GSimpleAction` to connect only one handler or the other.
    case activate = "activate"
    /// Indicates that the action just received a request to change its
    /// state.
    /// 
    /// `value` will always be of the correct state type, i.e. the type of the
    /// initial state passed to `g_simple_action_new_stateful()`. If an incorrect
    /// type is given when requesting to change the state, this signal is not
    /// emitted.
    /// 
    /// If no handler is connected to this signal then the default
    /// behaviour is to call `g_simple_action_set_state()` to set the state
    /// to the requested value. If you connect a signal handler then no
    /// default action is taken. If the state should change then you must
    /// call `g_simple_action_set_state()` from the handler.
    /// 
    /// An example of a 'change-state' handler:
    /// (C Language Example):
    /// ```C
    /// static void
    /// change_volume_state (GSimpleAction *action,
    ///                      GVariant      *value,
    ///                      gpointer       user_data)
    /// {
    ///   gint requested;
    /// 
    ///   requested = g_variant_get_int32 (value);
    /// 
    ///   // Volume only goes from 0 to 10
    ///   if (0 <= requested && requested <= 10)
    ///     g_simple_action_set_state (action, value);
    /// }
    /// ```
    /// 
    /// The handler need not set the state to the requested value.
    /// It could set it to any value at all, or take some other action.
    case changeState = "change-state"
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
    /// If `action` is currently enabled.
    /// 
    /// If the action is disabled then calls to `g_action_activate()` and
    /// `g_action_change_state()` have no effect.
    case notifyEnabled = "notify::enabled"
    /// The name of the action. This is mostly meaningful for identifying
    /// the action once it has been added to a `GSimpleActionGroup`.
    case notifyName = "notify::name"
    /// The type of the parameter that must be given when activating the
    /// action.
    case notifyParameterType = "notify::parameter-type"
    /// The state of the action, or `nil` if the action is stateless.
    case notifyState = "notify::state"
    /// The `GVariantType` of the state that the action has, or `nil` if the
    /// action is stateless.
    case notifyStateType = "notify::state-type"
}

public extension SimpleActionProtocol {
    /// Connect a `SimpleActionSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: SimpleActionSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(simple_action_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: SimpleAction Class: SimpleActionProtocol extension (methods and fields)
public extension SimpleActionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSimpleAction` instance.
    var simple_action_ptr: UnsafeMutablePointer<GSimpleAction> { return ptr.assumingMemoryBound(to: GSimpleAction.self) }

    /// Sets the action as enabled or not.
    /// 
    /// An action must be enabled in order to be activated or in order to
    /// have its state changed from outside callers.
    /// 
    /// This should only be called by the implementor of the action.  Users
    /// of the action should not attempt to modify its enabled flag.
    func set(enabled: Bool) {
        g_simple_action_set_enabled(cast(simple_action_ptr), gboolean(enabled ? 1 : 0))
    
    }

    /// Sets the state of the action.
    /// 
    /// This directly updates the 'state' property to the given value.
    /// 
    /// This should only be called by the implementor of the action.  Users
    /// of the action should not attempt to directly modify the 'state'
    /// property.  Instead, they should call `g_action_change_state()` to
    /// request the change.
    /// 
    /// If the `value` GVariant is floating, it is consumed.
    func setState(value: VariantProtocol) {
        g_simple_action_set_state(cast(simple_action_ptr), cast(value.ptr))
    
    }

    /// Sets the state hint for the action.
    /// 
    /// See `g_action_get_state_hint()` for more information about
    /// action state hints.
    func set(stateHint state_hint: VariantProtocol) {
        g_simple_action_set_state_hint(cast(simple_action_ptr), cast(state_hint.ptr))
    
    }


}



// MARK: - SimpleActionGroup Class

/// The `SimpleActionGroupProtocol` protocol exposes the methods and properties of an underlying `GSimpleActionGroup` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SimpleActionGroup`.
/// Alternatively, use `SimpleActionGroupRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GSimpleActionGroup` is a hash table filled with `GAction` objects,
/// implementing the `GActionGroup` and `GActionMap` interfaces.
public protocol SimpleActionGroupProtocol: ObjectProtocol, ActionGroupProtocol, ActionMapProtocol {
        /// Untyped pointer to the underlying `GSimpleActionGroup` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSimpleActionGroup` instance.
    var simple_action_group_ptr: UnsafeMutablePointer<GSimpleActionGroup> { get }
}

/// The `SimpleActionGroupRef` type acts as a lightweight Swift reference to an underlying `GSimpleActionGroup` instance.
/// It exposes methods that can operate on this data type through `SimpleActionGroupProtocol` conformance.
/// Use `SimpleActionGroupRef` only as an `unowned` reference to an existing `GSimpleActionGroup` instance.
///
/// `GSimpleActionGroup` is a hash table filled with `GAction` objects,
/// implementing the `GActionGroup` and `GActionMap` interfaces.
public struct SimpleActionGroupRef: SimpleActionGroupProtocol {
        /// Untyped pointer to the underlying `GSimpleActionGroup` instance.
    /// For type-safe access, use the generated, typed pointer `simple_action_group_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SimpleActionGroupRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSimpleActionGroup>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SimpleActionGroupProtocol`
    init<T: SimpleActionGroupProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new, empty, `GSimpleActionGroup`.
    init() {
        let rv: UnsafeMutablePointer<GSimpleActionGroup>! = cast(g_simple_action_group_new())
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
}

/// The `SimpleActionGroup` type acts as a reference-counted owner of an underlying `GSimpleActionGroup` instance.
/// It provides the methods that can operate on this data type through `SimpleActionGroupProtocol` conformance.
/// Use `SimpleActionGroup` as a strong reference or owner of a `GSimpleActionGroup` instance.
///
/// `GSimpleActionGroup` is a hash table filled with `GAction` objects,
/// implementing the `GActionGroup` and `GActionMap` interfaces.
open class SimpleActionGroup: Object, SimpleActionGroupProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SimpleActionGroup` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSimpleActionGroup>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GSimpleActionGroup`.
    /// i.e., ownership is transferred to the `SimpleActionGroup` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSimpleActionGroup>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `SimpleActionGroupProtocol`
    /// Will retain `GSimpleActionGroup`.
    /// - Parameter other: an instance of a related type that implements `SimpleActionGroupProtocol`
    public init<T: SimpleActionGroupProtocol>(simpleActionGroup other: T) {
        super.init(retaining: cast(other.simple_action_group_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new, empty, `GSimpleActionGroup`.
    public init() {
        let rv: UnsafeMutablePointer<GSimpleActionGroup>! = cast(g_simple_action_group_new())
        super.init(cast(rv))
    }


}

// MARK: no SimpleActionGroup properties

public enum SimpleActionGroupSignalName: String, SignalNameProtocol {
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

}

public extension SimpleActionGroupProtocol {
    /// Connect a `SimpleActionGroupSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: SimpleActionGroupSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(simple_action_group_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: SimpleActionGroup Class: SimpleActionGroupProtocol extension (methods and fields)
public extension SimpleActionGroupProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSimpleActionGroup` instance.
    var simple_action_group_ptr: UnsafeMutablePointer<GSimpleActionGroup> { return ptr.assumingMemoryBound(to: GSimpleActionGroup.self) }

    /// A convenience function for creating multiple `GSimpleAction` instances
    /// and adding them to the action group.
    ///
    /// **add_entries is deprecated:**
    /// Use g_action_map_add_action_entries()
    @available(*, deprecated) func add(entries: UnsafePointer<GActionEntry>, nEntries n_entries: CInt, userData user_data: UnsafeMutableRawPointer) {
        g_simple_action_group_add_entries(cast(simple_action_group_ptr), cast(entries), gint(n_entries), cast(user_data))
    
    }

    /// Adds an action to the action group.
    /// 
    /// If the action group already contains an action with the same name as
    /// `action` then the old action is dropped from the group.
    /// 
    /// The action group takes its own reference on `action`.
    ///
    /// **insert is deprecated:**
    /// Use g_action_map_add_action()
    @available(*, deprecated) func insert(action: ActionProtocol) {
        g_simple_action_group_insert(cast(simple_action_group_ptr), cast(action.ptr))
    
    }

    /// Looks up the action with the name `action_name` in the group.
    /// 
    /// If no such action exists, returns `nil`.
    ///
    /// **lookup is deprecated:**
    /// Use g_action_map_lookup_action()
    @available(*, deprecated) func lookup(actionName action_name: UnsafePointer<gchar>) -> UnsafeMutablePointer<GAction>! {
        let rv: UnsafeMutablePointer<GAction>! = cast(g_simple_action_group_lookup(cast(simple_action_group_ptr), action_name))
        return cast(rv)
    }

    /// Removes the named action from the action group.
    /// 
    /// If no action of this name is in the group then nothing happens.
    ///
    /// **remove is deprecated:**
    /// Use g_action_map_remove_action()
    @available(*, deprecated) func remove(actionName action_name: UnsafePointer<gchar>) {
        g_simple_action_group_remove(cast(simple_action_group_ptr), action_name)
    
    }

    // var parentInstance is unavailable because parent_instance is private

    // var priv is unavailable because priv is private

}



// MARK: - SimpleAsyncResult Class

/// The `SimpleAsyncResultProtocol` protocol exposes the methods and properties of an underlying `GSimpleAsyncResult` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SimpleAsyncResult`.
/// Alternatively, use `SimpleAsyncResultRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// As of GLib 2.46, `GSimpleAsyncResult` is deprecated in favor of
/// `GTask`, which provides a simpler API.
/// 
/// `GSimpleAsyncResult` implements `GAsyncResult`.
/// 
/// GSimpleAsyncResult handles `GAsyncReadyCallbacks`, error
/// reporting, operation cancellation and the final state of an operation,
/// completely transparent to the application. Results can be returned
/// as a pointer e.g. for functions that return data that is collected
/// asynchronously, a boolean value for checking the success or failure
/// of an operation, or a `gssize` for operations which return the number
/// of bytes modified by the operation; all of the simple return cases
/// are covered.
/// 
/// Most of the time, an application will not need to know of the details
/// of this API; it is handled transparently, and any necessary operations
/// are handled by `GAsyncResult`'s interface. However, if implementing a
/// new GIO module, for writing language bindings, or for complex
/// applications that need better control of how asynchronous operations
/// are completed, it is important to understand this functionality.
/// 
/// GSimpleAsyncResults are tagged with the calling function to ensure
/// that asynchronous functions and their finishing functions are used
/// together correctly.
/// 
/// To create a new `GSimpleAsyncResult`, call `g_simple_async_result_new()`.
/// If the result needs to be created for a `GError`, use
/// `g_simple_async_result_new_from_error()` or
/// `g_simple_async_result_new_take_error()`. If a `GError` is not available
/// (e.g. the asynchronous operation's doesn't take a `GError` argument),
/// but the result still needs to be created for an error condition, use
/// `g_simple_async_result_new_error()` (or `g_simple_async_result_set_error_va()`
/// if your application or binding requires passing a variable argument list
/// directly), and the error can then be propagated through the use of
/// `g_simple_async_result_propagate_error()`.
/// 
/// An asynchronous operation can be made to ignore a cancellation event by
/// calling `g_simple_async_result_set_handle_cancellation()` with a
/// `GSimpleAsyncResult` for the operation and `false`. This is useful for
/// operations that are dangerous to cancel, such as close (which would
/// cause a leak if cancelled before being run).
/// 
/// GSimpleAsyncResult can integrate into GLib's event loop, `GMainLoop`,
/// or it can use `GThreads`.
/// `g_simple_async_result_complete()` will finish an I/O task directly
/// from the point where it is called. `g_simple_async_result_complete_in_idle()`
/// will finish it from an idle handler in the
/// [thread-default main context](#g-main-context-push-thread-default)
/// where the `GSimpleAsyncResult` was created.
/// `g_simple_async_result_run_in_thread()` will run the job in a
/// separate thread and then use
/// `g_simple_async_result_complete_in_idle()` to deliver the result.
/// 
/// To set the results of an asynchronous function,
/// `g_simple_async_result_set_op_res_gpointer()`,
/// `g_simple_async_result_set_op_res_gboolean()`, and
/// `g_simple_async_result_set_op_res_gssize()`
/// are provided, setting the operation's result to a gpointer, gboolean, or
/// gssize, respectively.
/// 
/// Likewise, to get the result of an asynchronous function,
/// `g_simple_async_result_get_op_res_gpointer()`,
/// `g_simple_async_result_get_op_res_gboolean()`, and
/// `g_simple_async_result_get_op_res_gssize()` are
/// provided, getting the operation's result as a gpointer, gboolean, and
/// gssize, respectively.
/// 
/// For the details of the requirements implementations must respect, see
/// `GAsyncResult`.  A typical implementation of an asynchronous operation
/// using GSimpleAsyncResult looks something like this:
/// 
/// (C Language Example):
/// ```C
/// static void
/// baked_cb (Cake    *cake,
///           gpointer user_data)
/// {
///   // In this example, this callback is not given a reference to the cake,
///   // so the GSimpleAsyncResult has to take a reference to it.
///   GSimpleAsyncResult *result = user_data;
/// 
///   if (cake == NULL)
///     g_simple_async_result_set_error (result,
///                                      BAKER_ERRORS,
///                                      BAKER_ERROR_NO_FLOUR,
///                                      "Go to the supermarket");
///   else
///     g_simple_async_result_set_op_res_gpointer (result,
///                                                g_object_ref (cake),
///                                                g_object_unref);
/// 
/// 
///   // In this example, we assume that baked_cb is called as a callback from
///   // the mainloop, so it's safe to complete the operation synchronously here.
///   // If, however, _baker_prepare_cake () might call its callback without
///   // first returning to the mainloop — inadvisable, but some APIs do so —
///   // we would need to use g_simple_async_result_complete_in_idle().
///   g_simple_async_result_complete (result);
///   g_object_unref (result);
/// }
/// 
/// void
/// baker_bake_cake_async (Baker              *self,
///                        guint               radius,
///                        GAsyncReadyCallback callback,
///                        gpointer            user_data)
/// {
///   GSimpleAsyncResult *simple;
///   Cake               *cake;
/// 
///   if (radius < 3)
///     {
///       g_simple_async_report_error_in_idle (G_OBJECT (self),
///                                            callback,
///                                            user_data,
///                                            BAKER_ERRORS,
///                                            BAKER_ERROR_TOO_SMALL,
///                                            "%ucm radius cakes are silly",
///                                            radius);
///       return;
///     }
/// 
///   simple = g_simple_async_result_new (G_OBJECT (self),
///                                       callback,
///                                       user_data,
///                                       baker_bake_cake_async);
///   cake = _baker_get_cached_cake (self, radius);
/// 
///   if (cake != NULL)
///     {
///       g_simple_async_result_set_op_res_gpointer (simple,
///                                                  g_object_ref (cake),
///                                                  g_object_unref);
///       g_simple_async_result_complete_in_idle (simple);
///       g_object_unref (simple);
///       // Drop the reference returned by _baker_get_cached_cake();
///       // the GSimpleAsyncResult has taken its own reference.
///       g_object_unref (cake);
///       return;
///     }
/// 
///   _baker_prepare_cake (self, radius, baked_cb, simple);
/// }
/// 
/// Cake *
/// baker_bake_cake_finish (Baker        *self,
///                         GAsyncResult *result,
///                         GError      **error)
/// {
///   GSimpleAsyncResult *simple;
///   Cake               *cake;
/// 
///   g_return_val_if_fail (g_simple_async_result_is_valid (result,
///                                                         G_OBJECT (self),
///                                                         baker_bake_cake_async),
///                         NULL);
/// 
///   simple = (GSimpleAsyncResult *) result;
/// 
///   if (g_simple_async_result_propagate_error (simple, error))
///     return NULL;
/// 
///   cake = CAKE (g_simple_async_result_get_op_res_gpointer (simple));
///   return g_object_ref (cake);
/// }
/// ```
/// 
public protocol SimpleAsyncResultProtocol: ObjectProtocol, AsyncResultProtocol {
        /// Untyped pointer to the underlying `GSimpleAsyncResult` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSimpleAsyncResult` instance.
    var simple_async_result_ptr: UnsafeMutablePointer<GSimpleAsyncResult> { get }
}

/// The `SimpleAsyncResultRef` type acts as a lightweight Swift reference to an underlying `GSimpleAsyncResult` instance.
/// It exposes methods that can operate on this data type through `SimpleAsyncResultProtocol` conformance.
/// Use `SimpleAsyncResultRef` only as an `unowned` reference to an existing `GSimpleAsyncResult` instance.
///
/// As of GLib 2.46, `GSimpleAsyncResult` is deprecated in favor of
/// `GTask`, which provides a simpler API.
/// 
/// `GSimpleAsyncResult` implements `GAsyncResult`.
/// 
/// GSimpleAsyncResult handles `GAsyncReadyCallbacks`, error
/// reporting, operation cancellation and the final state of an operation,
/// completely transparent to the application. Results can be returned
/// as a pointer e.g. for functions that return data that is collected
/// asynchronously, a boolean value for checking the success or failure
/// of an operation, or a `gssize` for operations which return the number
/// of bytes modified by the operation; all of the simple return cases
/// are covered.
/// 
/// Most of the time, an application will not need to know of the details
/// of this API; it is handled transparently, and any necessary operations
/// are handled by `GAsyncResult`'s interface. However, if implementing a
/// new GIO module, for writing language bindings, or for complex
/// applications that need better control of how asynchronous operations
/// are completed, it is important to understand this functionality.
/// 
/// GSimpleAsyncResults are tagged with the calling function to ensure
/// that asynchronous functions and their finishing functions are used
/// together correctly.
/// 
/// To create a new `GSimpleAsyncResult`, call `g_simple_async_result_new()`.
/// If the result needs to be created for a `GError`, use
/// `g_simple_async_result_new_from_error()` or
/// `g_simple_async_result_new_take_error()`. If a `GError` is not available
/// (e.g. the asynchronous operation's doesn't take a `GError` argument),
/// but the result still needs to be created for an error condition, use
/// `g_simple_async_result_new_error()` (or `g_simple_async_result_set_error_va()`
/// if your application or binding requires passing a variable argument list
/// directly), and the error can then be propagated through the use of
/// `g_simple_async_result_propagate_error()`.
/// 
/// An asynchronous operation can be made to ignore a cancellation event by
/// calling `g_simple_async_result_set_handle_cancellation()` with a
/// `GSimpleAsyncResult` for the operation and `false`. This is useful for
/// operations that are dangerous to cancel, such as close (which would
/// cause a leak if cancelled before being run).
/// 
/// GSimpleAsyncResult can integrate into GLib's event loop, `GMainLoop`,
/// or it can use `GThreads`.
/// `g_simple_async_result_complete()` will finish an I/O task directly
/// from the point where it is called. `g_simple_async_result_complete_in_idle()`
/// will finish it from an idle handler in the
/// [thread-default main context](#g-main-context-push-thread-default)
/// where the `GSimpleAsyncResult` was created.
/// `g_simple_async_result_run_in_thread()` will run the job in a
/// separate thread and then use
/// `g_simple_async_result_complete_in_idle()` to deliver the result.
/// 
/// To set the results of an asynchronous function,
/// `g_simple_async_result_set_op_res_gpointer()`,
/// `g_simple_async_result_set_op_res_gboolean()`, and
/// `g_simple_async_result_set_op_res_gssize()`
/// are provided, setting the operation's result to a gpointer, gboolean, or
/// gssize, respectively.
/// 
/// Likewise, to get the result of an asynchronous function,
/// `g_simple_async_result_get_op_res_gpointer()`,
/// `g_simple_async_result_get_op_res_gboolean()`, and
/// `g_simple_async_result_get_op_res_gssize()` are
/// provided, getting the operation's result as a gpointer, gboolean, and
/// gssize, respectively.
/// 
/// For the details of the requirements implementations must respect, see
/// `GAsyncResult`.  A typical implementation of an asynchronous operation
/// using GSimpleAsyncResult looks something like this:
/// 
/// (C Language Example):
/// ```C
/// static void
/// baked_cb (Cake    *cake,
///           gpointer user_data)
/// {
///   // In this example, this callback is not given a reference to the cake,
///   // so the GSimpleAsyncResult has to take a reference to it.
///   GSimpleAsyncResult *result = user_data;
/// 
///   if (cake == NULL)
///     g_simple_async_result_set_error (result,
///                                      BAKER_ERRORS,
///                                      BAKER_ERROR_NO_FLOUR,
///                                      "Go to the supermarket");
///   else
///     g_simple_async_result_set_op_res_gpointer (result,
///                                                g_object_ref (cake),
///                                                g_object_unref);
/// 
/// 
///   // In this example, we assume that baked_cb is called as a callback from
///   // the mainloop, so it's safe to complete the operation synchronously here.
///   // If, however, _baker_prepare_cake () might call its callback without
///   // first returning to the mainloop — inadvisable, but some APIs do so —
///   // we would need to use g_simple_async_result_complete_in_idle().
///   g_simple_async_result_complete (result);
///   g_object_unref (result);
/// }
/// 
/// void
/// baker_bake_cake_async (Baker              *self,
///                        guint               radius,
///                        GAsyncReadyCallback callback,
///                        gpointer            user_data)
/// {
///   GSimpleAsyncResult *simple;
///   Cake               *cake;
/// 
///   if (radius < 3)
///     {
///       g_simple_async_report_error_in_idle (G_OBJECT (self),
///                                            callback,
///                                            user_data,
///                                            BAKER_ERRORS,
///                                            BAKER_ERROR_TOO_SMALL,
///                                            "%ucm radius cakes are silly",
///                                            radius);
///       return;
///     }
/// 
///   simple = g_simple_async_result_new (G_OBJECT (self),
///                                       callback,
///                                       user_data,
///                                       baker_bake_cake_async);
///   cake = _baker_get_cached_cake (self, radius);
/// 
///   if (cake != NULL)
///     {
///       g_simple_async_result_set_op_res_gpointer (simple,
///                                                  g_object_ref (cake),
///                                                  g_object_unref);
///       g_simple_async_result_complete_in_idle (simple);
///       g_object_unref (simple);
///       // Drop the reference returned by _baker_get_cached_cake();
///       // the GSimpleAsyncResult has taken its own reference.
///       g_object_unref (cake);
///       return;
///     }
/// 
///   _baker_prepare_cake (self, radius, baked_cb, simple);
/// }
/// 
/// Cake *
/// baker_bake_cake_finish (Baker        *self,
///                         GAsyncResult *result,
///                         GError      **error)
/// {
///   GSimpleAsyncResult *simple;
///   Cake               *cake;
/// 
///   g_return_val_if_fail (g_simple_async_result_is_valid (result,
///                                                         G_OBJECT (self),
///                                                         baker_bake_cake_async),
///                         NULL);
/// 
///   simple = (GSimpleAsyncResult *) result;
/// 
///   if (g_simple_async_result_propagate_error (simple, error))
///     return NULL;
/// 
///   cake = CAKE (g_simple_async_result_get_op_res_gpointer (simple));
///   return g_object_ref (cake);
/// }
/// ```
/// 
public struct SimpleAsyncResultRef: SimpleAsyncResultProtocol {
        /// Untyped pointer to the underlying `GSimpleAsyncResult` instance.
    /// For type-safe access, use the generated, typed pointer `simple_async_result_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SimpleAsyncResultRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSimpleAsyncResult>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SimpleAsyncResultProtocol`
    init<T: SimpleAsyncResultProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleAsyncResultProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleAsyncResultProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleAsyncResultProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleAsyncResultProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleAsyncResultProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a `GSimpleAsyncResult`.
    /// 
    /// The common convention is to create the `GSimpleAsyncResult` in the
    /// function that starts the asynchronous operation and use that same
    /// function as the `source_tag`.
    /// 
    /// If your operation supports cancellation with `GCancellable` (which it
    /// probably should) then you should provide the user's cancellable to
    /// `g_simple_async_result_set_check_cancellable()` immediately after
    /// this function returns.
    ///
    /// **new is deprecated:**
    /// Use g_task_new() instead.
    @available(*, deprecated) init( source_object: ObjectProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer, sourceTag source_tag: UnsafeMutableRawPointer) {
        let rv: UnsafeMutablePointer<GSimpleAsyncResult>! = cast(g_simple_async_result_new(cast(source_object.ptr), callback, cast(user_data), cast(source_tag)))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }


    // *** newError() is not available because it has a varargs (...) parameter!


    /// Creates a `GSimpleAsyncResult` from an error condition.
    ///
    /// **new_from_error is deprecated:**
    /// Use g_task_new() and g_task_return_error() instead.
    @available(*, deprecated) init(error source_object: ObjectProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer, error: ErrorTypeProtocol) {
        let rv: UnsafeMutablePointer<GSimpleAsyncResult>! = cast(g_simple_async_result_new_from_error(cast(source_object.ptr), callback, cast(user_data), cast(error.ptr)))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }

    /// Creates a `GSimpleAsyncResult` from an error condition, and takes over the
    /// caller's ownership of `error`, so the caller does not need to free it anymore.
    ///
    /// **new_take_error is deprecated:**
    /// Use g_task_new() and g_task_return_error() instead.
    @available(*, deprecated) init(take_error source_object: ObjectProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer, error: ErrorTypeProtocol) {
        let rv: UnsafeMutablePointer<GSimpleAsyncResult>! = cast(g_simple_async_result_new_take_error(cast(source_object.ptr), callback, cast(user_data), cast(error.ptr)))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }

    // *** newError() is not available because it has a varargs (...) parameter!


    /// Creates a `GSimpleAsyncResult` from an error condition.
    ///
    /// **new_from_error is deprecated:**
    /// Use g_task_new() and g_task_return_error() instead.
    @available(*, deprecated) static func newFrom(error source_object: ObjectProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer, error: ErrorTypeProtocol) -> SimpleAsyncResultRef! {
        let rv: UnsafeMutablePointer<GSimpleAsyncResult>! = cast(g_simple_async_result_new_from_error(cast(source_object.ptr), callback, cast(user_data), cast(error.ptr)))
        return rv.map { SimpleAsyncResultRef(cast($0)) }
    }

    /// Creates a `GSimpleAsyncResult` from an error condition, and takes over the
    /// caller's ownership of `error`, so the caller does not need to free it anymore.
    ///
    /// **new_take_error is deprecated:**
    /// Use g_task_new() and g_task_return_error() instead.
    @available(*, deprecated) static func newTakeError(take_error source_object: ObjectProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer, error: ErrorTypeProtocol) -> SimpleAsyncResultRef! {
        let rv: UnsafeMutablePointer<GSimpleAsyncResult>! = cast(g_simple_async_result_new_take_error(cast(source_object.ptr), callback, cast(user_data), cast(error.ptr)))
        return rv.map { SimpleAsyncResultRef(cast($0)) }
    }
}

/// The `SimpleAsyncResult` type acts as a reference-counted owner of an underlying `GSimpleAsyncResult` instance.
/// It provides the methods that can operate on this data type through `SimpleAsyncResultProtocol` conformance.
/// Use `SimpleAsyncResult` as a strong reference or owner of a `GSimpleAsyncResult` instance.
///
/// As of GLib 2.46, `GSimpleAsyncResult` is deprecated in favor of
/// `GTask`, which provides a simpler API.
/// 
/// `GSimpleAsyncResult` implements `GAsyncResult`.
/// 
/// GSimpleAsyncResult handles `GAsyncReadyCallbacks`, error
/// reporting, operation cancellation and the final state of an operation,
/// completely transparent to the application. Results can be returned
/// as a pointer e.g. for functions that return data that is collected
/// asynchronously, a boolean value for checking the success or failure
/// of an operation, or a `gssize` for operations which return the number
/// of bytes modified by the operation; all of the simple return cases
/// are covered.
/// 
/// Most of the time, an application will not need to know of the details
/// of this API; it is handled transparently, and any necessary operations
/// are handled by `GAsyncResult`'s interface. However, if implementing a
/// new GIO module, for writing language bindings, or for complex
/// applications that need better control of how asynchronous operations
/// are completed, it is important to understand this functionality.
/// 
/// GSimpleAsyncResults are tagged with the calling function to ensure
/// that asynchronous functions and their finishing functions are used
/// together correctly.
/// 
/// To create a new `GSimpleAsyncResult`, call `g_simple_async_result_new()`.
/// If the result needs to be created for a `GError`, use
/// `g_simple_async_result_new_from_error()` or
/// `g_simple_async_result_new_take_error()`. If a `GError` is not available
/// (e.g. the asynchronous operation's doesn't take a `GError` argument),
/// but the result still needs to be created for an error condition, use
/// `g_simple_async_result_new_error()` (or `g_simple_async_result_set_error_va()`
/// if your application or binding requires passing a variable argument list
/// directly), and the error can then be propagated through the use of
/// `g_simple_async_result_propagate_error()`.
/// 
/// An asynchronous operation can be made to ignore a cancellation event by
/// calling `g_simple_async_result_set_handle_cancellation()` with a
/// `GSimpleAsyncResult` for the operation and `false`. This is useful for
/// operations that are dangerous to cancel, such as close (which would
/// cause a leak if cancelled before being run).
/// 
/// GSimpleAsyncResult can integrate into GLib's event loop, `GMainLoop`,
/// or it can use `GThreads`.
/// `g_simple_async_result_complete()` will finish an I/O task directly
/// from the point where it is called. `g_simple_async_result_complete_in_idle()`
/// will finish it from an idle handler in the
/// [thread-default main context](#g-main-context-push-thread-default)
/// where the `GSimpleAsyncResult` was created.
/// `g_simple_async_result_run_in_thread()` will run the job in a
/// separate thread and then use
/// `g_simple_async_result_complete_in_idle()` to deliver the result.
/// 
/// To set the results of an asynchronous function,
/// `g_simple_async_result_set_op_res_gpointer()`,
/// `g_simple_async_result_set_op_res_gboolean()`, and
/// `g_simple_async_result_set_op_res_gssize()`
/// are provided, setting the operation's result to a gpointer, gboolean, or
/// gssize, respectively.
/// 
/// Likewise, to get the result of an asynchronous function,
/// `g_simple_async_result_get_op_res_gpointer()`,
/// `g_simple_async_result_get_op_res_gboolean()`, and
/// `g_simple_async_result_get_op_res_gssize()` are
/// provided, getting the operation's result as a gpointer, gboolean, and
/// gssize, respectively.
/// 
/// For the details of the requirements implementations must respect, see
/// `GAsyncResult`.  A typical implementation of an asynchronous operation
/// using GSimpleAsyncResult looks something like this:
/// 
/// (C Language Example):
/// ```C
/// static void
/// baked_cb (Cake    *cake,
///           gpointer user_data)
/// {
///   // In this example, this callback is not given a reference to the cake,
///   // so the GSimpleAsyncResult has to take a reference to it.
///   GSimpleAsyncResult *result = user_data;
/// 
///   if (cake == NULL)
///     g_simple_async_result_set_error (result,
///                                      BAKER_ERRORS,
///                                      BAKER_ERROR_NO_FLOUR,
///                                      "Go to the supermarket");
///   else
///     g_simple_async_result_set_op_res_gpointer (result,
///                                                g_object_ref (cake),
///                                                g_object_unref);
/// 
/// 
///   // In this example, we assume that baked_cb is called as a callback from
///   // the mainloop, so it's safe to complete the operation synchronously here.
///   // If, however, _baker_prepare_cake () might call its callback without
///   // first returning to the mainloop — inadvisable, but some APIs do so —
///   // we would need to use g_simple_async_result_complete_in_idle().
///   g_simple_async_result_complete (result);
///   g_object_unref (result);
/// }
/// 
/// void
/// baker_bake_cake_async (Baker              *self,
///                        guint               radius,
///                        GAsyncReadyCallback callback,
///                        gpointer            user_data)
/// {
///   GSimpleAsyncResult *simple;
///   Cake               *cake;
/// 
///   if (radius < 3)
///     {
///       g_simple_async_report_error_in_idle (G_OBJECT (self),
///                                            callback,
///                                            user_data,
///                                            BAKER_ERRORS,
///                                            BAKER_ERROR_TOO_SMALL,
///                                            "%ucm radius cakes are silly",
///                                            radius);
///       return;
///     }
/// 
///   simple = g_simple_async_result_new (G_OBJECT (self),
///                                       callback,
///                                       user_data,
///                                       baker_bake_cake_async);
///   cake = _baker_get_cached_cake (self, radius);
/// 
///   if (cake != NULL)
///     {
///       g_simple_async_result_set_op_res_gpointer (simple,
///                                                  g_object_ref (cake),
///                                                  g_object_unref);
///       g_simple_async_result_complete_in_idle (simple);
///       g_object_unref (simple);
///       // Drop the reference returned by _baker_get_cached_cake();
///       // the GSimpleAsyncResult has taken its own reference.
///       g_object_unref (cake);
///       return;
///     }
/// 
///   _baker_prepare_cake (self, radius, baked_cb, simple);
/// }
/// 
/// Cake *
/// baker_bake_cake_finish (Baker        *self,
///                         GAsyncResult *result,
///                         GError      **error)
/// {
///   GSimpleAsyncResult *simple;
///   Cake               *cake;
/// 
///   g_return_val_if_fail (g_simple_async_result_is_valid (result,
///                                                         G_OBJECT (self),
///                                                         baker_bake_cake_async),
///                         NULL);
/// 
///   simple = (GSimpleAsyncResult *) result;
/// 
///   if (g_simple_async_result_propagate_error (simple, error))
///     return NULL;
/// 
///   cake = CAKE (g_simple_async_result_get_op_res_gpointer (simple));
///   return g_object_ref (cake);
/// }
/// ```
/// 
open class SimpleAsyncResult: Object, SimpleAsyncResultProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SimpleAsyncResult` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSimpleAsyncResult>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GSimpleAsyncResult`.
    /// i.e., ownership is transferred to the `SimpleAsyncResult` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSimpleAsyncResult>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `SimpleAsyncResultProtocol`
    /// Will retain `GSimpleAsyncResult`.
    /// - Parameter other: an instance of a related type that implements `SimpleAsyncResultProtocol`
    public init<T: SimpleAsyncResultProtocol>(simpleAsyncResult other: T) {
        super.init(retaining: cast(other.simple_async_result_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleAsyncResultProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleAsyncResultProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleAsyncResultProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleAsyncResultProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleAsyncResultProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleAsyncResultProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleAsyncResultProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleAsyncResultProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a `GSimpleAsyncResult`.
    /// 
    /// The common convention is to create the `GSimpleAsyncResult` in the
    /// function that starts the asynchronous operation and use that same
    /// function as the `source_tag`.
    /// 
    /// If your operation supports cancellation with `GCancellable` (which it
    /// probably should) then you should provide the user's cancellable to
    /// `g_simple_async_result_set_check_cancellable()` immediately after
    /// this function returns.
    ///
    /// **new is deprecated:**
    /// Use g_task_new() instead.
    @available(*, deprecated) public init( source_object: ObjectProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer, sourceTag source_tag: UnsafeMutableRawPointer) {
        let rv: UnsafeMutablePointer<GSimpleAsyncResult>! = cast(g_simple_async_result_new(cast(source_object.ptr), callback, cast(user_data), cast(source_tag)))
        super.init(cast(rv))
    }


    // *** newError() is not available because it has a varargs (...) parameter!


    /// Creates a `GSimpleAsyncResult` from an error condition.
    ///
    /// **new_from_error is deprecated:**
    /// Use g_task_new() and g_task_return_error() instead.
    @available(*, deprecated) public init(error source_object: ObjectProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer, error: ErrorTypeProtocol) {
        let rv: UnsafeMutablePointer<GSimpleAsyncResult>! = cast(g_simple_async_result_new_from_error(cast(source_object.ptr), callback, cast(user_data), cast(error.ptr)))
        super.init(cast(rv))
    }

    /// Creates a `GSimpleAsyncResult` from an error condition, and takes over the
    /// caller's ownership of `error`, so the caller does not need to free it anymore.
    ///
    /// **new_take_error is deprecated:**
    /// Use g_task_new() and g_task_return_error() instead.
    @available(*, deprecated) public init(take_error source_object: ObjectProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer, error: ErrorTypeProtocol) {
        let rv: UnsafeMutablePointer<GSimpleAsyncResult>! = cast(g_simple_async_result_new_take_error(cast(source_object.ptr), callback, cast(user_data), cast(error.ptr)))
        super.init(cast(rv))
    }


    // *** newError() is not available because it has a varargs (...) parameter!


    /// Creates a `GSimpleAsyncResult` from an error condition.
    ///
    /// **new_from_error is deprecated:**
    /// Use g_task_new() and g_task_return_error() instead.
    @available(*, deprecated) public static func newFrom(error source_object: ObjectProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer, error: ErrorTypeProtocol) -> SimpleAsyncResult! {
        let rv: UnsafeMutablePointer<GSimpleAsyncResult>! = cast(g_simple_async_result_new_from_error(cast(source_object.ptr), callback, cast(user_data), cast(error.ptr)))
        return rv.map { SimpleAsyncResult(cast($0)) }
    }

    /// Creates a `GSimpleAsyncResult` from an error condition, and takes over the
    /// caller's ownership of `error`, so the caller does not need to free it anymore.
    ///
    /// **new_take_error is deprecated:**
    /// Use g_task_new() and g_task_return_error() instead.
    @available(*, deprecated) public static func newTakeError(take_error source_object: ObjectProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer, error: ErrorTypeProtocol) -> SimpleAsyncResult! {
        let rv: UnsafeMutablePointer<GSimpleAsyncResult>! = cast(g_simple_async_result_new_take_error(cast(source_object.ptr), callback, cast(user_data), cast(error.ptr)))
        return rv.map { SimpleAsyncResult(cast($0)) }
    }

}

// MARK: no SimpleAsyncResult properties

public enum SimpleAsyncResultSignalName: String, SignalNameProtocol {
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

}

public extension SimpleAsyncResultProtocol {
    /// Connect a `SimpleAsyncResultSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: SimpleAsyncResultSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(simple_async_result_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: SimpleAsyncResult Class: SimpleAsyncResultProtocol extension (methods and fields)
public extension SimpleAsyncResultProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSimpleAsyncResult` instance.
    var simple_async_result_ptr: UnsafeMutablePointer<GSimpleAsyncResult> { return ptr.assumingMemoryBound(to: GSimpleAsyncResult.self) }

    /// Completes an asynchronous I/O job immediately. Must be called in
    /// the thread where the asynchronous result was to be delivered, as it
    /// invokes the callback directly. If you are in a different thread use
    /// `g_simple_async_result_complete_in_idle()`.
    /// 
    /// Calling this function takes a reference to `simple` for as long as
    /// is needed to complete the call.
    ///
    /// **complete is deprecated:**
    /// Use #GTask instead.
    @available(*, deprecated) func complete() {
        g_simple_async_result_complete(cast(simple_async_result_ptr))
    
    }

    /// Completes an asynchronous function in an idle handler in the
    /// [thread-default main context](#g-main-context-push-thread-default)
    /// of the thread that `simple` was initially created in
    /// (and re-pushes that context around the invocation of the callback).
    /// 
    /// Calling this function takes a reference to `simple` for as long as
    /// is needed to complete the call.
    ///
    /// **complete_in_idle is deprecated:**
    /// Use #GTask instead.
    @available(*, deprecated) func completeInIdle() {
        g_simple_async_result_complete_in_idle(cast(simple_async_result_ptr))
    
    }

    /// Gets the operation result boolean from within the asynchronous result.
    ///
    /// **get_op_res_gboolean is deprecated:**
    /// Use #GTask and g_task_propagate_boolean() instead.
    @available(*, deprecated) func getOpResGboolean() -> Bool {
        let rv = g_simple_async_result_get_op_res_gboolean(cast(simple_async_result_ptr))
        return Bool(rv != 0)
    }

    /// Gets a pointer result as returned by the asynchronous function.
    ///
    /// **get_op_res_gpointer is deprecated:**
    /// Use #GTask and g_task_propagate_pointer() instead.
    @available(*, deprecated) func getOpResGpointer() -> UnsafeMutableRawPointer! {
        let rv: UnsafeMutableRawPointer! = cast(g_simple_async_result_get_op_res_gpointer(cast(simple_async_result_ptr)))
        return cast(rv)
    }

    /// Gets a gssize from the asynchronous result.
    ///
    /// **get_op_res_gssize is deprecated:**
    /// Use #GTask and g_task_propagate_int() instead.
    @available(*, deprecated) func getOpResGssize() -> gssize {
        let rv = g_simple_async_result_get_op_res_gssize(cast(simple_async_result_ptr))
        return cast(rv)
    }

    /// Gets the source tag for the `GSimpleAsyncResult`.
    ///
    /// **get_source_tag is deprecated:**
    /// Use #GTask and g_task_get_source_tag() instead.
    @available(*, deprecated) func getSourceTag() -> UnsafeMutableRawPointer! {
        let rv: UnsafeMutableRawPointer! = cast(g_simple_async_result_get_source_tag(cast(simple_async_result_ptr)))
        return cast(rv)
    }

    /// Propagates an error from within the simple asynchronous result to
    /// a given destination.
    /// 
    /// If the `GCancellable` given to a prior call to
    /// `g_simple_async_result_set_check_cancellable()` is cancelled then this
    /// function will return `true` with `dest` set appropriately.
    ///
    /// **propagate_error is deprecated:**
    /// Use #GTask instead.
    @available(*, deprecated) func propagateError() throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_simple_async_result_propagate_error(cast(simple_async_result_ptr), &error)
        if let error = error { throw ErrorType(error) }
        return Bool(rv != 0)
    }

    /// Runs the asynchronous job in a separate thread and then calls
    /// `g_simple_async_result_complete_in_idle()` on `simple` to return
    /// the result to the appropriate main loop.
    /// 
    /// Calling this function takes a reference to `simple` for as long as
    /// is needed to run the job and report its completion.
    ///
    /// **run_in_thread is deprecated:**
    /// Use #GTask and g_task_run_in_thread() instead.
    @available(*, deprecated) func runInThread(func_: @escaping SimpleAsyncThreadFunc, ioPriority io_priority: CInt, cancellable: CancellableProtocol) {
        g_simple_async_result_run_in_thread(cast(simple_async_result_ptr), func_, io_priority, cast(cancellable.ptr))
    
    }

    /// Sets a `GCancellable` to check before dispatching results.
    /// 
    /// This function has one very specific purpose: the provided cancellable
    /// is checked at the time of `g_simple_async_result_propagate_error()` If
    /// it is cancelled, these functions will return an "Operation was
    /// cancelled" error (`G_IO_ERROR_CANCELLED`).
    /// 
    /// Implementors of cancellable asynchronous functions should use this in
    /// order to provide a guarantee to their callers that cancelling an
    /// async operation will reliably result in an error being returned for
    /// that operation (even if a positive result for the operation has
    /// already been sent as an idle to the main context to be dispatched).
    /// 
    /// The checking described above is done regardless of any call to the
    /// unrelated `g_simple_async_result_set_handle_cancellation()` function.
    ///
    /// **set_check_cancellable is deprecated:**
    /// Use #GTask instead.
    @available(*, deprecated) func set(checkCancellable check_cancellable: CancellableProtocol) {
        g_simple_async_result_set_check_cancellable(cast(simple_async_result_ptr), cast(check_cancellable.ptr))
    
    }


    // *** setError() is not available because it has a varargs (...) parameter!


    /// Sets an error within the asynchronous result without a `GError`.
    /// Unless writing a binding, see `g_simple_async_result_set_error()`.
    ///
    /// **set_error_va is deprecated:**
    /// Use #GTask and g_task_return_error() instead.
    @available(*, deprecated) func setErrorVa(domain: GLib.Quark, code: CInt, format: UnsafePointer<CChar>, args: CVaListPointer) {
        g_simple_async_result_set_error_va(cast(simple_async_result_ptr), domain, gint(code), format, args)
    
    }

    /// Sets the result from a `GError`.
    ///
    /// **set_from_error is deprecated:**
    /// Use #GTask and g_task_return_error() instead.
    @available(*, deprecated) func setFrom(error: ErrorTypeProtocol) {
        g_simple_async_result_set_from_error(cast(simple_async_result_ptr), cast(error.ptr))
    
    }

    /// Sets whether to handle cancellation within the asynchronous operation.
    /// 
    /// This function has nothing to do with
    /// `g_simple_async_result_set_check_cancellable()`.  It only refers to the
    /// `GCancellable` passed to `g_simple_async_result_run_in_thread()`.
    ///
    /// **set_handle_cancellation is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated) func set(handleCancellation handle_cancellation: Bool) {
        g_simple_async_result_set_handle_cancellation(cast(simple_async_result_ptr), gboolean(handle_cancellation ? 1 : 0))
    
    }

    /// Sets the operation result to a boolean within the asynchronous result.
    ///
    /// **set_op_res_gboolean is deprecated:**
    /// Use #GTask and g_task_return_boolean() instead.
    @available(*, deprecated) func setOpResGboolean(opRes op_res: Bool) {
        g_simple_async_result_set_op_res_gboolean(cast(simple_async_result_ptr), gboolean(op_res ? 1 : 0))
    
    }

    /// Sets the operation result within the asynchronous result to a pointer.
    ///
    /// **set_op_res_gpointer is deprecated:**
    /// Use #GTask and g_task_return_pointer() instead.
    @available(*, deprecated) func setOpResGpointer(opRes op_res: UnsafeMutableRawPointer, destroyOpRes destroy_op_res: @escaping GLib.DestroyNotify) {
        g_simple_async_result_set_op_res_gpointer(cast(simple_async_result_ptr), cast(op_res), destroy_op_res)
    
    }

    /// Sets the operation result within the asynchronous result to
    /// the given `op_res`.
    ///
    /// **set_op_res_gssize is deprecated:**
    /// Use #GTask and g_task_return_int() instead.
    @available(*, deprecated) func setOpResGssize(opRes op_res: gssize) {
        g_simple_async_result_set_op_res_gssize(cast(simple_async_result_ptr), op_res)
    
    }

    /// Sets the result from `error`, and takes over the caller's ownership
    /// of `error`, so the caller does not need to free it any more.
    ///
    /// **take_error is deprecated:**
    /// Use #GTask and g_task_return_error() instead.
    @available(*, deprecated) func take(error: ErrorTypeProtocol) {
        g_simple_async_result_take_error(cast(simple_async_result_ptr), cast(error.ptr))
    
    }
    /// Gets the operation result boolean from within the asynchronous result.
    ///
    /// **get_op_res_gboolean is deprecated:**
    /// Use #GTask and g_task_propagate_boolean() instead.
    var opResGboolean: Bool {
        /// Gets the operation result boolean from within the asynchronous result.
        ///
        /// **get_op_res_gboolean is deprecated:**
        /// Use #GTask and g_task_propagate_boolean() instead.
        @available(*, deprecated) get {
            let rv = g_simple_async_result_get_op_res_gboolean(cast(simple_async_result_ptr))
            return Bool(rv != 0)
        }
        /// Sets the operation result to a boolean within the asynchronous result.
        ///
        /// **set_op_res_gboolean is deprecated:**
        /// Use #GTask and g_task_return_boolean() instead.
        @available(*, deprecated) nonmutating set {
            g_simple_async_result_set_op_res_gboolean(cast(simple_async_result_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Gets a pointer result as returned by the asynchronous function.
    ///
    /// **get_op_res_gpointer is deprecated:**
    /// Use #GTask and g_task_propagate_pointer() instead.
    var opResGpointer: UnsafeMutableRawPointer! {
        /// Gets a pointer result as returned by the asynchronous function.
        ///
        /// **get_op_res_gpointer is deprecated:**
        /// Use #GTask and g_task_propagate_pointer() instead.
        @available(*, deprecated) get {
            let rv: UnsafeMutableRawPointer! = cast(g_simple_async_result_get_op_res_gpointer(cast(simple_async_result_ptr)))
            return cast(rv)
        }
    }

    /// Gets a gssize from the asynchronous result.
    ///
    /// **get_op_res_gssize is deprecated:**
    /// Use #GTask and g_task_propagate_int() instead.
    var opResGssize: gssize {
        /// Gets a gssize from the asynchronous result.
        ///
        /// **get_op_res_gssize is deprecated:**
        /// Use #GTask and g_task_propagate_int() instead.
        @available(*, deprecated) get {
            let rv = g_simple_async_result_get_op_res_gssize(cast(simple_async_result_ptr))
            return cast(rv)
        }
        /// Sets the operation result within the asynchronous result to
        /// the given `op_res`.
        ///
        /// **set_op_res_gssize is deprecated:**
        /// Use #GTask and g_task_return_int() instead.
        @available(*, deprecated) nonmutating set {
            g_simple_async_result_set_op_res_gssize(cast(simple_async_result_ptr), cast(newValue))
        }
    }

    /// Gets the source tag for the `GSimpleAsyncResult`.
    ///
    /// **get_source_tag is deprecated:**
    /// Use #GTask and g_task_get_source_tag() instead.
    var sourceTag: UnsafeMutableRawPointer! {
        /// Gets the source tag for the `GSimpleAsyncResult`.
        ///
        /// **get_source_tag is deprecated:**
        /// Use #GTask and g_task_get_source_tag() instead.
        @available(*, deprecated) get {
            let rv: UnsafeMutableRawPointer! = cast(g_simple_async_result_get_source_tag(cast(simple_async_result_ptr)))
            return cast(rv)
        }
    }


}



// MARK: - SimpleIOStream Class

/// The `SimpleIOStreamProtocol` protocol exposes the methods and properties of an underlying `GSimpleIOStream` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SimpleIOStream`.
/// Alternatively, use `SimpleIOStreamRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GSimpleIOStream creates a `GIOStream` from an arbitrary `GInputStream` and
/// `GOutputStream`. This allows any pair of input and output streams to be used
/// with `GIOStream` methods.
/// 
/// This is useful when you obtained a `GInputStream` and a `GOutputStream`
/// by other means, for instance creating them with platform specific methods as
/// `g_unix_input_stream_new()` or `g_win32_input_stream_new()`, and you want
/// to take advantage of the methods provided by `GIOStream`.
public protocol SimpleIOStreamProtocol: IOStreamProtocol {
        /// Untyped pointer to the underlying `GSimpleIOStream` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSimpleIOStream` instance.
    var simple_io_stream_ptr: UnsafeMutablePointer<GSimpleIOStream> { get }
}

/// The `SimpleIOStreamRef` type acts as a lightweight Swift reference to an underlying `GSimpleIOStream` instance.
/// It exposes methods that can operate on this data type through `SimpleIOStreamProtocol` conformance.
/// Use `SimpleIOStreamRef` only as an `unowned` reference to an existing `GSimpleIOStream` instance.
///
/// GSimpleIOStream creates a `GIOStream` from an arbitrary `GInputStream` and
/// `GOutputStream`. This allows any pair of input and output streams to be used
/// with `GIOStream` methods.
/// 
/// This is useful when you obtained a `GInputStream` and a `GOutputStream`
/// by other means, for instance creating them with platform specific methods as
/// `g_unix_input_stream_new()` or `g_win32_input_stream_new()`, and you want
/// to take advantage of the methods provided by `GIOStream`.
public struct SimpleIOStreamRef: SimpleIOStreamProtocol {
        /// Untyped pointer to the underlying `GSimpleIOStream` instance.
    /// For type-safe access, use the generated, typed pointer `simple_io_stream_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SimpleIOStreamRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSimpleIOStream>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SimpleIOStreamProtocol`
    init<T: SimpleIOStreamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleIOStreamProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleIOStreamProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleIOStreamProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleIOStreamProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleIOStreamProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GSimpleIOStream` wrapping `input_stream` and `output_stream`.
    /// See also `GIOStream`.
    init( input_stream: InputStreamProtocol, outputStream output_stream: OutputStreamProtocol) {
        let rv: UnsafeMutablePointer<GIOStream>! = cast(g_simple_io_stream_new(cast(input_stream.ptr), cast(output_stream.ptr)))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
}

/// The `SimpleIOStream` type acts as a reference-counted owner of an underlying `GSimpleIOStream` instance.
/// It provides the methods that can operate on this data type through `SimpleIOStreamProtocol` conformance.
/// Use `SimpleIOStream` as a strong reference or owner of a `GSimpleIOStream` instance.
///
/// GSimpleIOStream creates a `GIOStream` from an arbitrary `GInputStream` and
/// `GOutputStream`. This allows any pair of input and output streams to be used
/// with `GIOStream` methods.
/// 
/// This is useful when you obtained a `GInputStream` and a `GOutputStream`
/// by other means, for instance creating them with platform specific methods as
/// `g_unix_input_stream_new()` or `g_win32_input_stream_new()`, and you want
/// to take advantage of the methods provided by `GIOStream`.
open class SimpleIOStream: IOStream, SimpleIOStreamProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SimpleIOStream` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSimpleIOStream>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GSimpleIOStream`.
    /// i.e., ownership is transferred to the `SimpleIOStream` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSimpleIOStream>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `SimpleIOStreamProtocol`
    /// Will retain `GSimpleIOStream`.
    /// - Parameter other: an instance of a related type that implements `SimpleIOStreamProtocol`
    public init<T: SimpleIOStreamProtocol>(simpleIOStream other: T) {
        super.init(retaining: cast(other.simple_io_stream_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleIOStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleIOStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleIOStreamProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleIOStreamProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleIOStreamProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleIOStreamProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleIOStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleIOStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GSimpleIOStream` wrapping `input_stream` and `output_stream`.
    /// See also `GIOStream`.
    public init( input_stream: InputStreamProtocol, outputStream output_stream: OutputStreamProtocol) {
        let rv: UnsafeMutablePointer<GIOStream>! = cast(g_simple_io_stream_new(cast(input_stream.ptr), cast(output_stream.ptr)))
        super.init(cast(rv))
    }


}

public enum SimpleIOStreamPropertyName: String, PropertyNameProtocol {
    case closed = "closed"
    case inputStream = "input-stream"
    case outputStream = "output-stream"
}

public extension SimpleIOStreamProtocol {
    /// Bind a `SimpleIOStreamPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: SimpleIOStreamPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(simple_io_stream_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

    /// Get the value of a SimpleIOStream property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    func get(property: SimpleIOStreamPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a SimpleIOStream property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    func set(property: SimpleIOStreamPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum SimpleIOStreamSignalName: String, SignalNameProtocol {
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
    case notifyClosed = "notify::closed"
    case notifyInputStream = "notify::input-stream"
    case notifyOutputStream = "notify::output-stream"
}

public extension SimpleIOStreamProtocol {
    /// Connect a `SimpleIOStreamSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: SimpleIOStreamSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(simple_io_stream_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: SimpleIOStream Class: SimpleIOStreamProtocol extension (methods and fields)
public extension SimpleIOStreamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSimpleIOStream` instance.
    var simple_io_stream_ptr: UnsafeMutablePointer<GSimpleIOStream> { return ptr.assumingMemoryBound(to: GSimpleIOStream.self) }



}



// MARK: - SimplePermission Class

/// The `SimplePermissionProtocol` protocol exposes the methods and properties of an underlying `GSimplePermission` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SimplePermission`.
/// Alternatively, use `SimplePermissionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GSimplePermission` is a trivial implementation of `GPermission` that
/// represents a permission that is either always or never allowed.  The
/// value is given at construction and doesn't change.
/// 
/// Calling request or release will result in errors.
public protocol SimplePermissionProtocol: PermissionProtocol {
        /// Untyped pointer to the underlying `GSimplePermission` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSimplePermission` instance.
    var simple_permission_ptr: UnsafeMutablePointer<GSimplePermission> { get }
}

/// The `SimplePermissionRef` type acts as a lightweight Swift reference to an underlying `GSimplePermission` instance.
/// It exposes methods that can operate on this data type through `SimplePermissionProtocol` conformance.
/// Use `SimplePermissionRef` only as an `unowned` reference to an existing `GSimplePermission` instance.
///
/// `GSimplePermission` is a trivial implementation of `GPermission` that
/// represents a permission that is either always or never allowed.  The
/// value is given at construction and doesn't change.
/// 
/// Calling request or release will result in errors.
public struct SimplePermissionRef: SimplePermissionProtocol {
        /// Untyped pointer to the underlying `GSimplePermission` instance.
    /// For type-safe access, use the generated, typed pointer `simple_permission_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SimplePermissionRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSimplePermission>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SimplePermissionProtocol`
    init<T: SimplePermissionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimplePermissionProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimplePermissionProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimplePermissionProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimplePermissionProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimplePermissionProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GPermission` instance that represents an action that is
    /// either always or never allowed.
    init( allowed: Bool) {
        let rv: UnsafeMutablePointer<GPermission>! = cast(g_simple_permission_new(gboolean(allowed ? 1 : 0)))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
}

/// The `SimplePermission` type acts as a reference-counted owner of an underlying `GSimplePermission` instance.
/// It provides the methods that can operate on this data type through `SimplePermissionProtocol` conformance.
/// Use `SimplePermission` as a strong reference or owner of a `GSimplePermission` instance.
///
/// `GSimplePermission` is a trivial implementation of `GPermission` that
/// represents a permission that is either always or never allowed.  The
/// value is given at construction and doesn't change.
/// 
/// Calling request or release will result in errors.
open class SimplePermission: Permission, SimplePermissionProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SimplePermission` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSimplePermission>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GSimplePermission`.
    /// i.e., ownership is transferred to the `SimplePermission` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSimplePermission>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `SimplePermissionProtocol`
    /// Will retain `GSimplePermission`.
    /// - Parameter other: an instance of a related type that implements `SimplePermissionProtocol`
    public init<T: SimplePermissionProtocol>(simplePermission other: T) {
        super.init(retaining: cast(other.simple_permission_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimplePermissionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimplePermissionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimplePermissionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimplePermissionProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimplePermissionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimplePermissionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimplePermissionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimplePermissionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GPermission` instance that represents an action that is
    /// either always or never allowed.
    public init( allowed: Bool) {
        let rv: UnsafeMutablePointer<GPermission>! = cast(g_simple_permission_new(gboolean(allowed ? 1 : 0)))
        super.init(cast(rv))
    }


}

public enum SimplePermissionPropertyName: String, PropertyNameProtocol {
    /// `true` if the caller currently has permission to perform the action that
    /// `permission` represents the permission to perform.
    case allowed = "allowed"
    /// `true` if it is generally possible to acquire the permission by calling
    /// `g_permission_acquire()`.
    case canAcquire = "can-acquire"
    /// `true` if it is generally possible to release the permission by calling
    /// `g_permission_release()`.
    case canRelease = "can-release"
}

public extension SimplePermissionProtocol {
    /// Bind a `SimplePermissionPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: SimplePermissionPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(simple_permission_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

    /// Get the value of a SimplePermission property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    func get(property: SimplePermissionPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a SimplePermission property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    func set(property: SimplePermissionPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum SimplePermissionSignalName: String, SignalNameProtocol {
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
    /// `true` if the caller currently has permission to perform the action that
    /// `permission` represents the permission to perform.
    case notifyAllowed = "notify::allowed"
    /// `true` if it is generally possible to acquire the permission by calling
    /// `g_permission_acquire()`.
    case notifyCanAcquire = "notify::can-acquire"
    /// `true` if it is generally possible to release the permission by calling
    /// `g_permission_release()`.
    case notifyCanRelease = "notify::can-release"
}

public extension SimplePermissionProtocol {
    /// Connect a `SimplePermissionSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: SimplePermissionSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(simple_permission_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: SimplePermission Class: SimplePermissionProtocol extension (methods and fields)
public extension SimplePermissionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSimplePermission` instance.
    var simple_permission_ptr: UnsafeMutablePointer<GSimplePermission> { return ptr.assumingMemoryBound(to: GSimplePermission.self) }



}



// MARK: - SimpleProxyResolver Class

/// The `SimpleProxyResolverProtocol` protocol exposes the methods and properties of an underlying `GSimpleProxyResolver` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SimpleProxyResolver`.
/// Alternatively, use `SimpleProxyResolverRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GSimpleProxyResolver` is a simple `GProxyResolver` implementation
/// that handles a single default proxy, multiple URI-scheme-specific
/// proxies, and a list of hosts that proxies should not be used for.
/// 
/// `GSimpleProxyResolver` is never the default proxy resolver, but it
/// can be used as the base class for another proxy resolver
/// implementation, or it can be created and used manually, such as
/// with `g_socket_client_set_proxy_resolver()`.
public protocol SimpleProxyResolverProtocol: ObjectProtocol, ProxyResolverProtocol {
        /// Untyped pointer to the underlying `GSimpleProxyResolver` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSimpleProxyResolver` instance.
    var simple_proxy_resolver_ptr: UnsafeMutablePointer<GSimpleProxyResolver> { get }
}

/// The `SimpleProxyResolverRef` type acts as a lightweight Swift reference to an underlying `GSimpleProxyResolver` instance.
/// It exposes methods that can operate on this data type through `SimpleProxyResolverProtocol` conformance.
/// Use `SimpleProxyResolverRef` only as an `unowned` reference to an existing `GSimpleProxyResolver` instance.
///
/// `GSimpleProxyResolver` is a simple `GProxyResolver` implementation
/// that handles a single default proxy, multiple URI-scheme-specific
/// proxies, and a list of hosts that proxies should not be used for.
/// 
/// `GSimpleProxyResolver` is never the default proxy resolver, but it
/// can be used as the base class for another proxy resolver
/// implementation, or it can be created and used manually, such as
/// with `g_socket_client_set_proxy_resolver()`.
public struct SimpleProxyResolverRef: SimpleProxyResolverProtocol {
        /// Untyped pointer to the underlying `GSimpleProxyResolver` instance.
    /// For type-safe access, use the generated, typed pointer `simple_proxy_resolver_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SimpleProxyResolverRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSimpleProxyResolver>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SimpleProxyResolverProtocol`
    init<T: SimpleProxyResolverProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SimpleProxyResolver` type acts as a reference-counted owner of an underlying `GSimpleProxyResolver` instance.
/// It provides the methods that can operate on this data type through `SimpleProxyResolverProtocol` conformance.
/// Use `SimpleProxyResolver` as a strong reference or owner of a `GSimpleProxyResolver` instance.
///
/// `GSimpleProxyResolver` is a simple `GProxyResolver` implementation
/// that handles a single default proxy, multiple URI-scheme-specific
/// proxies, and a list of hosts that proxies should not be used for.
/// 
/// `GSimpleProxyResolver` is never the default proxy resolver, but it
/// can be used as the base class for another proxy resolver
/// implementation, or it can be created and used manually, such as
/// with `g_socket_client_set_proxy_resolver()`.
open class SimpleProxyResolver: Object, SimpleProxyResolverProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SimpleProxyResolver` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSimpleProxyResolver>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GSimpleProxyResolver`.
    /// i.e., ownership is transferred to the `SimpleProxyResolver` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSimpleProxyResolver>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `SimpleProxyResolverProtocol`
    /// Will retain `GSimpleProxyResolver`.
    /// - Parameter other: an instance of a related type that implements `SimpleProxyResolverProtocol`
    public init<T: SimpleProxyResolverProtocol>(simpleProxyResolver other: T) {
        super.init(retaining: cast(other.simple_proxy_resolver_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum SimpleProxyResolverPropertyName: String, PropertyNameProtocol {
    /// The default proxy URI that will be used for any URI that doesn't
    /// match `GSimpleProxyResolver:ignore`-hosts, and doesn't match any
    /// of the schemes set with `g_simple_proxy_resolver_set_uri_proxy()`.
    /// 
    /// Note that as a special case, if this URI starts with
    /// "socks://", `GSimpleProxyResolver` will treat it as referring
    /// to all three of the socks5, socks4a, and socks4 proxy types.
    case defaultProxy = "default-proxy"
    /// A list of hostnames and IP addresses that the resolver should
    /// allow direct connections to.
    /// 
    /// Entries can be in one of 4 formats:
    /// 
    /// - A hostname, such as "example.com", ".example.com", or
    ///   "*.example.com", any of which match "example.com" or
    ///   any subdomain of it.
    /// 
    /// - An IPv4 or IPv6 address, such as "192.168.1.1",
    ///   which matches only that address.
    /// 
    /// - A hostname or IP address followed by a port, such as
    ///   "example.com:80", which matches whatever the hostname or IP
    ///   address would match, but only for URLs with the (explicitly)
    ///   indicated port. In the case of an IPv6 address, the address
    ///   part must appear in brackets: "[`1`]:443"
    /// 
    /// - An IP address range, given by a base address and prefix length,
    ///   such as "fe80``/10", which matches any address in that range.
    /// 
    /// Note that when dealing with Unicode hostnames, the matching is
    /// done against the ASCII form of the name.
    /// 
    /// Also note that hostname exclusions apply only to connections made
    /// to hosts identified by name, and IP address exclusions apply only
    /// to connections made to hosts identified by address. That is, if
    /// example.com has an address of 192.168.1.1, and the :ignore-hosts list
    /// contains only "192.168.1.1", then a connection to "example.com"
    /// (eg, via a `GNetworkAddress`) will use the proxy, and a connection to
    /// "192.168.1.1" (eg, via a `GInetSocketAddress`) will not.
    /// 
    /// These rules match the "ignore-hosts"/"noproxy" rules most
    /// commonly used by other applications.
    case ignoreHosts = "ignore-hosts"
}

public extension SimpleProxyResolverProtocol {
    /// Bind a `SimpleProxyResolverPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: SimpleProxyResolverPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(simple_proxy_resolver_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

    /// Get the value of a SimpleProxyResolver property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    func get(property: SimpleProxyResolverPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a SimpleProxyResolver property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    func set(property: SimpleProxyResolverPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum SimpleProxyResolverSignalName: String, SignalNameProtocol {
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
    /// The default proxy URI that will be used for any URI that doesn't
    /// match `GSimpleProxyResolver:ignore`-hosts, and doesn't match any
    /// of the schemes set with `g_simple_proxy_resolver_set_uri_proxy()`.
    /// 
    /// Note that as a special case, if this URI starts with
    /// "socks://", `GSimpleProxyResolver` will treat it as referring
    /// to all three of the socks5, socks4a, and socks4 proxy types.
    case notifyDefaultProxy = "notify::default-proxy"
    /// A list of hostnames and IP addresses that the resolver should
    /// allow direct connections to.
    /// 
    /// Entries can be in one of 4 formats:
    /// 
    /// - A hostname, such as "example.com", ".example.com", or
    ///   "*.example.com", any of which match "example.com" or
    ///   any subdomain of it.
    /// 
    /// - An IPv4 or IPv6 address, such as "192.168.1.1",
    ///   which matches only that address.
    /// 
    /// - A hostname or IP address followed by a port, such as
    ///   "example.com:80", which matches whatever the hostname or IP
    ///   address would match, but only for URLs with the (explicitly)
    ///   indicated port. In the case of an IPv6 address, the address
    ///   part must appear in brackets: "[`1`]:443"
    /// 
    /// - An IP address range, given by a base address and prefix length,
    ///   such as "fe80``/10", which matches any address in that range.
    /// 
    /// Note that when dealing with Unicode hostnames, the matching is
    /// done against the ASCII form of the name.
    /// 
    /// Also note that hostname exclusions apply only to connections made
    /// to hosts identified by name, and IP address exclusions apply only
    /// to connections made to hosts identified by address. That is, if
    /// example.com has an address of 192.168.1.1, and the :ignore-hosts list
    /// contains only "192.168.1.1", then a connection to "example.com"
    /// (eg, via a `GNetworkAddress`) will use the proxy, and a connection to
    /// "192.168.1.1" (eg, via a `GInetSocketAddress`) will not.
    /// 
    /// These rules match the "ignore-hosts"/"noproxy" rules most
    /// commonly used by other applications.
    case notifyIgnoreHosts = "notify::ignore-hosts"
}

public extension SimpleProxyResolverProtocol {
    /// Connect a `SimpleProxyResolverSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: SimpleProxyResolverSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(simple_proxy_resolver_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: SimpleProxyResolver Class: SimpleProxyResolverProtocol extension (methods and fields)
public extension SimpleProxyResolverProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSimpleProxyResolver` instance.
    var simple_proxy_resolver_ptr: UnsafeMutablePointer<GSimpleProxyResolver> { return ptr.assumingMemoryBound(to: GSimpleProxyResolver.self) }

    /// Sets the default proxy on `resolver`, to be used for any URIs that
    /// don't match `GSimpleProxyResolver:ignore`-hosts or a proxy set
    /// via `g_simple_proxy_resolver_set_uri_proxy()`.
    /// 
    /// If `default_proxy` starts with "socks://",
    /// `GSimpleProxyResolver` will treat it as referring to all three of
    /// the socks5, socks4a, and socks4 proxy types.
    func set(defaultProxy default_proxy: UnsafePointer<gchar>) {
        g_simple_proxy_resolver_set_default_proxy(cast(simple_proxy_resolver_ptr), default_proxy)
    
    }

    /// Sets the list of ignored hosts.
    /// 
    /// See `GSimpleProxyResolver:ignore`-hosts for more details on how the
    /// `ignore_hosts` argument is interpreted.
    func set(ignoreHosts ignore_hosts: UnsafeMutablePointer<UnsafeMutablePointer<gchar>>) {
        g_simple_proxy_resolver_set_ignore_hosts(cast(simple_proxy_resolver_ptr), cast(ignore_hosts))
    
    }

    /// Adds a URI-scheme-specific proxy to `resolver`; URIs whose scheme
    /// matches `uri_scheme` (and which don't match
    /// `GSimpleProxyResolver:ignore`-hosts) will be proxied via `proxy`.
    /// 
    /// As with `GSimpleProxyResolver:default`-proxy, if `proxy` starts with
    /// "socks://", `GSimpleProxyResolver` will treat it
    /// as referring to all three of the socks5, socks4a, and socks4 proxy
    /// types.
    func setURIProxy(uriScheme uri_scheme: UnsafePointer<gchar>, proxy: UnsafePointer<gchar>) {
        g_simple_proxy_resolver_set_uri_proxy(cast(simple_proxy_resolver_ptr), uri_scheme, proxy)
    
    }

    var parentInstance: GObject {
        get {
            let rv: GObject = cast(simple_proxy_resolver_ptr.pointee.parent_instance)
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - Socket Class

/// The `SocketProtocol` protocol exposes the methods and properties of an underlying `GSocket` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Socket`.
/// Alternatively, use `SocketRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GSocket` is a low-level networking primitive. It is a more or less
/// direct mapping of the BSD socket API in a portable GObject based API.
/// It supports both the UNIX socket implementations and winsock2 on Windows.
/// 
/// `GSocket` is the platform independent base upon which the higher level
/// network primitives are based. Applications are not typically meant to
/// use it directly, but rather through classes like `GSocketClient`,
/// `GSocketService` and `GSocketConnection`. However there may be cases where
/// direct use of `GSocket` is useful.
/// 
/// `GSocket` implements the `GInitable` interface, so if it is manually constructed
/// by e.g. `g_object_new()` you must call `g_initable_init()` and check the
/// results before using the object. This is done automatically in
/// `g_socket_new()` and `g_socket_new_from_fd()`, so these functions can return
/// `nil`.
/// 
/// Sockets operate in two general modes, blocking or non-blocking. When
/// in blocking mode all operations (which don’t take an explicit blocking
/// parameter) block until the requested operation
/// is finished or there is an error. In non-blocking mode all calls that
/// would block return immediately with a `G_IO_ERROR_WOULD_BLOCK` error.
/// To know when a call would successfully run you can call `g_socket_condition_check()`,
/// or `g_socket_condition_wait()`. You can also use `g_socket_create_source()` and
/// attach it to a `GMainContext` to get callbacks when I/O is possible.
/// Note that all sockets are always set to non blocking mode in the system, and
/// blocking mode is emulated in GSocket.
/// 
/// When working in non-blocking mode applications should always be able to
/// handle getting a `G_IO_ERROR_WOULD_BLOCK` error even when some other
/// function said that I/O was possible. This can easily happen in case
/// of a race condition in the application, but it can also happen for other
/// reasons. For instance, on Windows a socket is always seen as writable
/// until a write returns `G_IO_ERROR_WOULD_BLOCK`.
/// 
/// `GSockets` can be either connection oriented or datagram based.
/// For connection oriented types you must first establish a connection by
/// either connecting to an address or accepting a connection from another
/// address. For connectionless socket types the target/source address is
/// specified or received in each I/O operation.
/// 
/// All socket file descriptors are set to be close-on-exec.
/// 
/// Note that creating a `GSocket` causes the signal `SIGPIPE` to be
/// ignored for the remainder of the program. If you are writing a
/// command-line utility that uses `GSocket`, you may need to take into
/// account the fact that your program will not automatically be killed
/// if it tries to write to `stdout` after it has been closed.
/// 
/// Like most other APIs in GLib, `GSocket` is not inherently thread safe. To use
/// a `GSocket` concurrently from multiple threads, you must implement your own
/// locking.
public protocol SocketProtocol: ObjectProtocol, DatagramBasedProtocol, InitableProtocol {
        /// Untyped pointer to the underlying `GSocket` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSocket` instance.
    var socket_ptr: UnsafeMutablePointer<GSocket> { get }
}

/// The `SocketRef` type acts as a lightweight Swift reference to an underlying `GSocket` instance.
/// It exposes methods that can operate on this data type through `SocketProtocol` conformance.
/// Use `SocketRef` only as an `unowned` reference to an existing `GSocket` instance.
///
/// A `GSocket` is a low-level networking primitive. It is a more or less
/// direct mapping of the BSD socket API in a portable GObject based API.
/// It supports both the UNIX socket implementations and winsock2 on Windows.
/// 
/// `GSocket` is the platform independent base upon which the higher level
/// network primitives are based. Applications are not typically meant to
/// use it directly, but rather through classes like `GSocketClient`,
/// `GSocketService` and `GSocketConnection`. However there may be cases where
/// direct use of `GSocket` is useful.
/// 
/// `GSocket` implements the `GInitable` interface, so if it is manually constructed
/// by e.g. `g_object_new()` you must call `g_initable_init()` and check the
/// results before using the object. This is done automatically in
/// `g_socket_new()` and `g_socket_new_from_fd()`, so these functions can return
/// `nil`.
/// 
/// Sockets operate in two general modes, blocking or non-blocking. When
/// in blocking mode all operations (which don’t take an explicit blocking
/// parameter) block until the requested operation
/// is finished or there is an error. In non-blocking mode all calls that
/// would block return immediately with a `G_IO_ERROR_WOULD_BLOCK` error.
/// To know when a call would successfully run you can call `g_socket_condition_check()`,
/// or `g_socket_condition_wait()`. You can also use `g_socket_create_source()` and
/// attach it to a `GMainContext` to get callbacks when I/O is possible.
/// Note that all sockets are always set to non blocking mode in the system, and
/// blocking mode is emulated in GSocket.
/// 
/// When working in non-blocking mode applications should always be able to
/// handle getting a `G_IO_ERROR_WOULD_BLOCK` error even when some other
/// function said that I/O was possible. This can easily happen in case
/// of a race condition in the application, but it can also happen for other
/// reasons. For instance, on Windows a socket is always seen as writable
/// until a write returns `G_IO_ERROR_WOULD_BLOCK`.
/// 
/// `GSockets` can be either connection oriented or datagram based.
/// For connection oriented types you must first establish a connection by
/// either connecting to an address or accepting a connection from another
/// address. For connectionless socket types the target/source address is
/// specified or received in each I/O operation.
/// 
/// All socket file descriptors are set to be close-on-exec.
/// 
/// Note that creating a `GSocket` causes the signal `SIGPIPE` to be
/// ignored for the remainder of the program. If you are writing a
/// command-line utility that uses `GSocket`, you may need to take into
/// account the fact that your program will not automatically be killed
/// if it tries to write to `stdout` after it has been closed.
/// 
/// Like most other APIs in GLib, `GSocket` is not inherently thread safe. To use
/// a `GSocket` concurrently from multiple threads, you must implement your own
/// locking.
public struct SocketRef: SocketProtocol {
        /// Untyped pointer to the underlying `GSocket` instance.
    /// For type-safe access, use the generated, typed pointer `socket_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SocketRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSocket>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SocketProtocol`
    init<T: SocketProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GSocket` with the defined family, type and protocol.
    /// If `protocol` is 0 (`G_SOCKET_PROTOCOL_DEFAULT`) the default protocol type
    /// for the family and type is used.
    /// 
    /// The `protocol` is a family and type specific int that specifies what
    /// kind of protocol to use. `GSocketProtocol` lists several common ones.
    /// Many families only support one protocol, and use 0 for this, others
    /// support several and using 0 means to use the default protocol for
    /// the family and type.
    /// 
    /// The protocol id is passed directly to the operating
    /// system, so you can use protocols not listed in `GSocketProtocol` if you
    /// know the protocol number used for it.
    init( family: SocketFamily, type: SocketType, protocol_: Socket_Protocol) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GSocket>! = cast(g_socket_new(family, type, protocol_, &error))
        if let error = error { throw ErrorType(error) }
        ptr = UnsafeMutableRawPointer(cast(rv))
    }

    /// Creates a new `GSocket` from a native file descriptor
    /// or winsock SOCKET handle.
    /// 
    /// This reads all the settings from the file descriptor so that
    /// all properties should work. Note that the file descriptor
    /// will be set to non-blocking mode, independent on the blocking
    /// mode of the `GSocket`.
    /// 
    /// On success, the returned `GSocket` takes ownership of `fd`. On failure, the
    /// caller must close `fd` themselves.
    /// 
    /// Since GLib 2.46, it is no longer a fatal error to call this on a non-socket
    /// descriptor.  Instead, a GError will be set with code `G_IO_ERROR_FAILED`
    init(fd: CInt) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GSocket>! = cast(g_socket_new_from_fd(gint(fd), &error))
        if let error = error { throw ErrorType(error) }
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
    /// Creates a new `GSocket` from a native file descriptor
    /// or winsock SOCKET handle.
    /// 
    /// This reads all the settings from the file descriptor so that
    /// all properties should work. Note that the file descriptor
    /// will be set to non-blocking mode, independent on the blocking
    /// mode of the `GSocket`.
    /// 
    /// On success, the returned `GSocket` takes ownership of `fd`. On failure, the
    /// caller must close `fd` themselves.
    /// 
    /// Since GLib 2.46, it is no longer a fatal error to call this on a non-socket
    /// descriptor.  Instead, a GError will be set with code `G_IO_ERROR_FAILED`
    static func newFrom(fd: CInt) throws -> SocketRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GSocket>! = cast(g_socket_new_from_fd(gint(fd), &error))
        if let error = error { throw ErrorType(error) }
        return rv.map { SocketRef(cast($0)) }
    }
}

/// The `Socket` type acts as a reference-counted owner of an underlying `GSocket` instance.
/// It provides the methods that can operate on this data type through `SocketProtocol` conformance.
/// Use `Socket` as a strong reference or owner of a `GSocket` instance.
///
/// A `GSocket` is a low-level networking primitive. It is a more or less
/// direct mapping of the BSD socket API in a portable GObject based API.
/// It supports both the UNIX socket implementations and winsock2 on Windows.
/// 
/// `GSocket` is the platform independent base upon which the higher level
/// network primitives are based. Applications are not typically meant to
/// use it directly, but rather through classes like `GSocketClient`,
/// `GSocketService` and `GSocketConnection`. However there may be cases where
/// direct use of `GSocket` is useful.
/// 
/// `GSocket` implements the `GInitable` interface, so if it is manually constructed
/// by e.g. `g_object_new()` you must call `g_initable_init()` and check the
/// results before using the object. This is done automatically in
/// `g_socket_new()` and `g_socket_new_from_fd()`, so these functions can return
/// `nil`.
/// 
/// Sockets operate in two general modes, blocking or non-blocking. When
/// in blocking mode all operations (which don’t take an explicit blocking
/// parameter) block until the requested operation
/// is finished or there is an error. In non-blocking mode all calls that
/// would block return immediately with a `G_IO_ERROR_WOULD_BLOCK` error.
/// To know when a call would successfully run you can call `g_socket_condition_check()`,
/// or `g_socket_condition_wait()`. You can also use `g_socket_create_source()` and
/// attach it to a `GMainContext` to get callbacks when I/O is possible.
/// Note that all sockets are always set to non blocking mode in the system, and
/// blocking mode is emulated in GSocket.
/// 
/// When working in non-blocking mode applications should always be able to
/// handle getting a `G_IO_ERROR_WOULD_BLOCK` error even when some other
/// function said that I/O was possible. This can easily happen in case
/// of a race condition in the application, but it can also happen for other
/// reasons. For instance, on Windows a socket is always seen as writable
/// until a write returns `G_IO_ERROR_WOULD_BLOCK`.
/// 
/// `GSockets` can be either connection oriented or datagram based.
/// For connection oriented types you must first establish a connection by
/// either connecting to an address or accepting a connection from another
/// address. For connectionless socket types the target/source address is
/// specified or received in each I/O operation.
/// 
/// All socket file descriptors are set to be close-on-exec.
/// 
/// Note that creating a `GSocket` causes the signal `SIGPIPE` to be
/// ignored for the remainder of the program. If you are writing a
/// command-line utility that uses `GSocket`, you may need to take into
/// account the fact that your program will not automatically be killed
/// if it tries to write to `stdout` after it has been closed.
/// 
/// Like most other APIs in GLib, `GSocket` is not inherently thread safe. To use
/// a `GSocket` concurrently from multiple threads, you must implement your own
/// locking.
open class Socket: Object, SocketProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Socket` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSocket>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GSocket`.
    /// i.e., ownership is transferred to the `Socket` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSocket>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `SocketProtocol`
    /// Will retain `GSocket`.
    /// - Parameter other: an instance of a related type that implements `SocketProtocol`
    public init<T: SocketProtocol>(socket other: T) {
        super.init(retaining: cast(other.socket_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GSocket` with the defined family, type and protocol.
    /// If `protocol` is 0 (`G_SOCKET_PROTOCOL_DEFAULT`) the default protocol type
    /// for the family and type is used.
    /// 
    /// The `protocol` is a family and type specific int that specifies what
    /// kind of protocol to use. `GSocketProtocol` lists several common ones.
    /// Many families only support one protocol, and use 0 for this, others
    /// support several and using 0 means to use the default protocol for
    /// the family and type.
    /// 
    /// The protocol id is passed directly to the operating
    /// system, so you can use protocols not listed in `GSocketProtocol` if you
    /// know the protocol number used for it.
    public init( family: SocketFamily, type: SocketType, protocol_: Socket_Protocol) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GSocket>! = cast(g_socket_new(family, type, protocol_, &error))
        if let error = error { throw ErrorType(error) }
        super.init(cast(rv))
    }

    /// Creates a new `GSocket` from a native file descriptor
    /// or winsock SOCKET handle.
    /// 
    /// This reads all the settings from the file descriptor so that
    /// all properties should work. Note that the file descriptor
    /// will be set to non-blocking mode, independent on the blocking
    /// mode of the `GSocket`.
    /// 
    /// On success, the returned `GSocket` takes ownership of `fd`. On failure, the
    /// caller must close `fd` themselves.
    /// 
    /// Since GLib 2.46, it is no longer a fatal error to call this on a non-socket
    /// descriptor.  Instead, a GError will be set with code `G_IO_ERROR_FAILED`
    public init(fd: CInt) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GSocket>! = cast(g_socket_new_from_fd(gint(fd), &error))
        if let error = error { throw ErrorType(error) }
        super.init(cast(rv))
    }

    /// Creates a new `GSocket` from a native file descriptor
    /// or winsock SOCKET handle.
    /// 
    /// This reads all the settings from the file descriptor so that
    /// all properties should work. Note that the file descriptor
    /// will be set to non-blocking mode, independent on the blocking
    /// mode of the `GSocket`.
    /// 
    /// On success, the returned `GSocket` takes ownership of `fd`. On failure, the
    /// caller must close `fd` themselves.
    /// 
    /// Since GLib 2.46, it is no longer a fatal error to call this on a non-socket
    /// descriptor.  Instead, a GError will be set with code `G_IO_ERROR_FAILED`
    public static func newFrom(fd: CInt) throws -> Socket! {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GSocket>! = cast(g_socket_new_from_fd(gint(fd), &error))
        if let error = error { throw ErrorType(error) }
        return rv.map { Socket(cast($0)) }
    }

}

public enum SocketPropertyName: String, PropertyNameProtocol {
    case blocking = "blocking"
    /// Whether the socket should allow sending to broadcast addresses.
    case broadcast = "broadcast"
    case family = "family"
    case fd = "fd"
    case keepalive = "keepalive"
    case listenBacklog = "listen-backlog"
    case localAddress = "local-address"
    /// Whether outgoing multicast packets loop back to the local host.
    case multicastLoopback = "multicast-loopback"
    /// Time-to-live out outgoing multicast packets
    case multicastTtl = "multicast-ttl"
    case protocol_ = "protocol"
    case remoteAddress = "remote-address"
    /// The timeout in seconds on socket I/O
    case timeout = "timeout"
    /// Time-to-live for outgoing unicast packets
    case ttl = "ttl"
    case type = "type"
}

public extension SocketProtocol {
    /// Bind a `SocketPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: SocketPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(socket_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

    /// Get the value of a Socket property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    func get(property: SocketPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Socket property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    func set(property: SocketPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum SocketSignalName: String, SignalNameProtocol {
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
    case notifyBlocking = "notify::blocking"
    /// Whether the socket should allow sending to broadcast addresses.
    case notifyBroadcast = "notify::broadcast"
    case notifyFamily = "notify::family"
    case notifyFd = "notify::fd"
    case notifyKeepalive = "notify::keepalive"
    case notifyListenBacklog = "notify::listen-backlog"
    case notifyLocalAddress = "notify::local-address"
    /// Whether outgoing multicast packets loop back to the local host.
    case notifyMulticastLoopback = "notify::multicast-loopback"
    /// Time-to-live out outgoing multicast packets
    case notifyMulticastTtl = "notify::multicast-ttl"
    case notifyProtocol_ = "notify::protocol"
    case notifyRemoteAddress = "notify::remote-address"
    /// The timeout in seconds on socket I/O
    case notifyTimeout = "notify::timeout"
    /// Time-to-live for outgoing unicast packets
    case notifyTtl = "notify::ttl"
    case notifyType_ = "notify::type"
}

public extension SocketProtocol {
    /// Connect a `SocketSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: SocketSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(socket_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: Socket Class: SocketProtocol extension (methods and fields)
public extension SocketProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSocket` instance.
    var socket_ptr: UnsafeMutablePointer<GSocket> { return ptr.assumingMemoryBound(to: GSocket.self) }

    /// Accept incoming connections on a connection-based socket. This removes
    /// the first outstanding connection request from the listening socket and
    /// creates a `GSocket` object for it.
    /// 
    /// The `socket` must be bound to a local address with `g_socket_bind()` and
    /// must be listening for incoming connections (`g_socket_listen()`).
    /// 
    /// If there are no outstanding connections then the operation will block
    /// or return `G_IO_ERROR_WOULD_BLOCK` if non-blocking I/O is enabled.
    /// To be notified of an incoming connection, wait for the `G_IO_IN` condition.
    func accept(cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GSocket>! {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GSocket>! = cast(g_socket_accept(cast(socket_ptr), cast(cancellable.ptr), &error))
        if let error = error { throw ErrorType(error) }
        return cast(rv)
    }

    /// When a socket is created it is attached to an address family, but it
    /// doesn't have an address in this family. `g_socket_bind()` assigns the
    /// address (sometimes called name) of the socket.
    /// 
    /// It is generally required to bind to a local address before you can
    /// receive connections. (See `g_socket_listen()` and `g_socket_accept()` ).
    /// In certain situations, you may also want to bind a socket that will be
    /// used to initiate connections, though this is not normally required.
    /// 
    /// If `socket` is a TCP socket, then `allow_reuse` controls the setting
    /// of the `SO_REUSEADDR` socket option; normally it should be `true` for
    /// server sockets (sockets that you will eventually call
    /// `g_socket_accept()` on), and `false` for client sockets. (Failing to
    /// set this flag on a server socket may cause `g_socket_bind()` to return
    /// `G_IO_ERROR_ADDRESS_IN_USE` if the server program is stopped and then
    /// immediately restarted.)
    /// 
    /// If `socket` is a UDP socket, then `allow_reuse` determines whether or
    /// not other UDP sockets can be bound to the same address at the same
    /// time. In particular, you can have several UDP sockets bound to the
    /// same address, and they will all receive all of the multicast and
    /// broadcast packets sent to that address. (The behavior of unicast
    /// UDP packets to an address with multiple listeners is not defined.)
    func bind(address: SocketAddressProtocol, allowReuse allow_reuse: Bool) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_socket_bind(cast(socket_ptr), cast(address.ptr), gboolean(allow_reuse ? 1 : 0), &error)
        if let error = error { throw ErrorType(error) }
        return Bool(rv != 0)
    }

    /// Checks and resets the pending connect error for the socket.
    /// This is used to check for errors when `g_socket_connect()` is
    /// used in non-blocking mode.
    func checkConnectResult() throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_socket_check_connect_result(cast(socket_ptr), &error)
        if let error = error { throw ErrorType(error) }
        return Bool(rv != 0)
    }

    /// Closes the socket, shutting down any active connection.
    /// 
    /// Closing a socket does not wait for all outstanding I/O operations
    /// to finish, so the caller should not rely on them to be guaranteed
    /// to complete even if the close returns with no error.
    /// 
    /// Once the socket is closed, all other operations will return
    /// `G_IO_ERROR_CLOSED`. Closing a socket multiple times will not
    /// return an error.
    /// 
    /// Sockets will be automatically closed when the last reference
    /// is dropped, but you might want to call this function to make sure
    /// resources are released as early as possible.
    /// 
    /// Beware that due to the way that TCP works, it is possible for
    /// recently-sent data to be lost if either you close a socket while the
    /// `G_IO_IN` condition is set, or else if the remote connection tries to
    /// send something to you after you close the socket but before it has
    /// finished reading all of the data you sent. There is no easy generic
    /// way to avoid this problem; the easiest fix is to design the network
    /// protocol such that the client will never send data "out of turn".
    /// Another solution is for the server to half-close the connection by
    /// calling `g_socket_shutdown()` with only the `shutdown_write` flag set,
    /// and then wait for the client to notice this and close its side of the
    /// connection, after which the server can safely call `g_socket_close()`.
    /// (This is what `GTcpConnection` does if you call
    /// `g_tcp_connection_set_graceful_disconnect()`. But of course, this
    /// only works if the client will close its connection after the server
    /// does.)
    func close() throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_socket_close(cast(socket_ptr), &error)
        if let error = error { throw ErrorType(error) }
        return Bool(rv != 0)
    }

    /// Checks on the readiness of `socket` to perform operations.
    /// The operations specified in `condition` are checked for and masked
    /// against the currently-satisfied conditions on `socket`. The result
    /// is returned.
    /// 
    /// Note that on Windows, it is possible for an operation to return
    /// `G_IO_ERROR_WOULD_BLOCK` even immediately after
    /// `g_socket_condition_check()` has claimed that the socket is ready for
    /// writing. Rather than calling `g_socket_condition_check()` and then
    /// writing to the socket if it succeeds, it is generally better to
    /// simply try writing to the socket right away, and try again later if
    /// the initial attempt returns `G_IO_ERROR_WOULD_BLOCK`.
    /// 
    /// It is meaningless to specify `G_IO_ERR` or `G_IO_HUP` in condition;
    /// these conditions will always be set in the output if they are true.
    /// 
    /// This call never blocks.
    func conditionCheck(condition: GLib.IOCondition) -> GIOCondition {
        let rv = g_socket_condition_check(cast(socket_ptr), condition.value)
        return cast(rv)
    }

    /// Waits for up to `timeout_us` microseconds for `condition` to become true
    /// on `socket`. If the condition is met, `true` is returned.
    /// 
    /// If `cancellable` is cancelled before the condition is met, or if
    /// `timeout_us` (or the socket's `GSocket:timeout`) is reached before the
    /// condition is met, then `false` is returned and `error`, if non-`nil`,
    /// is set to the appropriate value (`G_IO_ERROR_CANCELLED` or
    /// `G_IO_ERROR_TIMED_OUT`).
    /// 
    /// If you don't want a timeout, use `g_socket_condition_wait()`.
    /// (Alternatively, you can pass -1 for `timeout_us`.)
    /// 
    /// Note that although `timeout_us` is in microseconds for consistency with
    /// other GLib APIs, this function actually only has millisecond
    /// resolution, and the behavior is undefined if `timeout_us` is not an
    /// exact number of milliseconds.
    func conditionTimedWait(condition: GLib.IOCondition, timeoutUs timeout_us: Int64, cancellable: CancellableProtocol) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_socket_condition_timed_wait(cast(socket_ptr), condition.value, gint64(timeout_us), cast(cancellable.ptr), &error)
        if let error = error { throw ErrorType(error) }
        return Bool(rv != 0)
    }

    /// Waits for `condition` to become true on `socket`. When the condition
    /// is met, `true` is returned.
    /// 
    /// If `cancellable` is cancelled before the condition is met, or if the
    /// socket has a timeout set and it is reached before the condition is
    /// met, then `false` is returned and `error`, if non-`nil`, is set to
    /// the appropriate value (`G_IO_ERROR_CANCELLED` or
    /// `G_IO_ERROR_TIMED_OUT`).
    /// 
    /// See also `g_socket_condition_timed_wait()`.
    func conditionWait(condition: GLib.IOCondition, cancellable: CancellableProtocol) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_socket_condition_wait(cast(socket_ptr), condition.value, cast(cancellable.ptr), &error)
        if let error = error { throw ErrorType(error) }
        return Bool(rv != 0)
    }

    /// Connect the socket to the specified remote address.
    /// 
    /// For connection oriented socket this generally means we attempt to make
    /// a connection to the `address`. For a connection-less socket it sets
    /// the default address for `g_socket_send()` and discards all incoming datagrams
    /// from other sources.
    /// 
    /// Generally connection oriented sockets can only connect once, but
    /// connection-less sockets can connect multiple times to change the
    /// default address.
    /// 
    /// If the connect call needs to do network I/O it will block, unless
    /// non-blocking I/O is enabled. Then `G_IO_ERROR_PENDING` is returned
    /// and the user can be notified of the connection finishing by waiting
    /// for the G_IO_OUT condition. The result of the connection must then be
    /// checked with `g_socket_check_connect_result()`.
    func connect(address: SocketAddressProtocol, cancellable: CancellableProtocol) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_socket_connect(cast(socket_ptr), cast(address.ptr), cast(cancellable.ptr), &error)
        if let error = error { throw ErrorType(error) }
        return Bool(rv != 0)
    }

    /// Creates a `GSocketConnection` subclass of the right type for
    /// `socket`.
    func connectionFactoryCreateConnection() -> UnsafeMutablePointer<GSocketConnection>! {
        let rv: UnsafeMutablePointer<GSocketConnection>! = cast(g_socket_connection_factory_create_connection(cast(socket_ptr)))
        return cast(rv)
    }

    /// Creates a `GSource` that can be attached to a `GMainContext` to monitor
    /// for the availability of the specified `condition` on the socket. The `GSource`
    /// keeps a reference to the `socket`.
    /// 
    /// The callback on the source is of the `GSocketSourceFunc` type.
    /// 
    /// It is meaningless to specify `G_IO_ERR` or `G_IO_HUP` in `condition`;
    /// these conditions will always be reported output if they are true.
    /// 
    /// `cancellable` if not `nil` can be used to cancel the source, which will
    /// cause the source to trigger, reporting the current condition (which
    /// is likely 0 unless cancellation happened at the same time as a
    /// condition change). You can check for this in the callback using
    /// `g_cancellable_is_cancelled()`.
    /// 
    /// If `socket` has a timeout set, and it is reached before `condition`
    /// occurs, the source will then trigger anyway, reporting `G_IO_IN` or
    /// `G_IO_OUT` depending on `condition`. However, `socket` will have been
    /// marked as having had a timeout, and so the next `GSocket` I/O method
    /// you call will then fail with a `G_IO_ERROR_TIMED_OUT`.
    func createSource(condition: GLib.IOCondition, cancellable: CancellableProtocol) -> UnsafeMutablePointer<GSource>! {
        let rv: UnsafeMutablePointer<GSource>! = cast(g_socket_create_source(cast(socket_ptr), condition.value, cast(cancellable.ptr)))
        return cast(rv)
    }

    /// Get the amount of data pending in the OS input buffer, without blocking.
    /// 
    /// If `socket` is a UDP or SCTP socket, this will return the size of
    /// just the next packet, even if additional packets are buffered after
    /// that one.
    /// 
    /// Note that on Windows, this function is rather inefficient in the
    /// UDP case, and so if you know any plausible upper bound on the size
    /// of the incoming packet, it is better to just do a
    /// `g_socket_receive()` with a buffer of that size, rather than calling
    /// `g_socket_get_available_bytes()` first and then doing a receive of
    /// exactly the right size.
    func getAvailableBytes() -> gssize {
        let rv = g_socket_get_available_bytes(cast(socket_ptr))
        return cast(rv)
    }

    /// Gets the blocking mode of the socket. For details on blocking I/O,
    /// see `g_socket_set_blocking()`.
    func getBlocking() -> Bool {
        let rv = g_socket_get_blocking(cast(socket_ptr))
        return Bool(rv != 0)
    }

    /// Gets the broadcast setting on `socket`; if `true`,
    /// it is possible to send packets to broadcast
    /// addresses.
    func getBroadcast() -> Bool {
        let rv = g_socket_get_broadcast(cast(socket_ptr))
        return Bool(rv != 0)
    }

    /// Returns the credentials of the foreign process connected to this
    /// socket, if any (e.g. it is only supported for `G_SOCKET_FAMILY_UNIX`
    /// sockets).
    /// 
    /// If this operation isn't supported on the OS, the method fails with
    /// the `G_IO_ERROR_NOT_SUPPORTED` error. On Linux this is implemented
    /// by reading the `SO_PEERCRED` option on the underlying socket.
    /// 
    /// This method can be expected to be available on the following platforms:
    /// 
    /// - Linux since GLib 2.26
    /// - OpenBSD since GLib 2.30
    /// - Solaris, Illumos and OpenSolaris since GLib 2.40
    /// - NetBSD since GLib 2.42
    /// 
    /// Other ways to obtain credentials from a foreign peer includes the
    /// `GUnixCredentialsMessage` type and
    /// `g_unix_connection_send_credentials()` /
    /// `g_unix_connection_receive_credentials()` functions.
    func getCredentials() throws -> UnsafeMutablePointer<GCredentials>! {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GCredentials>! = cast(g_socket_get_credentials(cast(socket_ptr), &error))
        if let error = error { throw ErrorType(error) }
        return cast(rv)
    }

    /// Gets the socket family of the socket.
    func getFamily() -> GSocketFamily {
        let rv = g_socket_get_family(cast(socket_ptr))
        return cast(rv)
    }

    /// Returns the underlying OS socket object. On unix this
    /// is a socket file descriptor, and on Windows this is
    /// a Winsock2 SOCKET handle. This may be useful for
    /// doing platform specific or otherwise unusual operations
    /// on the socket.
    func getFd() -> Int {
        let rv: Int = cast(g_socket_get_fd(cast(socket_ptr)))
        return cast(rv)
    }

    /// Gets the keepalive mode of the socket. For details on this,
    /// see `g_socket_set_keepalive()`.
    func getKeepalive() -> Bool {
        let rv = g_socket_get_keepalive(cast(socket_ptr))
        return Bool(rv != 0)
    }

    /// Gets the listen backlog setting of the socket. For details on this,
    /// see `g_socket_set_listen_backlog()`.
    func getListenBacklog() -> Int {
        let rv: Int = cast(g_socket_get_listen_backlog(cast(socket_ptr)))
        return Int(rv)
    }

    /// Try to get the local address of a bound socket. This is only
    /// useful if the socket has been bound to a local address,
    /// either explicitly or implicitly when connecting.
    func getLocalAddress() throws -> UnsafeMutablePointer<GSocketAddress>! {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GSocketAddress>! = cast(g_socket_get_local_address(cast(socket_ptr), &error))
        if let error = error { throw ErrorType(error) }
        return cast(rv)
    }

    /// Gets the multicast loopback setting on `socket`; if `true` (the
    /// default), outgoing multicast packets will be looped back to
    /// multicast listeners on the same host.
    func getMulticastLoopback() -> Bool {
        let rv = g_socket_get_multicast_loopback(cast(socket_ptr))
        return Bool(rv != 0)
    }

    /// Gets the multicast time-to-live setting on `socket`; see
    /// `g_socket_set_multicast_ttl()` for more details.
    func getMulticastTtl() -> Int {
        let rv: Int = cast(g_socket_get_multicast_ttl(cast(socket_ptr)))
        return Int(rv)
    }

    /// Gets the value of an integer-valued option on `socket`, as with
    /// `getsockopt()`. (If you need to fetch a  non-integer-valued option,
    /// you will need to call `getsockopt()` directly.)
    /// 
    /// The [<gio/gnetworking.h>](#gio-gnetworking.h)
    /// header pulls in system headers that will define most of the
    /// standard/portable socket options. For unusual socket protocols or
    /// platform-dependent options, you may need to include additional
    /// headers.
    /// 
    /// Note that even for socket options that are a single byte in size,
    /// `value` is still a pointer to a `gint` variable, not a `guchar`;
    /// `g_socket_get_option()` will handle the conversion internally.
    func getOption(level: CInt, optname: CInt, value: UnsafeMutablePointer<CInt>) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_socket_get_option(cast(socket_ptr), gint(level), gint(optname), cast(value), &error)
        if let error = error { throw ErrorType(error) }
        return Bool(rv != 0)
    }

    /// Gets the socket protocol id the socket was created with.
    /// In case the protocol is unknown, -1 is returned.
    func getProtocol() -> GSocketProtocol {
        let rv = g_socket_get_protocol(cast(socket_ptr))
        return cast(rv)
    }

    /// Try to get the remote address of a connected socket. This is only
    /// useful for connection oriented sockets that have been connected.
    func getRemoteAddress() throws -> UnsafeMutablePointer<GSocketAddress>! {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GSocketAddress>! = cast(g_socket_get_remote_address(cast(socket_ptr), &error))
        if let error = error { throw ErrorType(error) }
        return cast(rv)
    }

    /// Gets the socket type of the socket.
    func getSocketType() -> GSocketType {
        let rv = g_socket_get_socket_type(cast(socket_ptr))
        return cast(rv)
    }

    /// Gets the timeout setting of the socket. For details on this, see
    /// `g_socket_set_timeout()`.
    func getTimeout() -> Int {
        let rv: Int = cast(g_socket_get_timeout(cast(socket_ptr)))
        return Int(rv)
    }

    /// Gets the unicast time-to-live setting on `socket`; see
    /// `g_socket_set_ttl()` for more details.
    func getTtl() -> Int {
        let rv: Int = cast(g_socket_get_ttl(cast(socket_ptr)))
        return Int(rv)
    }

    /// Registers `socket` to receive multicast messages sent to `group`.
    /// `socket` must be a `G_SOCKET_TYPE_DATAGRAM` socket, and must have
    /// been bound to an appropriate interface and port with
    /// `g_socket_bind()`.
    /// 
    /// If `iface` is `nil`, the system will automatically pick an interface
    /// to bind to based on `group`.
    /// 
    /// If `source_specific` is `true`, source-specific multicast as defined
    /// in RFC 4604 is used. Note that on older platforms this may fail
    /// with a `G_IO_ERROR_NOT_SUPPORTED` error.
    /// 
    /// To bind to a given source-specific multicast address, use
    /// `g_socket_join_multicast_group_ssm()` instead.
    func joinMulticast(group: InetAddressProtocol, sourceSpecific source_specific: Bool, iface: UnsafePointer<gchar>) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_socket_join_multicast_group(cast(socket_ptr), cast(group.ptr), gboolean(source_specific ? 1 : 0), iface, &error)
        if let error = error { throw ErrorType(error) }
        return Bool(rv != 0)
    }

    /// Registers `socket` to receive multicast messages sent to `group`.
    /// `socket` must be a `G_SOCKET_TYPE_DATAGRAM` socket, and must have
    /// been bound to an appropriate interface and port with
    /// `g_socket_bind()`.
    /// 
    /// If `iface` is `nil`, the system will automatically pick an interface
    /// to bind to based on `group`.
    /// 
    /// If `source_specific` is not `nil`, use source-specific multicast as
    /// defined in RFC 4604. Note that on older platforms this may fail
    /// with a `G_IO_ERROR_NOT_SUPPORTED` error.
    /// 
    /// Note that this function can be called multiple times for the same
    /// `group` with different `source_specific` in order to receive multicast
    /// packets from more than one source.
    func joinMulticastGroupSsm(group: InetAddressProtocol, sourceSpecific source_specific: InetAddressProtocol, iface: UnsafePointer<gchar>) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_socket_join_multicast_group_ssm(cast(socket_ptr), cast(group.ptr), cast(source_specific.ptr), iface, &error)
        if let error = error { throw ErrorType(error) }
        return Bool(rv != 0)
    }

    /// Removes `socket` from the multicast group defined by `group`, `iface`,
    /// and `source_specific` (which must all have the same values they had
    /// when you joined the group).
    /// 
    /// `socket` remains bound to its address and port, and can still receive
    /// unicast messages after calling this.
    /// 
    /// To unbind to a given source-specific multicast address, use
    /// `g_socket_leave_multicast_group_ssm()` instead.
    func leaveMulticast(group: InetAddressProtocol, sourceSpecific source_specific: Bool, iface: UnsafePointer<gchar>) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_socket_leave_multicast_group(cast(socket_ptr), cast(group.ptr), gboolean(source_specific ? 1 : 0), iface, &error)
        if let error = error { throw ErrorType(error) }
        return Bool(rv != 0)
    }

    /// Removes `socket` from the multicast group defined by `group`, `iface`,
    /// and `source_specific` (which must all have the same values they had
    /// when you joined the group).
    /// 
    /// `socket` remains bound to its address and port, and can still receive
    /// unicast messages after calling this.
    func leaveMulticastGroupSsm(group: InetAddressProtocol, sourceSpecific source_specific: InetAddressProtocol, iface: UnsafePointer<gchar>) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_socket_leave_multicast_group_ssm(cast(socket_ptr), cast(group.ptr), cast(source_specific.ptr), iface, &error)
        if let error = error { throw ErrorType(error) }
        return Bool(rv != 0)
    }

    /// Marks the socket as a server socket, i.e. a socket that is used
    /// to accept incoming requests using `g_socket_accept()`.
    /// 
    /// Before calling this the socket must be bound to a local address using
    /// `g_socket_bind()`.
    /// 
    /// To set the maximum amount of outstanding clients, use
    /// `g_socket_set_listen_backlog()`.
    func listen() throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_socket_listen(cast(socket_ptr), &error)
        if let error = error { throw ErrorType(error) }
        return Bool(rv != 0)
    }

    /// Receive data (up to `size` bytes) from a socket. This is mainly used by
    /// connection-oriented sockets; it is identical to `g_socket_receive_from()`
    /// with `address` set to `nil`.
    /// 
    /// For `G_SOCKET_TYPE_DATAGRAM` and `G_SOCKET_TYPE_SEQPACKET` sockets,
    /// `g_socket_receive()` will always read either 0 or 1 complete messages from
    /// the socket. If the received message is too large to fit in `buffer`, then
    /// the data beyond `size` bytes will be discarded, without any explicit
    /// indication that this has occurred.
    /// 
    /// For `G_SOCKET_TYPE_STREAM` sockets, `g_socket_receive()` can return any
    /// number of bytes, up to `size`. If more than `size` bytes have been
    /// received, the additional data will be returned in future calls to
    /// `g_socket_receive()`.
    /// 
    /// If the socket is in blocking mode the call will block until there
    /// is some data to receive, the connection is closed, or there is an
    /// error. If there is no data available and the socket is in
    /// non-blocking mode, a `G_IO_ERROR_WOULD_BLOCK` error will be
    /// returned. To be notified when data is available, wait for the
    /// `G_IO_IN` condition.
    /// 
    /// On error -1 is returned and `error` is set accordingly.
    func receive(buffer: UnsafeMutablePointer<gchar>, size: Int, cancellable: CancellableProtocol) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_socket_receive(cast(socket_ptr), cast(buffer), gsize(size), cast(cancellable.ptr), &error)
        if let error = error { throw ErrorType(error) }
        return cast(rv)
    }

    /// Receive data (up to `size` bytes) from a socket.
    /// 
    /// If `address` is non-`nil` then `address` will be set equal to the
    /// source address of the received packet.
    /// `address` is owned by the caller.
    /// 
    /// See `g_socket_receive()` for additional information.
    func receiveFrom(address: SocketAddressProtocol, buffer: UnsafeMutablePointer<gchar>, size: Int, cancellable: CancellableProtocol) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_socket_receive_from(cast(socket_ptr), cast(address.ptr), cast(buffer), gsize(size), cast(cancellable.ptr), &error)
        if let error = error { throw ErrorType(error) }
        return cast(rv)
    }

    /// Receive data from a socket.  For receiving multiple messages, see
    /// `g_socket_receive_messages()`; for easier use, see
    /// `g_socket_receive()` and `g_socket_receive_from()`.
    /// 
    /// If `address` is non-`nil` then `address` will be set equal to the
    /// source address of the received packet.
    /// `address` is owned by the caller.
    /// 
    /// `vector` must point to an array of `GInputVector` structs and
    /// `num_vectors` must be the length of this array.  These structs
    /// describe the buffers that received data will be scattered into.
    /// If `num_vectors` is -1, then `vectors` is assumed to be terminated
    /// by a `GInputVector` with a `nil` buffer pointer.
    /// 
    /// As a special case, if `num_vectors` is 0 (in which case, `vectors`
    /// may of course be `nil`), then a single byte is received and
    /// discarded. This is to facilitate the common practice of sending a
    /// single '\0' byte for the purposes of transferring ancillary data.
    /// 
    /// `messages`, if non-`nil`, will be set to point to a newly-allocated
    /// array of `GSocketControlMessage` instances or `nil` if no such
    /// messages was received. These correspond to the control messages
    /// received from the kernel, one `GSocketControlMessage` per message
    /// from the kernel. This array is `nil`-terminated and must be freed
    /// by the caller using `g_free()` after calling `g_object_unref()` on each
    /// element. If `messages` is `nil`, any control messages received will
    /// be discarded.
    /// 
    /// `num_messages`, if non-`nil`, will be set to the number of control
    /// messages received.
    /// 
    /// If both `messages` and `num_messages` are non-`nil`, then
    /// `num_messages` gives the number of `GSocketControlMessage` instances
    /// in `messages` (ie: not including the `nil` terminator).
    /// 
    /// `flags` is an in/out parameter. The commonly available arguments
    /// for this are available in the `GSocketMsgFlags` enum, but the
    /// values there are the same as the system values, and the flags
    /// are passed in as-is, so you can pass in system-specific flags too
    /// (and `g_socket_receive_message()` may pass system-specific flags out).
    /// Flags passed in to the parameter affect the receive operation; flags returned
    /// out of it are relevant to the specific returned message.
    /// 
    /// As with `g_socket_receive()`, data may be discarded if `socket` is
    /// `G_SOCKET_TYPE_DATAGRAM` or `G_SOCKET_TYPE_SEQPACKET` and you do not
    /// provide enough buffer space to read a complete message. You can pass
    /// `G_SOCKET_MSG_PEEK` in `flags` to peek at the current message without
    /// removing it from the receive queue, but there is no portable way to find
    /// out the length of the message other than by reading it into a
    /// sufficiently-large buffer.
    /// 
    /// If the socket is in blocking mode the call will block until there
    /// is some data to receive, the connection is closed, or there is an
    /// error. If there is no data available and the socket is in
    /// non-blocking mode, a `G_IO_ERROR_WOULD_BLOCK` error will be
    /// returned. To be notified when data is available, wait for the
    /// `G_IO_IN` condition.
    /// 
    /// On error -1 is returned and `error` is set accordingly.
    func receiveMessage(address: SocketAddressProtocol, vectors: UnsafeMutablePointer<GInputVector>, numVectors num_vectors: CInt, messages: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<GSocketControlMessage>>>, numMessages num_messages: UnsafeMutablePointer<CInt>, flags: UnsafeMutablePointer<CInt>, cancellable: CancellableProtocol) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_socket_receive_message(cast(socket_ptr), cast(address.ptr), cast(vectors), gint(num_vectors), cast(messages), cast(num_messages), cast(flags), cast(cancellable.ptr), &error)
        if let error = error { throw ErrorType(error) }
        return cast(rv)
    }

    /// Receive multiple data messages from `socket` in one go.  This is the most
    /// complicated and fully-featured version of this call. For easier use, see
    /// `g_socket_receive()`, `g_socket_receive_from()`, and `g_socket_receive_message()`.
    /// 
    /// `messages` must point to an array of `GInputMessage` structs and
    /// `num_messages` must be the length of this array. Each `GInputMessage`
    /// contains a pointer to an array of `GInputVector` structs describing the
    /// buffers that the data received in each message will be written to. Using
    /// multiple `GInputVectors` is more memory-efficient than manually copying data
    /// out of a single buffer to multiple sources, and more system-call-efficient
    /// than making multiple calls to `g_socket_receive()`, such as in scenarios where
    /// a lot of data packets need to be received (e.g. high-bandwidth video
    /// streaming over RTP/UDP).
    /// 
    /// `flags` modify how all messages are received. The commonly available
    /// arguments for this are available in the `GSocketMsgFlags` enum, but the
    /// values there are the same as the system values, and the flags
    /// are passed in as-is, so you can pass in system-specific flags too. These
    /// flags affect the overall receive operation. Flags affecting individual
    /// messages are returned in `GInputMessage.flags`.
    /// 
    /// The other members of `GInputMessage` are treated as described in its
    /// documentation.
    /// 
    /// If `GSocket:blocking` is `true` the call will block until `num_messages` have
    /// been received, or the end of the stream is reached.
    /// 
    /// If `GSocket:blocking` is `false` the call will return up to `num_messages`
    /// without blocking, or `G_IO_ERROR_WOULD_BLOCK` if no messages are queued in the
    /// operating system to be received.
    /// 
    /// In blocking mode, if `GSocket:timeout` is positive and is reached before any
    /// messages are received, `G_IO_ERROR_TIMED_OUT` is returned, otherwise up to
    /// `num_messages` are returned. (Note: This is effectively the
    /// behaviour of `MSG_WAITFORONE` with `recvmmsg()`.)
    /// 
    /// To be notified when messages are available, wait for the
    /// `G_IO_IN` condition. Note though that you may still receive
    /// `G_IO_ERROR_WOULD_BLOCK` from `g_socket_receive_messages()` even if you were
    /// previously notified of a `G_IO_IN` condition.
    /// 
    /// If the remote peer closes the connection, any messages queued in the
    /// operating system will be returned, and subsequent calls to
    /// `g_socket_receive_messages()` will return 0 (with no error set).
    /// 
    /// On error -1 is returned and `error` is set accordingly. An error will only
    /// be returned if zero messages could be received; otherwise the number of
    /// messages successfully received before the error will be returned.
    func receive(messages: UnsafeMutablePointer<GInputMessage>, numMessages num_messages: CUnsignedInt, flags: CInt, cancellable: CancellableProtocol) throws -> Int {
        var error: UnsafeMutablePointer<GError>?
        let rv: Int = cast(g_socket_receive_messages(cast(socket_ptr), cast(messages), guint(num_messages), gint(flags), cast(cancellable.ptr), &error))
        if let error = error { throw ErrorType(error) }
        return Int(rv)
    }

    /// This behaves exactly the same as `g_socket_receive()`, except that
    /// the choice of blocking or non-blocking behavior is determined by
    /// the `blocking` argument rather than by `socket`'s properties.
    func receiveWithBlocking(buffer: UnsafeMutablePointer<gchar>, size: Int, blocking: Bool, cancellable: CancellableProtocol) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_socket_receive_with_blocking(cast(socket_ptr), cast(buffer), gsize(size), gboolean(blocking ? 1 : 0), cast(cancellable.ptr), &error)
        if let error = error { throw ErrorType(error) }
        return cast(rv)
    }

    /// Tries to send `size` bytes from `buffer` on the socket. This is
    /// mainly used by connection-oriented sockets; it is identical to
    /// `g_socket_send_to()` with `address` set to `nil`.
    /// 
    /// If the socket is in blocking mode the call will block until there is
    /// space for the data in the socket queue. If there is no space available
    /// and the socket is in non-blocking mode a `G_IO_ERROR_WOULD_BLOCK` error
    /// will be returned. To be notified when space is available, wait for the
    /// `G_IO_OUT` condition. Note though that you may still receive
    /// `G_IO_ERROR_WOULD_BLOCK` from `g_socket_send()` even if you were previously
    /// notified of a `G_IO_OUT` condition. (On Windows in particular, this is
    /// very common due to the way the underlying APIs work.)
    /// 
    /// On error -1 is returned and `error` is set accordingly.
    func send(buffer: UnsafePointer<gchar>, size: Int, cancellable: CancellableProtocol) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_socket_send(cast(socket_ptr), cast(buffer), gsize(size), cast(cancellable.ptr), &error)
        if let error = error { throw ErrorType(error) }
        return cast(rv)
    }

    /// Send data to `address` on `socket`.  For sending multiple messages see
    /// `g_socket_send_messages()`; for easier use, see
    /// `g_socket_send()` and `g_socket_send_to()`.
    /// 
    /// If `address` is `nil` then the message is sent to the default receiver
    /// (set by `g_socket_connect()`).
    /// 
    /// `vectors` must point to an array of `GOutputVector` structs and
    /// `num_vectors` must be the length of this array. (If `num_vectors` is -1,
    /// then `vectors` is assumed to be terminated by a `GOutputVector` with a
    /// `nil` buffer pointer.) The `GOutputVector` structs describe the buffers
    /// that the sent data will be gathered from. Using multiple
    /// `GOutputVectors` is more memory-efficient than manually copying
    /// data from multiple sources into a single buffer, and more
    /// network-efficient than making multiple calls to `g_socket_send()`.
    /// 
    /// `messages`, if non-`nil`, is taken to point to an array of `num_messages`
    /// `GSocketControlMessage` instances. These correspond to the control
    /// messages to be sent on the socket.
    /// If `num_messages` is -1 then `messages` is treated as a `nil`-terminated
    /// array.
    /// 
    /// `flags` modify how the message is sent. The commonly available arguments
    /// for this are available in the `GSocketMsgFlags` enum, but the
    /// values there are the same as the system values, and the flags
    /// are passed in as-is, so you can pass in system-specific flags too.
    /// 
    /// If the socket is in blocking mode the call will block until there is
    /// space for the data in the socket queue. If there is no space available
    /// and the socket is in non-blocking mode a `G_IO_ERROR_WOULD_BLOCK` error
    /// will be returned. To be notified when space is available, wait for the
    /// `G_IO_OUT` condition. Note though that you may still receive
    /// `G_IO_ERROR_WOULD_BLOCK` from `g_socket_send()` even if you were previously
    /// notified of a `G_IO_OUT` condition. (On Windows in particular, this is
    /// very common due to the way the underlying APIs work.)
    /// 
    /// On error -1 is returned and `error` is set accordingly.
    func sendMessage(address: SocketAddressProtocol, vectors: UnsafeMutablePointer<GOutputVector>, numVectors num_vectors: CInt, messages: UnsafeMutablePointer<UnsafeMutablePointer<GSocketControlMessage>>, numMessages num_messages: CInt, flags: CInt, cancellable: CancellableProtocol) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_socket_send_message(cast(socket_ptr), cast(address.ptr), cast(vectors), gint(num_vectors), cast(messages), gint(num_messages), gint(flags), cast(cancellable.ptr), &error)
        if let error = error { throw ErrorType(error) }
        return cast(rv)
    }

    /// This behaves exactly the same as `g_socket_send_message()`, except that
    /// the choice of timeout behavior is determined by the `timeout_us` argument
    /// rather than by `socket`'s properties.
    /// 
    /// On error `G_POLLABLE_RETURN_FAILED` is returned and `error` is set accordingly, or
    /// if the socket is currently not writable `G_POLLABLE_RETURN_WOULD_BLOCK` is
    /// returned. `bytes_written` will contain 0 in both cases.
    func sendMessageWithTimeout(address: SocketAddressProtocol, vectors: UnsafePointer<GOutputVector>, numVectors num_vectors: CInt, messages: UnsafeMutablePointer<UnsafeMutablePointer<GSocketControlMessage>>, numMessages num_messages: CInt, flags: CInt, timeoutUs timeout_us: Int64, bytesWritten bytes_written: UnsafeMutablePointer<Int>, cancellable: CancellableProtocol) throws -> GPollableReturn {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_socket_send_message_with_timeout(cast(socket_ptr), cast(address.ptr), cast(vectors), gint(num_vectors), cast(messages), gint(num_messages), gint(flags), gint64(timeout_us), cast(bytes_written), cast(cancellable.ptr), &error)
        if let error = error { throw ErrorType(error) }
        return cast(rv)
    }

    /// Send multiple data messages from `socket` in one go.  This is the most
    /// complicated and fully-featured version of this call. For easier use, see
    /// `g_socket_send()`, `g_socket_send_to()`, and `g_socket_send_message()`.
    /// 
    /// `messages` must point to an array of `GOutputMessage` structs and
    /// `num_messages` must be the length of this array. Each `GOutputMessage`
    /// contains an address to send the data to, and a pointer to an array of
    /// `GOutputVector` structs to describe the buffers that the data to be sent
    /// for each message will be gathered from. Using multiple `GOutputVectors` is
    /// more memory-efficient than manually copying data from multiple sources
    /// into a single buffer, and more network-efficient than making multiple
    /// calls to `g_socket_send()`. Sending multiple messages in one go avoids the
    /// overhead of making a lot of syscalls in scenarios where a lot of data
    /// packets need to be sent (e.g. high-bandwidth video streaming over RTP/UDP),
    /// or where the same data needs to be sent to multiple recipients.
    /// 
    /// `flags` modify how the message is sent. The commonly available arguments
    /// for this are available in the `GSocketMsgFlags` enum, but the
    /// values there are the same as the system values, and the flags
    /// are passed in as-is, so you can pass in system-specific flags too.
    /// 
    /// If the socket is in blocking mode the call will block until there is
    /// space for all the data in the socket queue. If there is no space available
    /// and the socket is in non-blocking mode a `G_IO_ERROR_WOULD_BLOCK` error
    /// will be returned if no data was written at all, otherwise the number of
    /// messages sent will be returned. To be notified when space is available,
    /// wait for the `G_IO_OUT` condition. Note though that you may still receive
    /// `G_IO_ERROR_WOULD_BLOCK` from `g_socket_send()` even if you were previously
    /// notified of a `G_IO_OUT` condition. (On Windows in particular, this is
    /// very common due to the way the underlying APIs work.)
    /// 
    /// On error -1 is returned and `error` is set accordingly. An error will only
    /// be returned if zero messages could be sent; otherwise the number of messages
    /// successfully sent before the error will be returned.
    func send(messages: UnsafeMutablePointer<GOutputMessage>, numMessages num_messages: CUnsignedInt, flags: CInt, cancellable: CancellableProtocol) throws -> Int {
        var error: UnsafeMutablePointer<GError>?
        let rv: Int = cast(g_socket_send_messages(cast(socket_ptr), cast(messages), guint(num_messages), gint(flags), cast(cancellable.ptr), &error))
        if let error = error { throw ErrorType(error) }
        return Int(rv)
    }

    /// Tries to send `size` bytes from `buffer` to `address`. If `address` is
    /// `nil` then the message is sent to the default receiver (set by
    /// `g_socket_connect()`).
    /// 
    /// See `g_socket_send()` for additional information.
    func sendTo(address: SocketAddressProtocol, buffer: UnsafePointer<gchar>, size: Int, cancellable: CancellableProtocol) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_socket_send_to(cast(socket_ptr), cast(address.ptr), cast(buffer), gsize(size), cast(cancellable.ptr), &error)
        if let error = error { throw ErrorType(error) }
        return cast(rv)
    }

    /// This behaves exactly the same as `g_socket_send()`, except that
    /// the choice of blocking or non-blocking behavior is determined by
    /// the `blocking` argument rather than by `socket`'s properties.
    func sendWithBlocking(buffer: UnsafePointer<gchar>, size: Int, blocking: Bool, cancellable: CancellableProtocol) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_socket_send_with_blocking(cast(socket_ptr), cast(buffer), gsize(size), gboolean(blocking ? 1 : 0), cast(cancellable.ptr), &error)
        if let error = error { throw ErrorType(error) }
        return cast(rv)
    }

    /// Sets the blocking mode of the socket. In blocking mode
    /// all operations (which don’t take an explicit blocking parameter) block until
    /// they succeed or there is an error. In
    /// non-blocking mode all functions return results immediately or
    /// with a `G_IO_ERROR_WOULD_BLOCK` error.
    /// 
    /// All sockets are created in blocking mode. However, note that the
    /// platform level socket is always non-blocking, and blocking mode
    /// is a GSocket level feature.
    func set(blocking: Bool) {
        g_socket_set_blocking(cast(socket_ptr), gboolean(blocking ? 1 : 0))
    
    }

    /// Sets whether `socket` should allow sending to broadcast addresses.
    /// This is `false` by default.
    func set(broadcast: Bool) {
        g_socket_set_broadcast(cast(socket_ptr), gboolean(broadcast ? 1 : 0))
    
    }

    /// Sets or unsets the `SO_KEEPALIVE` flag on the underlying socket. When
    /// this flag is set on a socket, the system will attempt to verify that the
    /// remote socket endpoint is still present if a sufficiently long period of
    /// time passes with no data being exchanged. If the system is unable to
    /// verify the presence of the remote endpoint, it will automatically close
    /// the connection.
    /// 
    /// This option is only functional on certain kinds of sockets. (Notably,
    /// `G_SOCKET_PROTOCOL_TCP` sockets.)
    /// 
    /// The exact time between pings is system- and protocol-dependent, but will
    /// normally be at least two hours. Most commonly, you would set this flag
    /// on a server socket if you want to allow clients to remain idle for long
    /// periods of time, but also want to ensure that connections are eventually
    /// garbage-collected if clients crash or become unreachable.
    func set(keepalive: Bool) {
        g_socket_set_keepalive(cast(socket_ptr), gboolean(keepalive ? 1 : 0))
    
    }

    /// Sets the maximum number of outstanding connections allowed
    /// when listening on this socket. If more clients than this are
    /// connecting to the socket and the application is not handling them
    /// on time then the new connections will be refused.
    /// 
    /// Note that this must be called before `g_socket_listen()` and has no
    /// effect if called after that.
    func setListen(backlog: CInt) {
        g_socket_set_listen_backlog(cast(socket_ptr), gint(backlog))
    
    }

    /// Sets whether outgoing multicast packets will be received by sockets
    /// listening on that multicast address on the same host. This is `true`
    /// by default.
    func setMulticast(loopback: Bool) {
        g_socket_set_multicast_loopback(cast(socket_ptr), gboolean(loopback ? 1 : 0))
    
    }

    /// Sets the time-to-live for outgoing multicast datagrams on `socket`.
    /// By default, this is 1, meaning that multicast packets will not leave
    /// the local network.
    func setMulticast(ttl: CUnsignedInt) {
        g_socket_set_multicast_ttl(cast(socket_ptr), guint(ttl))
    
    }

    /// Sets the value of an integer-valued option on `socket`, as with
    /// `setsockopt()`. (If you need to set a non-integer-valued option,
    /// you will need to call `setsockopt()` directly.)
    /// 
    /// The [<gio/gnetworking.h>](#gio-gnetworking.h)
    /// header pulls in system headers that will define most of the
    /// standard/portable socket options. For unusual socket protocols or
    /// platform-dependent options, you may need to include additional
    /// headers.
    func setOption(level: CInt, optname: CInt, value: CInt) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_socket_set_option(cast(socket_ptr), gint(level), gint(optname), gint(value), &error)
        if let error = error { throw ErrorType(error) }
        return Bool(rv != 0)
    }

    /// Sets the time in seconds after which I/O operations on `socket` will
    /// time out if they have not yet completed.
    /// 
    /// On a blocking socket, this means that any blocking `GSocket`
    /// operation will time out after `timeout` seconds of inactivity,
    /// returning `G_IO_ERROR_TIMED_OUT`.
    /// 
    /// On a non-blocking socket, calls to `g_socket_condition_wait()` will
    /// also fail with `G_IO_ERROR_TIMED_OUT` after the given time. Sources
    /// created with `g_socket_create_source()` will trigger after
    /// `timeout` seconds of inactivity, with the requested condition
    /// set, at which point calling `g_socket_receive()`, `g_socket_send()`,
    /// `g_socket_check_connect_result()`, etc, will fail with
    /// `G_IO_ERROR_TIMED_OUT`.
    /// 
    /// If `timeout` is 0 (the default), operations will never time out
    /// on their own.
    /// 
    /// Note that if an I/O operation is interrupted by a signal, this may
    /// cause the timeout to be reset.
    func set(timeout: CUnsignedInt) {
        g_socket_set_timeout(cast(socket_ptr), guint(timeout))
    
    }

    /// Sets the time-to-live for outgoing unicast packets on `socket`.
    /// By default the platform-specific default value is used.
    func set(ttl: CUnsignedInt) {
        g_socket_set_ttl(cast(socket_ptr), guint(ttl))
    
    }

    /// Shut down part or all of a full-duplex connection.
    /// 
    /// If `shutdown_read` is `true` then the receiving side of the connection
    /// is shut down, and further reading is disallowed.
    /// 
    /// If `shutdown_write` is `true` then the sending side of the connection
    /// is shut down, and further writing is disallowed.
    /// 
    /// It is allowed for both `shutdown_read` and `shutdown_write` to be `true`.
    /// 
    /// One example where it is useful to shut down only one side of a connection is
    /// graceful disconnect for TCP connections where you close the sending side,
    /// then wait for the other side to close the connection, thus ensuring that the
    /// other side saw all sent data.
    func shutdown(shutdownRead shutdown_read: Bool, shutdownWrite shutdown_write: Bool) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_socket_shutdown(cast(socket_ptr), gboolean(shutdown_read ? 1 : 0), gboolean(shutdown_write ? 1 : 0), &error)
        if let error = error { throw ErrorType(error) }
        return Bool(rv != 0)
    }

    /// Checks if a socket is capable of speaking IPv4.
    /// 
    /// IPv4 sockets are capable of speaking IPv4.  On some operating systems
    /// and under some combinations of circumstances IPv6 sockets are also
    /// capable of speaking IPv4.  See RFC 3493 section 3.7 for more
    /// information.
    /// 
    /// No other types of sockets are currently considered as being capable
    /// of speaking IPv4.
    func speaksIpv4() -> Bool {
        let rv = g_socket_speaks_ipv4(cast(socket_ptr))
        return Bool(rv != 0)
    }
    /// Get the amount of data pending in the OS input buffer, without blocking.
    /// 
    /// If `socket` is a UDP or SCTP socket, this will return the size of
    /// just the next packet, even if additional packets are buffered after
    /// that one.
    /// 
    /// Note that on Windows, this function is rather inefficient in the
    /// UDP case, and so if you know any plausible upper bound on the size
    /// of the incoming packet, it is better to just do a
    /// `g_socket_receive()` with a buffer of that size, rather than calling
    /// `g_socket_get_available_bytes()` first and then doing a receive of
    /// exactly the right size.
    var availableBytes: gssize {
        /// Get the amount of data pending in the OS input buffer, without blocking.
        /// 
        /// If `socket` is a UDP or SCTP socket, this will return the size of
        /// just the next packet, even if additional packets are buffered after
        /// that one.
        /// 
        /// Note that on Windows, this function is rather inefficient in the
        /// UDP case, and so if you know any plausible upper bound on the size
        /// of the incoming packet, it is better to just do a
        /// `g_socket_receive()` with a buffer of that size, rather than calling
        /// `g_socket_get_available_bytes()` first and then doing a receive of
        /// exactly the right size.
        get {
            let rv = g_socket_get_available_bytes(cast(socket_ptr))
            return cast(rv)
        }
    }

    var blocking: Bool {
        /// Gets the blocking mode of the socket. For details on blocking I/O,
        /// see `g_socket_set_blocking()`.
        get {
            let rv = g_socket_get_blocking(cast(socket_ptr))
            return Bool(rv != 0)
        }
        /// Sets the blocking mode of the socket. In blocking mode
        /// all operations (which don’t take an explicit blocking parameter) block until
        /// they succeed or there is an error. In
        /// non-blocking mode all functions return results immediately or
        /// with a `G_IO_ERROR_WOULD_BLOCK` error.
        /// 
        /// All sockets are created in blocking mode. However, note that the
        /// platform level socket is always non-blocking, and blocking mode
        /// is a GSocket level feature.
        nonmutating set {
            g_socket_set_blocking(cast(socket_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Whether the socket should allow sending to broadcast addresses.
    var broadcast: Bool {
        /// Gets the broadcast setting on `socket`; if `true`,
        /// it is possible to send packets to broadcast
        /// addresses.
        get {
            let rv = g_socket_get_broadcast(cast(socket_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether `socket` should allow sending to broadcast addresses.
        /// This is `false` by default.
        nonmutating set {
            g_socket_set_broadcast(cast(socket_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Returns the credentials of the foreign process connected to this
    /// socket, if any (e.g. it is only supported for `G_SOCKET_FAMILY_UNIX`
    /// sockets).
    /// 
    /// If this operation isn't supported on the OS, the method fails with
    /// the `G_IO_ERROR_NOT_SUPPORTED` error. On Linux this is implemented
    /// by reading the `SO_PEERCRED` option on the underlying socket.
    /// 
    /// This method can be expected to be available on the following platforms:
    /// 
    /// - Linux since GLib 2.26
    /// - OpenBSD since GLib 2.30
    /// - Solaris, Illumos and OpenSolaris since GLib 2.40
    /// - NetBSD since GLib 2.42
    /// 
    /// Other ways to obtain credentials from a foreign peer includes the
    /// `GUnixCredentialsMessage` type and
    /// `g_unix_connection_send_credentials()` /
    /// `g_unix_connection_receive_credentials()` functions.
    var credentials: UnsafeMutablePointer<GCredentials>! {
        /// Returns the credentials of the foreign process connected to this
        /// socket, if any (e.g. it is only supported for `G_SOCKET_FAMILY_UNIX`
        /// sockets).
        /// 
        /// If this operation isn't supported on the OS, the method fails with
        /// the `G_IO_ERROR_NOT_SUPPORTED` error. On Linux this is implemented
        /// by reading the `SO_PEERCRED` option on the underlying socket.
        /// 
        /// This method can be expected to be available on the following platforms:
        /// 
        /// - Linux since GLib 2.26
        /// - OpenBSD since GLib 2.30
        /// - Solaris, Illumos and OpenSolaris since GLib 2.40
        /// - NetBSD since GLib 2.42
        /// 
        /// Other ways to obtain credentials from a foreign peer includes the
        /// `GUnixCredentialsMessage` type and
        /// `g_unix_connection_send_credentials()` /
        /// `g_unix_connection_receive_credentials()` functions.
        get {
            var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GCredentials>! = cast(g_socket_get_credentials(cast(socket_ptr), &error))
        g_log(messagePtr: error?.pointee.message, level: .error)
            return cast(rv)
        }
    }

    var family: GSocketFamily {
        /// Gets the socket family of the socket.
        get {
            let rv = g_socket_get_family(cast(socket_ptr))
            return cast(rv)
        }
    }

    var fd: Int {
        /// Returns the underlying OS socket object. On unix this
        /// is a socket file descriptor, and on Windows this is
        /// a Winsock2 SOCKET handle. This may be useful for
        /// doing platform specific or otherwise unusual operations
        /// on the socket.
        get {
            let rv: Int = cast(g_socket_get_fd(cast(socket_ptr)))
            return cast(rv)
        }
    }

    /// Checks whether a socket is closed.
    var isClosed: Bool {
        /// Checks whether a socket is closed.
        get {
            let rv = g_socket_is_closed(cast(socket_ptr))
            return Bool(rv != 0)
        }
    }

    /// Check whether the socket is connected. This is only useful for
    /// connection-oriented sockets.
    /// 
    /// If using `g_socket_shutdown()`, this function will return `true` until the
    /// socket has been shut down for reading and writing. If you do a non-blocking
    /// connect, this function will not return `true` until after you call
    /// `g_socket_check_connect_result()`.
    var isConnected: Bool {
        /// Check whether the socket is connected. This is only useful for
        /// connection-oriented sockets.
        /// 
        /// If using `g_socket_shutdown()`, this function will return `true` until the
        /// socket has been shut down for reading and writing. If you do a non-blocking
        /// connect, this function will not return `true` until after you call
        /// `g_socket_check_connect_result()`.
        get {
            let rv = g_socket_is_connected(cast(socket_ptr))
            return Bool(rv != 0)
        }
    }

    var keepalive: Bool {
        /// Gets the keepalive mode of the socket. For details on this,
        /// see `g_socket_set_keepalive()`.
        get {
            let rv = g_socket_get_keepalive(cast(socket_ptr))
            return Bool(rv != 0)
        }
        /// Sets or unsets the `SO_KEEPALIVE` flag on the underlying socket. When
        /// this flag is set on a socket, the system will attempt to verify that the
        /// remote socket endpoint is still present if a sufficiently long period of
        /// time passes with no data being exchanged. If the system is unable to
        /// verify the presence of the remote endpoint, it will automatically close
        /// the connection.
        /// 
        /// This option is only functional on certain kinds of sockets. (Notably,
        /// `G_SOCKET_PROTOCOL_TCP` sockets.)
        /// 
        /// The exact time between pings is system- and protocol-dependent, but will
        /// normally be at least two hours. Most commonly, you would set this flag
        /// on a server socket if you want to allow clients to remain idle for long
        /// periods of time, but also want to ensure that connections are eventually
        /// garbage-collected if clients crash or become unreachable.
        nonmutating set {
            g_socket_set_keepalive(cast(socket_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Gets the listen backlog setting of the socket. For details on this,
    /// see `g_socket_set_listen_backlog()`.
    var listenBacklog: Int {
        /// Gets the listen backlog setting of the socket. For details on this,
        /// see `g_socket_set_listen_backlog()`.
        get {
            let rv: Int = cast(g_socket_get_listen_backlog(cast(socket_ptr)))
            return Int(rv)
        }
        /// Sets the maximum number of outstanding connections allowed
        /// when listening on this socket. If more clients than this are
        /// connecting to the socket and the application is not handling them
        /// on time then the new connections will be refused.
        /// 
        /// Note that this must be called before `g_socket_listen()` and has no
        /// effect if called after that.
        nonmutating set {
            g_socket_set_listen_backlog(cast(socket_ptr), gint(newValue))
        }
    }

    /// Try to get the local address of a bound socket. This is only
    /// useful if the socket has been bound to a local address,
    /// either explicitly or implicitly when connecting.
    var localAddress: UnsafeMutablePointer<GSocketAddress>! {
        /// Try to get the local address of a bound socket. This is only
        /// useful if the socket has been bound to a local address,
        /// either explicitly or implicitly when connecting.
        get {
            var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GSocketAddress>! = cast(g_socket_get_local_address(cast(socket_ptr), &error))
        g_log(messagePtr: error?.pointee.message, level: .error)
            return cast(rv)
        }
    }

    /// Gets the multicast loopback setting on `socket`; if `true` (the
    /// default), outgoing multicast packets will be looped back to
    /// multicast listeners on the same host.
    var multicastLoopback: Bool {
        /// Gets the multicast loopback setting on `socket`; if `true` (the
        /// default), outgoing multicast packets will be looped back to
        /// multicast listeners on the same host.
        get {
            let rv = g_socket_get_multicast_loopback(cast(socket_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether outgoing multicast packets will be received by sockets
        /// listening on that multicast address on the same host. This is `true`
        /// by default.
        nonmutating set {
            g_socket_set_multicast_loopback(cast(socket_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Gets the multicast time-to-live setting on `socket`; see
    /// `g_socket_set_multicast_ttl()` for more details.
    var multicastTtl: Int {
        /// Gets the multicast time-to-live setting on `socket`; see
        /// `g_socket_set_multicast_ttl()` for more details.
        get {
            let rv: Int = cast(g_socket_get_multicast_ttl(cast(socket_ptr)))
            return Int(rv)
        }
        /// Sets the time-to-live for outgoing multicast datagrams on `socket`.
        /// By default, this is 1, meaning that multicast packets will not leave
        /// the local network.
        nonmutating set {
            g_socket_set_multicast_ttl(cast(socket_ptr), guint(newValue))
        }
    }

    var `protocol`: GSocketProtocol {
        /// Gets the socket protocol id the socket was created with.
        /// In case the protocol is unknown, -1 is returned.
        get {
            let rv = g_socket_get_protocol(cast(socket_ptr))
            return cast(rv)
        }
    }

    /// Try to get the remote address of a connected socket. This is only
    /// useful for connection oriented sockets that have been connected.
    var remoteAddress: UnsafeMutablePointer<GSocketAddress>! {
        /// Try to get the remote address of a connected socket. This is only
        /// useful for connection oriented sockets that have been connected.
        get {
            var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GSocketAddress>! = cast(g_socket_get_remote_address(cast(socket_ptr), &error))
        g_log(messagePtr: error?.pointee.message, level: .error)
            return cast(rv)
        }
    }

    /// Gets the socket type of the socket.
    var socketType: GSocketType {
        /// Gets the socket type of the socket.
        get {
            let rv = g_socket_get_socket_type(cast(socket_ptr))
            return cast(rv)
        }
    }

    /// The timeout in seconds on socket I/O
    var timeout: Int {
        /// Gets the timeout setting of the socket. For details on this, see
        /// `g_socket_set_timeout()`.
        get {
            let rv: Int = cast(g_socket_get_timeout(cast(socket_ptr)))
            return Int(rv)
        }
        /// Sets the time in seconds after which I/O operations on `socket` will
        /// time out if they have not yet completed.
        /// 
        /// On a blocking socket, this means that any blocking `GSocket`
        /// operation will time out after `timeout` seconds of inactivity,
        /// returning `G_IO_ERROR_TIMED_OUT`.
        /// 
        /// On a non-blocking socket, calls to `g_socket_condition_wait()` will
        /// also fail with `G_IO_ERROR_TIMED_OUT` after the given time. Sources
        /// created with `g_socket_create_source()` will trigger after
        /// `timeout` seconds of inactivity, with the requested condition
        /// set, at which point calling `g_socket_receive()`, `g_socket_send()`,
        /// `g_socket_check_connect_result()`, etc, will fail with
        /// `G_IO_ERROR_TIMED_OUT`.
        /// 
        /// If `timeout` is 0 (the default), operations will never time out
        /// on their own.
        /// 
        /// Note that if an I/O operation is interrupted by a signal, this may
        /// cause the timeout to be reset.
        nonmutating set {
            g_socket_set_timeout(cast(socket_ptr), guint(newValue))
        }
    }

    /// Time-to-live for outgoing unicast packets
    var ttl: Int {
        /// Gets the unicast time-to-live setting on `socket`; see
        /// `g_socket_set_ttl()` for more details.
        get {
            let rv: Int = cast(g_socket_get_ttl(cast(socket_ptr)))
            return Int(rv)
        }
        /// Sets the time-to-live for outgoing unicast packets on `socket`.
        /// By default the platform-specific default value is used.
        nonmutating set {
            g_socket_set_ttl(cast(socket_ptr), guint(newValue))
        }
    }

    var parentInstance: GObject {
        get {
            let rv: GObject = cast(socket_ptr.pointee.parent_instance)
            return rv
        }
    }

    var priv: UnsafeMutablePointer<GSocketPrivate> {
        get {
            let rv: UnsafeMutablePointer<GSocketPrivate> = cast(socket_ptr.pointee.priv)
            return rv
        }
    }

}



// MARK: - SocketAddress Class

/// The `SocketAddressProtocol` protocol exposes the methods and properties of an underlying `GSocketAddress` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SocketAddress`.
/// Alternatively, use `SocketAddressRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GSocketAddress` is the equivalent of struct sockaddr in the BSD
/// sockets API. This is an abstract class; use `GInetSocketAddress`
/// for internet sockets, or `GUnixSocketAddress` for UNIX domain sockets.
public protocol SocketAddressProtocol: ObjectProtocol, SocketConnectableProtocol {
        /// Untyped pointer to the underlying `GSocketAddress` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSocketAddress` instance.
    var socket_address_ptr: UnsafeMutablePointer<GSocketAddress> { get }
}

/// The `SocketAddressRef` type acts as a lightweight Swift reference to an underlying `GSocketAddress` instance.
/// It exposes methods that can operate on this data type through `SocketAddressProtocol` conformance.
/// Use `SocketAddressRef` only as an `unowned` reference to an existing `GSocketAddress` instance.
///
/// `GSocketAddress` is the equivalent of struct sockaddr in the BSD
/// sockets API. This is an abstract class; use `GInetSocketAddress`
/// for internet sockets, or `GUnixSocketAddress` for UNIX domain sockets.
public struct SocketAddressRef: SocketAddressProtocol {
        /// Untyped pointer to the underlying `GSocketAddress` instance.
    /// For type-safe access, use the generated, typed pointer `socket_address_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SocketAddressRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSocketAddress>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SocketAddressProtocol`
    init<T: SocketAddressProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a `GSocketAddress` subclass corresponding to the native
    /// struct sockaddr `native`.
    init(native: UnsafeMutableRawPointer, len: Int) {
        let rv: UnsafeMutablePointer<GSocketAddress>! = cast(g_socket_address_new_from_native(cast(native), gsize(len)))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
    /// Creates a `GSocketAddress` subclass corresponding to the native
    /// struct sockaddr `native`.
    static func newFrom(native: UnsafeMutableRawPointer, len: Int) -> SocketAddressRef! {
        let rv: UnsafeMutablePointer<GSocketAddress>! = cast(g_socket_address_new_from_native(cast(native), gsize(len)))
        return rv.map { SocketAddressRef(cast($0)) }
    }
}

/// The `SocketAddress` type acts as a reference-counted owner of an underlying `GSocketAddress` instance.
/// It provides the methods that can operate on this data type through `SocketAddressProtocol` conformance.
/// Use `SocketAddress` as a strong reference or owner of a `GSocketAddress` instance.
///
/// `GSocketAddress` is the equivalent of struct sockaddr in the BSD
/// sockets API. This is an abstract class; use `GInetSocketAddress`
/// for internet sockets, or `GUnixSocketAddress` for UNIX domain sockets.
open class SocketAddress: Object, SocketAddressProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketAddress` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSocketAddress>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GSocketAddress`.
    /// i.e., ownership is transferred to the `SocketAddress` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSocketAddress>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `SocketAddressProtocol`
    /// Will retain `GSocketAddress`.
    /// - Parameter other: an instance of a related type that implements `SocketAddressProtocol`
    public init<T: SocketAddressProtocol>(socketAddress other: T) {
        super.init(retaining: cast(other.socket_address_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a `GSocketAddress` subclass corresponding to the native
    /// struct sockaddr `native`.
    public init(native: UnsafeMutableRawPointer, len: Int) {
        let rv: UnsafeMutablePointer<GSocketAddress>! = cast(g_socket_address_new_from_native(cast(native), gsize(len)))
        super.init(cast(rv))
    }

    /// Creates a `GSocketAddress` subclass corresponding to the native
    /// struct sockaddr `native`.
    public static func newFrom(native: UnsafeMutableRawPointer, len: Int) -> SocketAddress! {
        let rv: UnsafeMutablePointer<GSocketAddress>! = cast(g_socket_address_new_from_native(cast(native), gsize(len)))
        return rv.map { SocketAddress(cast($0)) }
    }

}

public enum SocketAddressPropertyName: String, PropertyNameProtocol {
    case family = "family"
}

public extension SocketAddressProtocol {
    /// Bind a `SocketAddressPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: SocketAddressPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(socket_address_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

    /// Get the value of a SocketAddress property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    func get(property: SocketAddressPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a SocketAddress property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    func set(property: SocketAddressPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum SocketAddressSignalName: String, SignalNameProtocol {
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
    case notifyFamily = "notify::family"
}

public extension SocketAddressProtocol {
    /// Connect a `SocketAddressSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: SocketAddressSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(socket_address_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: SocketAddress Class: SocketAddressProtocol extension (methods and fields)
public extension SocketAddressProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSocketAddress` instance.
    var socket_address_ptr: UnsafeMutablePointer<GSocketAddress> { return ptr.assumingMemoryBound(to: GSocketAddress.self) }

    /// Gets the socket family type of `address`.
    func getFamily() -> GSocketFamily {
        let rv = g_socket_address_get_family(cast(socket_address_ptr))
        return cast(rv)
    }

    /// Gets the size of `address`'s native struct sockaddr.
    /// You can use this to allocate memory to pass to
    /// `g_socket_address_to_native()`.
    func getNativeSize() -> gssize {
        let rv = g_socket_address_get_native_size(cast(socket_address_ptr))
        return cast(rv)
    }

    /// Converts a `GSocketAddress` to a native struct sockaddr, which can
    /// be passed to low-level functions like `connect()` or `bind()`.
    /// 
    /// If not enough space is available, a `G_IO_ERROR_NO_SPACE` error
    /// is returned. If the address type is not known on the system
    /// then a `G_IO_ERROR_NOT_SUPPORTED` error is returned.
    func toNative(dest: UnsafeMutableRawPointer, destlen: Int) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_socket_address_to_native(cast(socket_address_ptr), cast(dest), gsize(destlen), &error)
        if let error = error { throw ErrorType(error) }
        return Bool(rv != 0)
    }
    var family: GSocketFamily {
        /// Gets the socket family type of `address`.
        get {
            let rv = g_socket_address_get_family(cast(socket_address_ptr))
            return cast(rv)
        }
    }

    /// Gets the size of `address`'s native struct sockaddr.
    /// You can use this to allocate memory to pass to
    /// `g_socket_address_to_native()`.
    var nativeSize: gssize {
        /// Gets the size of `address`'s native struct sockaddr.
        /// You can use this to allocate memory to pass to
        /// `g_socket_address_to_native()`.
        get {
            let rv = g_socket_address_get_native_size(cast(socket_address_ptr))
            return cast(rv)
        }
    }

    var parentInstance: GObject {
        get {
            let rv: GObject = cast(socket_address_ptr.pointee.parent_instance)
            return rv
        }
    }

}



// MARK: - SocketAddressEnumerator Class

/// The `SocketAddressEnumeratorProtocol` protocol exposes the methods and properties of an underlying `GSocketAddressEnumerator` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SocketAddressEnumerator`.
/// Alternatively, use `SocketAddressEnumeratorRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GSocketAddressEnumerator` is an enumerator type for `GSocketAddress`
/// instances. It is returned by enumeration functions such as
/// `g_socket_connectable_enumerate()`, which returns a `GSocketAddressEnumerator`
/// to list each `GSocketAddress` which could be used to connect to that
/// `GSocketConnectable`.
/// 
/// Enumeration is typically a blocking operation, so the asynchronous methods
/// `g_socket_address_enumerator_next_async()` and
/// `g_socket_address_enumerator_next_finish()` should be used where possible.
/// 
/// Each `GSocketAddressEnumerator` can only be enumerated once. Once
/// `g_socket_address_enumerator_next()` has returned `nil` (and no error), further
/// enumeration with that `GSocketAddressEnumerator` is not possible, and it can
/// be unreffed.
public protocol SocketAddressEnumeratorProtocol: ObjectProtocol {
        /// Untyped pointer to the underlying `GSocketAddressEnumerator` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSocketAddressEnumerator` instance.
    var socket_address_enumerator_ptr: UnsafeMutablePointer<GSocketAddressEnumerator> { get }
}

/// The `SocketAddressEnumeratorRef` type acts as a lightweight Swift reference to an underlying `GSocketAddressEnumerator` instance.
/// It exposes methods that can operate on this data type through `SocketAddressEnumeratorProtocol` conformance.
/// Use `SocketAddressEnumeratorRef` only as an `unowned` reference to an existing `GSocketAddressEnumerator` instance.
///
/// `GSocketAddressEnumerator` is an enumerator type for `GSocketAddress`
/// instances. It is returned by enumeration functions such as
/// `g_socket_connectable_enumerate()`, which returns a `GSocketAddressEnumerator`
/// to list each `GSocketAddress` which could be used to connect to that
/// `GSocketConnectable`.
/// 
/// Enumeration is typically a blocking operation, so the asynchronous methods
/// `g_socket_address_enumerator_next_async()` and
/// `g_socket_address_enumerator_next_finish()` should be used where possible.
/// 
/// Each `GSocketAddressEnumerator` can only be enumerated once. Once
/// `g_socket_address_enumerator_next()` has returned `nil` (and no error), further
/// enumeration with that `GSocketAddressEnumerator` is not possible, and it can
/// be unreffed.
public struct SocketAddressEnumeratorRef: SocketAddressEnumeratorProtocol {
        /// Untyped pointer to the underlying `GSocketAddressEnumerator` instance.
    /// For type-safe access, use the generated, typed pointer `socket_address_enumerator_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SocketAddressEnumeratorRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSocketAddressEnumerator>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SocketAddressEnumeratorProtocol`
    init<T: SocketAddressEnumeratorProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressEnumeratorProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressEnumeratorProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressEnumeratorProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressEnumeratorProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressEnumeratorProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SocketAddressEnumerator` type acts as a reference-counted owner of an underlying `GSocketAddressEnumerator` instance.
/// It provides the methods that can operate on this data type through `SocketAddressEnumeratorProtocol` conformance.
/// Use `SocketAddressEnumerator` as a strong reference or owner of a `GSocketAddressEnumerator` instance.
///
/// `GSocketAddressEnumerator` is an enumerator type for `GSocketAddress`
/// instances. It is returned by enumeration functions such as
/// `g_socket_connectable_enumerate()`, which returns a `GSocketAddressEnumerator`
/// to list each `GSocketAddress` which could be used to connect to that
/// `GSocketConnectable`.
/// 
/// Enumeration is typically a blocking operation, so the asynchronous methods
/// `g_socket_address_enumerator_next_async()` and
/// `g_socket_address_enumerator_next_finish()` should be used where possible.
/// 
/// Each `GSocketAddressEnumerator` can only be enumerated once. Once
/// `g_socket_address_enumerator_next()` has returned `nil` (and no error), further
/// enumeration with that `GSocketAddressEnumerator` is not possible, and it can
/// be unreffed.
open class SocketAddressEnumerator: Object, SocketAddressEnumeratorProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketAddressEnumerator` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSocketAddressEnumerator>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GSocketAddressEnumerator`.
    /// i.e., ownership is transferred to the `SocketAddressEnumerator` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSocketAddressEnumerator>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `SocketAddressEnumeratorProtocol`
    /// Will retain `GSocketAddressEnumerator`.
    /// - Parameter other: an instance of a related type that implements `SocketAddressEnumeratorProtocol`
    public init<T: SocketAddressEnumeratorProtocol>(socketAddressEnumerator other: T) {
        super.init(retaining: cast(other.socket_address_enumerator_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressEnumeratorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressEnumeratorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressEnumeratorProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressEnumeratorProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressEnumeratorProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressEnumeratorProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressEnumeratorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressEnumeratorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no SocketAddressEnumerator properties

public enum SocketAddressEnumeratorSignalName: String, SignalNameProtocol {
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

}

public extension SocketAddressEnumeratorProtocol {
    /// Connect a `SocketAddressEnumeratorSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: SocketAddressEnumeratorSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(socket_address_enumerator_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: SocketAddressEnumerator Class: SocketAddressEnumeratorProtocol extension (methods and fields)
public extension SocketAddressEnumeratorProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSocketAddressEnumerator` instance.
    var socket_address_enumerator_ptr: UnsafeMutablePointer<GSocketAddressEnumerator> { return ptr.assumingMemoryBound(to: GSocketAddressEnumerator.self) }

    /// Retrieves the next `GSocketAddress` from `enumerator`. Note that this
    /// may block for some amount of time. (Eg, a `GNetworkAddress` may need
    /// to do a DNS lookup before it can return an address.) Use
    /// `g_socket_address_enumerator_next_async()` if you need to avoid
    /// blocking.
    /// 
    /// If `enumerator` is expected to yield addresses, but for some reason
    /// is unable to (eg, because of a DNS error), then the first call to
    /// `g_socket_address_enumerator_next()` will return an appropriate error
    /// in *`error`. However, if the first call to
    /// `g_socket_address_enumerator_next()` succeeds, then any further
    /// internal errors (other than `cancellable` being triggered) will be
    /// ignored.
    func next(cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GSocketAddress>! {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GSocketAddress>! = cast(g_socket_address_enumerator_next(cast(socket_address_enumerator_ptr), cast(cancellable.ptr), &error))
        if let error = error { throw ErrorType(error) }
        return cast(rv)
    }

    /// Asynchronously retrieves the next `GSocketAddress` from `enumerator`
    /// and then calls `callback`, which must call
    /// `g_socket_address_enumerator_next_finish()` to get the result.
    /// 
    /// It is an error to call this multiple times before the previous callback has finished.
    func nextAsync(cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_socket_address_enumerator_next_async(cast(socket_address_enumerator_ptr), cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Retrieves the result of a completed call to
    /// `g_socket_address_enumerator_next_async()`. See
    /// `g_socket_address_enumerator_next()` for more information about
    /// error handling.
    func nextFinish(result: AsyncResultProtocol) throws -> UnsafeMutablePointer<GSocketAddress>! {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GSocketAddress>! = cast(g_socket_address_enumerator_next_finish(cast(socket_address_enumerator_ptr), cast(result.ptr), &error))
        if let error = error { throw ErrorType(error) }
        return cast(rv)
    }

    // var parentInstance is unavailable because parent_instance is private

}



// MARK: - SocketClient Class

/// The `SocketClientProtocol` protocol exposes the methods and properties of an underlying `GSocketClient` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SocketClient`.
/// Alternatively, use `SocketClientRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GSocketClient` is a lightweight high-level utility class for connecting to
/// a network host using a connection oriented socket type.
/// 
/// You create a `GSocketClient` object, set any options you want, and then
/// call a sync or async connect operation, which returns a `GSocketConnection`
/// subclass on success.
/// 
/// The type of the `GSocketConnection` object returned depends on the type of
/// the underlying socket that is in use. For instance, for a TCP/IP connection
/// it will be a `GTcpConnection`.
/// 
/// As `GSocketClient` is a lightweight object, you don't need to cache it. You
/// can just create a new one any time you need one.
public protocol SocketClientProtocol: ObjectProtocol {
        /// Untyped pointer to the underlying `GSocketClient` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSocketClient` instance.
    var socket_client_ptr: UnsafeMutablePointer<GSocketClient> { get }
}

/// The `SocketClientRef` type acts as a lightweight Swift reference to an underlying `GSocketClient` instance.
/// It exposes methods that can operate on this data type through `SocketClientProtocol` conformance.
/// Use `SocketClientRef` only as an `unowned` reference to an existing `GSocketClient` instance.
///
/// `GSocketClient` is a lightweight high-level utility class for connecting to
/// a network host using a connection oriented socket type.
/// 
/// You create a `GSocketClient` object, set any options you want, and then
/// call a sync or async connect operation, which returns a `GSocketConnection`
/// subclass on success.
/// 
/// The type of the `GSocketConnection` object returned depends on the type of
/// the underlying socket that is in use. For instance, for a TCP/IP connection
/// it will be a `GTcpConnection`.
/// 
/// As `GSocketClient` is a lightweight object, you don't need to cache it. You
/// can just create a new one any time you need one.
public struct SocketClientRef: SocketClientProtocol {
        /// Untyped pointer to the underlying `GSocketClient` instance.
    /// For type-safe access, use the generated, typed pointer `socket_client_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SocketClientRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSocketClient>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SocketClientProtocol`
    init<T: SocketClientProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GSocketClient` with the default options.
    init() {
        let rv: UnsafeMutablePointer<GSocketClient>! = cast(g_socket_client_new())
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
}

/// The `SocketClient` type acts as a reference-counted owner of an underlying `GSocketClient` instance.
/// It provides the methods that can operate on this data type through `SocketClientProtocol` conformance.
/// Use `SocketClient` as a strong reference or owner of a `GSocketClient` instance.
///
/// `GSocketClient` is a lightweight high-level utility class for connecting to
/// a network host using a connection oriented socket type.
/// 
/// You create a `GSocketClient` object, set any options you want, and then
/// call a sync or async connect operation, which returns a `GSocketConnection`
/// subclass on success.
/// 
/// The type of the `GSocketConnection` object returned depends on the type of
/// the underlying socket that is in use. For instance, for a TCP/IP connection
/// it will be a `GTcpConnection`.
/// 
/// As `GSocketClient` is a lightweight object, you don't need to cache it. You
/// can just create a new one any time you need one.
open class SocketClient: Object, SocketClientProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketClient` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSocketClient>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GSocketClient`.
    /// i.e., ownership is transferred to the `SocketClient` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSocketClient>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `SocketClientProtocol`
    /// Will retain `GSocketClient`.
    /// - Parameter other: an instance of a related type that implements `SocketClientProtocol`
    public init<T: SocketClientProtocol>(socketClient other: T) {
        super.init(retaining: cast(other.socket_client_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GSocketClient` with the default options.
    public init() {
        let rv: UnsafeMutablePointer<GSocketClient>! = cast(g_socket_client_new())
        super.init(cast(rv))
    }


}

public enum SocketClientPropertyName: String, PropertyNameProtocol {
    case enableProxy = "enable-proxy"
    case family = "family"
    case localAddress = "local-address"
    case protocol_ = "protocol"
    /// The proxy resolver to use
    case proxyResolver = "proxy-resolver"
    case timeout = "timeout"
    case tls = "tls"
    case tlsValidationFlags = "tls-validation-flags"
    case type = "type"
}

public extension SocketClientProtocol {
    /// Bind a `SocketClientPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: SocketClientPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(socket_client_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

    /// Get the value of a SocketClient property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    func get(property: SocketClientPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a SocketClient property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    func set(property: SocketClientPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum SocketClientSignalName: String, SignalNameProtocol {
    /// Emitted when `client`'s activity on `connectable` changes state.
    /// Among other things, this can be used to provide progress
    /// information about a network connection in the UI. The meanings of
    /// the different `event` values are as follows:
    /// 
    /// - `G_SOCKET_CLIENT_RESOLVING:` `client` is about to look up `connectable`
    ///   in DNS. `connection` will be `nil`.
    /// 
    /// - `G_SOCKET_CLIENT_RESOLVED:`  `client` has successfully resolved
    ///   `connectable` in DNS. `connection` will be `nil`.
    /// 
    /// - `G_SOCKET_CLIENT_CONNECTING:` `client` is about to make a connection
    ///   to a remote host; either a proxy server or the destination server
    ///   itself. `connection` is the `GSocketConnection`, which is not yet
    ///   connected.  Since GLib 2.40, you can access the remote
    ///   address via `g_socket_connection_get_remote_address()`.
    /// 
    /// - `G_SOCKET_CLIENT_CONNECTED:` `client` has successfully connected
    ///   to a remote host. `connection` is the connected `GSocketConnection`.
    /// 
    /// - `G_SOCKET_CLIENT_PROXY_NEGOTIATING:` `client` is about to negotiate
    ///   with a proxy to get it to connect to `connectable`. `connection` is
    ///   the `GSocketConnection` to the proxy server.
    /// 
    /// - `G_SOCKET_CLIENT_PROXY_NEGOTIATED:` `client` has negotiated a
    ///   connection to `connectable` through a proxy server. `connection` is
    ///   the stream returned from `g_proxy_connect()`, which may or may not
    ///   be a `GSocketConnection`.
    /// 
    /// - `G_SOCKET_CLIENT_TLS_HANDSHAKING:` `client` is about to begin a TLS
    ///   handshake. `connection` is a `GTlsClientConnection`.
    /// 
    /// - `G_SOCKET_CLIENT_TLS_HANDSHAKED:` `client` has successfully completed
    ///   the TLS handshake. `connection` is a `GTlsClientConnection`.
    /// 
    /// - `G_SOCKET_CLIENT_COMPLETE:` `client` has either successfully connected
    ///   to `connectable` (in which case `connection` is the `GSocketConnection`
    ///   that it will be returning to the caller) or has failed (in which
    ///   case `connection` is `nil` and the client is about to return an error).
    /// 
    /// Each event except `G_SOCKET_CLIENT_COMPLETE` may be emitted
    /// multiple times (or not at all) for a given connectable (in
    /// particular, if `client` ends up attempting to connect to more than
    /// one address). However, if `client` emits the `GSocketClient::event`
    /// signal at all for a given connectable, that it will always emit
    /// it with `G_SOCKET_CLIENT_COMPLETE` when it is done.
    /// 
    /// Note that there may be additional `GSocketClientEvent` values in
    /// the future; unrecognized `event` values should be ignored.
    case event = "event"
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
    case notifyEnableProxy = "notify::enable-proxy"
    case notifyFamily = "notify::family"
    case notifyLocalAddress = "notify::local-address"
    case notifyProtocol_ = "notify::protocol"
    /// The proxy resolver to use
    case notifyProxyResolver = "notify::proxy-resolver"
    case notifyTimeout = "notify::timeout"
    case notifyTLS = "notify::tls"
    case notifyTLSValidationFlags = "notify::tls-validation-flags"
    case notifyType_ = "notify::type"
}

public extension SocketClientProtocol {
    /// Connect a `SocketClientSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: SocketClientSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(socket_client_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: SocketClient Class: SocketClientProtocol extension (methods and fields)
public extension SocketClientProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSocketClient` instance.
    var socket_client_ptr: UnsafeMutablePointer<GSocketClient> { return ptr.assumingMemoryBound(to: GSocketClient.self) }

    /// Enable proxy protocols to be handled by the application. When the
    /// indicated proxy protocol is returned by the `GProxyResolver`,
    /// `GSocketClient` will consider this protocol as supported but will
    /// not try to find a `GProxy` instance to handle handshaking. The
    /// application must check for this case by calling
    /// `g_socket_connection_get_remote_address()` on the returned
    /// `GSocketConnection`, and seeing if it's a `GProxyAddress` of the
    /// appropriate type, to determine whether or not it needs to handle
    /// the proxy handshaking itself.
    /// 
    /// This should be used for proxy protocols that are dialects of
    /// another protocol such as HTTP proxy. It also allows cohabitation of
    /// proxy protocols that are reused between protocols. A good example
    /// is HTTP. It can be used to proxy HTTP, FTP and Gopher and can also
    /// be use as generic socket proxy through the HTTP CONNECT method.
    /// 
    /// When the proxy is detected as being an application proxy, TLS handshake
    /// will be skipped. This is required to let the application do the proxy
    /// specific handshake.
    func addApplicationProxy(protocol_: UnsafePointer<gchar>) {
        g_socket_client_add_application_proxy(cast(socket_client_ptr), protocol_)
    
    }

    /// Tries to resolve the `connectable` and make a network connection to it.
    /// 
    /// Upon a successful connection, a new `GSocketConnection` is constructed
    /// and returned.  The caller owns this new object and must drop their
    /// reference to it when finished with it.
    /// 
    /// The type of the `GSocketConnection` object returned depends on the type of
    /// the underlying socket that is used. For instance, for a TCP/IP connection
    /// it will be a `GTcpConnection`.
    /// 
    /// The socket created will be the same family as the address that the
    /// `connectable` resolves to, unless family is set with `g_socket_client_set_family()`
    /// or indirectly via `g_socket_client_set_local_address()`. The socket type
    /// defaults to `G_SOCKET_TYPE_STREAM` but can be set with
    /// `g_socket_client_set_socket_type()`.
    /// 
    /// If a local address is specified with `g_socket_client_set_local_address()` the
    /// socket will be bound to this address before connecting.
    func connect(connectable: SocketConnectableProtocol, cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GSocketConnection>! {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GSocketConnection>! = cast(g_socket_client_connect(cast(socket_client_ptr), cast(connectable.ptr), cast(cancellable.ptr), &error))
        if let error = error { throw ErrorType(error) }
        return cast(rv)
    }

    /// This is the asynchronous version of `g_socket_client_connect()`.
    /// 
    /// When the operation is finished `callback` will be
    /// called. You can then call `g_socket_client_connect_finish()` to get
    /// the result of the operation.
    func connectAsync(connectable: SocketConnectableProtocol, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_socket_client_connect_async(cast(socket_client_ptr), cast(connectable.ptr), cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes an async connect operation. See `g_socket_client_connect_async()`
    func connectFinish(result: AsyncResultProtocol) throws -> UnsafeMutablePointer<GSocketConnection>! {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GSocketConnection>! = cast(g_socket_client_connect_finish(cast(socket_client_ptr), cast(result.ptr), &error))
        if let error = error { throw ErrorType(error) }
        return cast(rv)
    }

    /// This is a helper function for `g_socket_client_connect()`.
    /// 
    /// Attempts to create a TCP connection to the named host.
    /// 
    /// `host_and_port` may be in any of a number of recognized formats; an IPv6
    /// address, an IPv4 address, or a domain name (in which case a DNS
    /// lookup is performed).  Quoting with [] is supported for all address
    /// types.  A port override may be specified in the usual way with a
    /// colon.  Ports may be given as decimal numbers or symbolic names (in
    /// which case an /etc/services lookup is performed).
    /// 
    /// If no port override is given in `host_and_port` then `default_port` will be
    /// used as the port number to connect to.
    /// 
    /// In general, `host_and_port` is expected to be provided by the user (allowing
    /// them to give the hostname, and a port override if necessary) and
    /// `default_port` is expected to be provided by the application.
    /// 
    /// In the case that an IP address is given, a single connection
    /// attempt is made.  In the case that a name is given, multiple
    /// connection attempts may be made, in turn and according to the
    /// number of address records in DNS, until a connection succeeds.
    /// 
    /// Upon a successful connection, a new `GSocketConnection` is constructed
    /// and returned.  The caller owns this new object and must drop their
    /// reference to it when finished with it.
    /// 
    /// In the event of any failure (DNS error, service not found, no hosts
    /// connectable) `nil` is returned and `error` (if non-`nil`) is set
    /// accordingly.
    func connectToHost(hostAndPort host_and_port: UnsafePointer<gchar>, defaultPort default_port: UInt16, cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GSocketConnection>! {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GSocketConnection>! = cast(g_socket_client_connect_to_host(cast(socket_client_ptr), host_and_port, guint16(default_port), cast(cancellable.ptr), &error))
        if let error = error { throw ErrorType(error) }
        return cast(rv)
    }

    /// This is the asynchronous version of `g_socket_client_connect_to_host()`.
    /// 
    /// When the operation is finished `callback` will be
    /// called. You can then call `g_socket_client_connect_to_host_finish()` to get
    /// the result of the operation.
    func connectToHostAsync(hostAndPort host_and_port: UnsafePointer<gchar>, defaultPort default_port: UInt16, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_socket_client_connect_to_host_async(cast(socket_client_ptr), host_and_port, guint16(default_port), cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes an async connect operation. See `g_socket_client_connect_to_host_async()`
    func connectToHostFinish(result: AsyncResultProtocol) throws -> UnsafeMutablePointer<GSocketConnection>! {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GSocketConnection>! = cast(g_socket_client_connect_to_host_finish(cast(socket_client_ptr), cast(result.ptr), &error))
        if let error = error { throw ErrorType(error) }
        return cast(rv)
    }

    /// Attempts to create a TCP connection to a service.
    /// 
    /// This call looks up the SRV record for `service` at `domain` for the
    /// "tcp" protocol.  It then attempts to connect, in turn, to each of
    /// the hosts providing the service until either a connection succeeds
    /// or there are no hosts remaining.
    /// 
    /// Upon a successful connection, a new `GSocketConnection` is constructed
    /// and returned.  The caller owns this new object and must drop their
    /// reference to it when finished with it.
    /// 
    /// In the event of any failure (DNS error, service not found, no hosts
    /// connectable) `nil` is returned and `error` (if non-`nil`) is set
    /// accordingly.
    func connectToService(domain: UnsafePointer<gchar>, service: UnsafePointer<gchar>, cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GSocketConnection>! {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GSocketConnection>! = cast(g_socket_client_connect_to_service(cast(socket_client_ptr), domain, service, cast(cancellable.ptr), &error))
        if let error = error { throw ErrorType(error) }
        return cast(rv)
    }

    /// This is the asynchronous version of
    /// `g_socket_client_connect_to_service()`.
    func connectToServiceAsync(domain: UnsafePointer<gchar>, service: UnsafePointer<gchar>, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_socket_client_connect_to_service_async(cast(socket_client_ptr), domain, service, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes an async connect operation. See `g_socket_client_connect_to_service_async()`
    func connectToServiceFinish(result: AsyncResultProtocol) throws -> UnsafeMutablePointer<GSocketConnection>! {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GSocketConnection>! = cast(g_socket_client_connect_to_service_finish(cast(socket_client_ptr), cast(result.ptr), &error))
        if let error = error { throw ErrorType(error) }
        return cast(rv)
    }

    /// This is a helper function for `g_socket_client_connect()`.
    /// 
    /// Attempts to create a TCP connection with a network URI.
    /// 
    /// `uri` may be any valid URI containing an "authority" (hostname/port)
    /// component. If a port is not specified in the URI, `default_port`
    /// will be used. TLS will be negotiated if `GSocketClient:tls` is `true`.
    /// (`GSocketClient` does not know to automatically assume TLS for
    /// certain URI schemes.)
    /// 
    /// Using this rather than `g_socket_client_connect()` or
    /// `g_socket_client_connect_to_host()` allows `GSocketClient` to
    /// determine when to use application-specific proxy protocols.
    /// 
    /// Upon a successful connection, a new `GSocketConnection` is constructed
    /// and returned.  The caller owns this new object and must drop their
    /// reference to it when finished with it.
    /// 
    /// In the event of any failure (DNS error, service not found, no hosts
    /// connectable) `nil` is returned and `error` (if non-`nil`) is set
    /// accordingly.
    func connectTo(uri: UnsafePointer<gchar>, defaultPort default_port: UInt16, cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GSocketConnection>! {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GSocketConnection>! = cast(g_socket_client_connect_to_uri(cast(socket_client_ptr), uri, guint16(default_port), cast(cancellable.ptr), &error))
        if let error = error { throw ErrorType(error) }
        return cast(rv)
    }

    /// This is the asynchronous version of `g_socket_client_connect_to_uri()`.
    /// 
    /// When the operation is finished `callback` will be
    /// called. You can then call `g_socket_client_connect_to_uri_finish()` to get
    /// the result of the operation.
    func connectToURIAsync(uri: UnsafePointer<gchar>, defaultPort default_port: UInt16, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_socket_client_connect_to_uri_async(cast(socket_client_ptr), uri, guint16(default_port), cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes an async connect operation. See `g_socket_client_connect_to_uri_async()`
    func connectToURIFinish(result: AsyncResultProtocol) throws -> UnsafeMutablePointer<GSocketConnection>! {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GSocketConnection>! = cast(g_socket_client_connect_to_uri_finish(cast(socket_client_ptr), cast(result.ptr), &error))
        if let error = error { throw ErrorType(error) }
        return cast(rv)
    }

    /// Gets the proxy enable state; see `g_socket_client_set_enable_proxy()`
    func getEnableProxy() -> Bool {
        let rv = g_socket_client_get_enable_proxy(cast(socket_client_ptr))
        return Bool(rv != 0)
    }

    /// Gets the socket family of the socket client.
    /// 
    /// See `g_socket_client_set_family()` for details.
    func getFamily() -> GSocketFamily {
        let rv = g_socket_client_get_family(cast(socket_client_ptr))
        return cast(rv)
    }

    /// Gets the local address of the socket client.
    /// 
    /// See `g_socket_client_set_local_address()` for details.
    func getLocalAddress() -> UnsafeMutablePointer<GSocketAddress>! {
        let rv: UnsafeMutablePointer<GSocketAddress>! = cast(g_socket_client_get_local_address(cast(socket_client_ptr)))
        return cast(rv)
    }

    /// Gets the protocol name type of the socket client.
    /// 
    /// See `g_socket_client_set_protocol()` for details.
    func getProtocol() -> GSocketProtocol {
        let rv = g_socket_client_get_protocol(cast(socket_client_ptr))
        return cast(rv)
    }

    /// Gets the `GProxyResolver` being used by `client`. Normally, this will
    /// be the resolver returned by `g_proxy_resolver_get_default()`, but you
    /// can override it with `g_socket_client_set_proxy_resolver()`.
    func getProxyResolver() -> UnsafeMutablePointer<GProxyResolver>! {
        let rv: UnsafeMutablePointer<GProxyResolver>! = cast(g_socket_client_get_proxy_resolver(cast(socket_client_ptr)))
        return cast(rv)
    }

    /// Gets the socket type of the socket client.
    /// 
    /// See `g_socket_client_set_socket_type()` for details.
    func getSocketType() -> GSocketType {
        let rv = g_socket_client_get_socket_type(cast(socket_client_ptr))
        return cast(rv)
    }

    /// Gets the I/O timeout time for sockets created by `client`.
    /// 
    /// See `g_socket_client_set_timeout()` for details.
    func getTimeout() -> Int {
        let rv: Int = cast(g_socket_client_get_timeout(cast(socket_client_ptr)))
        return Int(rv)
    }

    /// Gets whether `client` creates TLS connections. See
    /// `g_socket_client_set_tls()` for details.
    func getTLS() -> Bool {
        let rv = g_socket_client_get_tls(cast(socket_client_ptr))
        return Bool(rv != 0)
    }

    /// Gets the TLS validation flags used creating TLS connections via
    /// `client`.
    func getTLSValidationFlags() -> GTlsCertificateFlags {
        let rv = g_socket_client_get_tls_validation_flags(cast(socket_client_ptr))
        return cast(rv)
    }

    /// Sets whether or not `client` attempts to make connections via a
    /// proxy server. When enabled (the default), `GSocketClient` will use a
    /// `GProxyResolver` to determine if a proxy protocol such as SOCKS is
    /// needed, and automatically do the necessary proxy negotiation.
    /// 
    /// See also `g_socket_client_set_proxy_resolver()`.
    func setEnableProxy(enable: Bool) {
        g_socket_client_set_enable_proxy(cast(socket_client_ptr), gboolean(enable ? 1 : 0))
    
    }

    /// Sets the socket family of the socket client.
    /// If this is set to something other than `G_SOCKET_FAMILY_INVALID`
    /// then the sockets created by this object will be of the specified
    /// family.
    /// 
    /// This might be useful for instance if you want to force the local
    /// connection to be an ipv4 socket, even though the address might
    /// be an ipv6 mapped to ipv4 address.
    func set(family: SocketFamily) {
        g_socket_client_set_family(cast(socket_client_ptr), family)
    
    }

    /// Sets the local address of the socket client.
    /// The sockets created by this object will bound to the
    /// specified address (if not `nil`) before connecting.
    /// 
    /// This is useful if you want to ensure that the local
    /// side of the connection is on a specific port, or on
    /// a specific interface.
    func setLocal(address: SocketAddressProtocol) {
        g_socket_client_set_local_address(cast(socket_client_ptr), cast(address.ptr))
    
    }

    /// Sets the protocol of the socket client.
    /// The sockets created by this object will use of the specified
    /// protocol.
    /// 
    /// If `protocol` is `G_SOCKET_PROTOCOL_DEFAULT` that means to use the default
    /// protocol for the socket family and type.
    func setProtocol(protocol_: Socket_Protocol) {
        g_socket_client_set_protocol(cast(socket_client_ptr), protocol_)
    
    }

    /// Overrides the `GProxyResolver` used by `client`. You can call this if
    /// you want to use specific proxies, rather than using the system
    /// default proxy settings.
    /// 
    /// Note that whether or not the proxy resolver is actually used
    /// depends on the setting of `GSocketClient:enable`-proxy, which is not
    /// changed by this function (but which is `true` by default)
    func set(proxyResolver proxy_resolver: ProxyResolverProtocol) {
        g_socket_client_set_proxy_resolver(cast(socket_client_ptr), cast(proxy_resolver.ptr))
    
    }

    /// Sets the socket type of the socket client.
    /// The sockets created by this object will be of the specified
    /// type.
    /// 
    /// It doesn't make sense to specify a type of `G_SOCKET_TYPE_DATAGRAM`,
    /// as GSocketClient is used for connection oriented services.
    func setSocket(type: SocketType) {
        g_socket_client_set_socket_type(cast(socket_client_ptr), type)
    
    }

    /// Sets the I/O timeout for sockets created by `client`. `timeout` is a
    /// time in seconds, or 0 for no timeout (the default).
    /// 
    /// The timeout value affects the initial connection attempt as well,
    /// so setting this may cause calls to `g_socket_client_connect()`, etc,
    /// to fail with `G_IO_ERROR_TIMED_OUT`.
    func set(timeout: CUnsignedInt) {
        g_socket_client_set_timeout(cast(socket_client_ptr), guint(timeout))
    
    }

    /// Sets whether `client` creates TLS (aka SSL) connections. If `tls` is
    /// `true`, `client` will wrap its connections in a `GTlsClientConnection`
    /// and perform a TLS handshake when connecting.
    /// 
    /// Note that since `GSocketClient` must return a `GSocketConnection`,
    /// but `GTlsClientConnection` is not a `GSocketConnection`, this
    /// actually wraps the resulting `GTlsClientConnection` in a
    /// `GTcpWrapperConnection` when returning it. You can use
    /// `g_tcp_wrapper_connection_get_base_io_stream()` on the return value
    /// to extract the `GTlsClientConnection`.
    /// 
    /// If you need to modify the behavior of the TLS handshake (eg, by
    /// setting a client-side certificate to use, or connecting to the
    /// `GTlsConnection::accept`-certificate signal), you can connect to
    /// `client`'s `GSocketClient::event` signal and wait for it to be
    /// emitted with `G_SOCKET_CLIENT_TLS_HANDSHAKING`, which will give you
    /// a chance to see the `GTlsClientConnection` before the handshake
    /// starts.
    func set(tls: Bool) {
        g_socket_client_set_tls(cast(socket_client_ptr), gboolean(tls ? 1 : 0))
    
    }

    /// Sets the TLS validation flags used when creating TLS connections
    /// via `client`. The default value is `G_TLS_CERTIFICATE_VALIDATE_ALL`.
    func setTLSValidation(flags: TLSCertificateFlags) {
        g_socket_client_set_tls_validation_flags(cast(socket_client_ptr), flags.value)
    
    }
    /// Gets the proxy enable state; see `g_socket_client_set_enable_proxy()`
    var enableProxy: Bool {
        /// Gets the proxy enable state; see `g_socket_client_set_enable_proxy()`
        get {
            let rv = g_socket_client_get_enable_proxy(cast(socket_client_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether or not `client` attempts to make connections via a
        /// proxy server. When enabled (the default), `GSocketClient` will use a
        /// `GProxyResolver` to determine if a proxy protocol such as SOCKS is
        /// needed, and automatically do the necessary proxy negotiation.
        /// 
        /// See also `g_socket_client_set_proxy_resolver()`.
        nonmutating set {
            g_socket_client_set_enable_proxy(cast(socket_client_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    var family: GSocketFamily {
        /// Gets the socket family of the socket client.
        /// 
        /// See `g_socket_client_set_family()` for details.
        get {
            let rv = g_socket_client_get_family(cast(socket_client_ptr))
            return cast(rv)
        }
        /// Sets the socket family of the socket client.
        /// If this is set to something other than `G_SOCKET_FAMILY_INVALID`
        /// then the sockets created by this object will be of the specified
        /// family.
        /// 
        /// This might be useful for instance if you want to force the local
        /// connection to be an ipv4 socket, even though the address might
        /// be an ipv6 mapped to ipv4 address.
        nonmutating set {
            g_socket_client_set_family(cast(socket_client_ptr), cast(newValue))
        }
    }

    /// Gets the local address of the socket client.
    /// 
    /// See `g_socket_client_set_local_address()` for details.
    var localAddress: UnsafeMutablePointer<GSocketAddress>! {
        /// Gets the local address of the socket client.
        /// 
        /// See `g_socket_client_set_local_address()` for details.
        get {
            let rv: UnsafeMutablePointer<GSocketAddress>! = cast(g_socket_client_get_local_address(cast(socket_client_ptr)))
            return cast(rv)
        }
        /// Sets the local address of the socket client.
        /// The sockets created by this object will bound to the
        /// specified address (if not `nil`) before connecting.
        /// 
        /// This is useful if you want to ensure that the local
        /// side of the connection is on a specific port, or on
        /// a specific interface.
        nonmutating set {
            g_socket_client_set_local_address(cast(socket_client_ptr), cast(newValue))
        }
    }

    var `protocol`: GSocketProtocol {
        /// Gets the protocol name type of the socket client.
        /// 
        /// See `g_socket_client_set_protocol()` for details.
        get {
            let rv = g_socket_client_get_protocol(cast(socket_client_ptr))
            return cast(rv)
        }
        /// Sets the protocol of the socket client.
        /// The sockets created by this object will use of the specified
        /// protocol.
        /// 
        /// If `protocol` is `G_SOCKET_PROTOCOL_DEFAULT` that means to use the default
        /// protocol for the socket family and type.
        nonmutating set {
            g_socket_client_set_protocol(cast(socket_client_ptr), cast(newValue))
        }
    }

    /// Gets the `GProxyResolver` being used by `client`. Normally, this will
    /// be the resolver returned by `g_proxy_resolver_get_default()`, but you
    /// can override it with `g_socket_client_set_proxy_resolver()`.
    var proxyResolver: UnsafeMutablePointer<GProxyResolver>! {
        /// Gets the `GProxyResolver` being used by `client`. Normally, this will
        /// be the resolver returned by `g_proxy_resolver_get_default()`, but you
        /// can override it with `g_socket_client_set_proxy_resolver()`.
        get {
            let rv: UnsafeMutablePointer<GProxyResolver>! = cast(g_socket_client_get_proxy_resolver(cast(socket_client_ptr)))
            return cast(rv)
        }
        /// Overrides the `GProxyResolver` used by `client`. You can call this if
        /// you want to use specific proxies, rather than using the system
        /// default proxy settings.
        /// 
        /// Note that whether or not the proxy resolver is actually used
        /// depends on the setting of `GSocketClient:enable`-proxy, which is not
        /// changed by this function (but which is `true` by default)
        nonmutating set {
            g_socket_client_set_proxy_resolver(cast(socket_client_ptr), cast(newValue))
        }
    }

    /// Gets the socket type of the socket client.
    /// 
    /// See `g_socket_client_set_socket_type()` for details.
    var socketType: GSocketType {
        /// Gets the socket type of the socket client.
        /// 
        /// See `g_socket_client_set_socket_type()` for details.
        get {
            let rv = g_socket_client_get_socket_type(cast(socket_client_ptr))
            return cast(rv)
        }
        /// Sets the socket type of the socket client.
        /// The sockets created by this object will be of the specified
        /// type.
        /// 
        /// It doesn't make sense to specify a type of `G_SOCKET_TYPE_DATAGRAM`,
        /// as GSocketClient is used for connection oriented services.
        nonmutating set {
            g_socket_client_set_socket_type(cast(socket_client_ptr), cast(newValue))
        }
    }

    var timeout: Int {
        /// Gets the I/O timeout time for sockets created by `client`.
        /// 
        /// See `g_socket_client_set_timeout()` for details.
        get {
            let rv: Int = cast(g_socket_client_get_timeout(cast(socket_client_ptr)))
            return Int(rv)
        }
        /// Sets the I/O timeout for sockets created by `client`. `timeout` is a
        /// time in seconds, or 0 for no timeout (the default).
        /// 
        /// The timeout value affects the initial connection attempt as well,
        /// so setting this may cause calls to `g_socket_client_connect()`, etc,
        /// to fail with `G_IO_ERROR_TIMED_OUT`.
        nonmutating set {
            g_socket_client_set_timeout(cast(socket_client_ptr), guint(newValue))
        }
    }

    var tls: Bool {
        /// Gets whether `client` creates TLS connections. See
        /// `g_socket_client_set_tls()` for details.
        get {
            let rv = g_socket_client_get_tls(cast(socket_client_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether `client` creates TLS (aka SSL) connections. If `tls` is
        /// `true`, `client` will wrap its connections in a `GTlsClientConnection`
        /// and perform a TLS handshake when connecting.
        /// 
        /// Note that since `GSocketClient` must return a `GSocketConnection`,
        /// but `GTlsClientConnection` is not a `GSocketConnection`, this
        /// actually wraps the resulting `GTlsClientConnection` in a
        /// `GTcpWrapperConnection` when returning it. You can use
        /// `g_tcp_wrapper_connection_get_base_io_stream()` on the return value
        /// to extract the `GTlsClientConnection`.
        /// 
        /// If you need to modify the behavior of the TLS handshake (eg, by
        /// setting a client-side certificate to use, or connecting to the
        /// `GTlsConnection::accept`-certificate signal), you can connect to
        /// `client`'s `GSocketClient::event` signal and wait for it to be
        /// emitted with `G_SOCKET_CLIENT_TLS_HANDSHAKING`, which will give you
        /// a chance to see the `GTlsClientConnection` before the handshake
        /// starts.
        nonmutating set {
            g_socket_client_set_tls(cast(socket_client_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Gets the TLS validation flags used creating TLS connections via
    /// `client`.
    var tlsValidationFlags: GTlsCertificateFlags {
        /// Gets the TLS validation flags used creating TLS connections via
        /// `client`.
        get {
            let rv = g_socket_client_get_tls_validation_flags(cast(socket_client_ptr))
            return cast(rv)
        }
        /// Sets the TLS validation flags used when creating TLS connections
        /// via `client`. The default value is `G_TLS_CERTIFICATE_VALIDATE_ALL`.
        nonmutating set {
            g_socket_client_set_tls_validation_flags(cast(socket_client_ptr), cast(newValue))
        }
    }

    var parentInstance: GObject {
        get {
            let rv: GObject = cast(socket_client_ptr.pointee.parent_instance)
            return rv
        }
    }

    var priv: UnsafeMutablePointer<GSocketClientPrivate> {
        get {
            let rv: UnsafeMutablePointer<GSocketClientPrivate> = cast(socket_client_ptr.pointee.priv)
            return rv
        }
    }

}



// MARK: - SocketConnection Class

/// The `SocketConnectionProtocol` protocol exposes the methods and properties of an underlying `GSocketConnection` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SocketConnection`.
/// Alternatively, use `SocketConnectionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GSocketConnection` is a `GIOStream` for a connected socket. They
/// can be created either by `GSocketClient` when connecting to a host,
/// or by `GSocketListener` when accepting a new client.
/// 
/// The type of the `GSocketConnection` object returned from these calls
/// depends on the type of the underlying socket that is in use. For
/// instance, for a TCP/IP connection it will be a `GTcpConnection`.
/// 
/// Choosing what type of object to construct is done with the socket
/// connection factory, and it is possible for 3rd parties to register
/// custom socket connection types for specific combination of socket
/// family/type/protocol using `g_socket_connection_factory_register_type()`.
/// 
/// To close a `GSocketConnection`, use `g_io_stream_close()`. Closing both
/// substreams of the `GIOStream` separately will not close the underlying
/// `GSocket`.
public protocol SocketConnectionProtocol: IOStreamProtocol {
        /// Untyped pointer to the underlying `GSocketConnection` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSocketConnection` instance.
    var socket_connection_ptr: UnsafeMutablePointer<GSocketConnection> { get }
}

/// The `SocketConnectionRef` type acts as a lightweight Swift reference to an underlying `GSocketConnection` instance.
/// It exposes methods that can operate on this data type through `SocketConnectionProtocol` conformance.
/// Use `SocketConnectionRef` only as an `unowned` reference to an existing `GSocketConnection` instance.
///
/// `GSocketConnection` is a `GIOStream` for a connected socket. They
/// can be created either by `GSocketClient` when connecting to a host,
/// or by `GSocketListener` when accepting a new client.
/// 
/// The type of the `GSocketConnection` object returned from these calls
/// depends on the type of the underlying socket that is in use. For
/// instance, for a TCP/IP connection it will be a `GTcpConnection`.
/// 
/// Choosing what type of object to construct is done with the socket
/// connection factory, and it is possible for 3rd parties to register
/// custom socket connection types for specific combination of socket
/// family/type/protocol using `g_socket_connection_factory_register_type()`.
/// 
/// To close a `GSocketConnection`, use `g_io_stream_close()`. Closing both
/// substreams of the `GIOStream` separately will not close the underlying
/// `GSocket`.
public struct SocketConnectionRef: SocketConnectionProtocol {
        /// Untyped pointer to the underlying `GSocketConnection` instance.
    /// For type-safe access, use the generated, typed pointer `socket_connection_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SocketConnectionRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSocketConnection>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SocketConnectionProtocol`
    init<T: SocketConnectionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SocketConnection` type acts as a reference-counted owner of an underlying `GSocketConnection` instance.
/// It provides the methods that can operate on this data type through `SocketConnectionProtocol` conformance.
/// Use `SocketConnection` as a strong reference or owner of a `GSocketConnection` instance.
///
/// `GSocketConnection` is a `GIOStream` for a connected socket. They
/// can be created either by `GSocketClient` when connecting to a host,
/// or by `GSocketListener` when accepting a new client.
/// 
/// The type of the `GSocketConnection` object returned from these calls
/// depends on the type of the underlying socket that is in use. For
/// instance, for a TCP/IP connection it will be a `GTcpConnection`.
/// 
/// Choosing what type of object to construct is done with the socket
/// connection factory, and it is possible for 3rd parties to register
/// custom socket connection types for specific combination of socket
/// family/type/protocol using `g_socket_connection_factory_register_type()`.
/// 
/// To close a `GSocketConnection`, use `g_io_stream_close()`. Closing both
/// substreams of the `GIOStream` separately will not close the underlying
/// `GSocket`.
open class SocketConnection: IOStream, SocketConnectionProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketConnection` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSocketConnection>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GSocketConnection`.
    /// i.e., ownership is transferred to the `SocketConnection` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSocketConnection>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `SocketConnectionProtocol`
    /// Will retain `GSocketConnection`.
    /// - Parameter other: an instance of a related type that implements `SocketConnectionProtocol`
    public init<T: SocketConnectionProtocol>(socketConnection other: T) {
        super.init(retaining: cast(other.socket_connection_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum SocketConnectionPropertyName: String, PropertyNameProtocol {
    case closed = "closed"
    case inputStream = "input-stream"
    case outputStream = "output-stream"
    case socket = "socket"
}

public extension SocketConnectionProtocol {
    /// Bind a `SocketConnectionPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: SocketConnectionPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(socket_connection_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

    /// Get the value of a SocketConnection property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    func get(property: SocketConnectionPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a SocketConnection property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    func set(property: SocketConnectionPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum SocketConnectionSignalName: String, SignalNameProtocol {
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
    case notifyClosed = "notify::closed"
    case notifyInputStream = "notify::input-stream"
    case notifyOutputStream = "notify::output-stream"
    case notifySocket = "notify::socket"
}

public extension SocketConnectionProtocol {
    /// Connect a `SocketConnectionSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: SocketConnectionSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(socket_connection_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: SocketConnection Class: SocketConnectionProtocol extension (methods and fields)
public extension SocketConnectionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSocketConnection` instance.
    var socket_connection_ptr: UnsafeMutablePointer<GSocketConnection> { return ptr.assumingMemoryBound(to: GSocketConnection.self) }

    /// Connect `connection` to the specified remote address.
    func connect(address: SocketAddressProtocol, cancellable: CancellableProtocol) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_socket_connection_connect(cast(socket_connection_ptr), cast(address.ptr), cast(cancellable.ptr), &error)
        if let error = error { throw ErrorType(error) }
        return Bool(rv != 0)
    }

    /// Asynchronously connect `connection` to the specified remote address.
    /// 
    /// This clears the `GSocket:blocking` flag on `connection`'s underlying
    /// socket if it is currently set.
    /// 
    /// Use `g_socket_connection_connect_finish()` to retrieve the result.
    func connectAsync(address: SocketAddressProtocol, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_socket_connection_connect_async(cast(socket_connection_ptr), cast(address.ptr), cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Gets the result of a `g_socket_connection_connect_async()` call.
    func connectFinish(result: AsyncResultProtocol) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_socket_connection_connect_finish(cast(socket_connection_ptr), cast(result.ptr), &error)
        if let error = error { throw ErrorType(error) }
        return Bool(rv != 0)
    }

    /// Try to get the local address of a socket connection.
    func getLocalAddress() throws -> UnsafeMutablePointer<GSocketAddress>! {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GSocketAddress>! = cast(g_socket_connection_get_local_address(cast(socket_connection_ptr), &error))
        if let error = error { throw ErrorType(error) }
        return cast(rv)
    }

    /// Try to get the remote address of a socket connection.
    /// 
    /// Since GLib 2.40, when used with `g_socket_client_connect()` or
    /// `g_socket_client_connect_async()`, during emission of
    /// `G_SOCKET_CLIENT_CONNECTING`, this function will return the remote
    /// address that will be used for the connection.  This allows
    /// applications to print e.g. "Connecting to example.com
    /// (10.42.77.3)...".
    func getRemoteAddress() throws -> UnsafeMutablePointer<GSocketAddress>! {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GSocketAddress>! = cast(g_socket_connection_get_remote_address(cast(socket_connection_ptr), &error))
        if let error = error { throw ErrorType(error) }
        return cast(rv)
    }

    /// Gets the underlying `GSocket` object of the connection.
    /// This can be useful if you want to do something unusual on it
    /// not supported by the `GSocketConnection` APIs.
    func getSocket() -> UnsafeMutablePointer<GSocket>! {
        let rv: UnsafeMutablePointer<GSocket>! = cast(g_socket_connection_get_socket(cast(socket_connection_ptr)))
        return cast(rv)
    }
    /// Checks if `connection` is connected. This is equivalent to calling
    /// `g_socket_is_connected()` on `connection`'s underlying `GSocket`.
    var isConnected: Bool {
        /// Checks if `connection` is connected. This is equivalent to calling
        /// `g_socket_is_connected()` on `connection`'s underlying `GSocket`.
        get {
            let rv = g_socket_connection_is_connected(cast(socket_connection_ptr))
            return Bool(rv != 0)
        }
    }

    /// Try to get the local address of a socket connection.
    var localAddress: UnsafeMutablePointer<GSocketAddress>! {
        /// Try to get the local address of a socket connection.
        get {
            var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GSocketAddress>! = cast(g_socket_connection_get_local_address(cast(socket_connection_ptr), &error))
        g_log(messagePtr: error?.pointee.message, level: .error)
            return cast(rv)
        }
    }

    /// Try to get the remote address of a socket connection.
    /// 
    /// Since GLib 2.40, when used with `g_socket_client_connect()` or
    /// `g_socket_client_connect_async()`, during emission of
    /// `G_SOCKET_CLIENT_CONNECTING`, this function will return the remote
    /// address that will be used for the connection.  This allows
    /// applications to print e.g. "Connecting to example.com
    /// (10.42.77.3)...".
    var remoteAddress: UnsafeMutablePointer<GSocketAddress>! {
        /// Try to get the remote address of a socket connection.
        /// 
        /// Since GLib 2.40, when used with `g_socket_client_connect()` or
        /// `g_socket_client_connect_async()`, during emission of
        /// `G_SOCKET_CLIENT_CONNECTING`, this function will return the remote
        /// address that will be used for the connection.  This allows
        /// applications to print e.g. "Connecting to example.com
        /// (10.42.77.3)...".
        get {
            var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GSocketAddress>! = cast(g_socket_connection_get_remote_address(cast(socket_connection_ptr), &error))
        g_log(messagePtr: error?.pointee.message, level: .error)
            return cast(rv)
        }
    }

    var socket: UnsafeMutablePointer<GSocket>! {
        /// Gets the underlying `GSocket` object of the connection.
        /// This can be useful if you want to do something unusual on it
        /// not supported by the `GSocketConnection` APIs.
        get {
            let rv: UnsafeMutablePointer<GSocket>! = cast(g_socket_connection_get_socket(cast(socket_connection_ptr)))
            return cast(rv)
        }
    }

    var parentInstance: GIOStream {
        get {
            let rv: GIOStream = cast(socket_connection_ptr.pointee.parent_instance)
            return rv
        }
    }

    var priv: UnsafeMutablePointer<GSocketConnectionPrivate> {
        get {
            let rv: UnsafeMutablePointer<GSocketConnectionPrivate> = cast(socket_connection_ptr.pointee.priv)
            return rv
        }
    }

}



// MARK: - SocketControlMessage Class

/// The `SocketControlMessageProtocol` protocol exposes the methods and properties of an underlying `GSocketControlMessage` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SocketControlMessage`.
/// Alternatively, use `SocketControlMessageRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GSocketControlMessage` is a special-purpose utility message that
/// can be sent to or received from a `GSocket`. These types of
/// messages are often called "ancillary data".
/// 
/// The message can represent some sort of special instruction to or
/// information from the socket or can represent a special kind of
/// transfer to the peer (for example, sending a file descriptor over
/// a UNIX socket).
/// 
/// These messages are sent with `g_socket_send_message()` and received
/// with `g_socket_receive_message()`.
/// 
/// To extend the set of control message that can be sent, subclass this
/// class and override the get_size, get_level, get_type and serialize
/// methods.
/// 
/// To extend the set of control messages that can be received, subclass
/// this class and implement the deserialize method. Also, make sure your
/// class is registered with the GType typesystem before calling
/// `g_socket_receive_message()` to read such a message.
public protocol SocketControlMessageProtocol: ObjectProtocol {
        /// Untyped pointer to the underlying `GSocketControlMessage` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSocketControlMessage` instance.
    var socket_control_message_ptr: UnsafeMutablePointer<GSocketControlMessage> { get }
}

/// The `SocketControlMessageRef` type acts as a lightweight Swift reference to an underlying `GSocketControlMessage` instance.
/// It exposes methods that can operate on this data type through `SocketControlMessageProtocol` conformance.
/// Use `SocketControlMessageRef` only as an `unowned` reference to an existing `GSocketControlMessage` instance.
///
/// A `GSocketControlMessage` is a special-purpose utility message that
/// can be sent to or received from a `GSocket`. These types of
/// messages are often called "ancillary data".
/// 
/// The message can represent some sort of special instruction to or
/// information from the socket or can represent a special kind of
/// transfer to the peer (for example, sending a file descriptor over
/// a UNIX socket).
/// 
/// These messages are sent with `g_socket_send_message()` and received
/// with `g_socket_receive_message()`.
/// 
/// To extend the set of control message that can be sent, subclass this
/// class and override the get_size, get_level, get_type and serialize
/// methods.
/// 
/// To extend the set of control messages that can be received, subclass
/// this class and implement the deserialize method. Also, make sure your
/// class is registered with the GType typesystem before calling
/// `g_socket_receive_message()` to read such a message.
public struct SocketControlMessageRef: SocketControlMessageProtocol {
        /// Untyped pointer to the underlying `GSocketControlMessage` instance.
    /// For type-safe access, use the generated, typed pointer `socket_control_message_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SocketControlMessageRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSocketControlMessage>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SocketControlMessageProtocol`
    init<T: SocketControlMessageProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessageProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessageProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessageProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessageProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessageProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Tries to deserialize a socket control message of a given
    /// `level` and `type`. This will ask all known (to GType) subclasses
    /// of `GSocketControlMessage` if they can understand this kind
    /// of message and if so deserialize it into a `GSocketControlMessage`.
    /// 
    /// If there is no implementation for this kind of control message, `nil`
    /// will be returned.
    static func deserialize(level: CInt, type: CInt, size: Int, data: UnsafeMutableRawPointer) -> SocketControlMessageRef! {
        let rv: UnsafeMutablePointer<GSocketControlMessage>! = cast(g_socket_control_message_deserialize(level, type, gsize(size), cast(data)))
        return rv.map { SocketControlMessageRef(cast($0)) }
    }
}

/// The `SocketControlMessage` type acts as a reference-counted owner of an underlying `GSocketControlMessage` instance.
/// It provides the methods that can operate on this data type through `SocketControlMessageProtocol` conformance.
/// Use `SocketControlMessage` as a strong reference or owner of a `GSocketControlMessage` instance.
///
/// A `GSocketControlMessage` is a special-purpose utility message that
/// can be sent to or received from a `GSocket`. These types of
/// messages are often called "ancillary data".
/// 
/// The message can represent some sort of special instruction to or
/// information from the socket or can represent a special kind of
/// transfer to the peer (for example, sending a file descriptor over
/// a UNIX socket).
/// 
/// These messages are sent with `g_socket_send_message()` and received
/// with `g_socket_receive_message()`.
/// 
/// To extend the set of control message that can be sent, subclass this
/// class and override the get_size, get_level, get_type and serialize
/// methods.
/// 
/// To extend the set of control messages that can be received, subclass
/// this class and implement the deserialize method. Also, make sure your
/// class is registered with the GType typesystem before calling
/// `g_socket_receive_message()` to read such a message.
open class SocketControlMessage: Object, SocketControlMessageProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketControlMessage` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSocketControlMessage>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GSocketControlMessage`.
    /// i.e., ownership is transferred to the `SocketControlMessage` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSocketControlMessage>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `SocketControlMessageProtocol`
    /// Will retain `GSocketControlMessage`.
    /// - Parameter other: an instance of a related type that implements `SocketControlMessageProtocol`
    public init<T: SocketControlMessageProtocol>(socketControlMessage other: T) {
        super.init(retaining: cast(other.socket_control_message_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessageProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessageProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessageProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessageProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessageProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessageProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessageProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessageProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }


    /// Tries to deserialize a socket control message of a given
    /// `level` and `type`. This will ask all known (to GType) subclasses
    /// of `GSocketControlMessage` if they can understand this kind
    /// of message and if so deserialize it into a `GSocketControlMessage`.
    /// 
    /// If there is no implementation for this kind of control message, `nil`
    /// will be returned.
    public static func deserialize(level: CInt, type: CInt, size: Int, data: UnsafeMutableRawPointer) -> SocketControlMessage! {
        let rv: UnsafeMutablePointer<GSocketControlMessage>! = cast(g_socket_control_message_deserialize(level, type, gsize(size), cast(data)))
        return rv.map { SocketControlMessage(cast($0)) }
    }

}

// MARK: no SocketControlMessage properties

public enum SocketControlMessageSignalName: String, SignalNameProtocol {
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

}

public extension SocketControlMessageProtocol {
    /// Connect a `SocketControlMessageSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: SocketControlMessageSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(socket_control_message_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: SocketControlMessage Class: SocketControlMessageProtocol extension (methods and fields)
public extension SocketControlMessageProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSocketControlMessage` instance.
    var socket_control_message_ptr: UnsafeMutablePointer<GSocketControlMessage> { return ptr.assumingMemoryBound(to: GSocketControlMessage.self) }

    /// Returns the "level" (i.e. the originating protocol) of the control message.
    /// This is often SOL_SOCKET.
    func getLevel() -> Int {
        let rv: Int = cast(g_socket_control_message_get_level(cast(socket_control_message_ptr)))
        return cast(rv)
    }

    /// Returns the protocol specific type of the control message.
    /// For instance, for UNIX fd passing this would be SCM_RIGHTS.
    func getMsgType() -> Int {
        let rv: Int = cast(g_socket_control_message_get_msg_type(cast(socket_control_message_ptr)))
        return cast(rv)
    }

    /// Returns the space required for the control message, not including
    /// headers or alignment.
    func getSize() -> Int {
        let rv = g_socket_control_message_get_size(cast(socket_control_message_ptr))
        return Int(rv)
    }

    /// Converts the data in the message to bytes placed in the
    /// message.
    /// 
    /// `data` is guaranteed to have enough space to fit the size
    /// returned by `g_socket_control_message_get_size()` on this
    /// object.
    func serialize(data: UnsafeMutableRawPointer) {
        g_socket_control_message_serialize(cast(socket_control_message_ptr), cast(data))
    
    }
    /// Returns the "level" (i.e. the originating protocol) of the control message.
    /// This is often SOL_SOCKET.
    var level: Int {
        /// Returns the "level" (i.e. the originating protocol) of the control message.
        /// This is often SOL_SOCKET.
        get {
            let rv: Int = cast(g_socket_control_message_get_level(cast(socket_control_message_ptr)))
            return cast(rv)
        }
    }

    /// Returns the protocol specific type of the control message.
    /// For instance, for UNIX fd passing this would be SCM_RIGHTS.
    var msgType: Int {
        /// Returns the protocol specific type of the control message.
        /// For instance, for UNIX fd passing this would be SCM_RIGHTS.
        get {
            let rv: Int = cast(g_socket_control_message_get_msg_type(cast(socket_control_message_ptr)))
            return cast(rv)
        }
    }

    /// Returns the space required for the control message, not including
    /// headers or alignment.
    var size: Int {
        /// Returns the space required for the control message, not including
        /// headers or alignment.
        get {
            let rv = g_socket_control_message_get_size(cast(socket_control_message_ptr))
            return Int(rv)
        }
    }

    var parentInstance: GObject {
        get {
            let rv: GObject = cast(socket_control_message_ptr.pointee.parent_instance)
            return rv
        }
    }

    var priv: UnsafeMutablePointer<GSocketControlMessagePrivate> {
        get {
            let rv: UnsafeMutablePointer<GSocketControlMessagePrivate> = cast(socket_control_message_ptr.pointee.priv)
            return rv
        }
    }

}



// MARK: - SocketListener Class

/// The `SocketListenerProtocol` protocol exposes the methods and properties of an underlying `GSocketListener` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SocketListener`.
/// Alternatively, use `SocketListenerRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GSocketListener` is an object that keeps track of a set
/// of server sockets and helps you accept sockets from any of the
/// socket, either sync or async.
/// 
/// Add addresses and ports to listen on using `g_socket_listener_add_address()`
/// and `g_socket_listener_add_inet_port()`. These will be listened on until
/// `g_socket_listener_close()` is called. Dropping your final reference to the
/// `GSocketListener` will not cause `g_socket_listener_close()` to be called
/// implicitly, as some references to the `GSocketListener` may be held
/// internally.
/// 
/// If you want to implement a network server, also look at `GSocketService`
/// and `GThreadedSocketService` which are subclasses of `GSocketListener`
/// that make this even easier.
public protocol SocketListenerProtocol: ObjectProtocol {
        /// Untyped pointer to the underlying `GSocketListener` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSocketListener` instance.
    var socket_listener_ptr: UnsafeMutablePointer<GSocketListener> { get }
}

/// The `SocketListenerRef` type acts as a lightweight Swift reference to an underlying `GSocketListener` instance.
/// It exposes methods that can operate on this data type through `SocketListenerProtocol` conformance.
/// Use `SocketListenerRef` only as an `unowned` reference to an existing `GSocketListener` instance.
///
/// A `GSocketListener` is an object that keeps track of a set
/// of server sockets and helps you accept sockets from any of the
/// socket, either sync or async.
/// 
/// Add addresses and ports to listen on using `g_socket_listener_add_address()`
/// and `g_socket_listener_add_inet_port()`. These will be listened on until
/// `g_socket_listener_close()` is called. Dropping your final reference to the
/// `GSocketListener` will not cause `g_socket_listener_close()` to be called
/// implicitly, as some references to the `GSocketListener` may be held
/// internally.
/// 
/// If you want to implement a network server, also look at `GSocketService`
/// and `GThreadedSocketService` which are subclasses of `GSocketListener`
/// that make this even easier.
public struct SocketListenerRef: SocketListenerProtocol {
        /// Untyped pointer to the underlying `GSocketListener` instance.
    /// For type-safe access, use the generated, typed pointer `socket_listener_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SocketListenerRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSocketListener>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SocketListenerProtocol`
    init<T: SocketListenerProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GSocketListener` with no sockets to listen for.
    /// New listeners can be added with e.g. `g_socket_listener_add_address()`
    /// or `g_socket_listener_add_inet_port()`.
    init() {
        let rv: UnsafeMutablePointer<GSocketListener>! = cast(g_socket_listener_new())
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
}

/// The `SocketListener` type acts as a reference-counted owner of an underlying `GSocketListener` instance.
/// It provides the methods that can operate on this data type through `SocketListenerProtocol` conformance.
/// Use `SocketListener` as a strong reference or owner of a `GSocketListener` instance.
///
/// A `GSocketListener` is an object that keeps track of a set
/// of server sockets and helps you accept sockets from any of the
/// socket, either sync or async.
/// 
/// Add addresses and ports to listen on using `g_socket_listener_add_address()`
/// and `g_socket_listener_add_inet_port()`. These will be listened on until
/// `g_socket_listener_close()` is called. Dropping your final reference to the
/// `GSocketListener` will not cause `g_socket_listener_close()` to be called
/// implicitly, as some references to the `GSocketListener` may be held
/// internally.
/// 
/// If you want to implement a network server, also look at `GSocketService`
/// and `GThreadedSocketService` which are subclasses of `GSocketListener`
/// that make this even easier.
open class SocketListener: Object, SocketListenerProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketListener` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSocketListener>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GSocketListener`.
    /// i.e., ownership is transferred to the `SocketListener` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSocketListener>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `SocketListenerProtocol`
    /// Will retain `GSocketListener`.
    /// - Parameter other: an instance of a related type that implements `SocketListenerProtocol`
    public init<T: SocketListenerProtocol>(socketListener other: T) {
        super.init(retaining: cast(other.socket_listener_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GSocketListener` with no sockets to listen for.
    /// New listeners can be added with e.g. `g_socket_listener_add_address()`
    /// or `g_socket_listener_add_inet_port()`.
    public init() {
        let rv: UnsafeMutablePointer<GSocketListener>! = cast(g_socket_listener_new())
        super.init(cast(rv))
    }


}

public enum SocketListenerPropertyName: String, PropertyNameProtocol {
    case listenBacklog = "listen-backlog"
}

public extension SocketListenerProtocol {
    /// Bind a `SocketListenerPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: SocketListenerPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(socket_listener_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

    /// Get the value of a SocketListener property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    func get(property: SocketListenerPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a SocketListener property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    func set(property: SocketListenerPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum SocketListenerSignalName: String, SignalNameProtocol {
    /// Emitted when `listener`'s activity on `socket` changes state.
    /// Note that when `listener` is used to listen on both IPv4 and
    /// IPv6, a separate set of signals will be emitted for each, and
    /// the order they happen in is undefined.
    case event = "event"
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
    case notifyListenBacklog = "notify::listen-backlog"
}

public extension SocketListenerProtocol {
    /// Connect a `SocketListenerSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: SocketListenerSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(socket_listener_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: SocketListener Class: SocketListenerProtocol extension (methods and fields)
public extension SocketListenerProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSocketListener` instance.
    var socket_listener_ptr: UnsafeMutablePointer<GSocketListener> { return ptr.assumingMemoryBound(to: GSocketListener.self) }

    /// Blocks waiting for a client to connect to any of the sockets added
    /// to the listener. Returns a `GSocketConnection` for the socket that was
    /// accepted.
    /// 
    /// If `source_object` is not `nil` it will be filled out with the source
    /// object specified when the corresponding socket or address was added
    /// to the listener.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    func accept(sourceObject source_object: ObjectProtocol, cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GSocketConnection>! {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GSocketConnection>! = cast(g_socket_listener_accept(cast(socket_listener_ptr), cast(source_object.ptr), cast(cancellable.ptr), &error))
        if let error = error { throw ErrorType(error) }
        return cast(rv)
    }

    /// This is the asynchronous version of `g_socket_listener_accept()`.
    /// 
    /// When the operation is finished `callback` will be
    /// called. You can then call `g_socket_listener_accept_socket()`
    /// to get the result of the operation.
    func acceptAsync(cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_socket_listener_accept_async(cast(socket_listener_ptr), cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes an async accept operation. See `g_socket_listener_accept_async()`
    func acceptFinish(result: AsyncResultProtocol, sourceObject source_object: ObjectProtocol) throws -> UnsafeMutablePointer<GSocketConnection>! {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GSocketConnection>! = cast(g_socket_listener_accept_finish(cast(socket_listener_ptr), cast(result.ptr), cast(source_object.ptr), &error))
        if let error = error { throw ErrorType(error) }
        return cast(rv)
    }

    /// Blocks waiting for a client to connect to any of the sockets added
    /// to the listener. Returns the `GSocket` that was accepted.
    /// 
    /// If you want to accept the high-level `GSocketConnection`, not a `GSocket`,
    /// which is often the case, then you should use `g_socket_listener_accept()`
    /// instead.
    /// 
    /// If `source_object` is not `nil` it will be filled out with the source
    /// object specified when the corresponding socket or address was added
    /// to the listener.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    func acceptSocket(sourceObject source_object: ObjectProtocol, cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GSocket>! {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GSocket>! = cast(g_socket_listener_accept_socket(cast(socket_listener_ptr), cast(source_object.ptr), cast(cancellable.ptr), &error))
        if let error = error { throw ErrorType(error) }
        return cast(rv)
    }

    /// This is the asynchronous version of `g_socket_listener_accept_socket()`.
    /// 
    /// When the operation is finished `callback` will be
    /// called. You can then call `g_socket_listener_accept_socket_finish()`
    /// to get the result of the operation.
    func acceptSocketAsync(cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_socket_listener_accept_socket_async(cast(socket_listener_ptr), cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes an async accept operation. See `g_socket_listener_accept_socket_async()`
    func acceptSocketFinish(result: AsyncResultProtocol, sourceObject source_object: ObjectProtocol) throws -> UnsafeMutablePointer<GSocket>! {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GSocket>! = cast(g_socket_listener_accept_socket_finish(cast(socket_listener_ptr), cast(result.ptr), cast(source_object.ptr), &error))
        if let error = error { throw ErrorType(error) }
        return cast(rv)
    }

    /// Creates a socket of type `type` and protocol `protocol`, binds
    /// it to `address` and adds it to the set of sockets we're accepting
    /// sockets from.
    /// 
    /// Note that adding an IPv6 address, depending on the platform,
    /// may or may not result in a listener that also accepts IPv4
    /// connections.  For more deterministic behavior, see
    /// `g_socket_listener_add_inet_port()`.
    /// 
    /// `source_object` will be passed out in the various calls
    /// to accept to identify this particular source, which is
    /// useful if you're listening on multiple addresses and do
    /// different things depending on what address is connected to.
    /// 
    /// If successful and `effective_address` is non-`nil` then it will
    /// be set to the address that the binding actually occurred at.  This
    /// is helpful for determining the port number that was used for when
    /// requesting a binding to port 0 (ie: "any port").  This address, if
    /// requested, belongs to the caller and must be freed.
    /// 
    /// Call `g_socket_listener_close()` to stop listening on `address`; this will not
    /// be done automatically when you drop your final reference to `listener`, as
    /// references may be held internally.
    func add(address: SocketAddressProtocol, type: SocketType, protocol_: Socket_Protocol, sourceObject source_object: ObjectProtocol, effectiveAddress effective_address: SocketAddressProtocol) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_socket_listener_add_address(cast(socket_listener_ptr), cast(address.ptr), type, protocol_, cast(source_object.ptr), cast(effective_address.ptr), &error)
        if let error = error { throw ErrorType(error) }
        return Bool(rv != 0)
    }

    /// Listens for TCP connections on any available port number for both
    /// IPv6 and IPv4 (if each is available).
    /// 
    /// This is useful if you need to have a socket for incoming connections
    /// but don't care about the specific port number.
    /// 
    /// `source_object` will be passed out in the various calls
    /// to accept to identify this particular source, which is
    /// useful if you're listening on multiple addresses and do
    /// different things depending on what address is connected to.
    func addAnyInetPort(sourceObject source_object: ObjectProtocol) throws -> UInt16 {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_socket_listener_add_any_inet_port(cast(socket_listener_ptr), cast(source_object.ptr), &error)
        if let error = error { throw ErrorType(error) }
        return UInt16(rv)
    }

    /// Helper function for `g_socket_listener_add_address()` that
    /// creates a TCP/IP socket listening on IPv4 and IPv6 (if
    /// supported) on the specified port on all interfaces.
    /// 
    /// `source_object` will be passed out in the various calls
    /// to accept to identify this particular source, which is
    /// useful if you're listening on multiple addresses and do
    /// different things depending on what address is connected to.
    /// 
    /// Call `g_socket_listener_close()` to stop listening on `port`; this will not
    /// be done automatically when you drop your final reference to `listener`, as
    /// references may be held internally.
    func addInet(port: UInt16, sourceObject source_object: ObjectProtocol) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_socket_listener_add_inet_port(cast(socket_listener_ptr), guint16(port), cast(source_object.ptr), &error)
        if let error = error { throw ErrorType(error) }
        return Bool(rv != 0)
    }

    /// Adds `socket` to the set of sockets that we try to accept
    /// new clients from. The socket must be bound to a local
    /// address and listened to.
    /// 
    /// `source_object` will be passed out in the various calls
    /// to accept to identify this particular source, which is
    /// useful if you're listening on multiple addresses and do
    /// different things depending on what address is connected to.
    /// 
    /// The `socket` will not be automatically closed when the `listener` is finalized
    /// unless the listener held the final reference to the socket. Before GLib 2.42,
    /// the `socket` was automatically closed on finalization of the `listener`, even
    /// if references to it were held elsewhere.
    func add(socket: SocketProtocol, sourceObject source_object: ObjectProtocol) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_socket_listener_add_socket(cast(socket_listener_ptr), cast(socket.ptr), cast(source_object.ptr), &error)
        if let error = error { throw ErrorType(error) }
        return Bool(rv != 0)
    }

    /// Closes all the sockets in the listener.
    func close() {
        g_socket_listener_close(cast(socket_listener_ptr))
    
    }

    /// Sets the listen backlog on the sockets in the listener. This must be called
    /// before adding any sockets, addresses or ports to the `GSocketListener` (for
    /// example, by calling `g_socket_listener_add_inet_port()`) to be effective.
    /// 
    /// See `g_socket_set_listen_backlog()` for details
    func setBacklog(listenBacklog listen_backlog: CInt) {
        g_socket_listener_set_backlog(cast(socket_listener_ptr), listen_backlog)
    
    }

    var parentInstance: GObject {
        get {
            let rv: GObject = cast(socket_listener_ptr.pointee.parent_instance)
            return rv
        }
    }

    var priv: UnsafeMutablePointer<GSocketListenerPrivate> {
        get {
            let rv: UnsafeMutablePointer<GSocketListenerPrivate> = cast(socket_listener_ptr.pointee.priv)
            return rv
        }
    }

}



// MARK: - SocketService Class

/// The `SocketServiceProtocol` protocol exposes the methods and properties of an underlying `GSocketService` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SocketService`.
/// Alternatively, use `SocketServiceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GSocketService` is an object that represents a service that
/// is provided to the network or over local sockets.  When a new
/// connection is made to the service the `GSocketService::incoming`
/// signal is emitted.
/// 
/// A `GSocketService` is a subclass of `GSocketListener` and you need
/// to add the addresses you want to accept connections on with the
/// `GSocketListener` APIs.
/// 
/// There are two options for implementing a network service based on
/// `GSocketService`. The first is to create the service using
/// `g_socket_service_new()` and to connect to the `GSocketService::incoming`
/// signal. The second is to subclass `GSocketService` and override the
/// default signal handler implementation.
/// 
/// In either case, the handler must immediately return, or else it
/// will block additional incoming connections from being serviced.
/// If you are interested in writing connection handlers that contain
/// blocking code then see `GThreadedSocketService`.
/// 
/// The socket service runs on the main loop of the
/// [thread-default context](#g-main-context-push-thread-default-context)
/// of the thread it is created in, and is not
/// threadsafe in general. However, the calls to start and stop the
/// service are thread-safe so these can be used from threads that
/// handle incoming clients.
public protocol SocketServiceProtocol: SocketListenerProtocol {
        /// Untyped pointer to the underlying `GSocketService` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSocketService` instance.
    var socket_service_ptr: UnsafeMutablePointer<GSocketService> { get }
}

/// The `SocketServiceRef` type acts as a lightweight Swift reference to an underlying `GSocketService` instance.
/// It exposes methods that can operate on this data type through `SocketServiceProtocol` conformance.
/// Use `SocketServiceRef` only as an `unowned` reference to an existing `GSocketService` instance.
///
/// A `GSocketService` is an object that represents a service that
/// is provided to the network or over local sockets.  When a new
/// connection is made to the service the `GSocketService::incoming`
/// signal is emitted.
/// 
/// A `GSocketService` is a subclass of `GSocketListener` and you need
/// to add the addresses you want to accept connections on with the
/// `GSocketListener` APIs.
/// 
/// There are two options for implementing a network service based on
/// `GSocketService`. The first is to create the service using
/// `g_socket_service_new()` and to connect to the `GSocketService::incoming`
/// signal. The second is to subclass `GSocketService` and override the
/// default signal handler implementation.
/// 
/// In either case, the handler must immediately return, or else it
/// will block additional incoming connections from being serviced.
/// If you are interested in writing connection handlers that contain
/// blocking code then see `GThreadedSocketService`.
/// 
/// The socket service runs on the main loop of the
/// [thread-default context](#g-main-context-push-thread-default-context)
/// of the thread it is created in, and is not
/// threadsafe in general. However, the calls to start and stop the
/// service are thread-safe so these can be used from threads that
/// handle incoming clients.
public struct SocketServiceRef: SocketServiceProtocol {
        /// Untyped pointer to the underlying `GSocketService` instance.
    /// For type-safe access, use the generated, typed pointer `socket_service_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SocketServiceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSocketService>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SocketServiceProtocol`
    init<T: SocketServiceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServiceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServiceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServiceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServiceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServiceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GSocketService` with no sockets to listen for.
    /// New listeners can be added with e.g. `g_socket_listener_add_address()`
    /// or `g_socket_listener_add_inet_port()`.
    /// 
    /// New services are created active, there is no need to call
    /// `g_socket_service_start()`, unless `g_socket_service_stop()` has been
    /// called before.
    init() {
        let rv: UnsafeMutablePointer<GSocketService>! = cast(g_socket_service_new())
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
}

/// The `SocketService` type acts as a reference-counted owner of an underlying `GSocketService` instance.
/// It provides the methods that can operate on this data type through `SocketServiceProtocol` conformance.
/// Use `SocketService` as a strong reference or owner of a `GSocketService` instance.
///
/// A `GSocketService` is an object that represents a service that
/// is provided to the network or over local sockets.  When a new
/// connection is made to the service the `GSocketService::incoming`
/// signal is emitted.
/// 
/// A `GSocketService` is a subclass of `GSocketListener` and you need
/// to add the addresses you want to accept connections on with the
/// `GSocketListener` APIs.
/// 
/// There are two options for implementing a network service based on
/// `GSocketService`. The first is to create the service using
/// `g_socket_service_new()` and to connect to the `GSocketService::incoming`
/// signal. The second is to subclass `GSocketService` and override the
/// default signal handler implementation.
/// 
/// In either case, the handler must immediately return, or else it
/// will block additional incoming connections from being serviced.
/// If you are interested in writing connection handlers that contain
/// blocking code then see `GThreadedSocketService`.
/// 
/// The socket service runs on the main loop of the
/// [thread-default context](#g-main-context-push-thread-default-context)
/// of the thread it is created in, and is not
/// threadsafe in general. However, the calls to start and stop the
/// service are thread-safe so these can be used from threads that
/// handle incoming clients.
open class SocketService: SocketListener, SocketServiceProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketService` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSocketService>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GSocketService`.
    /// i.e., ownership is transferred to the `SocketService` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSocketService>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `SocketServiceProtocol`
    /// Will retain `GSocketService`.
    /// - Parameter other: an instance of a related type that implements `SocketServiceProtocol`
    public init<T: SocketServiceProtocol>(socketService other: T) {
        super.init(retaining: cast(other.socket_service_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServiceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServiceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServiceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServiceProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServiceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServiceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServiceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServiceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GSocketService` with no sockets to listen for.
    /// New listeners can be added with e.g. `g_socket_listener_add_address()`
    /// or `g_socket_listener_add_inet_port()`.
    /// 
    /// New services are created active, there is no need to call
    /// `g_socket_service_start()`, unless `g_socket_service_stop()` has been
    /// called before.
    public override init() {
        let rv: UnsafeMutablePointer<GSocketService>! = cast(g_socket_service_new())
        super.init(cast(rv))
    }


}

public enum SocketServicePropertyName: String, PropertyNameProtocol {
    /// Whether the service is currently accepting connections.
    case active = "active"
    case listenBacklog = "listen-backlog"
}

public extension SocketServiceProtocol {
    /// Bind a `SocketServicePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: SocketServicePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(socket_service_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

    /// Get the value of a SocketService property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    func get(property: SocketServicePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a SocketService property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    func set(property: SocketServicePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum SocketServiceSignalName: String, SignalNameProtocol {
    /// Emitted when `listener`'s activity on `socket` changes state.
    /// Note that when `listener` is used to listen on both IPv4 and
    /// IPv6, a separate set of signals will be emitted for each, and
    /// the order they happen in is undefined.
    case event = "event"
    /// The `incoming` signal is emitted when a new incoming connection
    /// to `service` needs to be handled. The handler must initiate the
    /// handling of `connection`, but may not block; in essence,
    /// asynchronous operations must be used.
    /// 
    /// `connection` will be unreffed once the signal handler returns,
    /// so you need to ref it yourself if you are planning to use it.
    case incoming = "incoming"
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
    /// Whether the service is currently accepting connections.
    case notifyActive = "notify::active"
    case notifyListenBacklog = "notify::listen-backlog"
}

public extension SocketServiceProtocol {
    /// Connect a `SocketServiceSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: SocketServiceSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(socket_service_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: SocketService Class: SocketServiceProtocol extension (methods and fields)
public extension SocketServiceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSocketService` instance.
    var socket_service_ptr: UnsafeMutablePointer<GSocketService> { return ptr.assumingMemoryBound(to: GSocketService.self) }

    /// Restarts the service, i.e. start accepting connections
    /// from the added sockets when the mainloop runs. This only needs
    /// to be called after the service has been stopped from
    /// `g_socket_service_stop()`.
    /// 
    /// This call is thread-safe, so it may be called from a thread
    /// handling an incoming client request.
    func start() {
        g_socket_service_start(cast(socket_service_ptr))
    
    }

    /// Stops the service, i.e. stops accepting connections
    /// from the added sockets when the mainloop runs.
    /// 
    /// This call is thread-safe, so it may be called from a thread
    /// handling an incoming client request.
    /// 
    /// Note that this only stops accepting new connections; it does not
    /// close the listening sockets, and you can call
    /// `g_socket_service_start()` again later to begin listening again. To
    /// close the listening sockets, call `g_socket_listener_close()`. (This
    /// will happen automatically when the `GSocketService` is finalized.)
    /// 
    /// This must be called before calling `g_socket_listener_close()` as
    /// the socket service will start accepting connections immediately
    /// when a new socket is added.
    func stop() {
        g_socket_service_stop(cast(socket_service_ptr))
    
    }
    /// Check whether the service is active or not. An active
    /// service will accept new clients that connect, while
    /// a non-active service will let connecting clients queue
    /// up until the service is started.
    var isActive: Bool {
        /// Check whether the service is active or not. An active
        /// service will accept new clients that connect, while
        /// a non-active service will let connecting clients queue
        /// up until the service is started.
        get {
            let rv = g_socket_service_is_active(cast(socket_service_ptr))
            return Bool(rv != 0)
        }
    }

    var parentInstance: GSocketListener {
        get {
            let rv: GSocketListener = cast(socket_service_ptr.pointee.parent_instance)
            return rv
        }
    }

    var priv: UnsafeMutablePointer<GSocketServicePrivate> {
        get {
            let rv: UnsafeMutablePointer<GSocketServicePrivate> = cast(socket_service_ptr.pointee.priv)
            return rv
        }
    }

}



// MARK: - Subprocess Class

/// The `SubprocessProtocol` protocol exposes the methods and properties of an underlying `GSubprocess` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Subprocess`.
/// Alternatively, use `SubprocessRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GSubprocess` allows the creation of and interaction with child
/// processes.
/// 
/// Processes can be communicated with using standard GIO-style APIs (ie:
/// `GInputStream`, `GOutputStream`).  There are GIO-style APIs to wait for
/// process termination (ie: cancellable and with an asynchronous
/// variant).
/// 
/// There is an API to force a process to terminate, as well as a
/// race-free API for sending UNIX signals to a subprocess.
/// 
/// One major advantage that GIO brings over the core GLib library is
/// comprehensive API for asynchronous I/O, such
/// `g_output_stream_splice_async()`.  This makes GSubprocess
/// significantly more powerful and flexible than equivalent APIs in
/// some other languages such as the `subprocess.py`
/// included with Python.  For example, using `GSubprocess` one could
/// create two child processes, reading standard output from the first,
/// processing it, and writing to the input stream of the second, all
/// without blocking the main loop.
/// 
/// A powerful `g_subprocess_communicate()` API is provided similar to the
/// ``communicate()`` method of `subprocess.py`. This enables very easy
/// interaction with a subprocess that has been opened with pipes.
/// 
/// `GSubprocess` defaults to tight control over the file descriptors open
/// in the child process, avoiding dangling-fd issues that are caused by
/// a simple `fork()``/exec()`.  The only open file descriptors in the
/// spawned process are ones that were explicitly specified by the
/// `GSubprocess` API (unless `G_SUBPROCESS_FLAGS_INHERIT_FDS` was
/// specified).
/// 
/// `GSubprocess` will quickly reap all child processes as they exit,
/// avoiding "zombie processes" remaining around for long periods of
/// time.  `g_subprocess_wait()` can be used to wait for this to happen,
/// but it will happen even without the call being explicitly made.
/// 
/// As a matter of principle, `GSubprocess` has no API that accepts
/// shell-style space-separated strings.  It will, however, match the
/// typical shell behaviour of searching the PATH for executables that do
/// not contain a directory separator in their name.
/// 
/// `GSubprocess` attempts to have a very simple API for most uses (ie:
/// spawning a subprocess with arguments and support for most typical
/// kinds of input and output redirection).  See `g_subprocess_new()`. The
/// `GSubprocessLauncher` API is provided for more complicated cases
/// (advanced types of redirection, environment variable manipulation,
/// change of working directory, child setup functions, etc).
/// 
/// A typical use of `GSubprocess` will involve calling
/// `g_subprocess_new()`, followed by `g_subprocess_wait_async()` or
/// `g_subprocess_wait()`.  After the process exits, the status can be
/// checked using functions such as `g_subprocess_get_if_exited()` (which
/// are similar to the familiar WIFEXITED-style POSIX macros).
public protocol SubprocessProtocol: ObjectProtocol, InitableProtocol {
        /// Untyped pointer to the underlying `GSubprocess` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSubprocess` instance.
    var subprocess_ptr: UnsafeMutablePointer<GSubprocess> { get }
}

/// The `SubprocessRef` type acts as a lightweight Swift reference to an underlying `GSubprocess` instance.
/// It exposes methods that can operate on this data type through `SubprocessProtocol` conformance.
/// Use `SubprocessRef` only as an `unowned` reference to an existing `GSubprocess` instance.
///
/// `GSubprocess` allows the creation of and interaction with child
/// processes.
/// 
/// Processes can be communicated with using standard GIO-style APIs (ie:
/// `GInputStream`, `GOutputStream`).  There are GIO-style APIs to wait for
/// process termination (ie: cancellable and with an asynchronous
/// variant).
/// 
/// There is an API to force a process to terminate, as well as a
/// race-free API for sending UNIX signals to a subprocess.
/// 
/// One major advantage that GIO brings over the core GLib library is
/// comprehensive API for asynchronous I/O, such
/// `g_output_stream_splice_async()`.  This makes GSubprocess
/// significantly more powerful and flexible than equivalent APIs in
/// some other languages such as the `subprocess.py`
/// included with Python.  For example, using `GSubprocess` one could
/// create two child processes, reading standard output from the first,
/// processing it, and writing to the input stream of the second, all
/// without blocking the main loop.
/// 
/// A powerful `g_subprocess_communicate()` API is provided similar to the
/// ``communicate()`` method of `subprocess.py`. This enables very easy
/// interaction with a subprocess that has been opened with pipes.
/// 
/// `GSubprocess` defaults to tight control over the file descriptors open
/// in the child process, avoiding dangling-fd issues that are caused by
/// a simple `fork()``/exec()`.  The only open file descriptors in the
/// spawned process are ones that were explicitly specified by the
/// `GSubprocess` API (unless `G_SUBPROCESS_FLAGS_INHERIT_FDS` was
/// specified).
/// 
/// `GSubprocess` will quickly reap all child processes as they exit,
/// avoiding "zombie processes" remaining around for long periods of
/// time.  `g_subprocess_wait()` can be used to wait for this to happen,
/// but it will happen even without the call being explicitly made.
/// 
/// As a matter of principle, `GSubprocess` has no API that accepts
/// shell-style space-separated strings.  It will, however, match the
/// typical shell behaviour of searching the PATH for executables that do
/// not contain a directory separator in their name.
/// 
/// `GSubprocess` attempts to have a very simple API for most uses (ie:
/// spawning a subprocess with arguments and support for most typical
/// kinds of input and output redirection).  See `g_subprocess_new()`. The
/// `GSubprocessLauncher` API is provided for more complicated cases
/// (advanced types of redirection, environment variable manipulation,
/// change of working directory, child setup functions, etc).
/// 
/// A typical use of `GSubprocess` will involve calling
/// `g_subprocess_new()`, followed by `g_subprocess_wait_async()` or
/// `g_subprocess_wait()`.  After the process exits, the status can be
/// checked using functions such as `g_subprocess_get_if_exited()` (which
/// are similar to the familiar WIFEXITED-style POSIX macros).
public struct SubprocessRef: SubprocessProtocol {
        /// Untyped pointer to the underlying `GSubprocess` instance.
    /// For type-safe access, use the generated, typed pointer `subprocess_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SubprocessRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSubprocess>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SubprocessProtocol`
    init<T: SubprocessProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    
    // *** new() is not available because it has a varargs (...) parameter!


    /// Create a new process with the given flags and argument list.
    /// 
    /// The argument list is expected to be `nil`-terminated.
    init(argv: UnsafePointer<UnsafePointer<gchar>>, flags: SubprocessFlags) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GSubprocess>! = cast(g_subprocess_newv(cast(argv), flags.value, &error))
        if let error = error { throw ErrorType(error) }
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
    /// Create a new process with the given flags and argument list.
    /// 
    /// The argument list is expected to be `nil`-terminated.
    static func subprocessNewv(argv: UnsafePointer<UnsafePointer<gchar>>, flags: SubprocessFlags) throws -> SubprocessRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GSubprocess>! = cast(g_subprocess_newv(cast(argv), flags.value, &error))
        if let error = error { throw ErrorType(error) }
        return rv.map { SubprocessRef(cast($0)) }
    }
}

/// The `Subprocess` type acts as a reference-counted owner of an underlying `GSubprocess` instance.
/// It provides the methods that can operate on this data type through `SubprocessProtocol` conformance.
/// Use `Subprocess` as a strong reference or owner of a `GSubprocess` instance.
///
/// `GSubprocess` allows the creation of and interaction with child
/// processes.
/// 
/// Processes can be communicated with using standard GIO-style APIs (ie:
/// `GInputStream`, `GOutputStream`).  There are GIO-style APIs to wait for
/// process termination (ie: cancellable and with an asynchronous
/// variant).
/// 
/// There is an API to force a process to terminate, as well as a
/// race-free API for sending UNIX signals to a subprocess.
/// 
/// One major advantage that GIO brings over the core GLib library is
/// comprehensive API for asynchronous I/O, such
/// `g_output_stream_splice_async()`.  This makes GSubprocess
/// significantly more powerful and flexible than equivalent APIs in
/// some other languages such as the `subprocess.py`
/// included with Python.  For example, using `GSubprocess` one could
/// create two child processes, reading standard output from the first,
/// processing it, and writing to the input stream of the second, all
/// without blocking the main loop.
/// 
/// A powerful `g_subprocess_communicate()` API is provided similar to the
/// ``communicate()`` method of `subprocess.py`. This enables very easy
/// interaction with a subprocess that has been opened with pipes.
/// 
/// `GSubprocess` defaults to tight control over the file descriptors open
/// in the child process, avoiding dangling-fd issues that are caused by
/// a simple `fork()``/exec()`.  The only open file descriptors in the
/// spawned process are ones that were explicitly specified by the
/// `GSubprocess` API (unless `G_SUBPROCESS_FLAGS_INHERIT_FDS` was
/// specified).
/// 
/// `GSubprocess` will quickly reap all child processes as they exit,
/// avoiding "zombie processes" remaining around for long periods of
/// time.  `g_subprocess_wait()` can be used to wait for this to happen,
/// but it will happen even without the call being explicitly made.
/// 
/// As a matter of principle, `GSubprocess` has no API that accepts
/// shell-style space-separated strings.  It will, however, match the
/// typical shell behaviour of searching the PATH for executables that do
/// not contain a directory separator in their name.
/// 
/// `GSubprocess` attempts to have a very simple API for most uses (ie:
/// spawning a subprocess with arguments and support for most typical
/// kinds of input and output redirection).  See `g_subprocess_new()`. The
/// `GSubprocessLauncher` API is provided for more complicated cases
/// (advanced types of redirection, environment variable manipulation,
/// change of working directory, child setup functions, etc).
/// 
/// A typical use of `GSubprocess` will involve calling
/// `g_subprocess_new()`, followed by `g_subprocess_wait_async()` or
/// `g_subprocess_wait()`.  After the process exits, the status can be
/// checked using functions such as `g_subprocess_get_if_exited()` (which
/// are similar to the familiar WIFEXITED-style POSIX macros).
open class Subprocess: Object, SubprocessProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Subprocess` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSubprocess>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GSubprocess`.
    /// i.e., ownership is transferred to the `Subprocess` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSubprocess>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `SubprocessProtocol`
    /// Will retain `GSubprocess`.
    /// - Parameter other: an instance of a related type that implements `SubprocessProtocol`
    public init<T: SubprocessProtocol>(subprocess other: T) {
        super.init(retaining: cast(other.subprocess_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }


    // *** new() is not available because it has a varargs (...) parameter!


    /// Create a new process with the given flags and argument list.
    /// 
    /// The argument list is expected to be `nil`-terminated.
    public init(argv: UnsafePointer<UnsafePointer<gchar>>, flags: SubprocessFlags) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GSubprocess>! = cast(g_subprocess_newv(cast(argv), flags.value, &error))
        if let error = error { throw ErrorType(error) }
        super.init(cast(rv))
    }

    /// Create a new process with the given flags and argument list.
    /// 
    /// The argument list is expected to be `nil`-terminated.
    public static func subprocessNewv(argv: UnsafePointer<UnsafePointer<gchar>>, flags: SubprocessFlags) throws -> Subprocess! {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GSubprocess>! = cast(g_subprocess_newv(cast(argv), flags.value, &error))
        if let error = error { throw ErrorType(error) }
        return rv.map { Subprocess(cast($0)) }
    }

}

public enum SubprocessPropertyName: String, PropertyNameProtocol {
    case argv = "argv"
    case flags = "flags"
}

public extension SubprocessProtocol {
    /// Bind a `SubprocessPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: SubprocessPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(subprocess_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

    /// Get the value of a Subprocess property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    func get(property: SubprocessPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Subprocess property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    func set(property: SubprocessPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum SubprocessSignalName: String, SignalNameProtocol {
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
    case notifyArgv = "notify::argv"
    case notifyFlags = "notify::flags"
}

public extension SubprocessProtocol {
    /// Connect a `SubprocessSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: SubprocessSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(subprocess_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: Subprocess Class: SubprocessProtocol extension (methods and fields)
public extension SubprocessProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSubprocess` instance.
    var subprocess_ptr: UnsafeMutablePointer<GSubprocess> { return ptr.assumingMemoryBound(to: GSubprocess.self) }

    /// Communicate with the subprocess until it terminates, and all input
    /// and output has been completed.
    /// 
    /// If `stdin_buf` is given, the subprocess must have been created with
    /// `G_SUBPROCESS_FLAGS_STDIN_PIPE`.  The given data is fed to the
    /// stdin of the subprocess and the pipe is closed (ie: EOF).
    /// 
    /// At the same time (as not to cause blocking when dealing with large
    /// amounts of data), if `G_SUBPROCESS_FLAGS_STDOUT_PIPE` or
    /// `G_SUBPROCESS_FLAGS_STDERR_PIPE` were used, reads from those
    /// streams.  The data that was read is returned in `stdout` and/or
    /// the `stderr`.
    /// 
    /// If the subprocess was created with `G_SUBPROCESS_FLAGS_STDOUT_PIPE`,
    /// `stdout_buf` will contain the data read from stdout.  Otherwise, for
    /// subprocesses not created with `G_SUBPROCESS_FLAGS_STDOUT_PIPE`,
    /// `stdout_buf` will be set to `nil`.  Similar provisions apply to
    /// `stderr_buf` and `G_SUBPROCESS_FLAGS_STDERR_PIPE`.
    /// 
    /// As usual, any output variable may be given as `nil` to ignore it.
    /// 
    /// If you desire the stdout and stderr data to be interleaved, create
    /// the subprocess with `G_SUBPROCESS_FLAGS_STDOUT_PIPE` and
    /// `G_SUBPROCESS_FLAGS_STDERR_MERGE`.  The merged result will be returned
    /// in `stdout_buf` and `stderr_buf` will be set to `nil`.
    /// 
    /// In case of any error (including cancellation), `false` will be
    /// returned with `error` set.  Some or all of the stdin data may have
    /// been written.  Any stdout or stderr data that has been read will be
    /// discarded. None of the out variables (aside from `error`) will have
    /// been set to anything in particular and should not be inspected.
    /// 
    /// In the case that `true` is returned, the subprocess has exited and the
    /// exit status inspection APIs (eg: `g_subprocess_get_if_exited()`,
    /// `g_subprocess_get_exit_status()`) may be used.
    /// 
    /// You should not attempt to use any of the subprocess pipes after
    /// starting this function, since they may be left in strange states,
    /// even if the operation was cancelled.  You should especially not
    /// attempt to interact with the pipes while the operation is in progress
    /// (either from another thread or if using the asynchronous version).
    func communicate(stdinBuf stdin_buf: BytesProtocol, cancellable: CancellableProtocol, stdoutBuf stdout_buf: BytesProtocol, stderrBuf stderr_buf: BytesProtocol) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_subprocess_communicate(cast(subprocess_ptr), cast(stdin_buf.ptr), cast(cancellable.ptr), cast(stdout_buf.ptr), cast(stderr_buf.ptr), &error)
        if let error = error { throw ErrorType(error) }
        return Bool(rv != 0)
    }

    /// Asynchronous version of `g_subprocess_communicate()`.  Complete
    /// invocation with `g_subprocess_communicate_finish()`.
    func communicateAsync(stdinBuf stdin_buf: BytesProtocol, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_subprocess_communicate_async(cast(subprocess_ptr), cast(stdin_buf.ptr), cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Complete an invocation of `g_subprocess_communicate_async()`.
    func communicateFinish(result: AsyncResultProtocol, stdoutBuf stdout_buf: BytesProtocol, stderrBuf stderr_buf: BytesProtocol) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_subprocess_communicate_finish(cast(subprocess_ptr), cast(result.ptr), cast(stdout_buf.ptr), cast(stderr_buf.ptr), &error)
        if let error = error { throw ErrorType(error) }
        return Bool(rv != 0)
    }

    /// Like `g_subprocess_communicate()`, but validates the output of the
    /// process as UTF-8, and returns it as a regular NUL terminated string.
    /// 
    /// On error, `stdout_buf` and `stderr_buf` will be set to undefined values and
    /// should not be used.
    func communicateUTF8(stdinBuf stdin_buf: UnsafePointer<CChar>, cancellable: CancellableProtocol, stdoutBuf stdout_buf: UnsafeMutablePointer<UnsafeMutablePointer<CChar>>, stderrBuf stderr_buf: UnsafeMutablePointer<UnsafeMutablePointer<CChar>>) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_subprocess_communicate_utf8(cast(subprocess_ptr), stdin_buf, cast(cancellable.ptr), cast(stdout_buf), cast(stderr_buf), &error)
        if let error = error { throw ErrorType(error) }
        return Bool(rv != 0)
    }

    /// Asynchronous version of `g_subprocess_communicate_utf8()`.  Complete
    /// invocation with `g_subprocess_communicate_utf8_finish()`.
    func communicateUTF8Async(stdinBuf stdin_buf: UnsafePointer<CChar>, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_subprocess_communicate_utf8_async(cast(subprocess_ptr), stdin_buf, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Complete an invocation of `g_subprocess_communicate_utf8_async()`.
    func communicateUTF8Finish(result: AsyncResultProtocol, stdoutBuf stdout_buf: UnsafeMutablePointer<UnsafeMutablePointer<CChar>>, stderrBuf stderr_buf: UnsafeMutablePointer<UnsafeMutablePointer<CChar>>) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_subprocess_communicate_utf8_finish(cast(subprocess_ptr), cast(result.ptr), cast(stdout_buf), cast(stderr_buf), &error)
        if let error = error { throw ErrorType(error) }
        return Bool(rv != 0)
    }

    /// Use an operating-system specific method to attempt an immediate,
    /// forceful termination of the process.  There is no mechanism to
    /// determine whether or not the request itself was successful;
    /// however, you can use `g_subprocess_wait()` to monitor the status of
    /// the process after calling this function.
    /// 
    /// On Unix, this function sends `SIGKILL`.
    func forceExit() {
        g_subprocess_force_exit(cast(subprocess_ptr))
    
    }

    /// Check the exit status of the subprocess, given that it exited
    /// normally.  This is the value passed to the `exit()` system call or the
    /// return value from main.
    /// 
    /// This is equivalent to the system WEXITSTATUS macro.
    /// 
    /// It is an error to call this function before `g_subprocess_wait()` and
    /// unless `g_subprocess_get_if_exited()` returned `true`.
    func getExitStatus() -> Int {
        let rv: Int = cast(g_subprocess_get_exit_status(cast(subprocess_ptr)))
        return Int(rv)
    }

    /// On UNIX, returns the process ID as a decimal string.
    /// On Windows, returns the result of `GetProcessID()` also as a string.
    /// If the subprocess has terminated, this will return `nil`.
    func getIdentifier() -> String! {
        let rv: String! = cast(g_subprocess_get_identifier(cast(subprocess_ptr)))
        return cast(rv)
    }

    /// Check if the given subprocess exited normally (ie: by way of `exit()`
    /// or return from `main()`).
    /// 
    /// This is equivalent to the system WIFEXITED macro.
    /// 
    /// It is an error to call this function before `g_subprocess_wait()` has
    /// returned.
    func getIfExited() -> Bool {
        let rv = g_subprocess_get_if_exited(cast(subprocess_ptr))
        return Bool(rv != 0)
    }

    /// Check if the given subprocess terminated in response to a signal.
    /// 
    /// This is equivalent to the system WIFSIGNALED macro.
    /// 
    /// It is an error to call this function before `g_subprocess_wait()` has
    /// returned.
    func getIfSignaled() -> Bool {
        let rv = g_subprocess_get_if_signaled(cast(subprocess_ptr))
        return Bool(rv != 0)
    }

    /// Gets the raw status code of the process, as from `waitpid()`.
    /// 
    /// This value has no particular meaning, but it can be used with the
    /// macros defined by the system headers such as WIFEXITED.  It can also
    /// be used with `g_spawn_check_exit_status()`.
    /// 
    /// It is more likely that you want to use `g_subprocess_get_if_exited()`
    /// followed by `g_subprocess_get_exit_status()`.
    /// 
    /// It is an error to call this function before `g_subprocess_wait()` has
    /// returned.
    func getStatus() -> Int {
        let rv: Int = cast(g_subprocess_get_status(cast(subprocess_ptr)))
        return Int(rv)
    }

    /// Gets the `GInputStream` from which to read the stderr output of
    /// `subprocess`.
    /// 
    /// The process must have been created with
    /// `G_SUBPROCESS_FLAGS_STDERR_PIPE`.
    func getStderrPipe() -> UnsafeMutablePointer<GInputStream>! {
        let rv: UnsafeMutablePointer<GInputStream>! = cast(g_subprocess_get_stderr_pipe(cast(subprocess_ptr)))
        return cast(rv)
    }

    /// Gets the `GOutputStream` that you can write to in order to give data
    /// to the stdin of `subprocess`.
    /// 
    /// The process must have been created with
    /// `G_SUBPROCESS_FLAGS_STDIN_PIPE`.
    func getStdinPipe() -> UnsafeMutablePointer<GOutputStream>! {
        let rv: UnsafeMutablePointer<GOutputStream>! = cast(g_subprocess_get_stdin_pipe(cast(subprocess_ptr)))
        return cast(rv)
    }

    /// Gets the `GInputStream` from which to read the stdout output of
    /// `subprocess`.
    /// 
    /// The process must have been created with
    /// `G_SUBPROCESS_FLAGS_STDOUT_PIPE`.
    func getStdoutPipe() -> UnsafeMutablePointer<GInputStream>! {
        let rv: UnsafeMutablePointer<GInputStream>! = cast(g_subprocess_get_stdout_pipe(cast(subprocess_ptr)))
        return cast(rv)
    }

    /// Checks if the process was "successful".  A process is considered
    /// successful if it exited cleanly with an exit status of 0, either by
    /// way of the `exit()` system call or return from `main()`.
    /// 
    /// It is an error to call this function before `g_subprocess_wait()` has
    /// returned.
    func getSuccessful() -> Bool {
        let rv = g_subprocess_get_successful(cast(subprocess_ptr))
        return Bool(rv != 0)
    }

    /// Get the signal number that caused the subprocess to terminate, given
    /// that it terminated due to a signal.
    /// 
    /// This is equivalent to the system WTERMSIG macro.
    /// 
    /// It is an error to call this function before `g_subprocess_wait()` and
    /// unless `g_subprocess_get_if_signaled()` returned `true`.
    func getTermSig() -> Int {
        let rv: Int = cast(g_subprocess_get_term_sig(cast(subprocess_ptr)))
        return Int(rv)
    }

    /// Sends the UNIX signal `signal_num` to the subprocess, if it is still
    /// running.
    /// 
    /// This API is race-free.  If the subprocess has terminated, it will not
    /// be signalled.
    /// 
    /// This API is not available on Windows.
    func sendSignal(signalNum signal_num: CInt) {
        g_subprocess_send_signal(cast(subprocess_ptr), gint(signal_num))
    
    }

    /// Synchronously wait for the subprocess to terminate.
    /// 
    /// After the process terminates you can query its exit status with
    /// functions such as `g_subprocess_get_if_exited()` and
    /// `g_subprocess_get_exit_status()`.
    /// 
    /// This function does not fail in the case of the subprocess having
    /// abnormal termination.  See `g_subprocess_wait_check()` for that.
    /// 
    /// Cancelling `cancellable` doesn't kill the subprocess.  Call
    /// `g_subprocess_force_exit()` if it is desirable.
    func wait(cancellable: CancellableProtocol) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_subprocess_wait(cast(subprocess_ptr), cast(cancellable.ptr), &error)
        if let error = error { throw ErrorType(error) }
        return Bool(rv != 0)
    }

    /// Wait for the subprocess to terminate.
    /// 
    /// This is the asynchronous version of `g_subprocess_wait()`.
    func waitAsync(cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_subprocess_wait_async(cast(subprocess_ptr), cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Combines `g_subprocess_wait()` with `g_spawn_check_exit_status()`.
    func waitCheck(cancellable: CancellableProtocol) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_subprocess_wait_check(cast(subprocess_ptr), cast(cancellable.ptr), &error)
        if let error = error { throw ErrorType(error) }
        return Bool(rv != 0)
    }

    /// Combines `g_subprocess_wait_async()` with `g_spawn_check_exit_status()`.
    /// 
    /// This is the asynchronous version of `g_subprocess_wait_check()`.
    func waitCheckAsync(cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_subprocess_wait_check_async(cast(subprocess_ptr), cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Collects the result of a previous call to
    /// `g_subprocess_wait_check_async()`.
    func waitCheckFinish(result: AsyncResultProtocol) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_subprocess_wait_check_finish(cast(subprocess_ptr), cast(result.ptr), &error)
        if let error = error { throw ErrorType(error) }
        return Bool(rv != 0)
    }

    /// Collects the result of a previous call to
    /// `g_subprocess_wait_async()`.
    func waitFinish(result: AsyncResultProtocol) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_subprocess_wait_finish(cast(subprocess_ptr), cast(result.ptr), &error)
        if let error = error { throw ErrorType(error) }
        return Bool(rv != 0)
    }
    /// Check the exit status of the subprocess, given that it exited
    /// normally.  This is the value passed to the `exit()` system call or the
    /// return value from main.
    /// 
    /// This is equivalent to the system WEXITSTATUS macro.
    /// 
    /// It is an error to call this function before `g_subprocess_wait()` and
    /// unless `g_subprocess_get_if_exited()` returned `true`.
    var exitStatus: Int {
        /// Check the exit status of the subprocess, given that it exited
        /// normally.  This is the value passed to the `exit()` system call or the
        /// return value from main.
        /// 
        /// This is equivalent to the system WEXITSTATUS macro.
        /// 
        /// It is an error to call this function before `g_subprocess_wait()` and
        /// unless `g_subprocess_get_if_exited()` returned `true`.
        get {
            let rv: Int = cast(g_subprocess_get_exit_status(cast(subprocess_ptr)))
            return Int(rv)
        }
    }

    /// On UNIX, returns the process ID as a decimal string.
    /// On Windows, returns the result of `GetProcessID()` also as a string.
    /// If the subprocess has terminated, this will return `nil`.
    var identifier: String! {
        /// On UNIX, returns the process ID as a decimal string.
        /// On Windows, returns the result of `GetProcessID()` also as a string.
        /// If the subprocess has terminated, this will return `nil`.
        get {
            let rv: String! = cast(g_subprocess_get_identifier(cast(subprocess_ptr)))
            return cast(rv)
        }
    }

    /// Check if the given subprocess exited normally (ie: by way of `exit()`
    /// or return from `main()`).
    /// 
    /// This is equivalent to the system WIFEXITED macro.
    /// 
    /// It is an error to call this function before `g_subprocess_wait()` has
    /// returned.
    var ifExited: Bool {
        /// Check if the given subprocess exited normally (ie: by way of `exit()`
        /// or return from `main()`).
        /// 
        /// This is equivalent to the system WIFEXITED macro.
        /// 
        /// It is an error to call this function before `g_subprocess_wait()` has
        /// returned.
        get {
            let rv = g_subprocess_get_if_exited(cast(subprocess_ptr))
            return Bool(rv != 0)
        }
    }

    /// Check if the given subprocess terminated in response to a signal.
    /// 
    /// This is equivalent to the system WIFSIGNALED macro.
    /// 
    /// It is an error to call this function before `g_subprocess_wait()` has
    /// returned.
    var ifSignaled: Bool {
        /// Check if the given subprocess terminated in response to a signal.
        /// 
        /// This is equivalent to the system WIFSIGNALED macro.
        /// 
        /// It is an error to call this function before `g_subprocess_wait()` has
        /// returned.
        get {
            let rv = g_subprocess_get_if_signaled(cast(subprocess_ptr))
            return Bool(rv != 0)
        }
    }

    /// Gets the raw status code of the process, as from `waitpid()`.
    /// 
    /// This value has no particular meaning, but it can be used with the
    /// macros defined by the system headers such as WIFEXITED.  It can also
    /// be used with `g_spawn_check_exit_status()`.
    /// 
    /// It is more likely that you want to use `g_subprocess_get_if_exited()`
    /// followed by `g_subprocess_get_exit_status()`.
    /// 
    /// It is an error to call this function before `g_subprocess_wait()` has
    /// returned.
    var status: Int {
        /// Gets the raw status code of the process, as from `waitpid()`.
        /// 
        /// This value has no particular meaning, but it can be used with the
        /// macros defined by the system headers such as WIFEXITED.  It can also
        /// be used with `g_spawn_check_exit_status()`.
        /// 
        /// It is more likely that you want to use `g_subprocess_get_if_exited()`
        /// followed by `g_subprocess_get_exit_status()`.
        /// 
        /// It is an error to call this function before `g_subprocess_wait()` has
        /// returned.
        get {
            let rv: Int = cast(g_subprocess_get_status(cast(subprocess_ptr)))
            return Int(rv)
        }
    }

    /// Gets the `GInputStream` from which to read the stderr output of
    /// `subprocess`.
    /// 
    /// The process must have been created with
    /// `G_SUBPROCESS_FLAGS_STDERR_PIPE`.
    var stderrPipe: UnsafeMutablePointer<GInputStream>! {
        /// Gets the `GInputStream` from which to read the stderr output of
        /// `subprocess`.
        /// 
        /// The process must have been created with
        /// `G_SUBPROCESS_FLAGS_STDERR_PIPE`.
        get {
            let rv: UnsafeMutablePointer<GInputStream>! = cast(g_subprocess_get_stderr_pipe(cast(subprocess_ptr)))
            return cast(rv)
        }
    }

    /// Gets the `GOutputStream` that you can write to in order to give data
    /// to the stdin of `subprocess`.
    /// 
    /// The process must have been created with
    /// `G_SUBPROCESS_FLAGS_STDIN_PIPE`.
    var stdinPipe: UnsafeMutablePointer<GOutputStream>! {
        /// Gets the `GOutputStream` that you can write to in order to give data
        /// to the stdin of `subprocess`.
        /// 
        /// The process must have been created with
        /// `G_SUBPROCESS_FLAGS_STDIN_PIPE`.
        get {
            let rv: UnsafeMutablePointer<GOutputStream>! = cast(g_subprocess_get_stdin_pipe(cast(subprocess_ptr)))
            return cast(rv)
        }
    }

    /// Gets the `GInputStream` from which to read the stdout output of
    /// `subprocess`.
    /// 
    /// The process must have been created with
    /// `G_SUBPROCESS_FLAGS_STDOUT_PIPE`.
    var stdoutPipe: UnsafeMutablePointer<GInputStream>! {
        /// Gets the `GInputStream` from which to read the stdout output of
        /// `subprocess`.
        /// 
        /// The process must have been created with
        /// `G_SUBPROCESS_FLAGS_STDOUT_PIPE`.
        get {
            let rv: UnsafeMutablePointer<GInputStream>! = cast(g_subprocess_get_stdout_pipe(cast(subprocess_ptr)))
            return cast(rv)
        }
    }

    /// Checks if the process was "successful".  A process is considered
    /// successful if it exited cleanly with an exit status of 0, either by
    /// way of the `exit()` system call or return from `main()`.
    /// 
    /// It is an error to call this function before `g_subprocess_wait()` has
    /// returned.
    var successful: Bool {
        /// Checks if the process was "successful".  A process is considered
        /// successful if it exited cleanly with an exit status of 0, either by
        /// way of the `exit()` system call or return from `main()`.
        /// 
        /// It is an error to call this function before `g_subprocess_wait()` has
        /// returned.
        get {
            let rv = g_subprocess_get_successful(cast(subprocess_ptr))
            return Bool(rv != 0)
        }
    }

    /// Get the signal number that caused the subprocess to terminate, given
    /// that it terminated due to a signal.
    /// 
    /// This is equivalent to the system WTERMSIG macro.
    /// 
    /// It is an error to call this function before `g_subprocess_wait()` and
    /// unless `g_subprocess_get_if_signaled()` returned `true`.
    var termSig: Int {
        /// Get the signal number that caused the subprocess to terminate, given
        /// that it terminated due to a signal.
        /// 
        /// This is equivalent to the system WTERMSIG macro.
        /// 
        /// It is an error to call this function before `g_subprocess_wait()` and
        /// unless `g_subprocess_get_if_signaled()` returned `true`.
        get {
            let rv: Int = cast(g_subprocess_get_term_sig(cast(subprocess_ptr)))
            return Int(rv)
        }
    }


}



// MARK: - SubprocessLauncher Class

/// The `SubprocessLauncherProtocol` protocol exposes the methods and properties of an underlying `GSubprocessLauncher` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SubprocessLauncher`.
/// Alternatively, use `SubprocessLauncherRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// This class contains a set of options for launching child processes,
/// such as where its standard input and output will be directed, the
/// argument list, the environment, and more.
/// 
/// While the `GSubprocess` class has high level functions covering
/// popular cases, use of this class allows access to more advanced
/// options.  It can also be used to launch multiple subprocesses with
/// a similar configuration.
public protocol SubprocessLauncherProtocol: ObjectProtocol {
        /// Untyped pointer to the underlying `GSubprocessLauncher` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSubprocessLauncher` instance.
    var subprocess_launcher_ptr: UnsafeMutablePointer<GSubprocessLauncher> { get }
}

/// The `SubprocessLauncherRef` type acts as a lightweight Swift reference to an underlying `GSubprocessLauncher` instance.
/// It exposes methods that can operate on this data type through `SubprocessLauncherProtocol` conformance.
/// Use `SubprocessLauncherRef` only as an `unowned` reference to an existing `GSubprocessLauncher` instance.
///
/// This class contains a set of options for launching child processes,
/// such as where its standard input and output will be directed, the
/// argument list, the environment, and more.
/// 
/// While the `GSubprocess` class has high level functions covering
/// popular cases, use of this class allows access to more advanced
/// options.  It can also be used to launch multiple subprocesses with
/// a similar configuration.
public struct SubprocessLauncherRef: SubprocessLauncherProtocol {
        /// Untyped pointer to the underlying `GSubprocessLauncher` instance.
    /// For type-safe access, use the generated, typed pointer `subprocess_launcher_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SubprocessLauncherRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSubprocessLauncher>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SubprocessLauncherProtocol`
    init<T: SubprocessLauncherProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessLauncherProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessLauncherProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessLauncherProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessLauncherProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessLauncherProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GSubprocessLauncher`.
    /// 
    /// The launcher is created with the default options.  A copy of the
    /// environment of the calling process is made at the time of this call
    /// and will be used as the environment that the process is launched in.
    init( flags: SubprocessFlags) {
        let rv: UnsafeMutablePointer<GSubprocessLauncher>! = cast(g_subprocess_launcher_new(flags.value))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
}

/// The `SubprocessLauncher` type acts as a reference-counted owner of an underlying `GSubprocessLauncher` instance.
/// It provides the methods that can operate on this data type through `SubprocessLauncherProtocol` conformance.
/// Use `SubprocessLauncher` as a strong reference or owner of a `GSubprocessLauncher` instance.
///
/// This class contains a set of options for launching child processes,
/// such as where its standard input and output will be directed, the
/// argument list, the environment, and more.
/// 
/// While the `GSubprocess` class has high level functions covering
/// popular cases, use of this class allows access to more advanced
/// options.  It can also be used to launch multiple subprocesses with
/// a similar configuration.
open class SubprocessLauncher: Object, SubprocessLauncherProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SubprocessLauncher` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSubprocessLauncher>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GSubprocessLauncher`.
    /// i.e., ownership is transferred to the `SubprocessLauncher` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSubprocessLauncher>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `SubprocessLauncherProtocol`
    /// Will retain `GSubprocessLauncher`.
    /// - Parameter other: an instance of a related type that implements `SubprocessLauncherProtocol`
    public init<T: SubprocessLauncherProtocol>(subprocessLauncher other: T) {
        super.init(retaining: cast(other.subprocess_launcher_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessLauncherProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessLauncherProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessLauncherProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessLauncherProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessLauncherProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessLauncherProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessLauncherProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessLauncherProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GSubprocessLauncher`.
    /// 
    /// The launcher is created with the default options.  A copy of the
    /// environment of the calling process is made at the time of this call
    /// and will be used as the environment that the process is launched in.
    public init( flags: SubprocessFlags) {
        let rv: UnsafeMutablePointer<GSubprocessLauncher>! = cast(g_subprocess_launcher_new(flags.value))
        super.init(cast(rv))
    }


}

public enum SubprocessLauncherPropertyName: String, PropertyNameProtocol {
    case flags = "flags"
}

public extension SubprocessLauncherProtocol {
    /// Bind a `SubprocessLauncherPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: SubprocessLauncherPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(subprocess_launcher_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

    /// Get the value of a SubprocessLauncher property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    func get(property: SubprocessLauncherPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a SubprocessLauncher property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    func set(property: SubprocessLauncherPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum SubprocessLauncherSignalName: String, SignalNameProtocol {
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
    case notifyFlags = "notify::flags"
}

public extension SubprocessLauncherProtocol {
    /// Connect a `SubprocessLauncherSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: SubprocessLauncherSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(subprocess_launcher_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: SubprocessLauncher Class: SubprocessLauncherProtocol extension (methods and fields)
public extension SubprocessLauncherProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSubprocessLauncher` instance.
    var subprocess_launcher_ptr: UnsafeMutablePointer<GSubprocessLauncher> { return ptr.assumingMemoryBound(to: GSubprocessLauncher.self) }

    /// Returns the value of the environment variable `variable` in the
    /// environment of processes launched from this launcher.
    /// 
    /// On UNIX, the returned string can be an arbitrary byte string.
    /// On Windows, it will be UTF-8.
    func getenv(variable: UnsafePointer<gchar>) -> String! {
        let rv: String! = cast(g_subprocess_launcher_getenv(cast(subprocess_launcher_ptr), variable))
        return cast(rv)
    }

    /// Sets up a child setup function.
    /// 
    /// The child setup function will be called after `fork()` but before
    /// `exec()` on the child's side.
    /// 
    /// `destroy_notify` will not be automatically called on the child's side
    /// of the `fork()`.  It will only be called when the last reference on the
    /// `GSubprocessLauncher` is dropped or when a new child setup function is
    /// given.
    /// 
    /// `nil` can be given as `child_setup` to disable the functionality.
    /// 
    /// Child setup functions are only available on UNIX.
    func set(childSetup child_setup: @escaping GLib.SpawnChildSetupFunc, userData user_data: UnsafeMutableRawPointer, destroyNotify destroy_notify: @escaping GLib.DestroyNotify) {
        g_subprocess_launcher_set_child_setup(cast(subprocess_launcher_ptr), child_setup, cast(user_data), destroy_notify)
    
    }

    /// Sets the current working directory that processes will be launched
    /// with.
    /// 
    /// By default processes are launched with the current working directory
    /// of the launching process at the time of launch.
    func set(cwd: UnsafePointer<gchar>) {
        g_subprocess_launcher_set_cwd(cast(subprocess_launcher_ptr), cwd)
    
    }

    /// Replace the entire environment of processes launched from this
    /// launcher with the given 'environ' variable.
    /// 
    /// Typically you will build this variable by using `g_listenv()` to copy
    /// the process 'environ' and using the functions `g_environ_setenv()`,
    /// `g_environ_unsetenv()`, etc.
    /// 
    /// As an alternative, you can use `g_subprocess_launcher_setenv()`,
    /// `g_subprocess_launcher_unsetenv()`, etc.
    /// 
    /// Pass an empty array to set an empty environment. Pass `nil` to inherit the
    /// parent process’ environment. As of GLib 2.54, the parent process’ environment
    /// will be copied when `g_subprocess_launcher_set_environ()` is called.
    /// Previously, it was copied when the subprocess was executed. This means the
    /// copied environment may now be modified (using `g_subprocess_launcher_setenv()`,
    /// etc.) before launching the subprocess.
    /// 
    /// On UNIX, all strings in this array can be arbitrary byte strings.
    /// On Windows, they should be in UTF-8.
    func setEnviron(env: UnsafeMutablePointer<UnsafeMutablePointer<gchar>>) {
        g_subprocess_launcher_set_environ(cast(subprocess_launcher_ptr), cast(env))
    
    }

    /// Sets the flags on the launcher.
    /// 
    /// The default flags are `G_SUBPROCESS_FLAGS_NONE`.
    /// 
    /// You may not set flags that specify conflicting options for how to
    /// handle a particular stdio stream (eg: specifying both
    /// `G_SUBPROCESS_FLAGS_STDIN_PIPE` and
    /// `G_SUBPROCESS_FLAGS_STDIN_INHERIT`).
    /// 
    /// You may also not set a flag that conflicts with a previous call to a
    /// function like `g_subprocess_launcher_set_stdin_file_path()` or
    /// `g_subprocess_launcher_take_stdout_fd()`.
    func set(flags: SubprocessFlags) {
        g_subprocess_launcher_set_flags(cast(subprocess_launcher_ptr), flags.value)
    
    }

    /// Sets the file path to use as the stderr for spawned processes.
    /// 
    /// If `path` is `nil` then any previously given path is unset.
    /// 
    /// The file will be created or truncated when the process is spawned, as
    /// would be the case if using '2>' at the shell.
    /// 
    /// If you want to send both stdout and stderr to the same file then use
    /// `G_SUBPROCESS_FLAGS_STDERR_MERGE`.
    /// 
    /// You may not set a stderr file path if a stderr fd is already set or
    /// if the launcher flags contain any flags directing stderr elsewhere.
    /// 
    /// This feature is only available on UNIX.
    func setStderrFile(path: UnsafePointer<gchar>) {
        g_subprocess_launcher_set_stderr_file_path(cast(subprocess_launcher_ptr), path)
    
    }

    /// Sets the file path to use as the stdin for spawned processes.
    /// 
    /// If `path` is `nil` then any previously given path is unset.
    /// 
    /// The file must exist or spawning the process will fail.
    /// 
    /// You may not set a stdin file path if a stdin fd is already set or if
    /// the launcher flags contain any flags directing stdin elsewhere.
    /// 
    /// This feature is only available on UNIX.
    func setStdinFile(path: UnsafePointer<gchar>) {
        g_subprocess_launcher_set_stdin_file_path(cast(subprocess_launcher_ptr), path)
    
    }

    /// Sets the file path to use as the stdout for spawned processes.
    /// 
    /// If `path` is `nil` then any previously given path is unset.
    /// 
    /// The file will be created or truncated when the process is spawned, as
    /// would be the case if using '>' at the shell.
    /// 
    /// You may not set a stdout file path if a stdout fd is already set or
    /// if the launcher flags contain any flags directing stdout elsewhere.
    /// 
    /// This feature is only available on UNIX.
    func setStdoutFile(path: UnsafePointer<gchar>) {
        g_subprocess_launcher_set_stdout_file_path(cast(subprocess_launcher_ptr), path)
    
    }

    /// Sets the environment variable `variable` in the environment of
    /// processes launched from this launcher.
    /// 
    /// On UNIX, both the variable's name and value can be arbitrary byte
    /// strings, except that the variable's name cannot contain '='.
    /// On Windows, they should be in UTF-8.
    func setenv(variable: UnsafePointer<gchar>, value: UnsafePointer<gchar>, overwrite: Bool) {
        g_subprocess_launcher_setenv(cast(subprocess_launcher_ptr), variable, value, gboolean(overwrite ? 1 : 0))
    
    }


    // *** spawn() is not available because it has a varargs (...) parameter!


    /// Creates a `GSubprocess` given a provided array of arguments.
    func spawnv(argv: UnsafePointer<UnsafePointer<gchar>>) throws -> UnsafeMutablePointer<GSubprocess>! {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GSubprocess>! = cast(g_subprocess_launcher_spawnv(cast(subprocess_launcher_ptr), cast(argv), &error))
        if let error = error { throw ErrorType(error) }
        return cast(rv)
    }

    /// Transfer an arbitrary file descriptor from parent process to the
    /// child.  This function takes "ownership" of the fd; it will be closed
    /// in the parent when `self` is freed.
    /// 
    /// By default, all file descriptors from the parent will be closed.
    /// This function allows you to create (for example) a custom `pipe()` or
    /// `socketpair()` before launching the process, and choose the target
    /// descriptor in the child.
    /// 
    /// An example use case is GNUPG, which has a command line argument
    /// --passphrase-fd providing a file descriptor number where it expects
    /// the passphrase to be written.
    func takeFd(sourceFd source_fd: CInt, targetFd target_fd: CInt) {
        g_subprocess_launcher_take_fd(cast(subprocess_launcher_ptr), gint(source_fd), gint(target_fd))
    
    }

    /// Sets the file descriptor to use as the stderr for spawned processes.
    /// 
    /// If `fd` is -1 then any previously given fd is unset.
    /// 
    /// Note that the default behaviour is to pass stderr through to the
    /// stderr of the parent process.
    /// 
    /// The passed `fd` belongs to the `GSubprocessLauncher`.  It will be
    /// automatically closed when the launcher is finalized.  The file
    /// descriptor will also be closed on the child side when executing the
    /// spawned process.
    /// 
    /// You may not set a stderr fd if a stderr file path is already set or
    /// if the launcher flags contain any flags directing stderr elsewhere.
    /// 
    /// This feature is only available on UNIX.
    func takeStderr(fd: CInt) {
        g_subprocess_launcher_take_stderr_fd(cast(subprocess_launcher_ptr), gint(fd))
    
    }

    /// Sets the file descriptor to use as the stdin for spawned processes.
    /// 
    /// If `fd` is -1 then any previously given fd is unset.
    /// 
    /// Note that if your intention is to have the stdin of the calling
    /// process inherited by the child then `G_SUBPROCESS_FLAGS_STDIN_INHERIT`
    /// is a better way to go about doing that.
    /// 
    /// The passed `fd` is noted but will not be touched in the current
    /// process.  It is therefore necessary that it be kept open by the
    /// caller until the subprocess is spawned.  The file descriptor will
    /// also not be explicitly closed on the child side, so it must be marked
    /// O_CLOEXEC if that's what you want.
    /// 
    /// You may not set a stdin fd if a stdin file path is already set or if
    /// the launcher flags contain any flags directing stdin elsewhere.
    /// 
    /// This feature is only available on UNIX.
    func takeStdin(fd: CInt) {
        g_subprocess_launcher_take_stdin_fd(cast(subprocess_launcher_ptr), gint(fd))
    
    }

    /// Sets the file descriptor to use as the stdout for spawned processes.
    /// 
    /// If `fd` is -1 then any previously given fd is unset.
    /// 
    /// Note that the default behaviour is to pass stdout through to the
    /// stdout of the parent process.
    /// 
    /// The passed `fd` is noted but will not be touched in the current
    /// process.  It is therefore necessary that it be kept open by the
    /// caller until the subprocess is spawned.  The file descriptor will
    /// also not be explicitly closed on the child side, so it must be marked
    /// O_CLOEXEC if that's what you want.
    /// 
    /// You may not set a stdout fd if a stdout file path is already set or
    /// if the launcher flags contain any flags directing stdout elsewhere.
    /// 
    /// This feature is only available on UNIX.
    func takeStdout(fd: CInt) {
        g_subprocess_launcher_take_stdout_fd(cast(subprocess_launcher_ptr), gint(fd))
    
    }

    /// Removes the environment variable `variable` from the environment of
    /// processes launched from this launcher.
    /// 
    /// On UNIX, the variable's name can be an arbitrary byte string not
    /// containing '='. On Windows, it should be in UTF-8.
    func unsetenv(variable: UnsafePointer<gchar>) {
        g_subprocess_launcher_unsetenv(cast(subprocess_launcher_ptr), variable)
    
    }


}



// MARK: - Task Class

/// The `TaskProtocol` protocol exposes the methods and properties of an underlying `GTask` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Task`.
/// Alternatively, use `TaskRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GTask` represents and manages a cancellable "task".
/// 
/// ## Asynchronous operations
/// 
/// The most common usage of `GTask` is as a `GAsyncResult`, to
/// manage data during an asynchronous operation. You call
/// `g_task_new()` in the "start" method, followed by
/// `g_task_set_task_data()` and the like if you need to keep some
/// additional data associated with the task, and then pass the
/// task object around through your asynchronous operation.
/// Eventually, you will call a method such as
/// `g_task_return_pointer()` or `g_task_return_error()`, which will
/// save the value you give it and then invoke the task's callback
/// function in the
/// [thread-default main context](#g-main-context-push-thread-default)
/// where it was created (waiting until the next iteration of the main
/// loop first, if necessary). The caller will pass the `GTask` back to
/// the operation's finish function (as a `GAsyncResult`), and you can
/// use `g_task_propagate_pointer()` or the like to extract the
/// return value.
/// 
/// Here is an example for using GTask as a GAsyncResult:
/// (C Language Example):
/// ```C
///     typedef struct {
///       CakeFrostingType frosting;
///       char *message;
///     } DecorationData;
/// 
///     static void
///     decoration_data_free (DecorationData *decoration)
///     {
///       g_free (decoration->message);
///       g_slice_free (DecorationData, decoration);
///     }
/// 
///     static void
///     baked_cb (Cake     *cake,
///               gpointer  user_data)
///     {
///       GTask *task = user_data;
///       DecorationData *decoration = g_task_get_task_data (task);
///       GError *error = NULL;
/// 
///       if (cake == NULL)
///         {
///           g_task_return_new_error (task, BAKER_ERROR, BAKER_ERROR_NO_FLOUR,
///                                    "Go to the supermarket");
///           g_object_unref (task);
///           return;
///         }
/// 
///       if (!cake_decorate (cake, decoration->frosting, decoration->message, &error))
///         {
///           g_object_unref (cake);
///           // g_task_return_error() takes ownership of error
///           g_task_return_error (task, error);
///           g_object_unref (task);
///           return;
///         }
/// 
///       g_task_return_pointer (task, cake, g_object_unref);
///       g_object_unref (task);
///     }
/// 
///     void
///     baker_bake_cake_async (Baker               *self,
///                            guint                radius,
///                            CakeFlavor           flavor,
///                            CakeFrostingType     frosting,
///                            const char          *message,
///                            GCancellable        *cancellable,
///                            GAsyncReadyCallback  callback,
///                            gpointer             user_data)
///     {
///       GTask *task;
///       DecorationData *decoration;
///       Cake  *cake;
/// 
///       task = g_task_new (self, cancellable, callback, user_data);
///       if (radius < 3)
///         {
///           g_task_return_new_error (task, BAKER_ERROR, BAKER_ERROR_TOO_SMALL,
///                                    "%ucm radius cakes are silly",
///                                    radius);
///           g_object_unref (task);
///           return;
///         }
/// 
///       cake = _baker_get_cached_cake (self, radius, flavor, frosting, message);
///       if (cake != NULL)
///         {
///           // _baker_get_cached_cake() returns a reffed cake
///           g_task_return_pointer (task, cake, g_object_unref);
///           g_object_unref (task);
///           return;
///         }
/// 
///       decoration = g_slice_new (DecorationData);
///       decoration->frosting = frosting;
///       decoration->message = g_strdup (message);
///       g_task_set_task_data (task, decoration, (GDestroyNotify) decoration_data_free);
/// 
///       _baker_begin_cake (self, radius, flavor, cancellable, baked_cb, task);
///     }
/// 
///     Cake *
///     baker_bake_cake_finish (Baker         *self,
///                             GAsyncResult  *result,
///                             GError       **error)
///     {
///       g_return_val_if_fail (g_task_is_valid (result, self), NULL);
/// 
///       return g_task_propagate_pointer (G_TASK (result), error);
///     }
/// ```
/// 
/// ## Chained asynchronous operations
/// 
/// `GTask` also tries to simplify asynchronous operations that
/// internally chain together several smaller asynchronous
/// operations. `g_task_get_cancellable()`, `g_task_get_context()`,
/// and `g_task_get_priority()` allow you to get back the task's
/// `GCancellable`, `GMainContext`, and [I/O priority](#io-priority)
/// when starting a new subtask, so you don't have to keep track
/// of them yourself. `g_task_attach_source()` simplifies the case
/// of waiting for a source to fire (automatically using the correct
/// `GMainContext` and priority).
/// 
/// Here is an example for chained asynchronous operations:
///   
/// (C Language Example):
/// ```C
///     typedef struct {
///       Cake *cake;
///       CakeFrostingType frosting;
///       char *message;
///     } BakingData;
/// 
///     static void
///     decoration_data_free (BakingData *bd)
///     {
///       if (bd->cake)
///         g_object_unref (bd->cake);
///       g_free (bd->message);
///       g_slice_free (BakingData, bd);
///     }
/// 
///     static void
///     decorated_cb (Cake         *cake,
///                   GAsyncResult *result,
///                   gpointer      user_data)
///     {
///       GTask *task = user_data;
///       GError *error = NULL;
/// 
///       if (!cake_decorate_finish (cake, result, &error))
///         {
///           g_object_unref (cake);
///           g_task_return_error (task, error);
///           g_object_unref (task);
///           return;
///         }
/// 
///       // baking_data_free() will drop its ref on the cake, so we have to
///       // take another here to give to the caller.
///       g_task_return_pointer (task, g_object_ref (cake), g_object_unref);
///       g_object_unref (task);
///     }
/// 
///     static gboolean
///     decorator_ready (gpointer user_data)
///     {
///       GTask *task = user_data;
///       BakingData *bd = g_task_get_task_data (task);
/// 
///       cake_decorate_async (bd->cake, bd->frosting, bd->message,
///                            g_task_get_cancellable (task),
///                            decorated_cb, task);
/// 
///       return G_SOURCE_REMOVE;
///     }
/// 
///     static void
///     baked_cb (Cake     *cake,
///               gpointer  user_data)
///     {
///       GTask *task = user_data;
///       BakingData *bd = g_task_get_task_data (task);
///       GError *error = NULL;
/// 
///       if (cake == NULL)
///         {
///           g_task_return_new_error (task, BAKER_ERROR, BAKER_ERROR_NO_FLOUR,
///                                    "Go to the supermarket");
///           g_object_unref (task);
///           return;
///         }
/// 
///       bd->cake = cake;
/// 
///       // Bail out now if the user has already cancelled
///       if (g_task_return_error_if_cancelled (task))
///         {
///           g_object_unref (task);
///           return;
///         }
/// 
///       if (cake_decorator_available (cake))
///         decorator_ready (task);
///       else
///         {
///           GSource *source;
/// 
///           source = cake_decorator_wait_source_new (cake);
///           // Attach @source to @task's GMainContext and have it call
///           // decorator_ready() when it is ready.
///           g_task_attach_source (task, source, decorator_ready);
///           g_source_unref (source);
///         }
///     }
/// 
///     void
///     baker_bake_cake_async (Baker               *self,
///                            guint                radius,
///                            CakeFlavor           flavor,
///                            CakeFrostingType     frosting,
///                            const char          *message,
///                            gint                 priority,
///                            GCancellable        *cancellable,
///                            GAsyncReadyCallback  callback,
///                            gpointer             user_data)
///     {
///       GTask *task;
///       BakingData *bd;
/// 
///       task = g_task_new (self, cancellable, callback, user_data);
///       g_task_set_priority (task, priority);
/// 
///       bd = g_slice_new0 (BakingData);
///       bd->frosting = frosting;
///       bd->message = g_strdup (message);
///       g_task_set_task_data (task, bd, (GDestroyNotify) baking_data_free);
/// 
///       _baker_begin_cake (self, radius, flavor, cancellable, baked_cb, task);
///     }
/// 
///     Cake *
///     baker_bake_cake_finish (Baker         *self,
///                             GAsyncResult  *result,
///                             GError       **error)
///     {
///       g_return_val_if_fail (g_task_is_valid (result, self), NULL);
/// 
///       return g_task_propagate_pointer (G_TASK (result), error);
///     }
/// ```
/// 
/// ## Asynchronous operations from synchronous ones
/// 
/// You can use `g_task_run_in_thread()` to turn a synchronous
/// operation into an asynchronous one, by running it in a thread.
/// When it completes, the result will be dispatched to the
/// [thread-default main context](#g-main-context-push-thread-default)
/// where the `GTask` was created.
/// 
/// Running a task in a thread:
///   
/// (C Language Example):
/// ```C
///     typedef struct {
///       guint radius;
///       CakeFlavor flavor;
///       CakeFrostingType frosting;
///       char *message;
///     } CakeData;
/// 
///     static void
///     cake_data_free (CakeData *cake_data)
///     {
///       g_free (cake_data->message);
///       g_slice_free (CakeData, cake_data);
///     }
/// 
///     static void
///     bake_cake_thread (GTask         *task,
///                       gpointer       source_object,
///                       gpointer       task_data,
///                       GCancellable  *cancellable)
///     {
///       Baker *self = source_object;
///       CakeData *cake_data = task_data;
///       Cake *cake;
///       GError *error = NULL;
/// 
///       cake = bake_cake (baker, cake_data->radius, cake_data->flavor,
///                         cake_data->frosting, cake_data->message,
///                         cancellable, &error);
///       if (cake)
///         g_task_return_pointer (task, cake, g_object_unref);
///       else
///         g_task_return_error (task, error);
///     }
/// 
///     void
///     baker_bake_cake_async (Baker               *self,
///                            guint                radius,
///                            CakeFlavor           flavor,
///                            CakeFrostingType     frosting,
///                            const char          *message,
///                            GCancellable        *cancellable,
///                            GAsyncReadyCallback  callback,
///                            gpointer             user_data)
///     {
///       CakeData *cake_data;
///       GTask *task;
/// 
///       cake_data = g_slice_new (CakeData);
///       cake_data->radius = radius;
///       cake_data->flavor = flavor;
///       cake_data->frosting = frosting;
///       cake_data->message = g_strdup (message);
///       task = g_task_new (self, cancellable, callback, user_data);
///       g_task_set_task_data (task, cake_data, (GDestroyNotify) cake_data_free);
///       g_task_run_in_thread (task, bake_cake_thread);
///       g_object_unref (task);
///     }
/// 
///     Cake *
///     baker_bake_cake_finish (Baker         *self,
///                             GAsyncResult  *result,
///                             GError       **error)
///     {
///       g_return_val_if_fail (g_task_is_valid (result, self), NULL);
/// 
///       return g_task_propagate_pointer (G_TASK (result), error);
///     }
/// ```
/// 
/// ## Adding cancellability to uncancellable tasks
/// 
/// Finally, `g_task_run_in_thread()` and `g_task_run_in_thread_sync()`
/// can be used to turn an uncancellable operation into a
/// cancellable one. If you call `g_task_set_return_on_cancel()`,
/// passing `true`, then if the task's `GCancellable` is cancelled,
/// it will return control back to the caller immediately, while
/// allowing the task thread to continue running in the background
/// (and simply discarding its result when it finally does finish).
/// Provided that the task thread is careful about how it uses
/// locks and other externally-visible resources, this allows you
/// to make "GLib-friendly" asynchronous and cancellable
/// synchronous variants of blocking APIs.
/// 
/// Cancelling a task:
///   
/// (C Language Example):
/// ```C
///     static void
///     bake_cake_thread (GTask         *task,
///                       gpointer       source_object,
///                       gpointer       task_data,
///                       GCancellable  *cancellable)
///     {
///       Baker *self = source_object;
///       CakeData *cake_data = task_data;
///       Cake *cake;
///       GError *error = NULL;
/// 
///       cake = bake_cake (baker, cake_data->radius, cake_data->flavor,
///                         cake_data->frosting, cake_data->message,
///                         &error);
///       if (error)
///         {
///           g_task_return_error (task, error);
///           return;
///         }
/// 
///       // If the task has already been cancelled, then we don't want to add
///       // the cake to the cake cache. Likewise, we don't  want to have the
///       // task get cancelled in the middle of updating the cache.
///       // g_task_set_return_on_cancel() will return %TRUE here if it managed
///       // to disable return-on-cancel, or %FALSE if the task was cancelled
///       // before it could.
///       if (g_task_set_return_on_cancel (task, FALSE))
///         {
///           // If the caller cancels at this point, their
///           // GAsyncReadyCallback won't be invoked until we return,
///           // so we don't have to worry that this code will run at
///           // the same time as that code does. But if there were
///           // other functions that might look at the cake cache,
///           // then we'd probably need a GMutex here as well.
///           baker_add_cake_to_cache (baker, cake);
///           g_task_return_pointer (task, cake, g_object_unref);
///         }
///     }
/// 
///     void
///     baker_bake_cake_async (Baker               *self,
///                            guint                radius,
///                            CakeFlavor           flavor,
///                            CakeFrostingType     frosting,
///                            const char          *message,
///                            GCancellable        *cancellable,
///                            GAsyncReadyCallback  callback,
///                            gpointer             user_data)
///     {
///       CakeData *cake_data;
///       GTask *task;
/// 
///       cake_data = g_slice_new (CakeData);
/// 
///       ...
/// 
///       task = g_task_new (self, cancellable, callback, user_data);
///       g_task_set_task_data (task, cake_data, (GDestroyNotify) cake_data_free);
///       g_task_set_return_on_cancel (task, TRUE);
///       g_task_run_in_thread (task, bake_cake_thread);
///     }
/// 
///     Cake *
///     baker_bake_cake_sync (Baker               *self,
///                           guint                radius,
///                           CakeFlavor           flavor,
///                           CakeFrostingType     frosting,
///                           const char          *message,
///                           GCancellable        *cancellable,
///                           GError             **error)
///     {
///       CakeData *cake_data;
///       GTask *task;
///       Cake *cake;
/// 
///       cake_data = g_slice_new (CakeData);
/// 
///       ...
/// 
///       task = g_task_new (self, cancellable, NULL, NULL);
///       g_task_set_task_data (task, cake_data, (GDestroyNotify) cake_data_free);
///       g_task_set_return_on_cancel (task, TRUE);
///       g_task_run_in_thread_sync (task, bake_cake_thread);
/// 
///       cake = g_task_propagate_pointer (task, error);
///       g_object_unref (task);
///       return cake;
///     }
/// ```
/// 
/// ## Porting from GSimpleAsyncResult
/// 
/// `GTask`'s API attempts to be simpler than `GSimpleAsyncResult`'s
/// in several ways:
/// - You can save task-specific data with `g_task_set_task_data()`, and
///   retrieve it later with `g_task_get_task_data()`. This replaces the
///   abuse of `g_simple_async_result_set_op_res_gpointer()` for the same
///   purpose with `GSimpleAsyncResult`.
/// - In addition to the task data, `GTask` also keeps track of the
///   [priority](#io-priority), `GCancellable`, and
///   `GMainContext` associated with the task, so tasks that consist of
///   a chain of simpler asynchronous operations will have easy access
///   to those values when starting each sub-task.
/// - `g_task_return_error_if_cancelled()` provides simplified
///   handling for cancellation. In addition, cancellation
///   overrides any other `GTask` return value by default, like
///   `GSimpleAsyncResult` does when
///   `g_simple_async_result_set_check_cancellable()` is called.
///   (You can use `g_task_set_check_cancellable()` to turn off that
///   behavior.) On the other hand, `g_task_run_in_thread()`
///   guarantees that it will always run your
///   `task_func`, even if the task's `GCancellable`
///   is already cancelled before the task gets a chance to run;
///   you can start your `task_func` with a
///   `g_task_return_error_if_cancelled()` check if you need the
///   old behavior.
/// - The "return" methods (eg, `g_task_return_pointer()`)
///   automatically cause the task to be "completed" as well, and
///   there is no need to worry about the "complete" vs "complete
///   in idle" distinction. (`GTask` automatically figures out
///   whether the task's callback can be invoked directly, or
///   if it needs to be sent to another `GMainContext`, or delayed
///   until the next iteration of the current `GMainContext`.)
/// - The "finish" functions for `GTask` based operations are generally
///   much simpler than `GSimpleAsyncResult` ones, normally consisting
///   of only a single call to `g_task_propagate_pointer()` or the like.
///   Since `g_task_propagate_pointer()` "steals" the return value from
///   the `GTask`, it is not necessary to juggle pointers around to
///   prevent it from being freed twice.
/// - With `GSimpleAsyncResult`, it was common to call
///   `g_simple_async_result_propagate_error()` from the
///   ``_finish()`` wrapper function, and have
///   virtual method implementations only deal with successful
///   returns. This behavior is deprecated, because it makes it
///   difficult for a subclass to chain to a parent class's async
///   methods. Instead, the wrapper function should just be a
///   simple wrapper, and the virtual method should call an
///   appropriate `g_task_propagate_` function.
///   Note that wrapper methods can now use
///   `g_async_result_legacy_propagate_error()` to do old-style
///   `GSimpleAsyncResult` error-returning behavior, and
///   `g_async_result_is_tagged()` to check if a result is tagged as
///   having come from the ``_async()`` wrapper
///   function (for "short-circuit" results, such as when passing
///   0 to `g_input_stream_read_async()`).
public protocol TaskProtocol: ObjectProtocol, AsyncResultProtocol {
        /// Untyped pointer to the underlying `GTask` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GTask` instance.
    var task_ptr: UnsafeMutablePointer<GTask> { get }
}

/// The `TaskRef` type acts as a lightweight Swift reference to an underlying `GTask` instance.
/// It exposes methods that can operate on this data type through `TaskProtocol` conformance.
/// Use `TaskRef` only as an `unowned` reference to an existing `GTask` instance.
///
/// A `GTask` represents and manages a cancellable "task".
/// 
/// ## Asynchronous operations
/// 
/// The most common usage of `GTask` is as a `GAsyncResult`, to
/// manage data during an asynchronous operation. You call
/// `g_task_new()` in the "start" method, followed by
/// `g_task_set_task_data()` and the like if you need to keep some
/// additional data associated with the task, and then pass the
/// task object around through your asynchronous operation.
/// Eventually, you will call a method such as
/// `g_task_return_pointer()` or `g_task_return_error()`, which will
/// save the value you give it and then invoke the task's callback
/// function in the
/// [thread-default main context](#g-main-context-push-thread-default)
/// where it was created (waiting until the next iteration of the main
/// loop first, if necessary). The caller will pass the `GTask` back to
/// the operation's finish function (as a `GAsyncResult`), and you can
/// use `g_task_propagate_pointer()` or the like to extract the
/// return value.
/// 
/// Here is an example for using GTask as a GAsyncResult:
/// (C Language Example):
/// ```C
///     typedef struct {
///       CakeFrostingType frosting;
///       char *message;
///     } DecorationData;
/// 
///     static void
///     decoration_data_free (DecorationData *decoration)
///     {
///       g_free (decoration->message);
///       g_slice_free (DecorationData, decoration);
///     }
/// 
///     static void
///     baked_cb (Cake     *cake,
///               gpointer  user_data)
///     {
///       GTask *task = user_data;
///       DecorationData *decoration = g_task_get_task_data (task);
///       GError *error = NULL;
/// 
///       if (cake == NULL)
///         {
///           g_task_return_new_error (task, BAKER_ERROR, BAKER_ERROR_NO_FLOUR,
///                                    "Go to the supermarket");
///           g_object_unref (task);
///           return;
///         }
/// 
///       if (!cake_decorate (cake, decoration->frosting, decoration->message, &error))
///         {
///           g_object_unref (cake);
///           // g_task_return_error() takes ownership of error
///           g_task_return_error (task, error);
///           g_object_unref (task);
///           return;
///         }
/// 
///       g_task_return_pointer (task, cake, g_object_unref);
///       g_object_unref (task);
///     }
/// 
///     void
///     baker_bake_cake_async (Baker               *self,
///                            guint                radius,
///                            CakeFlavor           flavor,
///                            CakeFrostingType     frosting,
///                            const char          *message,
///                            GCancellable        *cancellable,
///                            GAsyncReadyCallback  callback,
///                            gpointer             user_data)
///     {
///       GTask *task;
///       DecorationData *decoration;
///       Cake  *cake;
/// 
///       task = g_task_new (self, cancellable, callback, user_data);
///       if (radius < 3)
///         {
///           g_task_return_new_error (task, BAKER_ERROR, BAKER_ERROR_TOO_SMALL,
///                                    "%ucm radius cakes are silly",
///                                    radius);
///           g_object_unref (task);
///           return;
///         }
/// 
///       cake = _baker_get_cached_cake (self, radius, flavor, frosting, message);
///       if (cake != NULL)
///         {
///           // _baker_get_cached_cake() returns a reffed cake
///           g_task_return_pointer (task, cake, g_object_unref);
///           g_object_unref (task);
///           return;
///         }
/// 
///       decoration = g_slice_new (DecorationData);
///       decoration->frosting = frosting;
///       decoration->message = g_strdup (message);
///       g_task_set_task_data (task, decoration, (GDestroyNotify) decoration_data_free);
/// 
///       _baker_begin_cake (self, radius, flavor, cancellable, baked_cb, task);
///     }
/// 
///     Cake *
///     baker_bake_cake_finish (Baker         *self,
///                             GAsyncResult  *result,
///                             GError       **error)
///     {
///       g_return_val_if_fail (g_task_is_valid (result, self), NULL);
/// 
///       return g_task_propagate_pointer (G_TASK (result), error);
///     }
/// ```
/// 
/// ## Chained asynchronous operations
/// 
/// `GTask` also tries to simplify asynchronous operations that
/// internally chain together several smaller asynchronous
/// operations. `g_task_get_cancellable()`, `g_task_get_context()`,
/// and `g_task_get_priority()` allow you to get back the task's
/// `GCancellable`, `GMainContext`, and [I/O priority](#io-priority)
/// when starting a new subtask, so you don't have to keep track
/// of them yourself. `g_task_attach_source()` simplifies the case
/// of waiting for a source to fire (automatically using the correct
/// `GMainContext` and priority).
/// 
/// Here is an example for chained asynchronous operations:
///   
/// (C Language Example):
/// ```C
///     typedef struct {
///       Cake *cake;
///       CakeFrostingType frosting;
///       char *message;
///     } BakingData;
/// 
///     static void
///     decoration_data_free (BakingData *bd)
///     {
///       if (bd->cake)
///         g_object_unref (bd->cake);
///       g_free (bd->message);
///       g_slice_free (BakingData, bd);
///     }
/// 
///     static void
///     decorated_cb (Cake         *cake,
///                   GAsyncResult *result,
///                   gpointer      user_data)
///     {
///       GTask *task = user_data;
///       GError *error = NULL;
/// 
///       if (!cake_decorate_finish (cake, result, &error))
///         {
///           g_object_unref (cake);
///           g_task_return_error (task, error);
///           g_object_unref (task);
///           return;
///         }
/// 
///       // baking_data_free() will drop its ref on the cake, so we have to
///       // take another here to give to the caller.
///       g_task_return_pointer (task, g_object_ref (cake), g_object_unref);
///       g_object_unref (task);
///     }
/// 
///     static gboolean
///     decorator_ready (gpointer user_data)
///     {
///       GTask *task = user_data;
///       BakingData *bd = g_task_get_task_data (task);
/// 
///       cake_decorate_async (bd->cake, bd->frosting, bd->message,
///                            g_task_get_cancellable (task),
///                            decorated_cb, task);
/// 
///       return G_SOURCE_REMOVE;
///     }
/// 
///     static void
///     baked_cb (Cake     *cake,
///               gpointer  user_data)
///     {
///       GTask *task = user_data;
///       BakingData *bd = g_task_get_task_data (task);
///       GError *error = NULL;
/// 
///       if (cake == NULL)
///         {
///           g_task_return_new_error (task, BAKER_ERROR, BAKER_ERROR_NO_FLOUR,
///                                    "Go to the supermarket");
///           g_object_unref (task);
///           return;
///         }
/// 
///       bd->cake = cake;
/// 
///       // Bail out now if the user has already cancelled
///       if (g_task_return_error_if_cancelled (task))
///         {
///           g_object_unref (task);
///           return;
///         }
/// 
///       if (cake_decorator_available (cake))
///         decorator_ready (task);
///       else
///         {
///           GSource *source;
/// 
///           source = cake_decorator_wait_source_new (cake);
///           // Attach @source to @task's GMainContext and have it call
///           // decorator_ready() when it is ready.
///           g_task_attach_source (task, source, decorator_ready);
///           g_source_unref (source);
///         }
///     }
/// 
///     void
///     baker_bake_cake_async (Baker               *self,
///                            guint                radius,
///                            CakeFlavor           flavor,
///                            CakeFrostingType     frosting,
///                            const char          *message,
///                            gint                 priority,
///                            GCancellable        *cancellable,
///                            GAsyncReadyCallback  callback,
///                            gpointer             user_data)
///     {
///       GTask *task;
///       BakingData *bd;
/// 
///       task = g_task_new (self, cancellable, callback, user_data);
///       g_task_set_priority (task, priority);
/// 
///       bd = g_slice_new0 (BakingData);
///       bd->frosting = frosting;
///       bd->message = g_strdup (message);
///       g_task_set_task_data (task, bd, (GDestroyNotify) baking_data_free);
/// 
///       _baker_begin_cake (self, radius, flavor, cancellable, baked_cb, task);
///     }
/// 
///     Cake *
///     baker_bake_cake_finish (Baker         *self,
///                             GAsyncResult  *result,
///                             GError       **error)
///     {
///       g_return_val_if_fail (g_task_is_valid (result, self), NULL);
/// 
///       return g_task_propagate_pointer (G_TASK (result), error);
///     }
/// ```
/// 
/// ## Asynchronous operations from synchronous ones
/// 
/// You can use `g_task_run_in_thread()` to turn a synchronous
/// operation into an asynchronous one, by running it in a thread.
/// When it completes, the result will be dispatched to the
/// [thread-default main context](#g-main-context-push-thread-default)
/// where the `GTask` was created.
/// 
/// Running a task in a thread:
///   
/// (C Language Example):
/// ```C
///     typedef struct {
///       guint radius;
///       CakeFlavor flavor;
///       CakeFrostingType frosting;
///       char *message;
///     } CakeData;
/// 
///     static void
///     cake_data_free (CakeData *cake_data)
///     {
///       g_free (cake_data->message);
///       g_slice_free (CakeData, cake_data);
///     }
/// 
///     static void
///     bake_cake_thread (GTask         *task,
///                       gpointer       source_object,
///                       gpointer       task_data,
///                       GCancellable  *cancellable)
///     {
///       Baker *self = source_object;
///       CakeData *cake_data = task_data;
///       Cake *cake;
///       GError *error = NULL;
/// 
///       cake = bake_cake (baker, cake_data->radius, cake_data->flavor,
///                         cake_data->frosting, cake_data->message,
///                         cancellable, &error);
///       if (cake)
///         g_task_return_pointer (task, cake, g_object_unref);
///       else
///         g_task_return_error (task, error);
///     }
/// 
///     void
///     baker_bake_cake_async (Baker               *self,
///                            guint                radius,
///                            CakeFlavor           flavor,
///                            CakeFrostingType     frosting,
///                            const char          *message,
///                            GCancellable        *cancellable,
///                            GAsyncReadyCallback  callback,
///                            gpointer             user_data)
///     {
///       CakeData *cake_data;
///       GTask *task;
/// 
///       cake_data = g_slice_new (CakeData);
///       cake_data->radius = radius;
///       cake_data->flavor = flavor;
///       cake_data->frosting = frosting;
///       cake_data->message = g_strdup (message);
///       task = g_task_new (self, cancellable, callback, user_data);
///       g_task_set_task_data (task, cake_data, (GDestroyNotify) cake_data_free);
///       g_task_run_in_thread (task, bake_cake_thread);
///       g_object_unref (task);
///     }
/// 
///     Cake *
///     baker_bake_cake_finish (Baker         *self,
///                             GAsyncResult  *result,
///                             GError       **error)
///     {
///       g_return_val_if_fail (g_task_is_valid (result, self), NULL);
/// 
///       return g_task_propagate_pointer (G_TASK (result), error);
///     }
/// ```
/// 
/// ## Adding cancellability to uncancellable tasks
/// 
/// Finally, `g_task_run_in_thread()` and `g_task_run_in_thread_sync()`
/// can be used to turn an uncancellable operation into a
/// cancellable one. If you call `g_task_set_return_on_cancel()`,
/// passing `true`, then if the task's `GCancellable` is cancelled,
/// it will return control back to the caller immediately, while
/// allowing the task thread to continue running in the background
/// (and simply discarding its result when it finally does finish).
/// Provided that the task thread is careful about how it uses
/// locks and other externally-visible resources, this allows you
/// to make "GLib-friendly" asynchronous and cancellable
/// synchronous variants of blocking APIs.
/// 
/// Cancelling a task:
///   
/// (C Language Example):
/// ```C
///     static void
///     bake_cake_thread (GTask         *task,
///                       gpointer       source_object,
///                       gpointer       task_data,
///                       GCancellable  *cancellable)
///     {
///       Baker *self = source_object;
///       CakeData *cake_data = task_data;
///       Cake *cake;
///       GError *error = NULL;
/// 
///       cake = bake_cake (baker, cake_data->radius, cake_data->flavor,
///                         cake_data->frosting, cake_data->message,
///                         &error);
///       if (error)
///         {
///           g_task_return_error (task, error);
///           return;
///         }
/// 
///       // If the task has already been cancelled, then we don't want to add
///       // the cake to the cake cache. Likewise, we don't  want to have the
///       // task get cancelled in the middle of updating the cache.
///       // g_task_set_return_on_cancel() will return %TRUE here if it managed
///       // to disable return-on-cancel, or %FALSE if the task was cancelled
///       // before it could.
///       if (g_task_set_return_on_cancel (task, FALSE))
///         {
///           // If the caller cancels at this point, their
///           // GAsyncReadyCallback won't be invoked until we return,
///           // so we don't have to worry that this code will run at
///           // the same time as that code does. But if there were
///           // other functions that might look at the cake cache,
///           // then we'd probably need a GMutex here as well.
///           baker_add_cake_to_cache (baker, cake);
///           g_task_return_pointer (task, cake, g_object_unref);
///         }
///     }
/// 
///     void
///     baker_bake_cake_async (Baker               *self,
///                            guint                radius,
///                            CakeFlavor           flavor,
///                            CakeFrostingType     frosting,
///                            const char          *message,
///                            GCancellable        *cancellable,
///                            GAsyncReadyCallback  callback,
///                            gpointer             user_data)
///     {
///       CakeData *cake_data;
///       GTask *task;
/// 
///       cake_data = g_slice_new (CakeData);
/// 
///       ...
/// 
///       task = g_task_new (self, cancellable, callback, user_data);
///       g_task_set_task_data (task, cake_data, (GDestroyNotify) cake_data_free);
///       g_task_set_return_on_cancel (task, TRUE);
///       g_task_run_in_thread (task, bake_cake_thread);
///     }
/// 
///     Cake *
///     baker_bake_cake_sync (Baker               *self,
///                           guint                radius,
///                           CakeFlavor           flavor,
///                           CakeFrostingType     frosting,
///                           const char          *message,
///                           GCancellable        *cancellable,
///                           GError             **error)
///     {
///       CakeData *cake_data;
///       GTask *task;
///       Cake *cake;
/// 
///       cake_data = g_slice_new (CakeData);
/// 
///       ...
/// 
///       task = g_task_new (self, cancellable, NULL, NULL);
///       g_task_set_task_data (task, cake_data, (GDestroyNotify) cake_data_free);
///       g_task_set_return_on_cancel (task, TRUE);
///       g_task_run_in_thread_sync (task, bake_cake_thread);
/// 
///       cake = g_task_propagate_pointer (task, error);
///       g_object_unref (task);
///       return cake;
///     }
/// ```
/// 
/// ## Porting from GSimpleAsyncResult
/// 
/// `GTask`'s API attempts to be simpler than `GSimpleAsyncResult`'s
/// in several ways:
/// - You can save task-specific data with `g_task_set_task_data()`, and
///   retrieve it later with `g_task_get_task_data()`. This replaces the
///   abuse of `g_simple_async_result_set_op_res_gpointer()` for the same
///   purpose with `GSimpleAsyncResult`.
/// - In addition to the task data, `GTask` also keeps track of the
///   [priority](#io-priority), `GCancellable`, and
///   `GMainContext` associated with the task, so tasks that consist of
///   a chain of simpler asynchronous operations will have easy access
///   to those values when starting each sub-task.
/// - `g_task_return_error_if_cancelled()` provides simplified
///   handling for cancellation. In addition, cancellation
///   overrides any other `GTask` return value by default, like
///   `GSimpleAsyncResult` does when
///   `g_simple_async_result_set_check_cancellable()` is called.
///   (You can use `g_task_set_check_cancellable()` to turn off that
///   behavior.) On the other hand, `g_task_run_in_thread()`
///   guarantees that it will always run your
///   `task_func`, even if the task's `GCancellable`
///   is already cancelled before the task gets a chance to run;
///   you can start your `task_func` with a
///   `g_task_return_error_if_cancelled()` check if you need the
///   old behavior.
/// - The "return" methods (eg, `g_task_return_pointer()`)
///   automatically cause the task to be "completed" as well, and
///   there is no need to worry about the "complete" vs "complete
///   in idle" distinction. (`GTask` automatically figures out
///   whether the task's callback can be invoked directly, or
///   if it needs to be sent to another `GMainContext`, or delayed
///   until the next iteration of the current `GMainContext`.)
/// - The "finish" functions for `GTask` based operations are generally
///   much simpler than `GSimpleAsyncResult` ones, normally consisting
///   of only a single call to `g_task_propagate_pointer()` or the like.
///   Since `g_task_propagate_pointer()` "steals" the return value from
///   the `GTask`, it is not necessary to juggle pointers around to
///   prevent it from being freed twice.
/// - With `GSimpleAsyncResult`, it was common to call
///   `g_simple_async_result_propagate_error()` from the
///   ``_finish()`` wrapper function, and have
///   virtual method implementations only deal with successful
///   returns. This behavior is deprecated, because it makes it
///   difficult for a subclass to chain to a parent class's async
///   methods. Instead, the wrapper function should just be a
///   simple wrapper, and the virtual method should call an
///   appropriate `g_task_propagate_` function.
///   Note that wrapper methods can now use
///   `g_async_result_legacy_propagate_error()` to do old-style
///   `GSimpleAsyncResult` error-returning behavior, and
///   `g_async_result_is_tagged()` to check if a result is tagged as
///   having come from the ``_async()`` wrapper
///   function (for "short-circuit" results, such as when passing
///   0 to `g_input_stream_read_async()`).
public struct TaskRef: TaskProtocol {
        /// Untyped pointer to the underlying `GTask` instance.
    /// For type-safe access, use the generated, typed pointer `task_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TaskRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GTask>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TaskProtocol`
    init<T: TaskProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TaskProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TaskProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TaskProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TaskProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TaskProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a `GTask` acting on `source_object`, which will eventually be
    /// used to invoke `callback` in the current
    /// [thread-default main context](#g-main-context-push-thread-default).
    /// 
    /// Call this in the "start" method of your asynchronous method, and
    /// pass the `GTask` around throughout the asynchronous operation. You
    /// can use `g_task_set_task_data()` to attach task-specific data to the
    /// object, which you can retrieve later via `g_task_get_task_data()`.
    /// 
    /// By default, if `cancellable` is cancelled, then the return value of
    /// the task will always be `G_IO_ERROR_CANCELLED`, even if the task had
    /// already completed before the cancellation. This allows for
    /// simplified handling in cases where cancellation may imply that
    /// other objects that the task depends on have been destroyed. If you
    /// do not want this behavior, you can use
    /// `g_task_set_check_cancellable()` to change it.
    init( source_object: ObjectProtocol, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, callbackData callback_data: UnsafeMutableRawPointer) {
        let rv: UnsafeMutablePointer<GTask>! = cast(g_task_new(cast(source_object.ptr), cast(cancellable.ptr), callback, cast(callback_data)))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
}

/// The `Task` type acts as a reference-counted owner of an underlying `GTask` instance.
/// It provides the methods that can operate on this data type through `TaskProtocol` conformance.
/// Use `Task` as a strong reference or owner of a `GTask` instance.
///
/// A `GTask` represents and manages a cancellable "task".
/// 
/// ## Asynchronous operations
/// 
/// The most common usage of `GTask` is as a `GAsyncResult`, to
/// manage data during an asynchronous operation. You call
/// `g_task_new()` in the "start" method, followed by
/// `g_task_set_task_data()` and the like if you need to keep some
/// additional data associated with the task, and then pass the
/// task object around through your asynchronous operation.
/// Eventually, you will call a method such as
/// `g_task_return_pointer()` or `g_task_return_error()`, which will
/// save the value you give it and then invoke the task's callback
/// function in the
/// [thread-default main context](#g-main-context-push-thread-default)
/// where it was created (waiting until the next iteration of the main
/// loop first, if necessary). The caller will pass the `GTask` back to
/// the operation's finish function (as a `GAsyncResult`), and you can
/// use `g_task_propagate_pointer()` or the like to extract the
/// return value.
/// 
/// Here is an example for using GTask as a GAsyncResult:
/// (C Language Example):
/// ```C
///     typedef struct {
///       CakeFrostingType frosting;
///       char *message;
///     } DecorationData;
/// 
///     static void
///     decoration_data_free (DecorationData *decoration)
///     {
///       g_free (decoration->message);
///       g_slice_free (DecorationData, decoration);
///     }
/// 
///     static void
///     baked_cb (Cake     *cake,
///               gpointer  user_data)
///     {
///       GTask *task = user_data;
///       DecorationData *decoration = g_task_get_task_data (task);
///       GError *error = NULL;
/// 
///       if (cake == NULL)
///         {
///           g_task_return_new_error (task, BAKER_ERROR, BAKER_ERROR_NO_FLOUR,
///                                    "Go to the supermarket");
///           g_object_unref (task);
///           return;
///         }
/// 
///       if (!cake_decorate (cake, decoration->frosting, decoration->message, &error))
///         {
///           g_object_unref (cake);
///           // g_task_return_error() takes ownership of error
///           g_task_return_error (task, error);
///           g_object_unref (task);
///           return;
///         }
/// 
///       g_task_return_pointer (task, cake, g_object_unref);
///       g_object_unref (task);
///     }
/// 
///     void
///     baker_bake_cake_async (Baker               *self,
///                            guint                radius,
///                            CakeFlavor           flavor,
///                            CakeFrostingType     frosting,
///                            const char          *message,
///                            GCancellable        *cancellable,
///                            GAsyncReadyCallback  callback,
///                            gpointer             user_data)
///     {
///       GTask *task;
///       DecorationData *decoration;
///       Cake  *cake;
/// 
///       task = g_task_new (self, cancellable, callback, user_data);
///       if (radius < 3)
///         {
///           g_task_return_new_error (task, BAKER_ERROR, BAKER_ERROR_TOO_SMALL,
///                                    "%ucm radius cakes are silly",
///                                    radius);
///           g_object_unref (task);
///           return;
///         }
/// 
///       cake = _baker_get_cached_cake (self, radius, flavor, frosting, message);
///       if (cake != NULL)
///         {
///           // _baker_get_cached_cake() returns a reffed cake
///           g_task_return_pointer (task, cake, g_object_unref);
///           g_object_unref (task);
///           return;
///         }
/// 
///       decoration = g_slice_new (DecorationData);
///       decoration->frosting = frosting;
///       decoration->message = g_strdup (message);
///       g_task_set_task_data (task, decoration, (GDestroyNotify) decoration_data_free);
/// 
///       _baker_begin_cake (self, radius, flavor, cancellable, baked_cb, task);
///     }
/// 
///     Cake *
///     baker_bake_cake_finish (Baker         *self,
///                             GAsyncResult  *result,
///                             GError       **error)
///     {
///       g_return_val_if_fail (g_task_is_valid (result, self), NULL);
/// 
///       return g_task_propagate_pointer (G_TASK (result), error);
///     }
/// ```
/// 
/// ## Chained asynchronous operations
/// 
/// `GTask` also tries to simplify asynchronous operations that
/// internally chain together several smaller asynchronous
/// operations. `g_task_get_cancellable()`, `g_task_get_context()`,
/// and `g_task_get_priority()` allow you to get back the task's
/// `GCancellable`, `GMainContext`, and [I/O priority](#io-priority)
/// when starting a new subtask, so you don't have to keep track
/// of them yourself. `g_task_attach_source()` simplifies the case
/// of waiting for a source to fire (automatically using the correct
/// `GMainContext` and priority).
/// 
/// Here is an example for chained asynchronous operations:
///   
/// (C Language Example):
/// ```C
///     typedef struct {
///       Cake *cake;
///       CakeFrostingType frosting;
///       char *message;
///     } BakingData;
/// 
///     static void
///     decoration_data_free (BakingData *bd)
///     {
///       if (bd->cake)
///         g_object_unref (bd->cake);
///       g_free (bd->message);
///       g_slice_free (BakingData, bd);
///     }
/// 
///     static void
///     decorated_cb (Cake         *cake,
///                   GAsyncResult *result,
///                   gpointer      user_data)
///     {
///       GTask *task = user_data;
///       GError *error = NULL;
/// 
///       if (!cake_decorate_finish (cake, result, &error))
///         {
///           g_object_unref (cake);
///           g_task_return_error (task, error);
///           g_object_unref (task);
///           return;
///         }
/// 
///       // baking_data_free() will drop its ref on the cake, so we have to
///       // take another here to give to the caller.
///       g_task_return_pointer (task, g_object_ref (cake), g_object_unref);
///       g_object_unref (task);
///     }
/// 
///     static gboolean
///     decorator_ready (gpointer user_data)
///     {
///       GTask *task = user_data;
///       BakingData *bd = g_task_get_task_data (task);
/// 
///       cake_decorate_async (bd->cake, bd->frosting, bd->message,
///                            g_task_get_cancellable (task),
///                            decorated_cb, task);
/// 
///       return G_SOURCE_REMOVE;
///     }
/// 
///     static void
///     baked_cb (Cake     *cake,
///               gpointer  user_data)
///     {
///       GTask *task = user_data;
///       BakingData *bd = g_task_get_task_data (task);
///       GError *error = NULL;
/// 
///       if (cake == NULL)
///         {
///           g_task_return_new_error (task, BAKER_ERROR, BAKER_ERROR_NO_FLOUR,
///                                    "Go to the supermarket");
///           g_object_unref (task);
///           return;
///         }
/// 
///       bd->cake = cake;
/// 
///       // Bail out now if the user has already cancelled
///       if (g_task_return_error_if_cancelled (task))
///         {
///           g_object_unref (task);
///           return;
///         }
/// 
///       if (cake_decorator_available (cake))
///         decorator_ready (task);
///       else
///         {
///           GSource *source;
/// 
///           source = cake_decorator_wait_source_new (cake);
///           // Attach @source to @task's GMainContext and have it call
///           // decorator_ready() when it is ready.
///           g_task_attach_source (task, source, decorator_ready);
///           g_source_unref (source);
///         }
///     }
/// 
///     void
///     baker_bake_cake_async (Baker               *self,
///                            guint                radius,
///                            CakeFlavor           flavor,
///                            CakeFrostingType     frosting,
///                            const char          *message,
///                            gint                 priority,
///                            GCancellable        *cancellable,
///                            GAsyncReadyCallback  callback,
///                            gpointer             user_data)
///     {
///       GTask *task;
///       BakingData *bd;
/// 
///       task = g_task_new (self, cancellable, callback, user_data);
///       g_task_set_priority (task, priority);
/// 
///       bd = g_slice_new0 (BakingData);
///       bd->frosting = frosting;
///       bd->message = g_strdup (message);
///       g_task_set_task_data (task, bd, (GDestroyNotify) baking_data_free);
/// 
///       _baker_begin_cake (self, radius, flavor, cancellable, baked_cb, task);
///     }
/// 
///     Cake *
///     baker_bake_cake_finish (Baker         *self,
///                             GAsyncResult  *result,
///                             GError       **error)
///     {
///       g_return_val_if_fail (g_task_is_valid (result, self), NULL);
/// 
///       return g_task_propagate_pointer (G_TASK (result), error);
///     }
/// ```
/// 
/// ## Asynchronous operations from synchronous ones
/// 
/// You can use `g_task_run_in_thread()` to turn a synchronous
/// operation into an asynchronous one, by running it in a thread.
/// When it completes, the result will be dispatched to the
/// [thread-default main context](#g-main-context-push-thread-default)
/// where the `GTask` was created.
/// 
/// Running a task in a thread:
///   
/// (C Language Example):
/// ```C
///     typedef struct {
///       guint radius;
///       CakeFlavor flavor;
///       CakeFrostingType frosting;
///       char *message;
///     } CakeData;
/// 
///     static void
///     cake_data_free (CakeData *cake_data)
///     {
///       g_free (cake_data->message);
///       g_slice_free (CakeData, cake_data);
///     }
/// 
///     static void
///     bake_cake_thread (GTask         *task,
///                       gpointer       source_object,
///                       gpointer       task_data,
///                       GCancellable  *cancellable)
///     {
///       Baker *self = source_object;
///       CakeData *cake_data = task_data;
///       Cake *cake;
///       GError *error = NULL;
/// 
///       cake = bake_cake (baker, cake_data->radius, cake_data->flavor,
///                         cake_data->frosting, cake_data->message,
///                         cancellable, &error);
///       if (cake)
///         g_task_return_pointer (task, cake, g_object_unref);
///       else
///         g_task_return_error (task, error);
///     }
/// 
///     void
///     baker_bake_cake_async (Baker               *self,
///                            guint                radius,
///                            CakeFlavor           flavor,
///                            CakeFrostingType     frosting,
///                            const char          *message,
///                            GCancellable        *cancellable,
///                            GAsyncReadyCallback  callback,
///                            gpointer             user_data)
///     {
///       CakeData *cake_data;
///       GTask *task;
/// 
///       cake_data = g_slice_new (CakeData);
///       cake_data->radius = radius;
///       cake_data->flavor = flavor;
///       cake_data->frosting = frosting;
///       cake_data->message = g_strdup (message);
///       task = g_task_new (self, cancellable, callback, user_data);
///       g_task_set_task_data (task, cake_data, (GDestroyNotify) cake_data_free);
///       g_task_run_in_thread (task, bake_cake_thread);
///       g_object_unref (task);
///     }
/// 
///     Cake *
///     baker_bake_cake_finish (Baker         *self,
///                             GAsyncResult  *result,
///                             GError       **error)
///     {
///       g_return_val_if_fail (g_task_is_valid (result, self), NULL);
/// 
///       return g_task_propagate_pointer (G_TASK (result), error);
///     }
/// ```
/// 
/// ## Adding cancellability to uncancellable tasks
/// 
/// Finally, `g_task_run_in_thread()` and `g_task_run_in_thread_sync()`
/// can be used to turn an uncancellable operation into a
/// cancellable one. If you call `g_task_set_return_on_cancel()`,
/// passing `true`, then if the task's `GCancellable` is cancelled,
/// it will return control back to the caller immediately, while
/// allowing the task thread to continue running in the background
/// (and simply discarding its result when it finally does finish).
/// Provided that the task thread is careful about how it uses
/// locks and other externally-visible resources, this allows you
/// to make "GLib-friendly" asynchronous and cancellable
/// synchronous variants of blocking APIs.
/// 
/// Cancelling a task:
///   
/// (C Language Example):
/// ```C
///     static void
///     bake_cake_thread (GTask         *task,
///                       gpointer       source_object,
///                       gpointer       task_data,
///                       GCancellable  *cancellable)
///     {
///       Baker *self = source_object;
///       CakeData *cake_data = task_data;
///       Cake *cake;
///       GError *error = NULL;
/// 
///       cake = bake_cake (baker, cake_data->radius, cake_data->flavor,
///                         cake_data->frosting, cake_data->message,
///                         &error);
///       if (error)
///         {
///           g_task_return_error (task, error);
///           return;
///         }
/// 
///       // If the task has already been cancelled, then we don't want to add
///       // the cake to the cake cache. Likewise, we don't  want to have the
///       // task get cancelled in the middle of updating the cache.
///       // g_task_set_return_on_cancel() will return %TRUE here if it managed
///       // to disable return-on-cancel, or %FALSE if the task was cancelled
///       // before it could.
///       if (g_task_set_return_on_cancel (task, FALSE))
///         {
///           // If the caller cancels at this point, their
///           // GAsyncReadyCallback won't be invoked until we return,
///           // so we don't have to worry that this code will run at
///           // the same time as that code does. But if there were
///           // other functions that might look at the cake cache,
///           // then we'd probably need a GMutex here as well.
///           baker_add_cake_to_cache (baker, cake);
///           g_task_return_pointer (task, cake, g_object_unref);
///         }
///     }
/// 
///     void
///     baker_bake_cake_async (Baker               *self,
///                            guint                radius,
///                            CakeFlavor           flavor,
///                            CakeFrostingType     frosting,
///                            const char          *message,
///                            GCancellable        *cancellable,
///                            GAsyncReadyCallback  callback,
///                            gpointer             user_data)
///     {
///       CakeData *cake_data;
///       GTask *task;
/// 
///       cake_data = g_slice_new (CakeData);
/// 
///       ...
/// 
///       task = g_task_new (self, cancellable, callback, user_data);
///       g_task_set_task_data (task, cake_data, (GDestroyNotify) cake_data_free);
///       g_task_set_return_on_cancel (task, TRUE);
///       g_task_run_in_thread (task, bake_cake_thread);
///     }
/// 
///     Cake *
///     baker_bake_cake_sync (Baker               *self,
///                           guint                radius,
///                           CakeFlavor           flavor,
///                           CakeFrostingType     frosting,
///                           const char          *message,
///                           GCancellable        *cancellable,
///                           GError             **error)
///     {
///       CakeData *cake_data;
///       GTask *task;
///       Cake *cake;
/// 
///       cake_data = g_slice_new (CakeData);
/// 
///       ...
/// 
///       task = g_task_new (self, cancellable, NULL, NULL);
///       g_task_set_task_data (task, cake_data, (GDestroyNotify) cake_data_free);
///       g_task_set_return_on_cancel (task, TRUE);
///       g_task_run_in_thread_sync (task, bake_cake_thread);
/// 
///       cake = g_task_propagate_pointer (task, error);
///       g_object_unref (task);
///       return cake;
///     }
/// ```
/// 
/// ## Porting from GSimpleAsyncResult
/// 
/// `GTask`'s API attempts to be simpler than `GSimpleAsyncResult`'s
/// in several ways:
/// - You can save task-specific data with `g_task_set_task_data()`, and
///   retrieve it later with `g_task_get_task_data()`. This replaces the
///   abuse of `g_simple_async_result_set_op_res_gpointer()` for the same
///   purpose with `GSimpleAsyncResult`.
/// - In addition to the task data, `GTask` also keeps track of the
///   [priority](#io-priority), `GCancellable`, and
///   `GMainContext` associated with the task, so tasks that consist of
///   a chain of simpler asynchronous operations will have easy access
///   to those values when starting each sub-task.
/// - `g_task_return_error_if_cancelled()` provides simplified
///   handling for cancellation. In addition, cancellation
///   overrides any other `GTask` return value by default, like
///   `GSimpleAsyncResult` does when
///   `g_simple_async_result_set_check_cancellable()` is called.
///   (You can use `g_task_set_check_cancellable()` to turn off that
///   behavior.) On the other hand, `g_task_run_in_thread()`
///   guarantees that it will always run your
///   `task_func`, even if the task's `GCancellable`
///   is already cancelled before the task gets a chance to run;
///   you can start your `task_func` with a
///   `g_task_return_error_if_cancelled()` check if you need the
///   old behavior.
/// - The "return" methods (eg, `g_task_return_pointer()`)
///   automatically cause the task to be "completed" as well, and
///   there is no need to worry about the "complete" vs "complete
///   in idle" distinction. (`GTask` automatically figures out
///   whether the task's callback can be invoked directly, or
///   if it needs to be sent to another `GMainContext`, or delayed
///   until the next iteration of the current `GMainContext`.)
/// - The "finish" functions for `GTask` based operations are generally
///   much simpler than `GSimpleAsyncResult` ones, normally consisting
///   of only a single call to `g_task_propagate_pointer()` or the like.
///   Since `g_task_propagate_pointer()` "steals" the return value from
///   the `GTask`, it is not necessary to juggle pointers around to
///   prevent it from being freed twice.
/// - With `GSimpleAsyncResult`, it was common to call
///   `g_simple_async_result_propagate_error()` from the
///   ``_finish()`` wrapper function, and have
///   virtual method implementations only deal with successful
///   returns. This behavior is deprecated, because it makes it
///   difficult for a subclass to chain to a parent class's async
///   methods. Instead, the wrapper function should just be a
///   simple wrapper, and the virtual method should call an
///   appropriate `g_task_propagate_` function.
///   Note that wrapper methods can now use
///   `g_async_result_legacy_propagate_error()` to do old-style
///   `GSimpleAsyncResult` error-returning behavior, and
///   `g_async_result_is_tagged()` to check if a result is tagged as
///   having come from the ``_async()`` wrapper
///   function (for "short-circuit" results, such as when passing
///   0 to `g_input_stream_read_async()`).
open class Task: Object, TaskProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Task` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GTask>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GTask`.
    /// i.e., ownership is transferred to the `Task` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GTask>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `TaskProtocol`
    /// Will retain `GTask`.
    /// - Parameter other: an instance of a related type that implements `TaskProtocol`
    public init<T: TaskProtocol>(task other: T) {
        super.init(retaining: cast(other.task_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TaskProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TaskProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TaskProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TaskProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TaskProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TaskProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TaskProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TaskProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a `GTask` acting on `source_object`, which will eventually be
    /// used to invoke `callback` in the current
    /// [thread-default main context](#g-main-context-push-thread-default).
    /// 
    /// Call this in the "start" method of your asynchronous method, and
    /// pass the `GTask` around throughout the asynchronous operation. You
    /// can use `g_task_set_task_data()` to attach task-specific data to the
    /// object, which you can retrieve later via `g_task_get_task_data()`.
    /// 
    /// By default, if `cancellable` is cancelled, then the return value of
    /// the task will always be `G_IO_ERROR_CANCELLED`, even if the task had
    /// already completed before the cancellation. This allows for
    /// simplified handling in cases where cancellation may imply that
    /// other objects that the task depends on have been destroyed. If you
    /// do not want this behavior, you can use
    /// `g_task_set_check_cancellable()` to change it.
    public init( source_object: ObjectProtocol, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, callbackData callback_data: UnsafeMutableRawPointer) {
        let rv: UnsafeMutablePointer<GTask>! = cast(g_task_new(cast(source_object.ptr), cast(cancellable.ptr), callback, cast(callback_data)))
        super.init(cast(rv))
    }


}

public enum TaskPropertyName: String, PropertyNameProtocol {
    /// Whether the task has completed, meaning its callback (if set) has been
    /// invoked. This can only happen after `g_task_return_pointer()`,
    /// `g_task_return_error()` or one of the other return functions have been called
    /// on the task.
    /// 
    /// This property is guaranteed to change from `false` to `true` exactly once.
    /// 
    /// The `GObject::notify` signal for this change is emitted in the same main
    /// context as the task’s callback, immediately after that callback is invoked.
    case completed = "completed"
}

public extension TaskProtocol {
    /// Bind a `TaskPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: TaskPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(task_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

    /// Get the value of a Task property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    func get(property: TaskPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Task property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    func set(property: TaskPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum TaskSignalName: String, SignalNameProtocol {
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
    /// Whether the task has completed, meaning its callback (if set) has been
    /// invoked. This can only happen after `g_task_return_pointer()`,
    /// `g_task_return_error()` or one of the other return functions have been called
    /// on the task.
    /// 
    /// This property is guaranteed to change from `false` to `true` exactly once.
    /// 
    /// The `GObject::notify` signal for this change is emitted in the same main
    /// context as the task’s callback, immediately after that callback is invoked.
    case notifyCompleted = "notify::completed"
}

public extension TaskProtocol {
    /// Connect a `TaskSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: TaskSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(task_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: Task Class: TaskProtocol extension (methods and fields)
public extension TaskProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTask` instance.
    var task_ptr: UnsafeMutablePointer<GTask> { return ptr.assumingMemoryBound(to: GTask.self) }

    /// A utility function for dealing with async operations where you need
    /// to wait for a `GSource` to trigger. Attaches `source` to `task`'s
    /// `GMainContext` with `task`'s [priority](#io-priority), and sets `source`'s
    /// callback to `callback`, with `task` as the callback's `user_data`.
    /// 
    /// It will set the `source`’s name to the task’s name (as set with
    /// `g_task_set_name()`), if one has been set.
    /// 
    /// This takes a reference on `task` until `source` is destroyed.
    func attach(source: SourceProtocol, callback: @escaping GLib.SourceFunc) {
        g_task_attach_source(cast(task_ptr), cast(source.ptr), callback)
    
    }

    /// Gets `task`'s `GCancellable`
    func getCancellable() -> UnsafeMutablePointer<GCancellable>! {
        let rv: UnsafeMutablePointer<GCancellable>! = cast(g_task_get_cancellable(cast(task_ptr)))
        return cast(rv)
    }

    /// Gets `task`'s check-cancellable flag. See
    /// `g_task_set_check_cancellable()` for more details.
    func getCheckCancellable() -> Bool {
        let rv = g_task_get_check_cancellable(cast(task_ptr))
        return Bool(rv != 0)
    }

    /// Gets the value of `GTask:completed`. This changes from `false` to `true` after
    /// the task’s callback is invoked, and will return `false` if called from inside
    /// the callback.
    func getCompleted() -> Bool {
        let rv = g_task_get_completed(cast(task_ptr))
        return Bool(rv != 0)
    }

    /// Gets the `GMainContext` that `task` will return its result in (that
    /// is, the context that was the
    /// [thread-default main context](#g-main-context-push-thread-default)
    /// at the point when `task` was created).
    /// 
    /// This will always return a non-`nil` value, even if the task's
    /// context is the default `GMainContext`.
    func getContext() -> UnsafeMutablePointer<GMainContext>! {
        let rv: UnsafeMutablePointer<GMainContext>! = cast(g_task_get_context(cast(task_ptr)))
        return cast(rv)
    }

    /// Gets `task`’s name. See `g_task_set_name()`.
    func getName() -> String! {
        let rv: String! = cast(g_task_get_name(cast(task_ptr)))
        return cast(rv)
    }

    /// Gets `task`'s priority
    func getPriority() -> Int {
        let rv: Int = cast(g_task_get_priority(cast(task_ptr)))
        return Int(rv)
    }

    /// Gets `task`'s return-on-cancel flag. See
    /// `g_task_set_return_on_cancel()` for more details.
    func getReturnOnCancel() -> Bool {
        let rv = g_task_get_return_on_cancel(cast(task_ptr))
        return Bool(rv != 0)
    }

    /// Gets the source object from `task`. Like
    /// `g_async_result_get_source_object()`, but does not ref the object.
    func getSourceObject() -> UnsafeMutableRawPointer! {
        let rv: UnsafeMutableRawPointer! = cast(g_task_get_source_object(cast(task_ptr)))
        return cast(rv)
    }

    /// Gets `task`'s source tag. See `g_task_set_source_tag()`.
    func getSourceTag() -> UnsafeMutableRawPointer! {
        let rv: UnsafeMutableRawPointer! = cast(g_task_get_source_tag(cast(task_ptr)))
        return cast(rv)
    }

    /// Gets `task`'s `task_data`.
    func getTaskData() -> UnsafeMutableRawPointer! {
        let rv: UnsafeMutableRawPointer! = cast(g_task_get_task_data(cast(task_ptr)))
        return cast(rv)
    }

    /// Tests if `task` resulted in an error.
    func hadError() -> Bool {
        let rv = g_task_had_error(cast(task_ptr))
        return Bool(rv != 0)
    }

    /// Gets the result of `task` as a `gboolean`.
    /// 
    /// If the task resulted in an error, or was cancelled, then this will
    /// instead return `false` and set `error`.
    /// 
    /// Since this method transfers ownership of the return value (or
    /// error) to the caller, you may only call it once.
    func propagateBoolean() throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_task_propagate_boolean(cast(task_ptr), &error)
        if let error = error { throw ErrorType(error) }
        return Bool(rv != 0)
    }

    /// Gets the result of `task` as an integer (`gssize`).
    /// 
    /// If the task resulted in an error, or was cancelled, then this will
    /// instead return -1 and set `error`.
    /// 
    /// Since this method transfers ownership of the return value (or
    /// error) to the caller, you may only call it once.
    func propagateInt() throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_task_propagate_int(cast(task_ptr), &error)
        if let error = error { throw ErrorType(error) }
        return cast(rv)
    }

    /// Gets the result of `task` as a pointer, and transfers ownership
    /// of that value to the caller.
    /// 
    /// If the task resulted in an error, or was cancelled, then this will
    /// instead return `nil` and set `error`.
    /// 
    /// Since this method transfers ownership of the return value (or
    /// error) to the caller, you may only call it once.
    func propagatePointer() throws -> UnsafeMutableRawPointer! {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutableRawPointer! = cast(g_task_propagate_pointer(cast(task_ptr), &error))
        if let error = error { throw ErrorType(error) }
        return cast(rv)
    }

    /// Gets the result of `task` as a `GValue`, and transfers ownership of
    /// that value to the caller. As with `g_task_return_value()`, this is
    /// a generic low-level method; `g_task_propagate_pointer()` and the like
    /// will usually be more useful for C code.
    /// 
    /// If the task resulted in an error, or was cancelled, then this will
    /// instead set `error` and return `false`.
    /// 
    /// Since this method transfers ownership of the return value (or
    /// error) to the caller, you may only call it once.
    func propagate(value: ValueProtocol) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_task_propagate_value(cast(task_ptr), cast(value.ptr), &error)
        if let error = error { throw ErrorType(error) }
        return Bool(rv != 0)
    }

    /// Sets `task`'s result to `result` and completes the task (see
    /// `g_task_return_pointer()` for more discussion of exactly what this
    /// means).
    func returnBoolean(result: Bool) {
        g_task_return_boolean(cast(task_ptr), gboolean(result ? 1 : 0))
    
    }

    /// Sets `task`'s result to `error` (which `task` assumes ownership of)
    /// and completes the task (see `g_task_return_pointer()` for more
    /// discussion of exactly what this means).
    /// 
    /// Note that since the task takes ownership of `error`, and since the
    /// task may be completed before returning from `g_task_return_error()`,
    /// you cannot assume that `error` is still valid after calling this.
    /// Call `g_error_copy()` on the error if you need to keep a local copy
    /// as well.
    /// 
    /// See also `g_task_return_new_error()`.
    func return_(error: ErrorTypeProtocol) {
        g_task_return_error(cast(task_ptr), cast(error.ptr))
    
    }

    /// Checks if `task`'s `GCancellable` has been cancelled, and if so, sets
    /// `task`'s error accordingly and completes the task (see
    /// `g_task_return_pointer()` for more discussion of exactly what this
    /// means).
    func returnErrorIfCancelled() -> Bool {
        let rv = g_task_return_error_if_cancelled(cast(task_ptr))
        return Bool(rv != 0)
    }

    /// Sets `task`'s result to `result` and completes the task (see
    /// `g_task_return_pointer()` for more discussion of exactly what this
    /// means).
    func returnInt(result: gssize) {
        g_task_return_int(cast(task_ptr), result)
    
    }


    // *** returnNewError() is not available because it has a varargs (...) parameter!


    /// Sets `task`'s result to `result` and completes the task. If `result`
    /// is not `nil`, then `result_destroy` will be used to free `result` if
    /// the caller does not take ownership of it with
    /// `g_task_propagate_pointer()`.
    /// 
    /// "Completes the task" means that for an ordinary asynchronous task
    /// it will either invoke the task's callback, or else queue that
    /// callback to be invoked in the proper `GMainContext`, or in the next
    /// iteration of the current `GMainContext`. For a task run via
    /// `g_task_run_in_thread()` or `g_task_run_in_thread_sync()`, calling this
    /// method will save `result` to be returned to the caller later, but
    /// the task will not actually be completed until the `GTaskThreadFunc`
    /// exits.
    /// 
    /// Note that since the task may be completed before returning from
    /// `g_task_return_pointer()`, you cannot assume that `result` is still
    /// valid after calling this, unless you are still holding another
    /// reference on it.
    func returnPointer(result: UnsafeMutableRawPointer, resultDestroy result_destroy: @escaping GLib.DestroyNotify) {
        g_task_return_pointer(cast(task_ptr), cast(result), result_destroy)
    
    }

    /// Sets `task`'s result to `result` (by copying it) and completes the task.
    /// 
    /// If `result` is `nil` then a `GValue` of type `G_TYPE_POINTER`
    /// with a value of `nil` will be used for the result.
    /// 
    /// This is a very generic low-level method intended primarily for use
    /// by language bindings; for C code, `g_task_return_pointer()` and the
    /// like will normally be much easier to use.
    func returnValue(result: ValueProtocol) {
        g_task_return_value(cast(task_ptr), cast(result.ptr))
    
    }

    /// Runs `task_func` in another thread. When `task_func` returns, `task`'s
    /// `GAsyncReadyCallback` will be invoked in `task`'s `GMainContext`.
    /// 
    /// This takes a ref on `task` until the task completes.
    /// 
    /// See `GTaskThreadFunc` for more details about how `task_func` is handled.
    /// 
    /// Although GLib currently rate-limits the tasks queued via
    /// `g_task_run_in_thread()`, you should not assume that it will always
    /// do this. If you have a very large number of tasks to run, but don't
    /// want them to all run at once, you should only queue a limited
    /// number of them at a time.
    func runInThread(taskFunc task_func: @escaping TaskThreadFunc) {
        g_task_run_in_thread(cast(task_ptr), task_func)
    
    }

    /// Runs `task_func` in another thread, and waits for it to return or be
    /// cancelled. You can use `g_task_propagate_pointer()`, etc, afterward
    /// to get the result of `task_func`.
    /// 
    /// See `GTaskThreadFunc` for more details about how `task_func` is handled.
    /// 
    /// Normally this is used with tasks created with a `nil`
    /// `callback`, but note that even if the task does
    /// have a callback, it will not be invoked when `task_func` returns.
    /// `GTask:completed` will be set to `true` just before this function returns.
    /// 
    /// Although GLib currently rate-limits the tasks queued via
    /// `g_task_run_in_thread_sync()`, you should not assume that it will
    /// always do this. If you have a very large number of tasks to run,
    /// but don't want them to all run at once, you should only queue a
    /// limited number of them at a time.
    func runInThreadSync(taskFunc task_func: @escaping TaskThreadFunc) {
        g_task_run_in_thread_sync(cast(task_ptr), task_func)
    
    }

    /// Sets or clears `task`'s check-cancellable flag. If this is `true`
    /// (the default), then `g_task_propagate_pointer()`, etc, and
    /// `g_task_had_error()` will check the task's `GCancellable` first, and
    /// if it has been cancelled, then they will consider the task to have
    /// returned an "Operation was cancelled" error
    /// (`G_IO_ERROR_CANCELLED`), regardless of any other error or return
    /// value the task may have had.
    /// 
    /// If `check_cancellable` is `false`, then the `GTask` will not check the
    /// cancellable itself, and it is up to `task`'s owner to do this (eg,
    /// via `g_task_return_error_if_cancelled()`).
    /// 
    /// If you are using `g_task_set_return_on_cancel()` as well, then
    /// you must leave check-cancellable set `true`.
    func set(checkCancellable check_cancellable: Bool) {
        g_task_set_check_cancellable(cast(task_ptr), gboolean(check_cancellable ? 1 : 0))
    
    }

    /// Sets `task`’s name, used in debugging and profiling. The name defaults to
    /// `nil`.
    /// 
    /// The task name should describe in a human readable way what the task does.
    /// For example, ‘Open file’ or ‘Connect to network host’. It is used to set the
    /// name of the `GSource` used for idle completion of the task.
    /// 
    /// This function may only be called before the `task` is first used in a thread
    /// other than the one it was constructed in.
    func set(name: UnsafePointer<gchar>) {
        g_task_set_name(cast(task_ptr), name)
    
    }

    /// Sets `task`'s priority. If you do not call this, it will default to
    /// `G_PRIORITY_DEFAULT`.
    /// 
    /// This will affect the priority of `GSources` created with
    /// `g_task_attach_source()` and the scheduling of tasks run in threads,
    /// and can also be explicitly retrieved later via
    /// `g_task_get_priority()`.
    func set(priority: CInt) {
        g_task_set_priority(cast(task_ptr), gint(priority))
    
    }

    /// Sets or clears `task`'s return-on-cancel flag. This is only
    /// meaningful for tasks run via `g_task_run_in_thread()` or
    /// `g_task_run_in_thread_sync()`.
    /// 
    /// If `return_on_cancel` is `true`, then cancelling `task`'s
    /// `GCancellable` will immediately cause it to return, as though the
    /// task's `GTaskThreadFunc` had called
    /// `g_task_return_error_if_cancelled()` and then returned.
    /// 
    /// This allows you to create a cancellable wrapper around an
    /// uninterruptable function. The `GTaskThreadFunc` just needs to be
    /// careful that it does not modify any externally-visible state after
    /// it has been cancelled. To do that, the thread should call
    /// `g_task_set_return_on_cancel()` again to (atomically) set
    /// return-on-cancel `false` before making externally-visible changes;
    /// if the task gets cancelled before the return-on-cancel flag could
    /// be changed, `g_task_set_return_on_cancel()` will indicate this by
    /// returning `false`.
    /// 
    /// You can disable and re-enable this flag multiple times if you wish.
    /// If the task's `GCancellable` is cancelled while return-on-cancel is
    /// `false`, then calling `g_task_set_return_on_cancel()` to set it `true`
    /// again will cause the task to be cancelled at that point.
    /// 
    /// If the task's `GCancellable` is already cancelled before you call
    /// `g_task_run_in_thread()``/g_task_run_in_thread_sync()`, then the
    /// `GTaskThreadFunc` will still be run (for consistency), but the task
    /// will also be completed right away.
    func set(returnOnCancel return_on_cancel: Bool) -> Bool {
        let rv = g_task_set_return_on_cancel(cast(task_ptr), gboolean(return_on_cancel ? 1 : 0))
        return Bool(rv != 0)
    }

    /// Sets `task`'s source tag. You can use this to tag a task return
    /// value with a particular pointer (usually a pointer to the function
    /// doing the tagging) and then later check it using
    /// `g_task_get_source_tag()` (or `g_async_result_is_tagged()`) in the
    /// task's "finish" function, to figure out if the response came from a
    /// particular place.
    func set(sourceTag source_tag: UnsafeMutableRawPointer) {
        g_task_set_source_tag(cast(task_ptr), cast(source_tag))
    
    }

    /// Sets `task`'s task data (freeing the existing task data, if any).
    func set(taskData task_data: UnsafeMutableRawPointer, taskDataDestroy task_data_destroy: @escaping GLib.DestroyNotify) {
        g_task_set_task_data(cast(task_ptr), cast(task_data), task_data_destroy)
    
    }
    /// Gets `task`'s `GCancellable`
    var cancellable: UnsafeMutablePointer<GCancellable>! {
        /// Gets `task`'s `GCancellable`
        get {
            let rv: UnsafeMutablePointer<GCancellable>! = cast(g_task_get_cancellable(cast(task_ptr)))
            return cast(rv)
        }
    }

    /// Gets `task`'s check-cancellable flag. See
    /// `g_task_set_check_cancellable()` for more details.
    var checkCancellable: Bool {
        /// Gets `task`'s check-cancellable flag. See
        /// `g_task_set_check_cancellable()` for more details.
        get {
            let rv = g_task_get_check_cancellable(cast(task_ptr))
            return Bool(rv != 0)
        }
        /// Sets or clears `task`'s check-cancellable flag. If this is `true`
        /// (the default), then `g_task_propagate_pointer()`, etc, and
        /// `g_task_had_error()` will check the task's `GCancellable` first, and
        /// if it has been cancelled, then they will consider the task to have
        /// returned an "Operation was cancelled" error
        /// (`G_IO_ERROR_CANCELLED`), regardless of any other error or return
        /// value the task may have had.
        /// 
        /// If `check_cancellable` is `false`, then the `GTask` will not check the
        /// cancellable itself, and it is up to `task`'s owner to do this (eg,
        /// via `g_task_return_error_if_cancelled()`).
        /// 
        /// If you are using `g_task_set_return_on_cancel()` as well, then
        /// you must leave check-cancellable set `true`.
        nonmutating set {
            g_task_set_check_cancellable(cast(task_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Whether the task has completed, meaning its callback (if set) has been
    /// invoked. This can only happen after `g_task_return_pointer()`,
    /// `g_task_return_error()` or one of the other return functions have been called
    /// on the task.
    /// 
    /// This property is guaranteed to change from `false` to `true` exactly once.
    /// 
    /// The `GObject::notify` signal for this change is emitted in the same main
    /// context as the task’s callback, immediately after that callback is invoked.
    var completed: Bool {
        /// Gets the value of `GTask:completed`. This changes from `false` to `true` after
        /// the task’s callback is invoked, and will return `false` if called from inside
        /// the callback.
        get {
            let rv = g_task_get_completed(cast(task_ptr))
            return Bool(rv != 0)
        }
    }

    /// Gets the `GMainContext` that `task` will return its result in (that
    /// is, the context that was the
    /// [thread-default main context](#g-main-context-push-thread-default)
    /// at the point when `task` was created).
    /// 
    /// This will always return a non-`nil` value, even if the task's
    /// context is the default `GMainContext`.
    var context: UnsafeMutablePointer<GMainContext>! {
        /// Gets the `GMainContext` that `task` will return its result in (that
        /// is, the context that was the
        /// [thread-default main context](#g-main-context-push-thread-default)
        /// at the point when `task` was created).
        /// 
        /// This will always return a non-`nil` value, even if the task's
        /// context is the default `GMainContext`.
        get {
            let rv: UnsafeMutablePointer<GMainContext>! = cast(g_task_get_context(cast(task_ptr)))
            return cast(rv)
        }
    }

    /// Gets `task`’s name. See `g_task_set_name()`.
    var name: String! {
        /// Gets `task`’s name. See `g_task_set_name()`.
        get {
            let rv: String! = cast(g_task_get_name(cast(task_ptr)))
            return cast(rv)
        }
        /// Sets `task`’s name, used in debugging and profiling. The name defaults to
        /// `nil`.
        /// 
        /// The task name should describe in a human readable way what the task does.
        /// For example, ‘Open file’ or ‘Connect to network host’. It is used to set the
        /// name of the `GSource` used for idle completion of the task.
        /// 
        /// This function may only be called before the `task` is first used in a thread
        /// other than the one it was constructed in.
        nonmutating set {
            g_task_set_name(cast(task_ptr), cast(newValue))
        }
    }

    /// Gets `task`'s priority
    var priority: Int {
        /// Gets `task`'s priority
        get {
            let rv: Int = cast(g_task_get_priority(cast(task_ptr)))
            return Int(rv)
        }
        /// Sets `task`'s priority. If you do not call this, it will default to
        /// `G_PRIORITY_DEFAULT`.
        /// 
        /// This will affect the priority of `GSources` created with
        /// `g_task_attach_source()` and the scheduling of tasks run in threads,
        /// and can also be explicitly retrieved later via
        /// `g_task_get_priority()`.
        nonmutating set {
            g_task_set_priority(cast(task_ptr), gint(newValue))
        }
    }

    /// Gets `task`'s return-on-cancel flag. See
    /// `g_task_set_return_on_cancel()` for more details.
    var returnOnCancel: Bool {
        /// Gets `task`'s return-on-cancel flag. See
        /// `g_task_set_return_on_cancel()` for more details.
        get {
            let rv = g_task_get_return_on_cancel(cast(task_ptr))
            return Bool(rv != 0)
        }
        /// Sets or clears `task`'s return-on-cancel flag. This is only
        /// meaningful for tasks run via `g_task_run_in_thread()` or
        /// `g_task_run_in_thread_sync()`.
        /// 
        /// If `return_on_cancel` is `true`, then cancelling `task`'s
        /// `GCancellable` will immediately cause it to return, as though the
        /// task's `GTaskThreadFunc` had called
        /// `g_task_return_error_if_cancelled()` and then returned.
        /// 
        /// This allows you to create a cancellable wrapper around an
        /// uninterruptable function. The `GTaskThreadFunc` just needs to be
        /// careful that it does not modify any externally-visible state after
        /// it has been cancelled. To do that, the thread should call
        /// `g_task_set_return_on_cancel()` again to (atomically) set
        /// return-on-cancel `false` before making externally-visible changes;
        /// if the task gets cancelled before the return-on-cancel flag could
        /// be changed, `g_task_set_return_on_cancel()` will indicate this by
        /// returning `false`.
        /// 
        /// You can disable and re-enable this flag multiple times if you wish.
        /// If the task's `GCancellable` is cancelled while return-on-cancel is
        /// `false`, then calling `g_task_set_return_on_cancel()` to set it `true`
        /// again will cause the task to be cancelled at that point.
        /// 
        /// If the task's `GCancellable` is already cancelled before you call
        /// `g_task_run_in_thread()``/g_task_run_in_thread_sync()`, then the
        /// `GTaskThreadFunc` will still be run (for consistency), but the task
        /// will also be completed right away.
        nonmutating set {
            _ = g_task_set_return_on_cancel(cast(task_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Gets the source object from `task`. Like
    /// `g_async_result_get_source_object()`, but does not ref the object.
    var sourceObject: UnsafeMutableRawPointer! {
        /// Gets the source object from `task`. Like
        /// `g_async_result_get_source_object()`, but does not ref the object.
        get {
            let rv: UnsafeMutableRawPointer! = cast(g_task_get_source_object(cast(task_ptr)))
            return cast(rv)
        }
    }

    /// Gets `task`'s source tag. See `g_task_set_source_tag()`.
    var sourceTag: UnsafeMutableRawPointer! {
        /// Gets `task`'s source tag. See `g_task_set_source_tag()`.
        get {
            let rv: UnsafeMutableRawPointer! = cast(g_task_get_source_tag(cast(task_ptr)))
            return cast(rv)
        }
        /// Sets `task`'s source tag. You can use this to tag a task return
        /// value with a particular pointer (usually a pointer to the function
        /// doing the tagging) and then later check it using
        /// `g_task_get_source_tag()` (or `g_async_result_is_tagged()`) in the
        /// task's "finish" function, to figure out if the response came from a
        /// particular place.
        nonmutating set {
            g_task_set_source_tag(cast(task_ptr), cast(newValue))
        }
    }

    /// Gets `task`'s `task_data`.
    var taskData: UnsafeMutableRawPointer! {
        /// Gets `task`'s `task_data`.
        get {
            let rv: UnsafeMutableRawPointer! = cast(g_task_get_task_data(cast(task_ptr)))
            return cast(rv)
        }
    }


}



