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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSettings` instance.
    var settings_ptr: UnsafeMutablePointer<GSettings>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension SettingsRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSettings>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSettings>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSettings>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSettings>?) {
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

    /// Reference intialiser for a related type that implements `SettingsProtocol`
    @inlinable init<T: SettingsProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GSettings` object with the schema specified by
    /// `schema_id`.
    /// 
    /// Signals on the newly created `GSettings` object will be dispatched
    /// via the thread-default `GMainContext` in effect at the time of the
    /// call to `g_settings_new()`.  The new `GSettings` will hold a reference
    /// on the context.  See `g_main_context_push_thread_default()`.
    @inlinable init( schema_id: UnsafePointer<gchar>!) {
        let rv = g_settings_new(schema_id)
        ptr = UnsafeMutableRawPointer(rv)
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
    @inlinable init<SettingsBackendT: SettingsBackendProtocol, SettingsSchemaT: SettingsSchemaProtocol>(full schema: SettingsSchemaT, backend: SettingsBackendT? = nil, path: UnsafePointer<gchar>? = nil) {
        let rv = g_settings_new_full(schema.settings_schema_ptr, backend?.settings_backend_ptr, path)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GSettings` object with the schema specified by
    /// `schema_id` and a given `GSettingsBackend`.
    /// 
    /// Creating a `GSettings` object with a different backend allows accessing
    /// settings from a database other than the usual one. For example, it may make
    /// sense to pass a backend corresponding to the "defaults" settings database on
    /// the system to get a settings object that modifies the system default
    /// settings instead of the settings for this user.
    @inlinable init<SettingsBackendT: SettingsBackendProtocol>(backend schema_id: UnsafePointer<gchar>!, backend: SettingsBackendT) {
        let rv = g_settings_new_with_backend(schema_id, backend.settings_backend_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GSettings` object with the schema specified by
    /// `schema_id` and a given `GSettingsBackend` and path.
    /// 
    /// This is a mix of `g_settings_new_with_backend()` and
    /// `g_settings_new_with_path()`.
    @inlinable init<SettingsBackendT: SettingsBackendProtocol>(backendAndPath schema_id: UnsafePointer<gchar>!, backend: SettingsBackendT, path: UnsafePointer<gchar>!) {
        let rv = g_settings_new_with_backend_and_path(schema_id, backend.settings_backend_ptr, path)
        ptr = UnsafeMutableRawPointer(rv)
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
    @inlinable init(path schema_id: UnsafePointer<gchar>!, path: UnsafePointer<gchar>!) {
        let rv = g_settings_new_with_path(schema_id, path)
        ptr = UnsafeMutableRawPointer(rv)
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
    @inlinable static func new<SettingsBackendT: SettingsBackendProtocol, SettingsSchemaT: SettingsSchemaProtocol>(full schema: SettingsSchemaT, backend: SettingsBackendT? = nil, path: UnsafePointer<gchar>? = nil) -> SettingsRef! {
        guard let rv = SettingsRef(gconstpointer: gconstpointer(g_settings_new_full(schema.settings_schema_ptr, backend?.settings_backend_ptr, path))) else { return nil }
        return rv
    }

    /// Creates a new `GSettings` object with the schema specified by
    /// `schema_id` and a given `GSettingsBackend`.
    /// 
    /// Creating a `GSettings` object with a different backend allows accessing
    /// settings from a database other than the usual one. For example, it may make
    /// sense to pass a backend corresponding to the "defaults" settings database on
    /// the system to get a settings object that modifies the system default
    /// settings instead of the settings for this user.
    @inlinable static func newWith<SettingsBackendT: SettingsBackendProtocol>(backend schema_id: UnsafePointer<gchar>!, backend: SettingsBackendT) -> SettingsRef! {
        guard let rv = SettingsRef(gconstpointer: gconstpointer(g_settings_new_with_backend(schema_id, backend.settings_backend_ptr))) else { return nil }
        return rv
    }

    /// Creates a new `GSettings` object with the schema specified by
    /// `schema_id` and a given `GSettingsBackend` and path.
    /// 
    /// This is a mix of `g_settings_new_with_backend()` and
    /// `g_settings_new_with_path()`.
    @inlinable static func newWith<SettingsBackendT: SettingsBackendProtocol>(backendAndPath schema_id: UnsafePointer<gchar>!, backend: SettingsBackendT, path: UnsafePointer<gchar>!) -> SettingsRef! {
        guard let rv = SettingsRef(gconstpointer: gconstpointer(g_settings_new_with_backend_and_path(schema_id, backend.settings_backend_ptr, path))) else { return nil }
        return rv
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
    @inlinable static func newWith(path schema_id: UnsafePointer<gchar>!, path: UnsafePointer<gchar>!) -> SettingsRef! {
        guard let rv = SettingsRef(gconstpointer: gconstpointer(g_settings_new_with_path(schema_id, path))) else { return nil }
        return rv
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
    @inlinable public init(_ op: UnsafeMutablePointer<GSettings>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Settings` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GSettings>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Settings` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Settings` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Settings` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GSettings>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Settings` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GSettings>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GSettings`.
    /// i.e., ownership is transferred to the `Settings` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GSettings>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `SettingsProtocol`
    /// Will retain `GSettings`.
    /// - Parameter other: an instance of a related type that implements `SettingsProtocol`
    @inlinable public init<T: SettingsProtocol>(settings other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GSettings` object with the schema specified by
    /// `schema_id`.
    /// 
    /// Signals on the newly created `GSettings` object will be dispatched
    /// via the thread-default `GMainContext` in effect at the time of the
    /// call to `g_settings_new()`.  The new `GSettings` will hold a reference
    /// on the context.  See `g_main_context_push_thread_default()`.
    @inlinable public init( schema_id: UnsafePointer<gchar>!) {
        let rv = g_settings_new(schema_id)
        super.init(gpointer: (rv))
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
    @inlinable public init<SettingsBackendT: SettingsBackendProtocol, SettingsSchemaT: SettingsSchemaProtocol>(full schema: SettingsSchemaT, backend: SettingsBackendT? = nil, path: UnsafePointer<gchar>? = nil) {
        let rv = g_settings_new_full(schema.settings_schema_ptr, backend?.settings_backend_ptr, path)
        super.init(gpointer: (rv))
    }

    /// Creates a new `GSettings` object with the schema specified by
    /// `schema_id` and a given `GSettingsBackend`.
    /// 
    /// Creating a `GSettings` object with a different backend allows accessing
    /// settings from a database other than the usual one. For example, it may make
    /// sense to pass a backend corresponding to the "defaults" settings database on
    /// the system to get a settings object that modifies the system default
    /// settings instead of the settings for this user.
    @inlinable public init<SettingsBackendT: SettingsBackendProtocol>(backend schema_id: UnsafePointer<gchar>!, backend: SettingsBackendT) {
        let rv = g_settings_new_with_backend(schema_id, backend.settings_backend_ptr)
        super.init(gpointer: (rv))
    }

    /// Creates a new `GSettings` object with the schema specified by
    /// `schema_id` and a given `GSettingsBackend` and path.
    /// 
    /// This is a mix of `g_settings_new_with_backend()` and
    /// `g_settings_new_with_path()`.
    @inlinable public init<SettingsBackendT: SettingsBackendProtocol>(backendAndPath schema_id: UnsafePointer<gchar>!, backend: SettingsBackendT, path: UnsafePointer<gchar>!) {
        let rv = g_settings_new_with_backend_and_path(schema_id, backend.settings_backend_ptr, path)
        super.init(gpointer: (rv))
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
    @inlinable public init(path schema_id: UnsafePointer<gchar>!, path: UnsafePointer<gchar>!) {
        let rv = g_settings_new_with_path(schema_id, path)
        super.init(gpointer: (rv))
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
    @inlinable public static func new<SettingsBackendT: SettingsBackendProtocol, SettingsSchemaT: SettingsSchemaProtocol>(full schema: SettingsSchemaT, backend: SettingsBackendT? = nil, path: UnsafePointer<gchar>? = nil) -> Settings! {
        guard let rv = Settings(gconstpointer: gconstpointer(g_settings_new_full(schema.settings_schema_ptr, backend?.settings_backend_ptr, path))) else { return nil }
        return rv
    }

    /// Creates a new `GSettings` object with the schema specified by
    /// `schema_id` and a given `GSettingsBackend`.
    /// 
    /// Creating a `GSettings` object with a different backend allows accessing
    /// settings from a database other than the usual one. For example, it may make
    /// sense to pass a backend corresponding to the "defaults" settings database on
    /// the system to get a settings object that modifies the system default
    /// settings instead of the settings for this user.
    @inlinable public static func newWith<SettingsBackendT: SettingsBackendProtocol>(backend schema_id: UnsafePointer<gchar>!, backend: SettingsBackendT) -> Settings! {
        guard let rv = Settings(gconstpointer: gconstpointer(g_settings_new_with_backend(schema_id, backend.settings_backend_ptr))) else { return nil }
        return rv
    }

    /// Creates a new `GSettings` object with the schema specified by
    /// `schema_id` and a given `GSettingsBackend` and path.
    /// 
    /// This is a mix of `g_settings_new_with_backend()` and
    /// `g_settings_new_with_path()`.
    @inlinable public static func newWith<SettingsBackendT: SettingsBackendProtocol>(backendAndPath schema_id: UnsafePointer<gchar>!, backend: SettingsBackendT, path: UnsafePointer<gchar>!) -> Settings! {
        guard let rv = Settings(gconstpointer: gconstpointer(g_settings_new_with_backend_and_path(schema_id, backend.settings_backend_ptr, path))) else { return nil }
        return rv
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
    @inlinable public static func newWith(path schema_id: UnsafePointer<gchar>!, path: UnsafePointer<gchar>!) -> Settings! {
        guard let rv = Settings(gconstpointer: gconstpointer(g_settings_new_with_path(schema_id, path))) else { return nil }
        return rv
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: SettingsPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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
    @inlinable func get(property: SettingsPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Settings property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: SettingsPropertyName, value v: GLibObject.Value) {
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
    @inlinable @discardableResult func connect(signal kind: SettingsSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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
    @inlinable var settings_ptr: UnsafeMutablePointer<GSettings>! { return ptr?.assumingMemoryBound(to: GSettings.self) }

    /// Applies any changes that have been made to the settings.  This
    /// function does nothing unless `settings` is in 'delay-apply' mode;
    /// see `g_settings_delay()`.  In the normal case settings are always
    /// applied immediately.
    @inlinable func apply() {
        g_settings_apply(settings_ptr)
    
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
    @inlinable func bind<ObjectT: ObjectProtocol>(key: UnsafePointer<gchar>!, object: ObjectT, property: UnsafePointer<gchar>!, flags: SettingsBindFlags) {
        g_settings_bind(settings_ptr, key, object.object_ptr, property, flags.value)
    
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
    @inlinable func bindWithMapping<ObjectT: ObjectProtocol>(key: UnsafePointer<gchar>!, object: ObjectT, property: UnsafePointer<gchar>!, flags: SettingsBindFlags, getMapping get_mapping: @escaping GSettingsBindGetMapping, setMapping set_mapping: @escaping GSettingsBindSetMapping, userData user_data: gpointer! = nil, destroy: GDestroyNotify?) {
        g_settings_bind_with_mapping(settings_ptr, key, object.object_ptr, property, flags.value, get_mapping, set_mapping, user_data, destroy)
    
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
    @inlinable func bindWritable<ObjectT: ObjectProtocol>(key: UnsafePointer<gchar>!, object: ObjectT, property: UnsafePointer<gchar>!, inverted: Bool) {
        g_settings_bind_writable(settings_ptr, key, object.object_ptr, property, gboolean((inverted) ? 1 : 0))
    
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
    @inlinable func createAction(key: UnsafePointer<gchar>!) -> ActionRef! {
        let rv = ActionRef(gconstpointer: gconstpointer(g_settings_create_action(settings_ptr, key)))
        return rv
    }

    /// Changes the `GSettings` object into 'delay-apply' mode. In this
    /// mode, changes to `settings` are not immediately propagated to the
    /// backend, but kept locally until `g_settings_apply()` is called.
    @inlinable func delay() {
        g_settings_delay(settings_ptr)
    
    }


    // *** get() is not available because it has a varargs (...) parameter!


    /// Gets the value that is stored at `key` in `settings`.
    /// 
    /// A convenience variant of `g_settings_get()` for booleans.
    /// 
    /// It is a programmer error to give a `key` that isn't specified as
    /// having a boolean type in the schema for `settings`.
    @inlinable func getBoolean(key: UnsafePointer<gchar>!) -> Bool {
        let rv = ((g_settings_get_boolean(settings_ptr, key)) != 0)
        return rv
    }

    /// Creates a child settings object which has a base path of
    /// `base-path/`name``, where `base-path` is the base path of
    /// `settings`.
    /// 
    /// The schema for the child settings object must have been declared
    /// in the schema of `settings` using a <child> element.
    @inlinable func getChild(name: UnsafePointer<gchar>!) -> SettingsRef! {
        guard let rv = SettingsRef(gconstpointer: gconstpointer(g_settings_get_child(settings_ptr, name))) else { return nil }
        return rv
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
    @inlinable func getDefaultValue(key: UnsafePointer<gchar>!) -> VariantRef! {
        let rv = VariantRef(gconstpointer: gconstpointer(g_settings_get_default_value(settings_ptr, key)))
        return rv
    }

    /// Gets the value that is stored at `key` in `settings`.
    /// 
    /// A convenience variant of `g_settings_get()` for doubles.
    /// 
    /// It is a programmer error to give a `key` that isn't specified as
    /// having a 'double' type in the schema for `settings`.
    @inlinable func getDouble(key: UnsafePointer<gchar>!) -> Double {
        let rv = Double(g_settings_get_double(settings_ptr, key))
        return rv
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
    @inlinable func getEnum(key: UnsafePointer<gchar>!) -> Int {
        let rv = Int(g_settings_get_enum(settings_ptr, key))
        return rv
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
    @inlinable func getFlags(key: UnsafePointer<gchar>!) -> Int {
        let rv = Int(g_settings_get_flags(settings_ptr, key))
        return rv
    }

    /// Returns whether the `GSettings` object has any unapplied
    /// changes.  This can only be the case if it is in 'delayed-apply' mode.
    @inlinable func getHasUnapplied() -> Bool {
        let rv = ((g_settings_get_has_unapplied(settings_ptr)) != 0)
        return rv
    }

    /// Gets the value that is stored at `key` in `settings`.
    /// 
    /// A convenience variant of `g_settings_get()` for 32-bit integers.
    /// 
    /// It is a programmer error to give a `key` that isn't specified as
    /// having a int32 type in the schema for `settings`.
    @inlinable func getInt(key: UnsafePointer<gchar>!) -> Int {
        let rv = Int(g_settings_get_int(settings_ptr, key))
        return rv
    }

    /// Gets the value that is stored at `key` in `settings`.
    /// 
    /// A convenience variant of `g_settings_get()` for 64-bit integers.
    /// 
    /// It is a programmer error to give a `key` that isn't specified as
    /// having a int64 type in the schema for `settings`.
    @inlinable func getInt64(key: UnsafePointer<gchar>!) -> gint64 {
        let rv = g_settings_get_int64(settings_ptr, key)
        return rv
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
    @inlinable func getMapped(key: UnsafePointer<gchar>!, mapping: @escaping GSettingsGetMapping, userData user_data: gpointer! = nil) -> gpointer! {
        let rv = g_settings_get_mapped(settings_ptr, key, mapping, user_data)
        return rv
    }

    /// Queries the range of a key.
    ///
    /// **get_range is deprecated:**
    /// Use g_settings_schema_key_get_range() instead.
    @available(*, deprecated) @inlinable func getRange(key: UnsafePointer<gchar>!) -> VariantRef! {
        let rv = VariantRef(gconstpointer: gconstpointer(g_settings_get_range(settings_ptr, key)))
        return rv
    }

    /// Gets the value that is stored at `key` in `settings`.
    /// 
    /// A convenience variant of `g_settings_get()` for strings.
    /// 
    /// It is a programmer error to give a `key` that isn't specified as
    /// having a string type in the schema for `settings`.
    @inlinable func getString(key: UnsafePointer<gchar>!) -> String! {
        let rv = g_settings_get_string(settings_ptr, key).map({ String(cString: $0) })
        return rv
    }

    /// A convenience variant of `g_settings_get()` for string arrays.
    /// 
    /// It is a programmer error to give a `key` that isn't specified as
    /// having an array of strings type in the schema for `settings`.
    @inlinable func getStrv(key: UnsafePointer<gchar>!) -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        let rv = g_settings_get_strv(settings_ptr, key)
        return rv
    }

    /// Gets the value that is stored at `key` in `settings`.
    /// 
    /// A convenience variant of `g_settings_get()` for 32-bit unsigned
    /// integers.
    /// 
    /// It is a programmer error to give a `key` that isn't specified as
    /// having a uint32 type in the schema for `settings`.
    @inlinable func getUint(key: UnsafePointer<gchar>!) -> Int {
        let rv = Int(g_settings_get_uint(settings_ptr, key))
        return rv
    }

    /// Gets the value that is stored at `key` in `settings`.
    /// 
    /// A convenience variant of `g_settings_get()` for 64-bit unsigned
    /// integers.
    /// 
    /// It is a programmer error to give a `key` that isn't specified as
    /// having a uint64 type in the schema for `settings`.
    @inlinable func getUint64(key: UnsafePointer<gchar>!) -> guint64 {
        let rv = g_settings_get_uint64(settings_ptr, key)
        return rv
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
    @inlinable func getUserValue(key: UnsafePointer<gchar>!) -> VariantRef! {
        let rv = VariantRef(gconstpointer: gconstpointer(g_settings_get_user_value(settings_ptr, key)))
        return rv
    }

    /// Gets the value that is stored in `settings` for `key`.
    /// 
    /// It is a programmer error to give a `key` that isn't contained in the
    /// schema for `settings`.
    @inlinable func getValue(key: UnsafePointer<gchar>!) -> VariantRef! {
        let rv = VariantRef(gconstpointer: gconstpointer(g_settings_get_value(settings_ptr, key)))
        return rv
    }

    /// Finds out if a key can be written or not
    @inlinable func isWritable(name: UnsafePointer<gchar>!) -> Bool {
        let rv = ((g_settings_is_writable(settings_ptr, name)) != 0)
        return rv
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
    @inlinable func listChildren() -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        let rv = g_settings_list_children(settings_ptr)
        return rv
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
    @available(*, deprecated) @inlinable func listKeys() -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        let rv = g_settings_list_keys(settings_ptr)
        return rv
    }

    /// Checks if the given `value` is of the correct type and within the
    /// permitted range for `key`.
    ///
    /// **range_check is deprecated:**
    /// Use g_settings_schema_key_range_check() instead.
    @available(*, deprecated) @inlinable func rangeCheck<VariantT: VariantProtocol>(key: UnsafePointer<gchar>!, value: VariantT) -> Bool {
        let rv = ((g_settings_range_check(settings_ptr, key, value.variant_ptr)) != 0)
        return rv
    }

    /// Resets `key` to its default value.
    /// 
    /// This call resets the key, as much as possible, to its default value.
    /// That might be the value specified in the schema or the one set by the
    /// administrator.
    @inlinable func reset(key: UnsafePointer<gchar>!) {
        g_settings_reset(settings_ptr, key)
    
    }

    /// Reverts all non-applied changes to the settings.  This function
    /// does nothing unless `settings` is in 'delay-apply' mode; see
    /// `g_settings_delay()`.  In the normal case settings are always applied
    /// immediately.
    /// 
    /// Change notifications will be emitted for affected keys.
    @inlinable func revert() {
        g_settings_revert(settings_ptr)
    
    }


    // *** set() is not available because it has a varargs (...) parameter!


    /// Sets `key` in `settings` to `value`.
    /// 
    /// A convenience variant of `g_settings_set()` for booleans.
    /// 
    /// It is a programmer error to give a `key` that isn't specified as
    /// having a boolean type in the schema for `settings`.
    @inlinable func setBoolean(key: UnsafePointer<gchar>!, value: Bool) -> Bool {
        let rv = ((g_settings_set_boolean(settings_ptr, key, gboolean((value) ? 1 : 0))) != 0)
        return rv
    }

    /// Sets `key` in `settings` to `value`.
    /// 
    /// A convenience variant of `g_settings_set()` for doubles.
    /// 
    /// It is a programmer error to give a `key` that isn't specified as
    /// having a 'double' type in the schema for `settings`.
    @inlinable func setDouble(key: UnsafePointer<gchar>!, value: Double) -> Bool {
        let rv = ((g_settings_set_double(settings_ptr, key, gdouble(value))) != 0)
        return rv
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
    @inlinable func setEnum(key: UnsafePointer<gchar>!, value: Int) -> Bool {
        let rv = ((g_settings_set_enum(settings_ptr, key, gint(value))) != 0)
        return rv
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
    @inlinable func setFlags(key: UnsafePointer<gchar>!, value: Int) -> Bool {
        let rv = ((g_settings_set_flags(settings_ptr, key, guint(value))) != 0)
        return rv
    }

    /// Sets `key` in `settings` to `value`.
    /// 
    /// A convenience variant of `g_settings_set()` for 32-bit integers.
    /// 
    /// It is a programmer error to give a `key` that isn't specified as
    /// having a int32 type in the schema for `settings`.
    @inlinable func setInt(key: UnsafePointer<gchar>!, value: Int) -> Bool {
        let rv = ((g_settings_set_int(settings_ptr, key, gint(value))) != 0)
        return rv
    }

    /// Sets `key` in `settings` to `value`.
    /// 
    /// A convenience variant of `g_settings_set()` for 64-bit integers.
    /// 
    /// It is a programmer error to give a `key` that isn't specified as
    /// having a int64 type in the schema for `settings`.
    @inlinable func setInt64(key: UnsafePointer<gchar>!, value: gint64) -> Bool {
        let rv = ((g_settings_set_int64(settings_ptr, key, value)) != 0)
        return rv
    }

    /// Sets `key` in `settings` to `value`.
    /// 
    /// A convenience variant of `g_settings_set()` for strings.
    /// 
    /// It is a programmer error to give a `key` that isn't specified as
    /// having a string type in the schema for `settings`.
    @inlinable func setString(key: UnsafePointer<gchar>!, value: UnsafePointer<gchar>!) -> Bool {
        let rv = ((g_settings_set_string(settings_ptr, key, value)) != 0)
        return rv
    }

    /// Sets `key` in `settings` to `value`.
    /// 
    /// A convenience variant of `g_settings_set()` for string arrays.  If
    /// `value` is `nil`, then `key` is set to be the empty array.
    /// 
    /// It is a programmer error to give a `key` that isn't specified as
    /// having an array of strings type in the schema for `settings`.
    @inlinable func setStrv(key: UnsafePointer<gchar>!, value: UnsafePointer<UnsafePointer<gchar>?>! = nil) -> Bool {
        let rv = ((g_settings_set_strv(settings_ptr, key, value)) != 0)
        return rv
    }

    /// Sets `key` in `settings` to `value`.
    /// 
    /// A convenience variant of `g_settings_set()` for 32-bit unsigned
    /// integers.
    /// 
    /// It is a programmer error to give a `key` that isn't specified as
    /// having a uint32 type in the schema for `settings`.
    @inlinable func setUint(key: UnsafePointer<gchar>!, value: Int) -> Bool {
        let rv = ((g_settings_set_uint(settings_ptr, key, guint(value))) != 0)
        return rv
    }

    /// Sets `key` in `settings` to `value`.
    /// 
    /// A convenience variant of `g_settings_set()` for 64-bit unsigned
    /// integers.
    /// 
    /// It is a programmer error to give a `key` that isn't specified as
    /// having a uint64 type in the schema for `settings`.
    @inlinable func setUint64(key: UnsafePointer<gchar>!, value: guint64) -> Bool {
        let rv = ((g_settings_set_uint64(settings_ptr, key, value)) != 0)
        return rv
    }

    /// Sets `key` in `settings` to `value`.
    /// 
    /// It is a programmer error to give a `key` that isn't contained in the
    /// schema for `settings` or for `value` to have the incorrect type, per
    /// the schema.
    /// 
    /// If `value` is floating then this function consumes the reference.
    @inlinable func setValue<VariantT: VariantProtocol>(key: UnsafePointer<gchar>!, value: VariantT) -> Bool {
        let rv = ((g_settings_set_value(settings_ptr, key, value.variant_ptr)) != 0)
        return rv
    }
    /// Returns whether the `GSettings` object has any unapplied
    /// changes.  This can only be the case if it is in 'delayed-apply' mode.
    @inlinable var hasUnapplied: Bool {
        /// Returns whether the `GSettings` object has any unapplied
        /// changes.  This can only be the case if it is in 'delayed-apply' mode.
        get {
            let rv = ((g_settings_get_has_unapplied(settings_ptr)) != 0)
            return rv
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = settings_ptr.pointee.parent_instance
            return rv
        }
    }

    @inlinable var priv: SettingsPrivateRef! {
        get {
            let rv = SettingsPrivateRef(gconstpointer: gconstpointer(settings_ptr.pointee.priv))
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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSettingsBackend` instance.
    var settings_backend_ptr: UnsafeMutablePointer<GSettingsBackend>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension SettingsBackendRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSettingsBackend>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSettingsBackend>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSettingsBackend>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSettingsBackend>?) {
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

    /// Reference intialiser for a related type that implements `SettingsBackendProtocol`
    @inlinable init<T: SettingsBackendProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Returns the default `GSettingsBackend`. It is possible to override
    /// the default by setting the `GSETTINGS_BACKEND` environment variable
    /// to the name of a settings backend.
    /// 
    /// The user gets a reference to the backend.
    @inlinable static func getDefault() -> SettingsBackendRef! {
        guard let rv = SettingsBackendRef(gconstpointer: gconstpointer(g_settings_backend_get_default())) else { return nil }
        return rv
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
    @inlinable public init(_ op: UnsafeMutablePointer<GSettingsBackend>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SettingsBackend` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GSettingsBackend>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SettingsBackend` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SettingsBackend` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SettingsBackend` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GSettingsBackend>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SettingsBackend` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GSettingsBackend>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GSettingsBackend`.
    /// i.e., ownership is transferred to the `SettingsBackend` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GSettingsBackend>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `SettingsBackendProtocol`
    /// Will retain `GSettingsBackend`.
    /// - Parameter other: an instance of a related type that implements `SettingsBackendProtocol`
    @inlinable public init<T: SettingsBackendProtocol>(settingsBackend other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }


    /// Returns the default `GSettingsBackend`. It is possible to override
    /// the default by setting the `GSETTINGS_BACKEND` environment variable
    /// to the name of a settings backend.
    /// 
    /// The user gets a reference to the backend.
    @inlinable public static func getDefault() -> SettingsBackend! {
        guard let rv = SettingsBackend(gconstpointer: gconstpointer(g_settings_backend_get_default())) else { return nil }
        return rv
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
    @inlinable @discardableResult func connect(signal kind: SettingsBackendSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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
    @inlinable var settings_backend_ptr: UnsafeMutablePointer<GSettingsBackend>! { return ptr?.assumingMemoryBound(to: GSettingsBackend.self) }

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
    @inlinable func changed(key: UnsafePointer<gchar>!, originTag origin_tag: gpointer! = nil) {
        g_settings_backend_changed(settings_backend_ptr, key, origin_tag)
    
    }

    /// This call is a convenience wrapper.  It gets the list of changes from
    /// `tree`, computes the longest common prefix and calls
    /// `g_settings_backend_changed()`.
    @inlinable func changed<TreeT: TreeProtocol>(tree: TreeT, originTag origin_tag: gpointer! = nil) {
        g_settings_backend_changed_tree(settings_backend_ptr, tree._ptr, origin_tag)
    
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
    @inlinable func keysChanged(path: UnsafePointer<gchar>!, items: UnsafePointer<UnsafePointer<gchar>?>!, originTag origin_tag: gpointer! = nil) {
        g_settings_backend_keys_changed(settings_backend_ptr, path, items, origin_tag)
    
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
    @inlinable func pathChanged(path: UnsafePointer<gchar>!, originTag origin_tag: gpointer! = nil) {
        g_settings_backend_path_changed(settings_backend_ptr, path, origin_tag)
    
    }

    /// Signals that the writability of all keys below a given path may have
    /// changed.
    /// 
    /// Since GSettings performs no locking operations for itself, this call
    /// will always be made in response to external events.
    @inlinable func pathWritableChanged(path: UnsafePointer<gchar>!) {
        g_settings_backend_path_writable_changed(settings_backend_ptr, path)
    
    }

    /// Signals that the writability of a single key has possibly changed.
    /// 
    /// Since GSettings performs no locking operations for itself, this call
    /// will always be made in response to external events.
    @inlinable func writableChanged(key: UnsafePointer<gchar>!) {
        g_settings_backend_writable_changed(settings_backend_ptr, key)
    
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = settings_backend_ptr.pointee.parent_instance
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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSimpleAction` instance.
    var simple_action_ptr: UnsafeMutablePointer<GSimpleAction>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension SimpleActionRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSimpleAction>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSimpleAction>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSimpleAction>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSimpleAction>?) {
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

    /// Reference intialiser for a related type that implements `SimpleActionProtocol`
    @inlinable init<T: SimpleActionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new action.
    /// 
    /// The created action is stateless. See `g_simple_action_new_stateful()` to create
    /// an action that has state.
    @inlinable init<VariantTypeT: VariantTypeProtocol>( name: UnsafePointer<gchar>!, parameterType parameter_type: VariantTypeT? = nil) {
        let rv = g_simple_action_new(name, parameter_type?.variant_type_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new stateful action.
    /// 
    /// All future state values must have the same `GVariantType` as the initial
    /// `state`.
    /// 
    /// If the `state` `GVariant` is floating, it is consumed.
    @inlinable init<VariantT: VariantProtocol, VariantTypeT: VariantTypeProtocol>(stateful name: UnsafePointer<gchar>!, parameterType parameter_type: VariantTypeT? = nil, state: VariantT) {
        let rv = g_simple_action_new_stateful(name, parameter_type?.variant_type_ptr, state.variant_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new stateful action.
    /// 
    /// All future state values must have the same `GVariantType` as the initial
    /// `state`.
    /// 
    /// If the `state` `GVariant` is floating, it is consumed.
    @inlinable static func new<VariantT: VariantProtocol, VariantTypeT: VariantTypeProtocol>(stateful name: UnsafePointer<gchar>!, parameterType parameter_type: VariantTypeT? = nil, state: VariantT) -> SimpleActionRef! {
        guard let rv = SimpleActionRef(gconstpointer: gconstpointer(g_simple_action_new_stateful(name, parameter_type?.variant_type_ptr, state.variant_ptr))) else { return nil }
        return rv
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
    @inlinable public init(_ op: UnsafeMutablePointer<GSimpleAction>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SimpleAction` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GSimpleAction>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SimpleAction` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SimpleAction` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SimpleAction` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GSimpleAction>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SimpleAction` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GSimpleAction>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GSimpleAction`.
    /// i.e., ownership is transferred to the `SimpleAction` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GSimpleAction>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `SimpleActionProtocol`
    /// Will retain `GSimpleAction`.
    /// - Parameter other: an instance of a related type that implements `SimpleActionProtocol`
    @inlinable public init<T: SimpleActionProtocol>(simpleAction other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new action.
    /// 
    /// The created action is stateless. See `g_simple_action_new_stateful()` to create
    /// an action that has state.
    @inlinable public init<VariantTypeT: VariantTypeProtocol>( name: UnsafePointer<gchar>!, parameterType parameter_type: VariantTypeT? = nil) {
        let rv = g_simple_action_new(name, parameter_type?.variant_type_ptr)
        super.init(gpointer: (rv))
    }

    /// Creates a new stateful action.
    /// 
    /// All future state values must have the same `GVariantType` as the initial
    /// `state`.
    /// 
    /// If the `state` `GVariant` is floating, it is consumed.
    @inlinable public init<VariantT: VariantProtocol, VariantTypeT: VariantTypeProtocol>(stateful name: UnsafePointer<gchar>!, parameterType parameter_type: VariantTypeT? = nil, state: VariantT) {
        let rv = g_simple_action_new_stateful(name, parameter_type?.variant_type_ptr, state.variant_ptr)
        super.init(gpointer: (rv))
    }

    /// Creates a new stateful action.
    /// 
    /// All future state values must have the same `GVariantType` as the initial
    /// `state`.
    /// 
    /// If the `state` `GVariant` is floating, it is consumed.
    @inlinable public static func new<VariantT: VariantProtocol, VariantTypeT: VariantTypeProtocol>(stateful name: UnsafePointer<gchar>!, parameterType parameter_type: VariantTypeT? = nil, state: VariantT) -> SimpleAction! {
        guard let rv = SimpleAction(gconstpointer: gconstpointer(g_simple_action_new_stateful(name, parameter_type?.variant_type_ptr, state.variant_ptr))) else { return nil }
        return rv
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: SimpleActionPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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
    @inlinable func get(property: SimpleActionPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a SimpleAction property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: SimpleActionPropertyName, value v: GLibObject.Value) {
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
    @inlinable @discardableResult func connect(signal kind: SimpleActionSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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
    @inlinable var simple_action_ptr: UnsafeMutablePointer<GSimpleAction>! { return ptr?.assumingMemoryBound(to: GSimpleAction.self) }

    /// Sets the action as enabled or not.
    /// 
    /// An action must be enabled in order to be activated or in order to
    /// have its state changed from outside callers.
    /// 
    /// This should only be called by the implementor of the action.  Users
    /// of the action should not attempt to modify its enabled flag.
    @inlinable func set(enabled: Bool) {
        g_simple_action_set_enabled(simple_action_ptr, gboolean((enabled) ? 1 : 0))
    
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
    @inlinable func setState<VariantT: VariantProtocol>(value: VariantT) {
        g_simple_action_set_state(simple_action_ptr, value.variant_ptr)
    
    }

    /// Sets the state hint for the action.
    /// 
    /// See `g_action_get_state_hint()` for more information about
    /// action state hints.
    @inlinable func set<VariantT: VariantProtocol>(stateHint state_hint: VariantT? = nil) {
        g_simple_action_set_state_hint(simple_action_ptr, state_hint?.variant_ptr)
    
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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSimpleActionGroup` instance.
    var simple_action_group_ptr: UnsafeMutablePointer<GSimpleActionGroup>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension SimpleActionGroupRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSimpleActionGroup>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSimpleActionGroup>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSimpleActionGroup>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSimpleActionGroup>?) {
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

    /// Reference intialiser for a related type that implements `SimpleActionGroupProtocol`
    @inlinable init<T: SimpleActionGroupProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new, empty, `GSimpleActionGroup`.
    @inlinable init() {
        let rv = g_simple_action_group_new()
        ptr = UnsafeMutableRawPointer(rv)
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
    @inlinable public init(_ op: UnsafeMutablePointer<GSimpleActionGroup>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SimpleActionGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GSimpleActionGroup>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SimpleActionGroup` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SimpleActionGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SimpleActionGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GSimpleActionGroup>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SimpleActionGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GSimpleActionGroup>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GSimpleActionGroup`.
    /// i.e., ownership is transferred to the `SimpleActionGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GSimpleActionGroup>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `SimpleActionGroupProtocol`
    /// Will retain `GSimpleActionGroup`.
    /// - Parameter other: an instance of a related type that implements `SimpleActionGroupProtocol`
    @inlinable public init<T: SimpleActionGroupProtocol>(simpleActionGroup other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new, empty, `GSimpleActionGroup`.
    @inlinable public init() {
        let rv = g_simple_action_group_new()
        super.init(gpointer: (rv))
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
    @inlinable @discardableResult func connect(signal kind: SimpleActionGroupSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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
    @inlinable var simple_action_group_ptr: UnsafeMutablePointer<GSimpleActionGroup>! { return ptr?.assumingMemoryBound(to: GSimpleActionGroup.self) }

    /// A convenience function for creating multiple `GSimpleAction` instances
    /// and adding them to the action group.
    ///
    /// **add_entries is deprecated:**
    /// Use g_action_map_add_action_entries()
    @available(*, deprecated) @inlinable func add(entries: UnsafePointer<GActionEntry>!, nEntries n_entries: Int, userData user_data: gpointer! = nil) {
        g_simple_action_group_add_entries(simple_action_group_ptr, entries, gint(n_entries), user_data)
    
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
    @available(*, deprecated) @inlinable func insert<ActionT: ActionProtocol>(action: ActionT) {
        g_simple_action_group_insert(simple_action_group_ptr, action.action_ptr)
    
    }

    /// Looks up the action with the name `action_name` in the group.
    /// 
    /// If no such action exists, returns `nil`.
    ///
    /// **lookup is deprecated:**
    /// Use g_action_map_lookup_action()
    @available(*, deprecated) @inlinable func lookup(actionName action_name: UnsafePointer<gchar>!) -> ActionRef! {
        let rv = ActionRef(gconstpointer: gconstpointer(g_simple_action_group_lookup(simple_action_group_ptr, action_name)))
        return rv
    }

    /// Removes the named action from the action group.
    /// 
    /// If no action of this name is in the group then nothing happens.
    ///
    /// **remove is deprecated:**
    /// Use g_action_map_remove_action()
    @available(*, deprecated) @inlinable func remove(actionName action_name: UnsafePointer<gchar>!) {
        g_simple_action_group_remove(simple_action_group_ptr, action_name)
    
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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSimpleAsyncResult` instance.
    var simple_async_result_ptr: UnsafeMutablePointer<GSimpleAsyncResult>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension SimpleAsyncResultRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSimpleAsyncResult>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSimpleAsyncResult>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSimpleAsyncResult>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSimpleAsyncResult>?) {
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

    /// Reference intialiser for a related type that implements `SimpleAsyncResultProtocol`
    @inlinable init<T: SimpleAsyncResultProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleAsyncResultProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleAsyncResultProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleAsyncResultProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleAsyncResultProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleAsyncResultProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
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
    @available(*, deprecated) @inlinable init<ObjectT: ObjectProtocol>( source_object: ObjectT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil, sourceTag source_tag: gpointer! = nil) {
        let rv = g_simple_async_result_new(source_object?.object_ptr, callback, user_data, source_tag)
        ptr = UnsafeMutableRawPointer(rv)
    }


    // *** newError() is not available because it has a varargs (...) parameter!


    /// Creates a `GSimpleAsyncResult` from an error condition.
    ///
    /// **new_from_error is deprecated:**
    /// Use g_task_new() and g_task_return_error() instead.
    @available(*, deprecated) @inlinable init<GLibErrorT: ErrorProtocol, ObjectT: ObjectProtocol>(error source_object: ObjectT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil, error: GLibErrorT) {
        let rv = g_simple_async_result_new_from_error(source_object?.object_ptr, callback, user_data, error.error_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GSimpleAsyncResult` from an error condition, and takes over the
    /// caller's ownership of `error`, so the caller does not need to free it anymore.
    ///
    /// **new_take_error is deprecated:**
    /// Use g_task_new() and g_task_return_error() instead.
    @available(*, deprecated) @inlinable init<GLibErrorT: ErrorProtocol, ObjectT: ObjectProtocol>(take_error source_object: ObjectT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil, error: GLibErrorT) {
        let rv = g_simple_async_result_new_take_error(source_object?.object_ptr, callback, user_data, error.error_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    // *** newError() is not available because it has a varargs (...) parameter!


    /// Creates a `GSimpleAsyncResult` from an error condition.
    ///
    /// **new_from_error is deprecated:**
    /// Use g_task_new() and g_task_return_error() instead.
    @available(*, deprecated) @inlinable static func newFrom<GLibErrorT: ErrorProtocol, ObjectT: ObjectProtocol>(error source_object: ObjectT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil, error: GLibErrorT) -> SimpleAsyncResultRef! {
        guard let rv = SimpleAsyncResultRef(gconstpointer: gconstpointer(g_simple_async_result_new_from_error(source_object?.object_ptr, callback, user_data, error.error_ptr))) else { return nil }
        return rv
    }

    /// Creates a `GSimpleAsyncResult` from an error condition, and takes over the
    /// caller's ownership of `error`, so the caller does not need to free it anymore.
    ///
    /// **new_take_error is deprecated:**
    /// Use g_task_new() and g_task_return_error() instead.
    @available(*, deprecated) @inlinable static func newTakeError<GLibErrorT: ErrorProtocol, ObjectT: ObjectProtocol>(take_error source_object: ObjectT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil, error: GLibErrorT) -> SimpleAsyncResultRef! {
        guard let rv = SimpleAsyncResultRef(gconstpointer: gconstpointer(g_simple_async_result_new_take_error(source_object?.object_ptr, callback, user_data, error.error_ptr))) else { return nil }
        return rv
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
    @inlinable public init(_ op: UnsafeMutablePointer<GSimpleAsyncResult>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SimpleAsyncResult` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GSimpleAsyncResult>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SimpleAsyncResult` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SimpleAsyncResult` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SimpleAsyncResult` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GSimpleAsyncResult>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SimpleAsyncResult` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GSimpleAsyncResult>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GSimpleAsyncResult`.
    /// i.e., ownership is transferred to the `SimpleAsyncResult` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GSimpleAsyncResult>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `SimpleAsyncResultProtocol`
    /// Will retain `GSimpleAsyncResult`.
    /// - Parameter other: an instance of a related type that implements `SimpleAsyncResultProtocol`
    @inlinable public init<T: SimpleAsyncResultProtocol>(simpleAsyncResult other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleAsyncResultProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleAsyncResultProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleAsyncResultProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleAsyncResultProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleAsyncResultProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleAsyncResultProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleAsyncResultProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleAsyncResultProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
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
    @available(*, deprecated) @inlinable public init<ObjectT: ObjectProtocol>( source_object: ObjectT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil, sourceTag source_tag: gpointer! = nil) {
        let rv = g_simple_async_result_new(source_object?.object_ptr, callback, user_data, source_tag)
        super.init(gpointer: (rv))
    }


    // *** newError() is not available because it has a varargs (...) parameter!


    /// Creates a `GSimpleAsyncResult` from an error condition.
    ///
    /// **new_from_error is deprecated:**
    /// Use g_task_new() and g_task_return_error() instead.
    @available(*, deprecated) @inlinable public init<GLibErrorT: ErrorProtocol, ObjectT: ObjectProtocol>(error source_object: ObjectT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil, error: GLibErrorT) {
        let rv = g_simple_async_result_new_from_error(source_object?.object_ptr, callback, user_data, error.error_ptr)
        super.init(gpointer: (rv))
    }

    /// Creates a `GSimpleAsyncResult` from an error condition, and takes over the
    /// caller's ownership of `error`, so the caller does not need to free it anymore.
    ///
    /// **new_take_error is deprecated:**
    /// Use g_task_new() and g_task_return_error() instead.
    @available(*, deprecated) @inlinable public init<GLibErrorT: ErrorProtocol, ObjectT: ObjectProtocol>(take_error source_object: ObjectT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil, error: GLibErrorT) {
        let rv = g_simple_async_result_new_take_error(source_object?.object_ptr, callback, user_data, error.error_ptr)
        super.init(gpointer: (rv))
    }


    // *** newError() is not available because it has a varargs (...) parameter!


    /// Creates a `GSimpleAsyncResult` from an error condition.
    ///
    /// **new_from_error is deprecated:**
    /// Use g_task_new() and g_task_return_error() instead.
    @available(*, deprecated) @inlinable public static func newFrom<GLibErrorT: ErrorProtocol, ObjectT: ObjectProtocol>(error source_object: ObjectT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil, error: GLibErrorT) -> SimpleAsyncResult! {
        guard let rv = SimpleAsyncResult(gconstpointer: gconstpointer(g_simple_async_result_new_from_error(source_object?.object_ptr, callback, user_data, error.error_ptr))) else { return nil }
        return rv
    }

    /// Creates a `GSimpleAsyncResult` from an error condition, and takes over the
    /// caller's ownership of `error`, so the caller does not need to free it anymore.
    ///
    /// **new_take_error is deprecated:**
    /// Use g_task_new() and g_task_return_error() instead.
    @available(*, deprecated) @inlinable public static func newTakeError<GLibErrorT: ErrorProtocol, ObjectT: ObjectProtocol>(take_error source_object: ObjectT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil, error: GLibErrorT) -> SimpleAsyncResult! {
        guard let rv = SimpleAsyncResult(gconstpointer: gconstpointer(g_simple_async_result_new_take_error(source_object?.object_ptr, callback, user_data, error.error_ptr))) else { return nil }
        return rv
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
    @inlinable @discardableResult func connect(signal kind: SimpleAsyncResultSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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
    @inlinable var simple_async_result_ptr: UnsafeMutablePointer<GSimpleAsyncResult>! { return ptr?.assumingMemoryBound(to: GSimpleAsyncResult.self) }

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
    @available(*, deprecated) @inlinable func complete() {
        g_simple_async_result_complete(simple_async_result_ptr)
    
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
    @available(*, deprecated) @inlinable func completeInIdle() {
        g_simple_async_result_complete_in_idle(simple_async_result_ptr)
    
    }

    /// Gets the operation result boolean from within the asynchronous result.
    ///
    /// **get_op_res_gboolean is deprecated:**
    /// Use #GTask and g_task_propagate_boolean() instead.
    @available(*, deprecated) @inlinable func getOpResGboolean() -> Bool {
        let rv = ((g_simple_async_result_get_op_res_gboolean(simple_async_result_ptr)) != 0)
        return rv
    }

    /// Gets a pointer result as returned by the asynchronous function.
    ///
    /// **get_op_res_gpointer is deprecated:**
    /// Use #GTask and g_task_propagate_pointer() instead.
    @available(*, deprecated) @inlinable func getOpResGpointer() -> gpointer! {
        let rv = g_simple_async_result_get_op_res_gpointer(simple_async_result_ptr)
        return rv
    }

    /// Gets a gssize from the asynchronous result.
    ///
    /// **get_op_res_gssize is deprecated:**
    /// Use #GTask and g_task_propagate_int() instead.
    @available(*, deprecated) @inlinable func getOpResGssize() -> gssize {
        let rv = g_simple_async_result_get_op_res_gssize(simple_async_result_ptr)
        return rv
    }

    /// Gets the source tag for the `GSimpleAsyncResult`.
    ///
    /// **get_source_tag is deprecated:**
    /// Use #GTask and g_task_get_source_tag() instead.
    @available(*, deprecated) @inlinable func getSourceTag() -> gpointer! {
        let rv = g_simple_async_result_get_source_tag(simple_async_result_ptr)
        return rv
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
    @available(*, deprecated) @inlinable func propagateError() throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_simple_async_result_propagate_error(simple_async_result_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
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
    @available(*, deprecated) @inlinable func runInThread<CancellableT: CancellableProtocol>(`func`: GSimpleAsyncThreadFunc?, ioPriority io_priority: Int, cancellable: CancellableT? = nil) {
        g_simple_async_result_run_in_thread(simple_async_result_ptr, `func`, gint(io_priority), cancellable?.cancellable_ptr)
    
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
    @available(*, deprecated) @inlinable func set<CancellableT: CancellableProtocol>(checkCancellable check_cancellable: CancellableT? = nil) {
        g_simple_async_result_set_check_cancellable(simple_async_result_ptr, check_cancellable?.cancellable_ptr)
    
    }


    // *** setError() is not available because it has a varargs (...) parameter!


    /// Sets an error within the asynchronous result without a `GError`.
    /// Unless writing a binding, see `g_simple_async_result_set_error()`.
    ///
    /// **set_error_va is deprecated:**
    /// Use #GTask and g_task_return_error() instead.
    @available(*, deprecated) @inlinable func setErrorVa(domain: GQuark, code: Int, format: UnsafePointer<CChar>!, args: CVaListPointer) {
        g_simple_async_result_set_error_va(simple_async_result_ptr, domain, gint(code), format, args)
    
    }

    /// Sets the result from a `GError`.
    ///
    /// **set_from_error is deprecated:**
    /// Use #GTask and g_task_return_error() instead.
    @available(*, deprecated) @inlinable func setFrom<GLibErrorT: ErrorProtocol>(error: GLibErrorT) {
        g_simple_async_result_set_from_error(simple_async_result_ptr, error.error_ptr)
    
    }

    /// Sets whether to handle cancellation within the asynchronous operation.
    /// 
    /// This function has nothing to do with
    /// `g_simple_async_result_set_check_cancellable()`.  It only refers to the
    /// `GCancellable` passed to `g_simple_async_result_run_in_thread()`.
    ///
    /// **set_handle_cancellation is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated) @inlinable func set(handleCancellation handle_cancellation: Bool) {
        g_simple_async_result_set_handle_cancellation(simple_async_result_ptr, gboolean((handle_cancellation) ? 1 : 0))
    
    }

    /// Sets the operation result to a boolean within the asynchronous result.
    ///
    /// **set_op_res_gboolean is deprecated:**
    /// Use #GTask and g_task_return_boolean() instead.
    @available(*, deprecated) @inlinable func setOpResGboolean(opRes op_res: Bool) {
        g_simple_async_result_set_op_res_gboolean(simple_async_result_ptr, gboolean((op_res) ? 1 : 0))
    
    }

    /// Sets the operation result within the asynchronous result to a pointer.
    ///
    /// **set_op_res_gpointer is deprecated:**
    /// Use #GTask and g_task_return_pointer() instead.
    @available(*, deprecated) @inlinable func setOpResGpointer(opRes op_res: gpointer! = nil, destroyOpRes destroy_op_res: GDestroyNotify?) {
        g_simple_async_result_set_op_res_gpointer(simple_async_result_ptr, op_res, destroy_op_res)
    
    }

    /// Sets the operation result within the asynchronous result to
    /// the given `op_res`.
    ///
    /// **set_op_res_gssize is deprecated:**
    /// Use #GTask and g_task_return_int() instead.
    @available(*, deprecated) @inlinable func setOpResGssize(opRes op_res: gssize) {
        g_simple_async_result_set_op_res_gssize(simple_async_result_ptr, op_res)
    
    }

    /// Sets the result from `error`, and takes over the caller's ownership
    /// of `error`, so the caller does not need to free it any more.
    ///
    /// **take_error is deprecated:**
    /// Use #GTask and g_task_return_error() instead.
    @available(*, deprecated) @inlinable func take<GLibErrorT: ErrorProtocol>(error: GLibErrorT) {
        g_simple_async_result_take_error(simple_async_result_ptr, error.error_ptr)
    
    }
    /// Gets the operation result boolean from within the asynchronous result.
    ///
    /// **get_op_res_gboolean is deprecated:**
    /// Use #GTask and g_task_propagate_boolean() instead.
    @inlinable var opResGboolean: Bool {
        /// Gets the operation result boolean from within the asynchronous result.
        ///
        /// **get_op_res_gboolean is deprecated:**
        /// Use #GTask and g_task_propagate_boolean() instead.
        @available(*, deprecated) get {
            let rv = ((g_simple_async_result_get_op_res_gboolean(simple_async_result_ptr)) != 0)
            return rv
        }
        /// Sets the operation result to a boolean within the asynchronous result.
        ///
        /// **set_op_res_gboolean is deprecated:**
        /// Use #GTask and g_task_return_boolean() instead.
        @available(*, deprecated) nonmutating set {
            g_simple_async_result_set_op_res_gboolean(simple_async_result_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets a pointer result as returned by the asynchronous function.
    ///
    /// **get_op_res_gpointer is deprecated:**
    /// Use #GTask and g_task_propagate_pointer() instead.
    @inlinable var opResGpointer: gpointer! {
        /// Gets a pointer result as returned by the asynchronous function.
        ///
        /// **get_op_res_gpointer is deprecated:**
        /// Use #GTask and g_task_propagate_pointer() instead.
        @available(*, deprecated) get {
            let rv = g_simple_async_result_get_op_res_gpointer(simple_async_result_ptr)
            return rv
        }
    }

    /// Gets a gssize from the asynchronous result.
    ///
    /// **get_op_res_gssize is deprecated:**
    /// Use #GTask and g_task_propagate_int() instead.
    @inlinable var opResGssize: gssize {
        /// Gets a gssize from the asynchronous result.
        ///
        /// **get_op_res_gssize is deprecated:**
        /// Use #GTask and g_task_propagate_int() instead.
        @available(*, deprecated) get {
            let rv = g_simple_async_result_get_op_res_gssize(simple_async_result_ptr)
            return rv
        }
        /// Sets the operation result within the asynchronous result to
        /// the given `op_res`.
        ///
        /// **set_op_res_gssize is deprecated:**
        /// Use #GTask and g_task_return_int() instead.
        @available(*, deprecated) nonmutating set {
            g_simple_async_result_set_op_res_gssize(simple_async_result_ptr, newValue)
        }
    }

    /// Gets the source tag for the `GSimpleAsyncResult`.
    ///
    /// **get_source_tag is deprecated:**
    /// Use #GTask and g_task_get_source_tag() instead.
    @inlinable var sourceTag: gpointer! {
        /// Gets the source tag for the `GSimpleAsyncResult`.
        ///
        /// **get_source_tag is deprecated:**
        /// Use #GTask and g_task_get_source_tag() instead.
        @available(*, deprecated) get {
            let rv = g_simple_async_result_get_source_tag(simple_async_result_ptr)
            return rv
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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSimpleIOStream` instance.
    var simple_io_stream_ptr: UnsafeMutablePointer<GSimpleIOStream>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension SimpleIOStreamRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSimpleIOStream>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSimpleIOStream>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSimpleIOStream>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSimpleIOStream>?) {
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

    /// Reference intialiser for a related type that implements `SimpleIOStreamProtocol`
    @inlinable init<T: SimpleIOStreamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleIOStreamProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleIOStreamProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleIOStreamProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleIOStreamProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleIOStreamProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GSimpleIOStream` wrapping `input_stream` and `output_stream`.
    /// See also `GIOStream`.
    @inlinable init<InputStreamT: InputStreamProtocol, OutputStreamT: OutputStreamProtocol>( input_stream: InputStreamT, outputStream output_stream: OutputStreamT) {
        let rv = g_simple_io_stream_new(input_stream.input_stream_ptr, output_stream.output_stream_ptr)
        ptr = UnsafeMutableRawPointer(rv)
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
    @inlinable public init(_ op: UnsafeMutablePointer<GSimpleIOStream>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SimpleIOStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GSimpleIOStream>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SimpleIOStream` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SimpleIOStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SimpleIOStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GSimpleIOStream>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SimpleIOStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GSimpleIOStream>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GSimpleIOStream`.
    /// i.e., ownership is transferred to the `SimpleIOStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GSimpleIOStream>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `SimpleIOStreamProtocol`
    /// Will retain `GSimpleIOStream`.
    /// - Parameter other: an instance of a related type that implements `SimpleIOStreamProtocol`
    @inlinable public init<T: SimpleIOStreamProtocol>(simpleIOStream other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleIOStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleIOStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleIOStreamProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleIOStreamProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleIOStreamProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleIOStreamProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleIOStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleIOStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GSimpleIOStream` wrapping `input_stream` and `output_stream`.
    /// See also `GIOStream`.
    @inlinable public init<InputStreamT: InputStreamProtocol, OutputStreamT: OutputStreamProtocol>( input_stream: InputStreamT, outputStream output_stream: OutputStreamT) {
        let rv = g_simple_io_stream_new(input_stream.input_stream_ptr, output_stream.output_stream_ptr)
        super.init(gpointer: (rv))
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: SimpleIOStreamPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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
    @inlinable func get(property: SimpleIOStreamPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a SimpleIOStream property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: SimpleIOStreamPropertyName, value v: GLibObject.Value) {
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
    @inlinable @discardableResult func connect(signal kind: SimpleIOStreamSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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
    @inlinable var simple_io_stream_ptr: UnsafeMutablePointer<GSimpleIOStream>! { return ptr?.assumingMemoryBound(to: GSimpleIOStream.self) }



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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSimplePermission` instance.
    var simple_permission_ptr: UnsafeMutablePointer<GSimplePermission>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension SimplePermissionRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSimplePermission>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSimplePermission>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSimplePermission>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSimplePermission>?) {
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

    /// Reference intialiser for a related type that implements `SimplePermissionProtocol`
    @inlinable init<T: SimplePermissionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimplePermissionProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimplePermissionProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimplePermissionProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimplePermissionProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimplePermissionProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GPermission` instance that represents an action that is
    /// either always or never allowed.
    @inlinable init( allowed: Bool) {
        let rv = g_simple_permission_new(gboolean((allowed) ? 1 : 0))
        ptr = UnsafeMutableRawPointer(rv)
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
    @inlinable public init(_ op: UnsafeMutablePointer<GSimplePermission>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SimplePermission` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GSimplePermission>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SimplePermission` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SimplePermission` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SimplePermission` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GSimplePermission>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SimplePermission` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GSimplePermission>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GSimplePermission`.
    /// i.e., ownership is transferred to the `SimplePermission` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GSimplePermission>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `SimplePermissionProtocol`
    /// Will retain `GSimplePermission`.
    /// - Parameter other: an instance of a related type that implements `SimplePermissionProtocol`
    @inlinable public init<T: SimplePermissionProtocol>(simplePermission other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimplePermissionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimplePermissionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimplePermissionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimplePermissionProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimplePermissionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimplePermissionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimplePermissionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimplePermissionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GPermission` instance that represents an action that is
    /// either always or never allowed.
    @inlinable public init( allowed: Bool) {
        let rv = g_simple_permission_new(gboolean((allowed) ? 1 : 0))
        super.init(gpointer: (rv))
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: SimplePermissionPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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
    @inlinable func get(property: SimplePermissionPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a SimplePermission property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: SimplePermissionPropertyName, value v: GLibObject.Value) {
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
    @inlinable @discardableResult func connect(signal kind: SimplePermissionSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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
    @inlinable var simple_permission_ptr: UnsafeMutablePointer<GSimplePermission>! { return ptr?.assumingMemoryBound(to: GSimplePermission.self) }



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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSimpleProxyResolver` instance.
    var simple_proxy_resolver_ptr: UnsafeMutablePointer<GSimpleProxyResolver>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension SimpleProxyResolverRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSimpleProxyResolver>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSimpleProxyResolver>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSimpleProxyResolver>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSimpleProxyResolver>?) {
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

    /// Reference intialiser for a related type that implements `SimpleProxyResolverProtocol`
    @inlinable init<T: SimpleProxyResolverProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
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
    @inlinable public init(_ op: UnsafeMutablePointer<GSimpleProxyResolver>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SimpleProxyResolver` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GSimpleProxyResolver>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SimpleProxyResolver` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SimpleProxyResolver` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SimpleProxyResolver` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GSimpleProxyResolver>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SimpleProxyResolver` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GSimpleProxyResolver>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GSimpleProxyResolver`.
    /// i.e., ownership is transferred to the `SimpleProxyResolver` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GSimpleProxyResolver>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `SimpleProxyResolverProtocol`
    /// Will retain `GSimpleProxyResolver`.
    /// - Parameter other: an instance of a related type that implements `SimpleProxyResolverProtocol`
    @inlinable public init<T: SimpleProxyResolverProtocol>(simpleProxyResolver other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: SimpleProxyResolverPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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
    @inlinable func get(property: SimpleProxyResolverPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a SimpleProxyResolver property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: SimpleProxyResolverPropertyName, value v: GLibObject.Value) {
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
    @inlinable @discardableResult func connect(signal kind: SimpleProxyResolverSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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
    @inlinable var simple_proxy_resolver_ptr: UnsafeMutablePointer<GSimpleProxyResolver>! { return ptr?.assumingMemoryBound(to: GSimpleProxyResolver.self) }

    /// Sets the default proxy on `resolver`, to be used for any URIs that
    /// don't match `GSimpleProxyResolver:ignore`-hosts or a proxy set
    /// via `g_simple_proxy_resolver_set_uri_proxy()`.
    /// 
    /// If `default_proxy` starts with "socks://",
    /// `GSimpleProxyResolver` will treat it as referring to all three of
    /// the socks5, socks4a, and socks4 proxy types.
    @inlinable func set(defaultProxy default_proxy: UnsafePointer<gchar>!) {
        g_simple_proxy_resolver_set_default_proxy(simple_proxy_resolver_ptr, default_proxy)
    
    }

    /// Sets the list of ignored hosts.
    /// 
    /// See `GSimpleProxyResolver:ignore`-hosts for more details on how the
    /// `ignore_hosts` argument is interpreted.
    @inlinable func set(ignoreHosts ignore_hosts: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>!) {
        g_simple_proxy_resolver_set_ignore_hosts(simple_proxy_resolver_ptr, ignore_hosts)
    
    }

    /// Adds a URI-scheme-specific proxy to `resolver`; URIs whose scheme
    /// matches `uri_scheme` (and which don't match
    /// `GSimpleProxyResolver:ignore`-hosts) will be proxied via `proxy`.
    /// 
    /// As with `GSimpleProxyResolver:default`-proxy, if `proxy` starts with
    /// "socks://", `GSimpleProxyResolver` will treat it
    /// as referring to all three of the socks5, socks4a, and socks4 proxy
    /// types.
    @inlinable func setURIProxy(uriScheme uri_scheme: UnsafePointer<gchar>!, proxy: UnsafePointer<gchar>!) {
        g_simple_proxy_resolver_set_uri_proxy(simple_proxy_resolver_ptr, uri_scheme, proxy)
    
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = simple_proxy_resolver_ptr.pointee.parent_instance
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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSocket` instance.
    var socket_ptr: UnsafeMutablePointer<GSocket>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension SocketRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSocket>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSocket>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSocket>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSocket>?) {
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

    /// Reference intialiser for a related type that implements `SocketProtocol`
    @inlinable init<T: SocketProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
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
    @inlinable init( family: GSocketFamily, type: GSocketType, `protocol`: GSocketProtocol) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_socket_new(family, type, `protocol`, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
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
    @inlinable init(fd: Int) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_socket_new_from_fd(gint(fd), &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
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
    @inlinable static func newFrom(fd: Int) throws -> SocketRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = SocketRef(gconstpointer: gconstpointer(g_socket_new_from_fd(gint(fd), &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
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
    @inlinable public init(_ op: UnsafeMutablePointer<GSocket>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Socket` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GSocket>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Socket` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Socket` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Socket` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GSocket>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Socket` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GSocket>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GSocket`.
    /// i.e., ownership is transferred to the `Socket` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GSocket>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `SocketProtocol`
    /// Will retain `GSocket`.
    /// - Parameter other: an instance of a related type that implements `SocketProtocol`
    @inlinable public init<T: SocketProtocol>(socket other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
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
    @inlinable public init( family: GSocketFamily, type: GSocketType, `protocol`: GSocketProtocol) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_socket_new(family, type, `protocol`, &error)
        if let error = error { throw GLibError(error) }
        super.init(gpointer: (rv))
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
    @inlinable public init(fd: Int) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_socket_new_from_fd(gint(fd), &error)
        if let error = error { throw GLibError(error) }
        super.init(gpointer: (rv))
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
    @inlinable public static func newFrom(fd: Int) throws -> Socket! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = Socket(gconstpointer: gconstpointer(g_socket_new_from_fd(gint(fd), &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: SocketPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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
    @inlinable func get(property: SocketPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Socket property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: SocketPropertyName, value v: GLibObject.Value) {
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
    @inlinable @discardableResult func connect(signal kind: SocketSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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
    @inlinable var socket_ptr: UnsafeMutablePointer<GSocket>! { return ptr?.assumingMemoryBound(to: GSocket.self) }

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
    @inlinable func accept<CancellableT: CancellableProtocol>(cancellable: CancellableT? = nil) throws -> SocketRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = SocketRef(gconstpointer: gconstpointer(g_socket_accept(socket_ptr, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
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
    @inlinable func bind<SocketAddressT: SocketAddressProtocol>(address: SocketAddressT, allowReuse allow_reuse: Bool) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_socket_bind(socket_ptr, address.socket_address_ptr, gboolean((allow_reuse) ? 1 : 0), &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Checks and resets the pending connect error for the socket.
    /// This is used to check for errors when `g_socket_connect()` is
    /// used in non-blocking mode.
    @inlinable func checkConnectResult() throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_socket_check_connect_result(socket_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func close() throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_socket_close(socket_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func conditionCheck(condition: IOCondition) -> IOCondition {
        let rv = IOCondition(g_socket_condition_check(socket_ptr, condition.value))
        return rv
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
    @inlinable func conditionTimedWait<CancellableT: CancellableProtocol>(condition: IOCondition, timeoutUs timeout_us: gint64, cancellable: CancellableT? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_socket_condition_timed_wait(socket_ptr, condition.value, timeout_us, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func conditionWait<CancellableT: CancellableProtocol>(condition: IOCondition, cancellable: CancellableT? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_socket_condition_wait(socket_ptr, condition.value, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func connect<CancellableT: CancellableProtocol, SocketAddressT: SocketAddressProtocol>(address: SocketAddressT, cancellable: CancellableT? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_socket_connect(socket_ptr, address.socket_address_ptr, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Creates a `GSocketConnection` subclass of the right type for
    /// `socket`.
    @inlinable func connectionFactoryCreateConnection() -> SocketConnectionRef! {
        let rv = SocketConnectionRef(gconstpointer: gconstpointer(g_socket_connection_factory_create_connection(socket_ptr)))
        return rv
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
    @inlinable func createSource<CancellableT: CancellableProtocol>(condition: IOCondition, cancellable: CancellableT? = nil) -> SourceRef! {
        let rv = SourceRef(gconstpointer: gconstpointer(g_socket_create_source(socket_ptr, condition.value, cancellable?.cancellable_ptr)))
        return rv
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
    @inlinable func getAvailableBytes() -> gssize {
        let rv = g_socket_get_available_bytes(socket_ptr)
        return rv
    }

    /// Gets the blocking mode of the socket. For details on blocking I/O,
    /// see `g_socket_set_blocking()`.
    @inlinable func getBlocking() -> Bool {
        let rv = ((g_socket_get_blocking(socket_ptr)) != 0)
        return rv
    }

    /// Gets the broadcast setting on `socket`; if `true`,
    /// it is possible to send packets to broadcast
    /// addresses.
    @inlinable func getBroadcast() -> Bool {
        let rv = ((g_socket_get_broadcast(socket_ptr)) != 0)
        return rv
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
    @inlinable func getCredentials() throws -> CredentialsRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = CredentialsRef(gconstpointer: gconstpointer(g_socket_get_credentials(socket_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Gets the socket family of the socket.
    @inlinable func getFamily() -> GSocketFamily {
        let rv = g_socket_get_family(socket_ptr)
        return rv
    }

    /// Returns the underlying OS socket object. On unix this
    /// is a socket file descriptor, and on Windows this is
    /// a Winsock2 SOCKET handle. This may be useful for
    /// doing platform specific or otherwise unusual operations
    /// on the socket.
    @inlinable func getFd() -> Int {
        let rv = Int(g_socket_get_fd(socket_ptr))
        return rv
    }

    /// Gets the keepalive mode of the socket. For details on this,
    /// see `g_socket_set_keepalive()`.
    @inlinable func getKeepalive() -> Bool {
        let rv = ((g_socket_get_keepalive(socket_ptr)) != 0)
        return rv
    }

    /// Gets the listen backlog setting of the socket. For details on this,
    /// see `g_socket_set_listen_backlog()`.
    @inlinable func getListenBacklog() -> Int {
        let rv = Int(g_socket_get_listen_backlog(socket_ptr))
        return rv
    }

    /// Try to get the local address of a bound socket. This is only
    /// useful if the socket has been bound to a local address,
    /// either explicitly or implicitly when connecting.
    @inlinable func getLocalAddress() throws -> SocketAddressRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = SocketAddressRef(gconstpointer: gconstpointer(g_socket_get_local_address(socket_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Gets the multicast loopback setting on `socket`; if `true` (the
    /// default), outgoing multicast packets will be looped back to
    /// multicast listeners on the same host.
    @inlinable func getMulticastLoopback() -> Bool {
        let rv = ((g_socket_get_multicast_loopback(socket_ptr)) != 0)
        return rv
    }

    /// Gets the multicast time-to-live setting on `socket`; see
    /// `g_socket_set_multicast_ttl()` for more details.
    @inlinable func getMulticastTtl() -> Int {
        let rv = Int(g_socket_get_multicast_ttl(socket_ptr))
        return rv
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
    @inlinable func getOption(level: Int, optname: Int, value: UnsafeMutablePointer<gint>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_socket_get_option(socket_ptr, gint(level), gint(optname), value, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Gets the socket protocol id the socket was created with.
    /// In case the protocol is unknown, -1 is returned.
    @inlinable func getProtocol() -> GSocketProtocol {
        let rv = g_socket_get_protocol(socket_ptr)
        return rv
    }

    /// Try to get the remote address of a connected socket. This is only
    /// useful for connection oriented sockets that have been connected.
    @inlinable func getRemoteAddress() throws -> SocketAddressRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = SocketAddressRef(gconstpointer: gconstpointer(g_socket_get_remote_address(socket_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Gets the socket type of the socket.
    @inlinable func getSocketType() -> GSocketType {
        let rv = g_socket_get_socket_type(socket_ptr)
        return rv
    }

    /// Gets the timeout setting of the socket. For details on this, see
    /// `g_socket_set_timeout()`.
    @inlinable func getTimeout() -> Int {
        let rv = Int(g_socket_get_timeout(socket_ptr))
        return rv
    }

    /// Gets the unicast time-to-live setting on `socket`; see
    /// `g_socket_set_ttl()` for more details.
    @inlinable func getTtl() -> Int {
        let rv = Int(g_socket_get_ttl(socket_ptr))
        return rv
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
    @inlinable func joinMulticast<InetAddressT: InetAddressProtocol>(group: InetAddressT, sourceSpecific source_specific: Bool, iface: UnsafePointer<gchar>? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_socket_join_multicast_group(socket_ptr, group.inet_address_ptr, gboolean((source_specific) ? 1 : 0), iface, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func joinMulticastGroupSsm<InetAddressT: InetAddressProtocol>(group: InetAddressT, sourceSpecific source_specific: InetAddressT? = nil, iface: UnsafePointer<gchar>? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_socket_join_multicast_group_ssm(socket_ptr, group.inet_address_ptr, source_specific?.inet_address_ptr, iface, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func leaveMulticast<InetAddressT: InetAddressProtocol>(group: InetAddressT, sourceSpecific source_specific: Bool, iface: UnsafePointer<gchar>? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_socket_leave_multicast_group(socket_ptr, group.inet_address_ptr, gboolean((source_specific) ? 1 : 0), iface, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Removes `socket` from the multicast group defined by `group`, `iface`,
    /// and `source_specific` (which must all have the same values they had
    /// when you joined the group).
    /// 
    /// `socket` remains bound to its address and port, and can still receive
    /// unicast messages after calling this.
    @inlinable func leaveMulticastGroupSsm<InetAddressT: InetAddressProtocol>(group: InetAddressT, sourceSpecific source_specific: InetAddressT? = nil, iface: UnsafePointer<gchar>? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_socket_leave_multicast_group_ssm(socket_ptr, group.inet_address_ptr, source_specific?.inet_address_ptr, iface, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Marks the socket as a server socket, i.e. a socket that is used
    /// to accept incoming requests using `g_socket_accept()`.
    /// 
    /// Before calling this the socket must be bound to a local address using
    /// `g_socket_bind()`.
    /// 
    /// To set the maximum amount of outstanding clients, use
    /// `g_socket_set_listen_backlog()`.
    @inlinable func listen() throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_socket_listen(socket_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func receive<CancellableT: CancellableProtocol>(buffer: UnsafeMutablePointer<gchar>!, size: Int, cancellable: CancellableT? = nil) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_socket_receive(socket_ptr, buffer, gsize(size), cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Receive data (up to `size` bytes) from a socket.
    /// 
    /// If `address` is non-`nil` then `address` will be set equal to the
    /// source address of the received packet.
    /// `address` is owned by the caller.
    /// 
    /// See `g_socket_receive()` for additional information.
    @inlinable func receiveFrom<CancellableT: CancellableProtocol>(address: UnsafeMutablePointer<UnsafeMutablePointer<GSocketAddress>?>! = nil, buffer: UnsafeMutablePointer<gchar>!, size: Int, cancellable: CancellableT? = nil) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_socket_receive_from(socket_ptr, address, buffer, gsize(size), cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func receiveMessage<CancellableT: CancellableProtocol>(address: UnsafeMutablePointer<UnsafeMutablePointer<GSocketAddress>?>! = nil, vectors: UnsafeMutablePointer<GInputVector>!, numVectors num_vectors: Int, messages: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<GSocketControlMessage>?>?>! = nil, numMessages num_messages: UnsafeMutablePointer<gint>!, flags: UnsafeMutablePointer<gint>!, cancellable: CancellableT? = nil) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_socket_receive_message(socket_ptr, address, vectors, gint(num_vectors), messages, num_messages, flags, cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func receive<CancellableT: CancellableProtocol>(messages: UnsafeMutablePointer<GInputMessage>!, numMessages num_messages: Int, flags: Int, cancellable: CancellableT? = nil) throws -> Int {
        var error: UnsafeMutablePointer<GError>?
        let rv = Int(g_socket_receive_messages(socket_ptr, messages, guint(num_messages), gint(flags), cancellable?.cancellable_ptr, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// This behaves exactly the same as `g_socket_receive()`, except that
    /// the choice of blocking or non-blocking behavior is determined by
    /// the `blocking` argument rather than by `socket`'s properties.
    @inlinable func receiveWithBlocking<CancellableT: CancellableProtocol>(buffer: UnsafeMutablePointer<gchar>!, size: Int, blocking: Bool, cancellable: CancellableT? = nil) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_socket_receive_with_blocking(socket_ptr, buffer, gsize(size), gboolean((blocking) ? 1 : 0), cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func send<CancellableT: CancellableProtocol>(buffer: UnsafePointer<gchar>!, size: Int, cancellable: CancellableT? = nil) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_socket_send(socket_ptr, buffer, gsize(size), cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func sendMessage<CancellableT: CancellableProtocol, SocketAddressT: SocketAddressProtocol>(address: SocketAddressT? = nil, vectors: UnsafeMutablePointer<GOutputVector>!, numVectors num_vectors: Int, messages: UnsafeMutablePointer<UnsafeMutablePointer<GSocketControlMessage>?>! = nil, numMessages num_messages: Int, flags: Int, cancellable: CancellableT? = nil) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_socket_send_message(socket_ptr, address?.socket_address_ptr, vectors, gint(num_vectors), messages, gint(num_messages), gint(flags), cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// This behaves exactly the same as `g_socket_send_message()`, except that
    /// the choice of timeout behavior is determined by the `timeout_us` argument
    /// rather than by `socket`'s properties.
    /// 
    /// On error `G_POLLABLE_RETURN_FAILED` is returned and `error` is set accordingly, or
    /// if the socket is currently not writable `G_POLLABLE_RETURN_WOULD_BLOCK` is
    /// returned. `bytes_written` will contain 0 in both cases.
    @inlinable func sendMessageWithTimeout<CancellableT: CancellableProtocol, SocketAddressT: SocketAddressProtocol>(address: SocketAddressT? = nil, vectors: UnsafePointer<GOutputVector>!, numVectors num_vectors: Int, messages: UnsafeMutablePointer<UnsafeMutablePointer<GSocketControlMessage>?>! = nil, numMessages num_messages: Int, flags: Int, timeoutUs timeout_us: gint64, bytesWritten bytes_written: UnsafeMutablePointer<gsize>! = nil, cancellable: CancellableT? = nil) throws -> GPollableReturn {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_socket_send_message_with_timeout(socket_ptr, address?.socket_address_ptr, vectors, gint(num_vectors), messages, gint(num_messages), gint(flags), timeout_us, bytes_written, cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func send<CancellableT: CancellableProtocol>(messages: UnsafeMutablePointer<GOutputMessage>!, numMessages num_messages: Int, flags: Int, cancellable: CancellableT? = nil) throws -> Int {
        var error: UnsafeMutablePointer<GError>?
        let rv = Int(g_socket_send_messages(socket_ptr, messages, guint(num_messages), gint(flags), cancellable?.cancellable_ptr, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Tries to send `size` bytes from `buffer` to `address`. If `address` is
    /// `nil` then the message is sent to the default receiver (set by
    /// `g_socket_connect()`).
    /// 
    /// See `g_socket_send()` for additional information.
    @inlinable func sendTo<CancellableT: CancellableProtocol, SocketAddressT: SocketAddressProtocol>(address: SocketAddressT? = nil, buffer: UnsafePointer<gchar>!, size: Int, cancellable: CancellableT? = nil) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_socket_send_to(socket_ptr, address?.socket_address_ptr, buffer, gsize(size), cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// This behaves exactly the same as `g_socket_send()`, except that
    /// the choice of blocking or non-blocking behavior is determined by
    /// the `blocking` argument rather than by `socket`'s properties.
    @inlinable func sendWithBlocking<CancellableT: CancellableProtocol>(buffer: UnsafePointer<gchar>!, size: Int, blocking: Bool, cancellable: CancellableT? = nil) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_socket_send_with_blocking(socket_ptr, buffer, gsize(size), gboolean((blocking) ? 1 : 0), cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func set(blocking: Bool) {
        g_socket_set_blocking(socket_ptr, gboolean((blocking) ? 1 : 0))
    
    }

    /// Sets whether `socket` should allow sending to broadcast addresses.
    /// This is `false` by default.
    @inlinable func set(broadcast: Bool) {
        g_socket_set_broadcast(socket_ptr, gboolean((broadcast) ? 1 : 0))
    
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
    @inlinable func set(keepalive: Bool) {
        g_socket_set_keepalive(socket_ptr, gboolean((keepalive) ? 1 : 0))
    
    }

    /// Sets the maximum number of outstanding connections allowed
    /// when listening on this socket. If more clients than this are
    /// connecting to the socket and the application is not handling them
    /// on time then the new connections will be refused.
    /// 
    /// Note that this must be called before `g_socket_listen()` and has no
    /// effect if called after that.
    @inlinable func setListen(backlog: Int) {
        g_socket_set_listen_backlog(socket_ptr, gint(backlog))
    
    }

    /// Sets whether outgoing multicast packets will be received by sockets
    /// listening on that multicast address on the same host. This is `true`
    /// by default.
    @inlinable func setMulticast(loopback: Bool) {
        g_socket_set_multicast_loopback(socket_ptr, gboolean((loopback) ? 1 : 0))
    
    }

    /// Sets the time-to-live for outgoing multicast datagrams on `socket`.
    /// By default, this is 1, meaning that multicast packets will not leave
    /// the local network.
    @inlinable func setMulticast(ttl: Int) {
        g_socket_set_multicast_ttl(socket_ptr, guint(ttl))
    
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
    @inlinable func setOption(level: Int, optname: Int, value: Int) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_socket_set_option(socket_ptr, gint(level), gint(optname), gint(value), &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func set(timeout: Int) {
        g_socket_set_timeout(socket_ptr, guint(timeout))
    
    }

    /// Sets the time-to-live for outgoing unicast packets on `socket`.
    /// By default the platform-specific default value is used.
    @inlinable func set(ttl: Int) {
        g_socket_set_ttl(socket_ptr, guint(ttl))
    
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
    @inlinable func shutdown(shutdownRead shutdown_read: Bool, shutdownWrite shutdown_write: Bool) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_socket_shutdown(socket_ptr, gboolean((shutdown_read) ? 1 : 0), gboolean((shutdown_write) ? 1 : 0), &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func speaksIpv4() -> Bool {
        let rv = ((g_socket_speaks_ipv4(socket_ptr)) != 0)
        return rv
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
    @inlinable var availableBytes: gssize {
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
            let rv = g_socket_get_available_bytes(socket_ptr)
            return rv
        }
    }

    @inlinable var blocking: Bool {
        /// Gets the blocking mode of the socket. For details on blocking I/O,
        /// see `g_socket_set_blocking()`.
        get {
            let rv = ((g_socket_get_blocking(socket_ptr)) != 0)
            return rv
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
            g_socket_set_blocking(socket_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Whether the socket should allow sending to broadcast addresses.
    @inlinable var broadcast: Bool {
        /// Gets the broadcast setting on `socket`; if `true`,
        /// it is possible to send packets to broadcast
        /// addresses.
        get {
            let rv = ((g_socket_get_broadcast(socket_ptr)) != 0)
            return rv
        }
        /// Sets whether `socket` should allow sending to broadcast addresses.
        /// This is `false` by default.
        nonmutating set {
            g_socket_set_broadcast(socket_ptr, gboolean((newValue) ? 1 : 0))
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
    @inlinable var credentials: CredentialsRef! {
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
        let rv = CredentialsRef(gconstpointer: gconstpointer(g_socket_get_credentials(socket_ptr, &error)))
        g_log(messagePtr: error?.pointee.message, level: .error)
            return rv
        }
    }

    @inlinable var family: GSocketFamily {
        /// Gets the socket family of the socket.
        get {
            let rv = g_socket_get_family(socket_ptr)
            return rv
        }
    }

    @inlinable var fd: Int {
        /// Returns the underlying OS socket object. On unix this
        /// is a socket file descriptor, and on Windows this is
        /// a Winsock2 SOCKET handle. This may be useful for
        /// doing platform specific or otherwise unusual operations
        /// on the socket.
        get {
            let rv = Int(g_socket_get_fd(socket_ptr))
            return rv
        }
    }

    /// Checks whether a socket is closed.
    @inlinable var isClosed: Bool {
        /// Checks whether a socket is closed.
        get {
            let rv = ((g_socket_is_closed(socket_ptr)) != 0)
            return rv
        }
    }

    /// Check whether the socket is connected. This is only useful for
    /// connection-oriented sockets.
    /// 
    /// If using `g_socket_shutdown()`, this function will return `true` until the
    /// socket has been shut down for reading and writing. If you do a non-blocking
    /// connect, this function will not return `true` until after you call
    /// `g_socket_check_connect_result()`.
    @inlinable var isConnected: Bool {
        /// Check whether the socket is connected. This is only useful for
        /// connection-oriented sockets.
        /// 
        /// If using `g_socket_shutdown()`, this function will return `true` until the
        /// socket has been shut down for reading and writing. If you do a non-blocking
        /// connect, this function will not return `true` until after you call
        /// `g_socket_check_connect_result()`.
        get {
            let rv = ((g_socket_is_connected(socket_ptr)) != 0)
            return rv
        }
    }

    @inlinable var keepalive: Bool {
        /// Gets the keepalive mode of the socket. For details on this,
        /// see `g_socket_set_keepalive()`.
        get {
            let rv = ((g_socket_get_keepalive(socket_ptr)) != 0)
            return rv
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
            g_socket_set_keepalive(socket_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the listen backlog setting of the socket. For details on this,
    /// see `g_socket_set_listen_backlog()`.
    @inlinable var listenBacklog: Int {
        /// Gets the listen backlog setting of the socket. For details on this,
        /// see `g_socket_set_listen_backlog()`.
        get {
            let rv = Int(g_socket_get_listen_backlog(socket_ptr))
            return rv
        }
        /// Sets the maximum number of outstanding connections allowed
        /// when listening on this socket. If more clients than this are
        /// connecting to the socket and the application is not handling them
        /// on time then the new connections will be refused.
        /// 
        /// Note that this must be called before `g_socket_listen()` and has no
        /// effect if called after that.
        nonmutating set {
            g_socket_set_listen_backlog(socket_ptr, gint(newValue))
        }
    }

    /// Try to get the local address of a bound socket. This is only
    /// useful if the socket has been bound to a local address,
    /// either explicitly or implicitly when connecting.
    @inlinable var localAddress: SocketAddressRef! {
        /// Try to get the local address of a bound socket. This is only
        /// useful if the socket has been bound to a local address,
        /// either explicitly or implicitly when connecting.
        get {
            var error: UnsafeMutablePointer<GError>?
        let rv = SocketAddressRef(gconstpointer: gconstpointer(g_socket_get_local_address(socket_ptr, &error)))
        g_log(messagePtr: error?.pointee.message, level: .error)
            return rv
        }
    }

    /// Gets the multicast loopback setting on `socket`; if `true` (the
    /// default), outgoing multicast packets will be looped back to
    /// multicast listeners on the same host.
    @inlinable var multicastLoopback: Bool {
        /// Gets the multicast loopback setting on `socket`; if `true` (the
        /// default), outgoing multicast packets will be looped back to
        /// multicast listeners on the same host.
        get {
            let rv = ((g_socket_get_multicast_loopback(socket_ptr)) != 0)
            return rv
        }
        /// Sets whether outgoing multicast packets will be received by sockets
        /// listening on that multicast address on the same host. This is `true`
        /// by default.
        nonmutating set {
            g_socket_set_multicast_loopback(socket_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the multicast time-to-live setting on `socket`; see
    /// `g_socket_set_multicast_ttl()` for more details.
    @inlinable var multicastTtl: Int {
        /// Gets the multicast time-to-live setting on `socket`; see
        /// `g_socket_set_multicast_ttl()` for more details.
        get {
            let rv = Int(g_socket_get_multicast_ttl(socket_ptr))
            return rv
        }
        /// Sets the time-to-live for outgoing multicast datagrams on `socket`.
        /// By default, this is 1, meaning that multicast packets will not leave
        /// the local network.
        nonmutating set {
            g_socket_set_multicast_ttl(socket_ptr, guint(newValue))
        }
    }

    @inlinable var `protocol`: GSocketProtocol {
        /// Gets the socket protocol id the socket was created with.
        /// In case the protocol is unknown, -1 is returned.
        get {
            let rv = g_socket_get_protocol(socket_ptr)
            return rv
        }
    }

    /// Try to get the remote address of a connected socket. This is only
    /// useful for connection oriented sockets that have been connected.
    @inlinable var remoteAddress: SocketAddressRef! {
        /// Try to get the remote address of a connected socket. This is only
        /// useful for connection oriented sockets that have been connected.
        get {
            var error: UnsafeMutablePointer<GError>?
        let rv = SocketAddressRef(gconstpointer: gconstpointer(g_socket_get_remote_address(socket_ptr, &error)))
        g_log(messagePtr: error?.pointee.message, level: .error)
            return rv
        }
    }

    /// Gets the socket type of the socket.
    @inlinable var socketType: GSocketType {
        /// Gets the socket type of the socket.
        get {
            let rv = g_socket_get_socket_type(socket_ptr)
            return rv
        }
    }

    /// The timeout in seconds on socket I/O
    @inlinable var timeout: Int {
        /// Gets the timeout setting of the socket. For details on this, see
        /// `g_socket_set_timeout()`.
        get {
            let rv = Int(g_socket_get_timeout(socket_ptr))
            return rv
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
            g_socket_set_timeout(socket_ptr, guint(newValue))
        }
    }

    /// Time-to-live for outgoing unicast packets
    @inlinable var ttl: Int {
        /// Gets the unicast time-to-live setting on `socket`; see
        /// `g_socket_set_ttl()` for more details.
        get {
            let rv = Int(g_socket_get_ttl(socket_ptr))
            return rv
        }
        /// Sets the time-to-live for outgoing unicast packets on `socket`.
        /// By default the platform-specific default value is used.
        nonmutating set {
            g_socket_set_ttl(socket_ptr, guint(newValue))
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = socket_ptr.pointee.parent_instance
            return rv
        }
    }

    @inlinable var priv: SocketPrivateRef! {
        get {
            let rv = SocketPrivateRef(gconstpointer: gconstpointer(socket_ptr.pointee.priv))
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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSocketAddress` instance.
    var socket_address_ptr: UnsafeMutablePointer<GSocketAddress>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension SocketAddressRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSocketAddress>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSocketAddress>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSocketAddress>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSocketAddress>?) {
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

    /// Reference intialiser for a related type that implements `SocketAddressProtocol`
    @inlinable init<T: SocketAddressProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a `GSocketAddress` subclass corresponding to the native
    /// struct sockaddr `native`.
    @inlinable init(native: gpointer!, len: Int) {
        let rv = g_socket_address_new_from_native(native, gsize(len))
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a `GSocketAddress` subclass corresponding to the native
    /// struct sockaddr `native`.
    @inlinable static func newFrom(native: gpointer!, len: Int) -> SocketAddressRef! {
        guard let rv = SocketAddressRef(gconstpointer: gconstpointer(g_socket_address_new_from_native(native, gsize(len)))) else { return nil }
        return rv
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
    @inlinable public init(_ op: UnsafeMutablePointer<GSocketAddress>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketAddress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GSocketAddress>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketAddress` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketAddress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketAddress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GSocketAddress>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketAddress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GSocketAddress>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GSocketAddress`.
    /// i.e., ownership is transferred to the `SocketAddress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GSocketAddress>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `SocketAddressProtocol`
    /// Will retain `GSocketAddress`.
    /// - Parameter other: an instance of a related type that implements `SocketAddressProtocol`
    @inlinable public init<T: SocketAddressProtocol>(socketAddress other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a `GSocketAddress` subclass corresponding to the native
    /// struct sockaddr `native`.
    @inlinable public init(native: gpointer!, len: Int) {
        let rv = g_socket_address_new_from_native(native, gsize(len))
        super.init(gpointer: (rv))
    }

    /// Creates a `GSocketAddress` subclass corresponding to the native
    /// struct sockaddr `native`.
    @inlinable public static func newFrom(native: gpointer!, len: Int) -> SocketAddress! {
        guard let rv = SocketAddress(gconstpointer: gconstpointer(g_socket_address_new_from_native(native, gsize(len)))) else { return nil }
        return rv
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: SocketAddressPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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
    @inlinable func get(property: SocketAddressPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a SocketAddress property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: SocketAddressPropertyName, value v: GLibObject.Value) {
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
    @inlinable @discardableResult func connect(signal kind: SocketAddressSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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
    @inlinable var socket_address_ptr: UnsafeMutablePointer<GSocketAddress>! { return ptr?.assumingMemoryBound(to: GSocketAddress.self) }

    /// Gets the socket family type of `address`.
    @inlinable func getFamily() -> GSocketFamily {
        let rv = g_socket_address_get_family(socket_address_ptr)
        return rv
    }

    /// Gets the size of `address`'s native struct sockaddr.
    /// You can use this to allocate memory to pass to
    /// `g_socket_address_to_native()`.
    @inlinable func getNativeSize() -> gssize {
        let rv = g_socket_address_get_native_size(socket_address_ptr)
        return rv
    }

    /// Converts a `GSocketAddress` to a native struct sockaddr, which can
    /// be passed to low-level functions like `connect()` or `bind()`.
    /// 
    /// If not enough space is available, a `G_IO_ERROR_NO_SPACE` error
    /// is returned. If the address type is not known on the system
    /// then a `G_IO_ERROR_NOT_SUPPORTED` error is returned.
    @inlinable func toNative(dest: gpointer! = nil, destlen: Int) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_socket_address_to_native(socket_address_ptr, dest, gsize(destlen), &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    @inlinable var family: GSocketFamily {
        /// Gets the socket family type of `address`.
        get {
            let rv = g_socket_address_get_family(socket_address_ptr)
            return rv
        }
    }

    /// Gets the size of `address`'s native struct sockaddr.
    /// You can use this to allocate memory to pass to
    /// `g_socket_address_to_native()`.
    @inlinable var nativeSize: gssize {
        /// Gets the size of `address`'s native struct sockaddr.
        /// You can use this to allocate memory to pass to
        /// `g_socket_address_to_native()`.
        get {
            let rv = g_socket_address_get_native_size(socket_address_ptr)
            return rv
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = socket_address_ptr.pointee.parent_instance
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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSocketAddressEnumerator` instance.
    var socket_address_enumerator_ptr: UnsafeMutablePointer<GSocketAddressEnumerator>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension SocketAddressEnumeratorRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSocketAddressEnumerator>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSocketAddressEnumerator>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSocketAddressEnumerator>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSocketAddressEnumerator>?) {
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

    /// Reference intialiser for a related type that implements `SocketAddressEnumeratorProtocol`
    @inlinable init<T: SocketAddressEnumeratorProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressEnumeratorProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressEnumeratorProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressEnumeratorProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressEnumeratorProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressEnumeratorProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
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
    @inlinable public init(_ op: UnsafeMutablePointer<GSocketAddressEnumerator>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketAddressEnumerator` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GSocketAddressEnumerator>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketAddressEnumerator` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketAddressEnumerator` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketAddressEnumerator` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GSocketAddressEnumerator>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketAddressEnumerator` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GSocketAddressEnumerator>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GSocketAddressEnumerator`.
    /// i.e., ownership is transferred to the `SocketAddressEnumerator` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GSocketAddressEnumerator>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `SocketAddressEnumeratorProtocol`
    /// Will retain `GSocketAddressEnumerator`.
    /// - Parameter other: an instance of a related type that implements `SocketAddressEnumeratorProtocol`
    @inlinable public init<T: SocketAddressEnumeratorProtocol>(socketAddressEnumerator other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressEnumeratorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressEnumeratorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressEnumeratorProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressEnumeratorProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressEnumeratorProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressEnumeratorProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressEnumeratorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressEnumeratorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
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
    @inlinable @discardableResult func connect(signal kind: SocketAddressEnumeratorSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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
    @inlinable var socket_address_enumerator_ptr: UnsafeMutablePointer<GSocketAddressEnumerator>! { return ptr?.assumingMemoryBound(to: GSocketAddressEnumerator.self) }

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
    @inlinable func next<CancellableT: CancellableProtocol>(cancellable: CancellableT? = nil) throws -> SocketAddressRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = SocketAddressRef(gconstpointer: gconstpointer(g_socket_address_enumerator_next(socket_address_enumerator_ptr, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronously retrieves the next `GSocketAddress` from `enumerator`
    /// and then calls `callback`, which must call
    /// `g_socket_address_enumerator_next_finish()` to get the result.
    /// 
    /// It is an error to call this multiple times before the previous callback has finished.
    @inlinable func nextAsync<CancellableT: CancellableProtocol>(cancellable: CancellableT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil) {
        g_socket_address_enumerator_next_async(socket_address_enumerator_ptr, cancellable?.cancellable_ptr, callback, user_data)
    
    }

    /// Retrieves the result of a completed call to
    /// `g_socket_address_enumerator_next_async()`. See
    /// `g_socket_address_enumerator_next()` for more information about
    /// error handling.
    @inlinable func nextFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> SocketAddressRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = SocketAddressRef(gconstpointer: gconstpointer(g_socket_address_enumerator_next_finish(socket_address_enumerator_ptr, result.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSocketClient` instance.
    var socket_client_ptr: UnsafeMutablePointer<GSocketClient>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension SocketClientRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSocketClient>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSocketClient>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSocketClient>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSocketClient>?) {
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

    /// Reference intialiser for a related type that implements `SocketClientProtocol`
    @inlinable init<T: SocketClientProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GSocketClient` with the default options.
    @inlinable init() {
        let rv = g_socket_client_new()
        ptr = UnsafeMutableRawPointer(rv)
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
    @inlinable public init(_ op: UnsafeMutablePointer<GSocketClient>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketClient` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GSocketClient>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketClient` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketClient` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketClient` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GSocketClient>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketClient` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GSocketClient>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GSocketClient`.
    /// i.e., ownership is transferred to the `SocketClient` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GSocketClient>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `SocketClientProtocol`
    /// Will retain `GSocketClient`.
    /// - Parameter other: an instance of a related type that implements `SocketClientProtocol`
    @inlinable public init<T: SocketClientProtocol>(socketClient other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GSocketClient` with the default options.
    @inlinable public init() {
        let rv = g_socket_client_new()
        super.init(gpointer: (rv))
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: SocketClientPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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
    @inlinable func get(property: SocketClientPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a SocketClient property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: SocketClientPropertyName, value v: GLibObject.Value) {
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
    @inlinable @discardableResult func connect(signal kind: SocketClientSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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
    @inlinable var socket_client_ptr: UnsafeMutablePointer<GSocketClient>! { return ptr?.assumingMemoryBound(to: GSocketClient.self) }

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
    @inlinable func addApplicationProxy(`protocol`: UnsafePointer<gchar>!) {
        g_socket_client_add_application_proxy(socket_client_ptr, `protocol`)
    
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
    @inlinable func connect<CancellableT: CancellableProtocol, SocketConnectableT: SocketConnectableProtocol>(connectable: SocketConnectableT, cancellable: CancellableT? = nil) throws -> SocketConnectionRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = SocketConnectionRef(gconstpointer: gconstpointer(g_socket_client_connect(socket_client_ptr, connectable.socket_connectable_ptr, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// This is the asynchronous version of `g_socket_client_connect()`.
    /// 
    /// When the operation is finished `callback` will be
    /// called. You can then call `g_socket_client_connect_finish()` to get
    /// the result of the operation.
    @inlinable func connectAsync<CancellableT: CancellableProtocol, SocketConnectableT: SocketConnectableProtocol>(connectable: SocketConnectableT, cancellable: CancellableT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil) {
        g_socket_client_connect_async(socket_client_ptr, connectable.socket_connectable_ptr, cancellable?.cancellable_ptr, callback, user_data)
    
    }

    /// Finishes an async connect operation. See `g_socket_client_connect_async()`
    @inlinable func connectFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> SocketConnectionRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = SocketConnectionRef(gconstpointer: gconstpointer(g_socket_client_connect_finish(socket_client_ptr, result.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func connectToHost<CancellableT: CancellableProtocol>(hostAndPort host_and_port: UnsafePointer<gchar>!, defaultPort default_port: guint16, cancellable: CancellableT? = nil) throws -> SocketConnectionRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = SocketConnectionRef(gconstpointer: gconstpointer(g_socket_client_connect_to_host(socket_client_ptr, host_and_port, default_port, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// This is the asynchronous version of `g_socket_client_connect_to_host()`.
    /// 
    /// When the operation is finished `callback` will be
    /// called. You can then call `g_socket_client_connect_to_host_finish()` to get
    /// the result of the operation.
    @inlinable func connectToHostAsync<CancellableT: CancellableProtocol>(hostAndPort host_and_port: UnsafePointer<gchar>!, defaultPort default_port: guint16, cancellable: CancellableT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil) {
        g_socket_client_connect_to_host_async(socket_client_ptr, host_and_port, default_port, cancellable?.cancellable_ptr, callback, user_data)
    
    }

    /// Finishes an async connect operation. See `g_socket_client_connect_to_host_async()`
    @inlinable func connectToHostFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> SocketConnectionRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = SocketConnectionRef(gconstpointer: gconstpointer(g_socket_client_connect_to_host_finish(socket_client_ptr, result.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func connectToService<CancellableT: CancellableProtocol>(domain: UnsafePointer<gchar>!, service: UnsafePointer<gchar>!, cancellable: CancellableT? = nil) throws -> SocketConnectionRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = SocketConnectionRef(gconstpointer: gconstpointer(g_socket_client_connect_to_service(socket_client_ptr, domain, service, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// This is the asynchronous version of
    /// `g_socket_client_connect_to_service()`.
    @inlinable func connectToServiceAsync<CancellableT: CancellableProtocol>(domain: UnsafePointer<gchar>!, service: UnsafePointer<gchar>!, cancellable: CancellableT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil) {
        g_socket_client_connect_to_service_async(socket_client_ptr, domain, service, cancellable?.cancellable_ptr, callback, user_data)
    
    }

    /// Finishes an async connect operation. See `g_socket_client_connect_to_service_async()`
    @inlinable func connectToServiceFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> SocketConnectionRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = SocketConnectionRef(gconstpointer: gconstpointer(g_socket_client_connect_to_service_finish(socket_client_ptr, result.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func connectTo<CancellableT: CancellableProtocol>(uri: UnsafePointer<gchar>!, defaultPort default_port: guint16, cancellable: CancellableT? = nil) throws -> SocketConnectionRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = SocketConnectionRef(gconstpointer: gconstpointer(g_socket_client_connect_to_uri(socket_client_ptr, uri, default_port, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// This is the asynchronous version of `g_socket_client_connect_to_uri()`.
    /// 
    /// When the operation is finished `callback` will be
    /// called. You can then call `g_socket_client_connect_to_uri_finish()` to get
    /// the result of the operation.
    @inlinable func connectToURIAsync<CancellableT: CancellableProtocol>(uri: UnsafePointer<gchar>!, defaultPort default_port: guint16, cancellable: CancellableT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil) {
        g_socket_client_connect_to_uri_async(socket_client_ptr, uri, default_port, cancellable?.cancellable_ptr, callback, user_data)
    
    }

    /// Finishes an async connect operation. See `g_socket_client_connect_to_uri_async()`
    @inlinable func connectToURIFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> SocketConnectionRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = SocketConnectionRef(gconstpointer: gconstpointer(g_socket_client_connect_to_uri_finish(socket_client_ptr, result.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Gets the proxy enable state; see `g_socket_client_set_enable_proxy()`
    @inlinable func getEnableProxy() -> Bool {
        let rv = ((g_socket_client_get_enable_proxy(socket_client_ptr)) != 0)
        return rv
    }

    /// Gets the socket family of the socket client.
    /// 
    /// See `g_socket_client_set_family()` for details.
    @inlinable func getFamily() -> GSocketFamily {
        let rv = g_socket_client_get_family(socket_client_ptr)
        return rv
    }

    /// Gets the local address of the socket client.
    /// 
    /// See `g_socket_client_set_local_address()` for details.
    @inlinable func getLocalAddress() -> SocketAddressRef! {
        let rv = SocketAddressRef(gconstpointer: gconstpointer(g_socket_client_get_local_address(socket_client_ptr)))
        return rv
    }

    /// Gets the protocol name type of the socket client.
    /// 
    /// See `g_socket_client_set_protocol()` for details.
    @inlinable func getProtocol() -> GSocketProtocol {
        let rv = g_socket_client_get_protocol(socket_client_ptr)
        return rv
    }

    /// Gets the `GProxyResolver` being used by `client`. Normally, this will
    /// be the resolver returned by `g_proxy_resolver_get_default()`, but you
    /// can override it with `g_socket_client_set_proxy_resolver()`.
    @inlinable func getProxyResolver() -> ProxyResolverRef! {
        let rv = ProxyResolverRef(gconstpointer: gconstpointer(g_socket_client_get_proxy_resolver(socket_client_ptr)))
        return rv
    }

    /// Gets the socket type of the socket client.
    /// 
    /// See `g_socket_client_set_socket_type()` for details.
    @inlinable func getSocketType() -> GSocketType {
        let rv = g_socket_client_get_socket_type(socket_client_ptr)
        return rv
    }

    /// Gets the I/O timeout time for sockets created by `client`.
    /// 
    /// See `g_socket_client_set_timeout()` for details.
    @inlinable func getTimeout() -> Int {
        let rv = Int(g_socket_client_get_timeout(socket_client_ptr))
        return rv
    }

    /// Gets whether `client` creates TLS connections. See
    /// `g_socket_client_set_tls()` for details.
    @inlinable func getTLS() -> Bool {
        let rv = ((g_socket_client_get_tls(socket_client_ptr)) != 0)
        return rv
    }

    /// Gets the TLS validation flags used creating TLS connections via
    /// `client`.
    @inlinable func getTLSValidationFlags() -> TLSCertificateFlags {
        let rv = TLSCertificateFlags(g_socket_client_get_tls_validation_flags(socket_client_ptr))
        return rv
    }

    /// Sets whether or not `client` attempts to make connections via a
    /// proxy server. When enabled (the default), `GSocketClient` will use a
    /// `GProxyResolver` to determine if a proxy protocol such as SOCKS is
    /// needed, and automatically do the necessary proxy negotiation.
    /// 
    /// See also `g_socket_client_set_proxy_resolver()`.
    @inlinable func setEnableProxy(enable: Bool) {
        g_socket_client_set_enable_proxy(socket_client_ptr, gboolean((enable) ? 1 : 0))
    
    }

    /// Sets the socket family of the socket client.
    /// If this is set to something other than `G_SOCKET_FAMILY_INVALID`
    /// then the sockets created by this object will be of the specified
    /// family.
    /// 
    /// This might be useful for instance if you want to force the local
    /// connection to be an ipv4 socket, even though the address might
    /// be an ipv6 mapped to ipv4 address.
    @inlinable func set(family: GSocketFamily) {
        g_socket_client_set_family(socket_client_ptr, family)
    
    }

    /// Sets the local address of the socket client.
    /// The sockets created by this object will bound to the
    /// specified address (if not `nil`) before connecting.
    /// 
    /// This is useful if you want to ensure that the local
    /// side of the connection is on a specific port, or on
    /// a specific interface.
    @inlinable func setLocal<SocketAddressT: SocketAddressProtocol>(address: SocketAddressT? = nil) {
        g_socket_client_set_local_address(socket_client_ptr, address?.socket_address_ptr)
    
    }

    /// Sets the protocol of the socket client.
    /// The sockets created by this object will use of the specified
    /// protocol.
    /// 
    /// If `protocol` is `G_SOCKET_PROTOCOL_DEFAULT` that means to use the default
    /// protocol for the socket family and type.
    @inlinable func setProtocol(`protocol`: GSocketProtocol) {
        g_socket_client_set_protocol(socket_client_ptr, `protocol`)
    
    }

    /// Overrides the `GProxyResolver` used by `client`. You can call this if
    /// you want to use specific proxies, rather than using the system
    /// default proxy settings.
    /// 
    /// Note that whether or not the proxy resolver is actually used
    /// depends on the setting of `GSocketClient:enable`-proxy, which is not
    /// changed by this function (but which is `true` by default)
    @inlinable func set<ProxyResolverT: ProxyResolverProtocol>(proxyResolver proxy_resolver: ProxyResolverT? = nil) {
        g_socket_client_set_proxy_resolver(socket_client_ptr, proxy_resolver?.proxy_resolver_ptr)
    
    }

    /// Sets the socket type of the socket client.
    /// The sockets created by this object will be of the specified
    /// type.
    /// 
    /// It doesn't make sense to specify a type of `G_SOCKET_TYPE_DATAGRAM`,
    /// as GSocketClient is used for connection oriented services.
    @inlinable func setSocket(type: GSocketType) {
        g_socket_client_set_socket_type(socket_client_ptr, type)
    
    }

    /// Sets the I/O timeout for sockets created by `client`. `timeout` is a
    /// time in seconds, or 0 for no timeout (the default).
    /// 
    /// The timeout value affects the initial connection attempt as well,
    /// so setting this may cause calls to `g_socket_client_connect()`, etc,
    /// to fail with `G_IO_ERROR_TIMED_OUT`.
    @inlinable func set(timeout: Int) {
        g_socket_client_set_timeout(socket_client_ptr, guint(timeout))
    
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
    @inlinable func set(tls: Bool) {
        g_socket_client_set_tls(socket_client_ptr, gboolean((tls) ? 1 : 0))
    
    }

    /// Sets the TLS validation flags used when creating TLS connections
    /// via `client`. The default value is `G_TLS_CERTIFICATE_VALIDATE_ALL`.
    @inlinable func setTLSValidation(flags: TLSCertificateFlags) {
        g_socket_client_set_tls_validation_flags(socket_client_ptr, flags.value)
    
    }
    /// Gets the proxy enable state; see `g_socket_client_set_enable_proxy()`
    @inlinable var enableProxy: Bool {
        /// Gets the proxy enable state; see `g_socket_client_set_enable_proxy()`
        get {
            let rv = ((g_socket_client_get_enable_proxy(socket_client_ptr)) != 0)
            return rv
        }
        /// Sets whether or not `client` attempts to make connections via a
        /// proxy server. When enabled (the default), `GSocketClient` will use a
        /// `GProxyResolver` to determine if a proxy protocol such as SOCKS is
        /// needed, and automatically do the necessary proxy negotiation.
        /// 
        /// See also `g_socket_client_set_proxy_resolver()`.
        nonmutating set {
            g_socket_client_set_enable_proxy(socket_client_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    @inlinable var family: GSocketFamily {
        /// Gets the socket family of the socket client.
        /// 
        /// See `g_socket_client_set_family()` for details.
        get {
            let rv = g_socket_client_get_family(socket_client_ptr)
            return rv
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
            g_socket_client_set_family(socket_client_ptr, newValue)
        }
    }

    /// Gets the local address of the socket client.
    /// 
    /// See `g_socket_client_set_local_address()` for details.
    @inlinable var localAddress: SocketAddressRef! {
        /// Gets the local address of the socket client.
        /// 
        /// See `g_socket_client_set_local_address()` for details.
        get {
            let rv = SocketAddressRef(gconstpointer: gconstpointer(g_socket_client_get_local_address(socket_client_ptr)))
            return rv
        }
        /// Sets the local address of the socket client.
        /// The sockets created by this object will bound to the
        /// specified address (if not `nil`) before connecting.
        /// 
        /// This is useful if you want to ensure that the local
        /// side of the connection is on a specific port, or on
        /// a specific interface.
        nonmutating set {
            g_socket_client_set_local_address(socket_client_ptr, UnsafeMutablePointer<GSocketAddress>(newValue?.socket_address_ptr))
        }
    }

    @inlinable var `protocol`: GSocketProtocol {
        /// Gets the protocol name type of the socket client.
        /// 
        /// See `g_socket_client_set_protocol()` for details.
        get {
            let rv = g_socket_client_get_protocol(socket_client_ptr)
            return rv
        }
        /// Sets the protocol of the socket client.
        /// The sockets created by this object will use of the specified
        /// protocol.
        /// 
        /// If `protocol` is `G_SOCKET_PROTOCOL_DEFAULT` that means to use the default
        /// protocol for the socket family and type.
        nonmutating set {
            g_socket_client_set_protocol(socket_client_ptr, newValue)
        }
    }

    /// Gets the `GProxyResolver` being used by `client`. Normally, this will
    /// be the resolver returned by `g_proxy_resolver_get_default()`, but you
    /// can override it with `g_socket_client_set_proxy_resolver()`.
    @inlinable var proxyResolver: ProxyResolverRef! {
        /// Gets the `GProxyResolver` being used by `client`. Normally, this will
        /// be the resolver returned by `g_proxy_resolver_get_default()`, but you
        /// can override it with `g_socket_client_set_proxy_resolver()`.
        get {
            let rv = ProxyResolverRef(gconstpointer: gconstpointer(g_socket_client_get_proxy_resolver(socket_client_ptr)))
            return rv
        }
        /// Overrides the `GProxyResolver` used by `client`. You can call this if
        /// you want to use specific proxies, rather than using the system
        /// default proxy settings.
        /// 
        /// Note that whether or not the proxy resolver is actually used
        /// depends on the setting of `GSocketClient:enable`-proxy, which is not
        /// changed by this function (but which is `true` by default)
        nonmutating set {
            g_socket_client_set_proxy_resolver(socket_client_ptr, UnsafeMutablePointer<GProxyResolver>(newValue?.proxy_resolver_ptr))
        }
    }

    /// Gets the socket type of the socket client.
    /// 
    /// See `g_socket_client_set_socket_type()` for details.
    @inlinable var socketType: GSocketType {
        /// Gets the socket type of the socket client.
        /// 
        /// See `g_socket_client_set_socket_type()` for details.
        get {
            let rv = g_socket_client_get_socket_type(socket_client_ptr)
            return rv
        }
        /// Sets the socket type of the socket client.
        /// The sockets created by this object will be of the specified
        /// type.
        /// 
        /// It doesn't make sense to specify a type of `G_SOCKET_TYPE_DATAGRAM`,
        /// as GSocketClient is used for connection oriented services.
        nonmutating set {
            g_socket_client_set_socket_type(socket_client_ptr, newValue)
        }
    }

    @inlinable var timeout: Int {
        /// Gets the I/O timeout time for sockets created by `client`.
        /// 
        /// See `g_socket_client_set_timeout()` for details.
        get {
            let rv = Int(g_socket_client_get_timeout(socket_client_ptr))
            return rv
        }
        /// Sets the I/O timeout for sockets created by `client`. `timeout` is a
        /// time in seconds, or 0 for no timeout (the default).
        /// 
        /// The timeout value affects the initial connection attempt as well,
        /// so setting this may cause calls to `g_socket_client_connect()`, etc,
        /// to fail with `G_IO_ERROR_TIMED_OUT`.
        nonmutating set {
            g_socket_client_set_timeout(socket_client_ptr, guint(newValue))
        }
    }

    @inlinable var tls: Bool {
        /// Gets whether `client` creates TLS connections. See
        /// `g_socket_client_set_tls()` for details.
        get {
            let rv = ((g_socket_client_get_tls(socket_client_ptr)) != 0)
            return rv
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
            g_socket_client_set_tls(socket_client_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the TLS validation flags used creating TLS connections via
    /// `client`.
    @inlinable var tlsValidationFlags: TLSCertificateFlags {
        /// Gets the TLS validation flags used creating TLS connections via
        /// `client`.
        get {
            let rv = TLSCertificateFlags(g_socket_client_get_tls_validation_flags(socket_client_ptr))
            return rv
        }
        /// Sets the TLS validation flags used when creating TLS connections
        /// via `client`. The default value is `G_TLS_CERTIFICATE_VALIDATE_ALL`.
        nonmutating set {
            g_socket_client_set_tls_validation_flags(socket_client_ptr, newValue.value)
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = socket_client_ptr.pointee.parent_instance
            return rv
        }
    }

    @inlinable var priv: SocketClientPrivateRef! {
        get {
            let rv = SocketClientPrivateRef(gconstpointer: gconstpointer(socket_client_ptr.pointee.priv))
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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSocketConnection` instance.
    var socket_connection_ptr: UnsafeMutablePointer<GSocketConnection>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension SocketConnectionRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSocketConnection>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSocketConnection>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSocketConnection>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSocketConnection>?) {
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

    /// Reference intialiser for a related type that implements `SocketConnectionProtocol`
    @inlinable init<T: SocketConnectionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
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
    @inlinable public init(_ op: UnsafeMutablePointer<GSocketConnection>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GSocketConnection>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketConnection` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GSocketConnection>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GSocketConnection>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GSocketConnection`.
    /// i.e., ownership is transferred to the `SocketConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GSocketConnection>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `SocketConnectionProtocol`
    /// Will retain `GSocketConnection`.
    /// - Parameter other: an instance of a related type that implements `SocketConnectionProtocol`
    @inlinable public init<T: SocketConnectionProtocol>(socketConnection other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: SocketConnectionPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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
    @inlinable func get(property: SocketConnectionPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a SocketConnection property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: SocketConnectionPropertyName, value v: GLibObject.Value) {
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
    @inlinable @discardableResult func connect(signal kind: SocketConnectionSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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
    @inlinable var socket_connection_ptr: UnsafeMutablePointer<GSocketConnection>! { return ptr?.assumingMemoryBound(to: GSocketConnection.self) }

    /// Connect `connection` to the specified remote address.
    @inlinable func connect<CancellableT: CancellableProtocol, SocketAddressT: SocketAddressProtocol>(address: SocketAddressT, cancellable: CancellableT? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_socket_connection_connect(socket_connection_ptr, address.socket_address_ptr, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronously connect `connection` to the specified remote address.
    /// 
    /// This clears the `GSocket:blocking` flag on `connection`'s underlying
    /// socket if it is currently set.
    /// 
    /// Use `g_socket_connection_connect_finish()` to retrieve the result.
    @inlinable func connectAsync<CancellableT: CancellableProtocol, SocketAddressT: SocketAddressProtocol>(address: SocketAddressT, cancellable: CancellableT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil) {
        g_socket_connection_connect_async(socket_connection_ptr, address.socket_address_ptr, cancellable?.cancellable_ptr, callback, user_data)
    
    }

    /// Gets the result of a `g_socket_connection_connect_async()` call.
    @inlinable func connectFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_socket_connection_connect_finish(socket_connection_ptr, result.async_result_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Try to get the local address of a socket connection.
    @inlinable func getLocalAddress() throws -> SocketAddressRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = SocketAddressRef(gconstpointer: gconstpointer(g_socket_connection_get_local_address(socket_connection_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Try to get the remote address of a socket connection.
    /// 
    /// Since GLib 2.40, when used with `g_socket_client_connect()` or
    /// `g_socket_client_connect_async()`, during emission of
    /// `G_SOCKET_CLIENT_CONNECTING`, this function will return the remote
    /// address that will be used for the connection.  This allows
    /// applications to print e.g. "Connecting to example.com
    /// (10.42.77.3)...".
    @inlinable func getRemoteAddress() throws -> SocketAddressRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = SocketAddressRef(gconstpointer: gconstpointer(g_socket_connection_get_remote_address(socket_connection_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Gets the underlying `GSocket` object of the connection.
    /// This can be useful if you want to do something unusual on it
    /// not supported by the `GSocketConnection` APIs.
    @inlinable func getSocket() -> SocketRef! {
        let rv = SocketRef(gconstpointer: gconstpointer(g_socket_connection_get_socket(socket_connection_ptr)))
        return rv
    }
    /// Checks if `connection` is connected. This is equivalent to calling
    /// `g_socket_is_connected()` on `connection`'s underlying `GSocket`.
    @inlinable var isConnected: Bool {
        /// Checks if `connection` is connected. This is equivalent to calling
        /// `g_socket_is_connected()` on `connection`'s underlying `GSocket`.
        get {
            let rv = ((g_socket_connection_is_connected(socket_connection_ptr)) != 0)
            return rv
        }
    }

    /// Try to get the local address of a socket connection.
    @inlinable var localAddress: SocketAddressRef! {
        /// Try to get the local address of a socket connection.
        get {
            var error: UnsafeMutablePointer<GError>?
        let rv = SocketAddressRef(gconstpointer: gconstpointer(g_socket_connection_get_local_address(socket_connection_ptr, &error)))
        g_log(messagePtr: error?.pointee.message, level: .error)
            return rv
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
    @inlinable var remoteAddress: SocketAddressRef! {
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
        let rv = SocketAddressRef(gconstpointer: gconstpointer(g_socket_connection_get_remote_address(socket_connection_ptr, &error)))
        g_log(messagePtr: error?.pointee.message, level: .error)
            return rv
        }
    }

    @inlinable var socket: SocketRef! {
        /// Gets the underlying `GSocket` object of the connection.
        /// This can be useful if you want to do something unusual on it
        /// not supported by the `GSocketConnection` APIs.
        get {
            let rv = SocketRef(gconstpointer: gconstpointer(g_socket_connection_get_socket(socket_connection_ptr)))
            return rv
        }
    }

    @inlinable var parentInstance: GIOStream {
        get {
            let rv = socket_connection_ptr.pointee.parent_instance
            return rv
        }
    }

    @inlinable var priv: SocketConnectionPrivateRef! {
        get {
            let rv = SocketConnectionPrivateRef(gconstpointer: gconstpointer(socket_connection_ptr.pointee.priv))
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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSocketControlMessage` instance.
    var socket_control_message_ptr: UnsafeMutablePointer<GSocketControlMessage>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension SocketControlMessageRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSocketControlMessage>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSocketControlMessage>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSocketControlMessage>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSocketControlMessage>?) {
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

    /// Reference intialiser for a related type that implements `SocketControlMessageProtocol`
    @inlinable init<T: SocketControlMessageProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessageProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessageProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessageProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessageProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessageProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Tries to deserialize a socket control message of a given
    /// `level` and `type`. This will ask all known (to GType) subclasses
    /// of `GSocketControlMessage` if they can understand this kind
    /// of message and if so deserialize it into a `GSocketControlMessage`.
    /// 
    /// If there is no implementation for this kind of control message, `nil`
    /// will be returned.
    @inlinable static func deserialize(level: Int, type: Int, size: Int, data: gpointer!) -> SocketControlMessageRef! {
        guard let rv = SocketControlMessageRef(gconstpointer: gconstpointer(g_socket_control_message_deserialize(gint(level), gint(type), gsize(size), data))) else { return nil }
        return rv
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
    @inlinable public init(_ op: UnsafeMutablePointer<GSocketControlMessage>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketControlMessage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GSocketControlMessage>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketControlMessage` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketControlMessage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketControlMessage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GSocketControlMessage>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketControlMessage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GSocketControlMessage>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GSocketControlMessage`.
    /// i.e., ownership is transferred to the `SocketControlMessage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GSocketControlMessage>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `SocketControlMessageProtocol`
    /// Will retain `GSocketControlMessage`.
    /// - Parameter other: an instance of a related type that implements `SocketControlMessageProtocol`
    @inlinable public init<T: SocketControlMessageProtocol>(socketControlMessage other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessageProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessageProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessageProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessageProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessageProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessageProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessageProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessageProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }


    /// Tries to deserialize a socket control message of a given
    /// `level` and `type`. This will ask all known (to GType) subclasses
    /// of `GSocketControlMessage` if they can understand this kind
    /// of message and if so deserialize it into a `GSocketControlMessage`.
    /// 
    /// If there is no implementation for this kind of control message, `nil`
    /// will be returned.
    @inlinable public static func deserialize(level: Int, type: Int, size: Int, data: gpointer!) -> SocketControlMessage! {
        guard let rv = SocketControlMessage(gconstpointer: gconstpointer(g_socket_control_message_deserialize(gint(level), gint(type), gsize(size), data))) else { return nil }
        return rv
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
    @inlinable @discardableResult func connect(signal kind: SocketControlMessageSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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
    @inlinable var socket_control_message_ptr: UnsafeMutablePointer<GSocketControlMessage>! { return ptr?.assumingMemoryBound(to: GSocketControlMessage.self) }

    /// Returns the "level" (i.e. the originating protocol) of the control message.
    /// This is often SOL_SOCKET.
    @inlinable func getLevel() -> Int {
        let rv = Int(g_socket_control_message_get_level(socket_control_message_ptr))
        return rv
    }

    /// Returns the protocol specific type of the control message.
    /// For instance, for UNIX fd passing this would be SCM_RIGHTS.
    @inlinable func getMsgType() -> Int {
        let rv = Int(g_socket_control_message_get_msg_type(socket_control_message_ptr))
        return rv
    }

    /// Returns the space required for the control message, not including
    /// headers or alignment.
    @inlinable func getSize() -> Int {
        let rv = Int(g_socket_control_message_get_size(socket_control_message_ptr))
        return rv
    }

    /// Converts the data in the message to bytes placed in the
    /// message.
    /// 
    /// `data` is guaranteed to have enough space to fit the size
    /// returned by `g_socket_control_message_get_size()` on this
    /// object.
    @inlinable func serialize(data: gpointer!) {
        g_socket_control_message_serialize(socket_control_message_ptr, data)
    
    }
    /// Returns the "level" (i.e. the originating protocol) of the control message.
    /// This is often SOL_SOCKET.
    @inlinable var level: Int {
        /// Returns the "level" (i.e. the originating protocol) of the control message.
        /// This is often SOL_SOCKET.
        get {
            let rv = Int(g_socket_control_message_get_level(socket_control_message_ptr))
            return rv
        }
    }

    /// Returns the protocol specific type of the control message.
    /// For instance, for UNIX fd passing this would be SCM_RIGHTS.
    @inlinable var msgType: Int {
        /// Returns the protocol specific type of the control message.
        /// For instance, for UNIX fd passing this would be SCM_RIGHTS.
        get {
            let rv = Int(g_socket_control_message_get_msg_type(socket_control_message_ptr))
            return rv
        }
    }

    /// Returns the space required for the control message, not including
    /// headers or alignment.
    @inlinable var size: Int {
        /// Returns the space required for the control message, not including
        /// headers or alignment.
        get {
            let rv = Int(g_socket_control_message_get_size(socket_control_message_ptr))
            return rv
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = socket_control_message_ptr.pointee.parent_instance
            return rv
        }
    }

    @inlinable var priv: SocketControlMessagePrivateRef! {
        get {
            let rv = SocketControlMessagePrivateRef(gconstpointer: gconstpointer(socket_control_message_ptr.pointee.priv))
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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSocketListener` instance.
    var socket_listener_ptr: UnsafeMutablePointer<GSocketListener>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension SocketListenerRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSocketListener>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSocketListener>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSocketListener>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSocketListener>?) {
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

    /// Reference intialiser for a related type that implements `SocketListenerProtocol`
    @inlinable init<T: SocketListenerProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GSocketListener` with no sockets to listen for.
    /// New listeners can be added with e.g. `g_socket_listener_add_address()`
    /// or `g_socket_listener_add_inet_port()`.
    @inlinable init() {
        let rv = g_socket_listener_new()
        ptr = UnsafeMutableRawPointer(rv)
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
    @inlinable public init(_ op: UnsafeMutablePointer<GSocketListener>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketListener` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GSocketListener>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketListener` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketListener` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketListener` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GSocketListener>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketListener` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GSocketListener>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GSocketListener`.
    /// i.e., ownership is transferred to the `SocketListener` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GSocketListener>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `SocketListenerProtocol`
    /// Will retain `GSocketListener`.
    /// - Parameter other: an instance of a related type that implements `SocketListenerProtocol`
    @inlinable public init<T: SocketListenerProtocol>(socketListener other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GSocketListener` with no sockets to listen for.
    /// New listeners can be added with e.g. `g_socket_listener_add_address()`
    /// or `g_socket_listener_add_inet_port()`.
    @inlinable public init() {
        let rv = g_socket_listener_new()
        super.init(gpointer: (rv))
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: SocketListenerPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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
    @inlinable func get(property: SocketListenerPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a SocketListener property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: SocketListenerPropertyName, value v: GLibObject.Value) {
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
    @inlinable @discardableResult func connect(signal kind: SocketListenerSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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
    @inlinable var socket_listener_ptr: UnsafeMutablePointer<GSocketListener>! { return ptr?.assumingMemoryBound(to: GSocketListener.self) }

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
    @inlinable func accept<CancellableT: CancellableProtocol>(sourceObject source_object: UnsafeMutablePointer<UnsafeMutablePointer<GObject>?>? = nil, cancellable: CancellableT? = nil) throws -> SocketConnectionRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = SocketConnectionRef(gconstpointer: gconstpointer(g_socket_listener_accept(socket_listener_ptr, source_object, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// This is the asynchronous version of `g_socket_listener_accept()`.
    /// 
    /// When the operation is finished `callback` will be
    /// called. You can then call `g_socket_listener_accept_socket()`
    /// to get the result of the operation.
    @inlinable func acceptAsync<CancellableT: CancellableProtocol>(cancellable: CancellableT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil) {
        g_socket_listener_accept_async(socket_listener_ptr, cancellable?.cancellable_ptr, callback, user_data)
    
    }

    /// Finishes an async accept operation. See `g_socket_listener_accept_async()`
    @inlinable func acceptFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT, sourceObject source_object: UnsafeMutablePointer<UnsafeMutablePointer<GObject>?>? = nil) throws -> SocketConnectionRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = SocketConnectionRef(gconstpointer: gconstpointer(g_socket_listener_accept_finish(socket_listener_ptr, result.async_result_ptr, source_object, &error)))
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func acceptSocket<CancellableT: CancellableProtocol>(sourceObject source_object: UnsafeMutablePointer<UnsafeMutablePointer<GObject>?>? = nil, cancellable: CancellableT? = nil) throws -> SocketRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = SocketRef(gconstpointer: gconstpointer(g_socket_listener_accept_socket(socket_listener_ptr, source_object, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// This is the asynchronous version of `g_socket_listener_accept_socket()`.
    /// 
    /// When the operation is finished `callback` will be
    /// called. You can then call `g_socket_listener_accept_socket_finish()`
    /// to get the result of the operation.
    @inlinable func acceptSocketAsync<CancellableT: CancellableProtocol>(cancellable: CancellableT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil) {
        g_socket_listener_accept_socket_async(socket_listener_ptr, cancellable?.cancellable_ptr, callback, user_data)
    
    }

    /// Finishes an async accept operation. See `g_socket_listener_accept_socket_async()`
    @inlinable func acceptSocketFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT, sourceObject source_object: UnsafeMutablePointer<UnsafeMutablePointer<GObject>?>? = nil) throws -> SocketRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = SocketRef(gconstpointer: gconstpointer(g_socket_listener_accept_socket_finish(socket_listener_ptr, result.async_result_ptr, source_object, &error)))
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func add<ObjectT: ObjectProtocol, SocketAddressT: SocketAddressProtocol>(address: SocketAddressT, type: GSocketType, `protocol`: GSocketProtocol, sourceObject source_object: ObjectT? = nil, effectiveAddress effective_address: UnsafeMutablePointer<UnsafeMutablePointer<GSocketAddress>?>! = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_socket_listener_add_address(socket_listener_ptr, address.socket_address_ptr, type, `protocol`, source_object?.object_ptr, effective_address, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func addAnyInetPort<ObjectT: ObjectProtocol>(sourceObject source_object: ObjectT? = nil) throws -> guint16 {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_socket_listener_add_any_inet_port(socket_listener_ptr, source_object?.object_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func addInet<ObjectT: ObjectProtocol>(port: guint16, sourceObject source_object: ObjectT? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_socket_listener_add_inet_port(socket_listener_ptr, port, source_object?.object_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func add<ObjectT: ObjectProtocol, SocketT: SocketProtocol>(socket: SocketT, sourceObject source_object: ObjectT? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_socket_listener_add_socket(socket_listener_ptr, socket.socket_ptr, source_object?.object_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Closes all the sockets in the listener.
    @inlinable func close() {
        g_socket_listener_close(socket_listener_ptr)
    
    }

    /// Sets the listen backlog on the sockets in the listener. This must be called
    /// before adding any sockets, addresses or ports to the `GSocketListener` (for
    /// example, by calling `g_socket_listener_add_inet_port()`) to be effective.
    /// 
    /// See `g_socket_set_listen_backlog()` for details
    @inlinable func setBacklog(listenBacklog listen_backlog: Int) {
        g_socket_listener_set_backlog(socket_listener_ptr, gint(listen_backlog))
    
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = socket_listener_ptr.pointee.parent_instance
            return rv
        }
    }

    @inlinable var priv: SocketListenerPrivateRef! {
        get {
            let rv = SocketListenerPrivateRef(gconstpointer: gconstpointer(socket_listener_ptr.pointee.priv))
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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSocketService` instance.
    var socket_service_ptr: UnsafeMutablePointer<GSocketService>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension SocketServiceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSocketService>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSocketService>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSocketService>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSocketService>?) {
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

    /// Reference intialiser for a related type that implements `SocketServiceProtocol`
    @inlinable init<T: SocketServiceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServiceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServiceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServiceProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServiceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServiceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GSocketService` with no sockets to listen for.
    /// New listeners can be added with e.g. `g_socket_listener_add_address()`
    /// or `g_socket_listener_add_inet_port()`.
    /// 
    /// New services are created active, there is no need to call
    /// `g_socket_service_start()`, unless `g_socket_service_stop()` has been
    /// called before.
    @inlinable init() {
        let rv = g_socket_service_new()
        ptr = UnsafeMutableRawPointer(rv)
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
    @inlinable public init(_ op: UnsafeMutablePointer<GSocketService>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketService` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GSocketService>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketService` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketService` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketService` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GSocketService>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketService` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GSocketService>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GSocketService`.
    /// i.e., ownership is transferred to the `SocketService` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GSocketService>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `SocketServiceProtocol`
    /// Will retain `GSocketService`.
    /// - Parameter other: an instance of a related type that implements `SocketServiceProtocol`
    @inlinable public init<T: SocketServiceProtocol>(socketService other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServiceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServiceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServiceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServiceProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServiceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServiceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServiceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServiceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GSocketService` with no sockets to listen for.
    /// New listeners can be added with e.g. `g_socket_listener_add_address()`
    /// or `g_socket_listener_add_inet_port()`.
    /// 
    /// New services are created active, there is no need to call
    /// `g_socket_service_start()`, unless `g_socket_service_stop()` has been
    /// called before.
    @inlinable public override init() {
        let rv = g_socket_service_new()
        super.init(gpointer: (rv))
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: SocketServicePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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
    @inlinable func get(property: SocketServicePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a SocketService property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: SocketServicePropertyName, value v: GLibObject.Value) {
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
    @inlinable @discardableResult func connect(signal kind: SocketServiceSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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
    @inlinable var socket_service_ptr: UnsafeMutablePointer<GSocketService>! { return ptr?.assumingMemoryBound(to: GSocketService.self) }

    /// Restarts the service, i.e. start accepting connections
    /// from the added sockets when the mainloop runs. This only needs
    /// to be called after the service has been stopped from
    /// `g_socket_service_stop()`.
    /// 
    /// This call is thread-safe, so it may be called from a thread
    /// handling an incoming client request.
    @inlinable func start() {
        g_socket_service_start(socket_service_ptr)
    
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
    @inlinable func stop() {
        g_socket_service_stop(socket_service_ptr)
    
    }
    /// Check whether the service is active or not. An active
    /// service will accept new clients that connect, while
    /// a non-active service will let connecting clients queue
    /// up until the service is started.
    @inlinable var isActive: Bool {
        /// Check whether the service is active or not. An active
        /// service will accept new clients that connect, while
        /// a non-active service will let connecting clients queue
        /// up until the service is started.
        get {
            let rv = ((g_socket_service_is_active(socket_service_ptr)) != 0)
            return rv
        }
    }

    @inlinable var parentInstance: GSocketListener {
        get {
            let rv = socket_service_ptr.pointee.parent_instance
            return rv
        }
    }

    @inlinable var priv: SocketServicePrivateRef! {
        get {
            let rv = SocketServicePrivateRef(gconstpointer: gconstpointer(socket_service_ptr.pointee.priv))
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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSubprocess` instance.
    var subprocess_ptr: UnsafeMutablePointer<GSubprocess>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension SubprocessRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSubprocess>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSubprocess>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSubprocess>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSubprocess>?) {
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

    /// Reference intialiser for a related type that implements `SubprocessProtocol`
    @inlinable init<T: SubprocessProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    
    // *** new() is not available because it has a varargs (...) parameter!


    /// Create a new process with the given flags and argument list.
    /// 
    /// The argument list is expected to be `nil`-terminated.
    @inlinable init(argv: UnsafePointer<UnsafePointer<gchar>?>!, flags: SubprocessFlags) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_subprocess_newv(argv, flags.value, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Create a new process with the given flags and argument list.
    /// 
    /// The argument list is expected to be `nil`-terminated.
    @inlinable static func subprocessNewv(argv: UnsafePointer<UnsafePointer<gchar>?>!, flags: SubprocessFlags) throws -> SubprocessRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = SubprocessRef(gconstpointer: gconstpointer(g_subprocess_newv(argv, flags.value, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
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
    @inlinable public init(_ op: UnsafeMutablePointer<GSubprocess>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Subprocess` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GSubprocess>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Subprocess` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Subprocess` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Subprocess` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GSubprocess>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Subprocess` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GSubprocess>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GSubprocess`.
    /// i.e., ownership is transferred to the `Subprocess` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GSubprocess>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `SubprocessProtocol`
    /// Will retain `GSubprocess`.
    /// - Parameter other: an instance of a related type that implements `SubprocessProtocol`
    @inlinable public init<T: SubprocessProtocol>(subprocess other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }


    // *** new() is not available because it has a varargs (...) parameter!


    /// Create a new process with the given flags and argument list.
    /// 
    /// The argument list is expected to be `nil`-terminated.
    @inlinable public init(argv: UnsafePointer<UnsafePointer<gchar>?>!, flags: SubprocessFlags) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_subprocess_newv(argv, flags.value, &error)
        if let error = error { throw GLibError(error) }
        super.init(gpointer: (rv))
    }

    /// Create a new process with the given flags and argument list.
    /// 
    /// The argument list is expected to be `nil`-terminated.
    @inlinable public static func subprocessNewv(argv: UnsafePointer<UnsafePointer<gchar>?>!, flags: SubprocessFlags) throws -> Subprocess! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = Subprocess(gconstpointer: gconstpointer(g_subprocess_newv(argv, flags.value, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: SubprocessPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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
    @inlinable func get(property: SubprocessPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Subprocess property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: SubprocessPropertyName, value v: GLibObject.Value) {
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
    @inlinable @discardableResult func connect(signal kind: SubprocessSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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
    @inlinable var subprocess_ptr: UnsafeMutablePointer<GSubprocess>! { return ptr?.assumingMemoryBound(to: GSubprocess.self) }

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
    @inlinable func communicate<BytesT: BytesProtocol, CancellableT: CancellableProtocol>(stdinBuf stdin_buf: BytesT? = nil, cancellable: CancellableT? = nil, stdoutBuf stdout_buf: UnsafeMutablePointer<UnsafeMutablePointer<GBytes>?>? = nil, stderrBuf stderr_buf: UnsafeMutablePointer<UnsafeMutablePointer<GBytes>?>? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_subprocess_communicate(subprocess_ptr, stdin_buf?.bytes_ptr, cancellable?.cancellable_ptr, stdout_buf, stderr_buf, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronous version of `g_subprocess_communicate()`.  Complete
    /// invocation with `g_subprocess_communicate_finish()`.
    @inlinable func communicateAsync<BytesT: BytesProtocol, CancellableT: CancellableProtocol>(stdinBuf stdin_buf: BytesT? = nil, cancellable: CancellableT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil) {
        g_subprocess_communicate_async(subprocess_ptr, stdin_buf?.bytes_ptr, cancellable?.cancellable_ptr, callback, user_data)
    
    }

    /// Complete an invocation of `g_subprocess_communicate_async()`.
    @inlinable func communicateFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT, stdoutBuf stdout_buf: UnsafeMutablePointer<UnsafeMutablePointer<GBytes>?>? = nil, stderrBuf stderr_buf: UnsafeMutablePointer<UnsafeMutablePointer<GBytes>?>? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_subprocess_communicate_finish(subprocess_ptr, result.async_result_ptr, stdout_buf, stderr_buf, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Like `g_subprocess_communicate()`, but validates the output of the
    /// process as UTF-8, and returns it as a regular NUL terminated string.
    /// 
    /// On error, `stdout_buf` and `stderr_buf` will be set to undefined values and
    /// should not be used.
    @inlinable func communicateUTF8<CancellableT: CancellableProtocol>(stdinBuf stdin_buf: UnsafePointer<CChar>? = nil, cancellable: CancellableT? = nil, stdoutBuf stdout_buf: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>? = nil, stderrBuf stderr_buf: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_subprocess_communicate_utf8(subprocess_ptr, stdin_buf, cancellable?.cancellable_ptr, stdout_buf, stderr_buf, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronous version of `g_subprocess_communicate_utf8()`.  Complete
    /// invocation with `g_subprocess_communicate_utf8_finish()`.
    @inlinable func communicateUTF8Async<CancellableT: CancellableProtocol>(stdinBuf stdin_buf: UnsafePointer<CChar>? = nil, cancellable: CancellableT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil) {
        g_subprocess_communicate_utf8_async(subprocess_ptr, stdin_buf, cancellable?.cancellable_ptr, callback, user_data)
    
    }

    /// Complete an invocation of `g_subprocess_communicate_utf8_async()`.
    @inlinable func communicateUTF8Finish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT, stdoutBuf stdout_buf: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>? = nil, stderrBuf stderr_buf: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_subprocess_communicate_utf8_finish(subprocess_ptr, result.async_result_ptr, stdout_buf, stderr_buf, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Use an operating-system specific method to attempt an immediate,
    /// forceful termination of the process.  There is no mechanism to
    /// determine whether or not the request itself was successful;
    /// however, you can use `g_subprocess_wait()` to monitor the status of
    /// the process after calling this function.
    /// 
    /// On Unix, this function sends `SIGKILL`.
    @inlinable func forceExit() {
        g_subprocess_force_exit(subprocess_ptr)
    
    }

    /// Check the exit status of the subprocess, given that it exited
    /// normally.  This is the value passed to the `exit()` system call or the
    /// return value from main.
    /// 
    /// This is equivalent to the system WEXITSTATUS macro.
    /// 
    /// It is an error to call this function before `g_subprocess_wait()` and
    /// unless `g_subprocess_get_if_exited()` returned `true`.
    @inlinable func getExitStatus() -> Int {
        let rv = Int(g_subprocess_get_exit_status(subprocess_ptr))
        return rv
    }

    /// On UNIX, returns the process ID as a decimal string.
    /// On Windows, returns the result of `GetProcessID()` also as a string.
    /// If the subprocess has terminated, this will return `nil`.
    @inlinable func getIdentifier() -> String! {
        let rv = g_subprocess_get_identifier(subprocess_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Check if the given subprocess exited normally (ie: by way of `exit()`
    /// or return from `main()`).
    /// 
    /// This is equivalent to the system WIFEXITED macro.
    /// 
    /// It is an error to call this function before `g_subprocess_wait()` has
    /// returned.
    @inlinable func getIfExited() -> Bool {
        let rv = ((g_subprocess_get_if_exited(subprocess_ptr)) != 0)
        return rv
    }

    /// Check if the given subprocess terminated in response to a signal.
    /// 
    /// This is equivalent to the system WIFSIGNALED macro.
    /// 
    /// It is an error to call this function before `g_subprocess_wait()` has
    /// returned.
    @inlinable func getIfSignaled() -> Bool {
        let rv = ((g_subprocess_get_if_signaled(subprocess_ptr)) != 0)
        return rv
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
    @inlinable func getStatus() -> Int {
        let rv = Int(g_subprocess_get_status(subprocess_ptr))
        return rv
    }

    /// Gets the `GInputStream` from which to read the stderr output of
    /// `subprocess`.
    /// 
    /// The process must have been created with
    /// `G_SUBPROCESS_FLAGS_STDERR_PIPE`.
    @inlinable func getStderrPipe() -> InputStreamRef! {
        let rv = InputStreamRef(gconstpointer: gconstpointer(g_subprocess_get_stderr_pipe(subprocess_ptr)))
        return rv
    }

    /// Gets the `GOutputStream` that you can write to in order to give data
    /// to the stdin of `subprocess`.
    /// 
    /// The process must have been created with
    /// `G_SUBPROCESS_FLAGS_STDIN_PIPE`.
    @inlinable func getStdinPipe() -> OutputStreamRef! {
        let rv = OutputStreamRef(gconstpointer: gconstpointer(g_subprocess_get_stdin_pipe(subprocess_ptr)))
        return rv
    }

    /// Gets the `GInputStream` from which to read the stdout output of
    /// `subprocess`.
    /// 
    /// The process must have been created with
    /// `G_SUBPROCESS_FLAGS_STDOUT_PIPE`.
    @inlinable func getStdoutPipe() -> InputStreamRef! {
        let rv = InputStreamRef(gconstpointer: gconstpointer(g_subprocess_get_stdout_pipe(subprocess_ptr)))
        return rv
    }

    /// Checks if the process was "successful".  A process is considered
    /// successful if it exited cleanly with an exit status of 0, either by
    /// way of the `exit()` system call or return from `main()`.
    /// 
    /// It is an error to call this function before `g_subprocess_wait()` has
    /// returned.
    @inlinable func getSuccessful() -> Bool {
        let rv = ((g_subprocess_get_successful(subprocess_ptr)) != 0)
        return rv
    }

    /// Get the signal number that caused the subprocess to terminate, given
    /// that it terminated due to a signal.
    /// 
    /// This is equivalent to the system WTERMSIG macro.
    /// 
    /// It is an error to call this function before `g_subprocess_wait()` and
    /// unless `g_subprocess_get_if_signaled()` returned `true`.
    @inlinable func getTermSig() -> Int {
        let rv = Int(g_subprocess_get_term_sig(subprocess_ptr))
        return rv
    }

    /// Sends the UNIX signal `signal_num` to the subprocess, if it is still
    /// running.
    /// 
    /// This API is race-free.  If the subprocess has terminated, it will not
    /// be signalled.
    /// 
    /// This API is not available on Windows.
    @inlinable func sendSignal(signalNum signal_num: Int) {
        g_subprocess_send_signal(subprocess_ptr, gint(signal_num))
    
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
    @inlinable func wait<CancellableT: CancellableProtocol>(cancellable: CancellableT? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_subprocess_wait(subprocess_ptr, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Wait for the subprocess to terminate.
    /// 
    /// This is the asynchronous version of `g_subprocess_wait()`.
    @inlinable func waitAsync<CancellableT: CancellableProtocol>(cancellable: CancellableT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil) {
        g_subprocess_wait_async(subprocess_ptr, cancellable?.cancellable_ptr, callback, user_data)
    
    }

    /// Combines `g_subprocess_wait()` with `g_spawn_check_exit_status()`.
    @inlinable func waitCheck<CancellableT: CancellableProtocol>(cancellable: CancellableT? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_subprocess_wait_check(subprocess_ptr, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Combines `g_subprocess_wait_async()` with `g_spawn_check_exit_status()`.
    /// 
    /// This is the asynchronous version of `g_subprocess_wait_check()`.
    @inlinable func waitCheckAsync<CancellableT: CancellableProtocol>(cancellable: CancellableT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil) {
        g_subprocess_wait_check_async(subprocess_ptr, cancellable?.cancellable_ptr, callback, user_data)
    
    }

    /// Collects the result of a previous call to
    /// `g_subprocess_wait_check_async()`.
    @inlinable func waitCheckFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_subprocess_wait_check_finish(subprocess_ptr, result.async_result_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Collects the result of a previous call to
    /// `g_subprocess_wait_async()`.
    @inlinable func waitFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_subprocess_wait_finish(subprocess_ptr, result.async_result_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Check the exit status of the subprocess, given that it exited
    /// normally.  This is the value passed to the `exit()` system call or the
    /// return value from main.
    /// 
    /// This is equivalent to the system WEXITSTATUS macro.
    /// 
    /// It is an error to call this function before `g_subprocess_wait()` and
    /// unless `g_subprocess_get_if_exited()` returned `true`.
    @inlinable var exitStatus: Int {
        /// Check the exit status of the subprocess, given that it exited
        /// normally.  This is the value passed to the `exit()` system call or the
        /// return value from main.
        /// 
        /// This is equivalent to the system WEXITSTATUS macro.
        /// 
        /// It is an error to call this function before `g_subprocess_wait()` and
        /// unless `g_subprocess_get_if_exited()` returned `true`.
        get {
            let rv = Int(g_subprocess_get_exit_status(subprocess_ptr))
            return rv
        }
    }

    /// On UNIX, returns the process ID as a decimal string.
    /// On Windows, returns the result of `GetProcessID()` also as a string.
    /// If the subprocess has terminated, this will return `nil`.
    @inlinable var identifier: String! {
        /// On UNIX, returns the process ID as a decimal string.
        /// On Windows, returns the result of `GetProcessID()` also as a string.
        /// If the subprocess has terminated, this will return `nil`.
        get {
            let rv = g_subprocess_get_identifier(subprocess_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Check if the given subprocess exited normally (ie: by way of `exit()`
    /// or return from `main()`).
    /// 
    /// This is equivalent to the system WIFEXITED macro.
    /// 
    /// It is an error to call this function before `g_subprocess_wait()` has
    /// returned.
    @inlinable var ifExited: Bool {
        /// Check if the given subprocess exited normally (ie: by way of `exit()`
        /// or return from `main()`).
        /// 
        /// This is equivalent to the system WIFEXITED macro.
        /// 
        /// It is an error to call this function before `g_subprocess_wait()` has
        /// returned.
        get {
            let rv = ((g_subprocess_get_if_exited(subprocess_ptr)) != 0)
            return rv
        }
    }

    /// Check if the given subprocess terminated in response to a signal.
    /// 
    /// This is equivalent to the system WIFSIGNALED macro.
    /// 
    /// It is an error to call this function before `g_subprocess_wait()` has
    /// returned.
    @inlinable var ifSignaled: Bool {
        /// Check if the given subprocess terminated in response to a signal.
        /// 
        /// This is equivalent to the system WIFSIGNALED macro.
        /// 
        /// It is an error to call this function before `g_subprocess_wait()` has
        /// returned.
        get {
            let rv = ((g_subprocess_get_if_signaled(subprocess_ptr)) != 0)
            return rv
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
    @inlinable var status: Int {
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
            let rv = Int(g_subprocess_get_status(subprocess_ptr))
            return rv
        }
    }

    /// Gets the `GInputStream` from which to read the stderr output of
    /// `subprocess`.
    /// 
    /// The process must have been created with
    /// `G_SUBPROCESS_FLAGS_STDERR_PIPE`.
    @inlinable var stderrPipe: InputStreamRef! {
        /// Gets the `GInputStream` from which to read the stderr output of
        /// `subprocess`.
        /// 
        /// The process must have been created with
        /// `G_SUBPROCESS_FLAGS_STDERR_PIPE`.
        get {
            let rv = InputStreamRef(gconstpointer: gconstpointer(g_subprocess_get_stderr_pipe(subprocess_ptr)))
            return rv
        }
    }

    /// Gets the `GOutputStream` that you can write to in order to give data
    /// to the stdin of `subprocess`.
    /// 
    /// The process must have been created with
    /// `G_SUBPROCESS_FLAGS_STDIN_PIPE`.
    @inlinable var stdinPipe: OutputStreamRef! {
        /// Gets the `GOutputStream` that you can write to in order to give data
        /// to the stdin of `subprocess`.
        /// 
        /// The process must have been created with
        /// `G_SUBPROCESS_FLAGS_STDIN_PIPE`.
        get {
            let rv = OutputStreamRef(gconstpointer: gconstpointer(g_subprocess_get_stdin_pipe(subprocess_ptr)))
            return rv
        }
    }

    /// Gets the `GInputStream` from which to read the stdout output of
    /// `subprocess`.
    /// 
    /// The process must have been created with
    /// `G_SUBPROCESS_FLAGS_STDOUT_PIPE`.
    @inlinable var stdoutPipe: InputStreamRef! {
        /// Gets the `GInputStream` from which to read the stdout output of
        /// `subprocess`.
        /// 
        /// The process must have been created with
        /// `G_SUBPROCESS_FLAGS_STDOUT_PIPE`.
        get {
            let rv = InputStreamRef(gconstpointer: gconstpointer(g_subprocess_get_stdout_pipe(subprocess_ptr)))
            return rv
        }
    }

    /// Checks if the process was "successful".  A process is considered
    /// successful if it exited cleanly with an exit status of 0, either by
    /// way of the `exit()` system call or return from `main()`.
    /// 
    /// It is an error to call this function before `g_subprocess_wait()` has
    /// returned.
    @inlinable var successful: Bool {
        /// Checks if the process was "successful".  A process is considered
        /// successful if it exited cleanly with an exit status of 0, either by
        /// way of the `exit()` system call or return from `main()`.
        /// 
        /// It is an error to call this function before `g_subprocess_wait()` has
        /// returned.
        get {
            let rv = ((g_subprocess_get_successful(subprocess_ptr)) != 0)
            return rv
        }
    }

    /// Get the signal number that caused the subprocess to terminate, given
    /// that it terminated due to a signal.
    /// 
    /// This is equivalent to the system WTERMSIG macro.
    /// 
    /// It is an error to call this function before `g_subprocess_wait()` and
    /// unless `g_subprocess_get_if_signaled()` returned `true`.
    @inlinable var termSig: Int {
        /// Get the signal number that caused the subprocess to terminate, given
        /// that it terminated due to a signal.
        /// 
        /// This is equivalent to the system WTERMSIG macro.
        /// 
        /// It is an error to call this function before `g_subprocess_wait()` and
        /// unless `g_subprocess_get_if_signaled()` returned `true`.
        get {
            let rv = Int(g_subprocess_get_term_sig(subprocess_ptr))
            return rv
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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSubprocessLauncher` instance.
    var subprocess_launcher_ptr: UnsafeMutablePointer<GSubprocessLauncher>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension SubprocessLauncherRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSubprocessLauncher>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSubprocessLauncher>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSubprocessLauncher>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSubprocessLauncher>?) {
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

    /// Reference intialiser for a related type that implements `SubprocessLauncherProtocol`
    @inlinable init<T: SubprocessLauncherProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessLauncherProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessLauncherProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessLauncherProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessLauncherProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessLauncherProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GSubprocessLauncher`.
    /// 
    /// The launcher is created with the default options.  A copy of the
    /// environment of the calling process is made at the time of this call
    /// and will be used as the environment that the process is launched in.
    @inlinable init( flags: SubprocessFlags) {
        let rv = g_subprocess_launcher_new(flags.value)
        ptr = UnsafeMutableRawPointer(rv)
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
    @inlinable public init(_ op: UnsafeMutablePointer<GSubprocessLauncher>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SubprocessLauncher` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GSubprocessLauncher>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SubprocessLauncher` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SubprocessLauncher` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SubprocessLauncher` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GSubprocessLauncher>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SubprocessLauncher` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GSubprocessLauncher>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GSubprocessLauncher`.
    /// i.e., ownership is transferred to the `SubprocessLauncher` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GSubprocessLauncher>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `SubprocessLauncherProtocol`
    /// Will retain `GSubprocessLauncher`.
    /// - Parameter other: an instance of a related type that implements `SubprocessLauncherProtocol`
    @inlinable public init<T: SubprocessLauncherProtocol>(subprocessLauncher other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessLauncherProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessLauncherProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessLauncherProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessLauncherProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessLauncherProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessLauncherProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessLauncherProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SubprocessLauncherProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GSubprocessLauncher`.
    /// 
    /// The launcher is created with the default options.  A copy of the
    /// environment of the calling process is made at the time of this call
    /// and will be used as the environment that the process is launched in.
    @inlinable public init( flags: SubprocessFlags) {
        let rv = g_subprocess_launcher_new(flags.value)
        super.init(gpointer: (rv))
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: SubprocessLauncherPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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
    @inlinable func get(property: SubprocessLauncherPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a SubprocessLauncher property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: SubprocessLauncherPropertyName, value v: GLibObject.Value) {
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
    @inlinable @discardableResult func connect(signal kind: SubprocessLauncherSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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
    @inlinable var subprocess_launcher_ptr: UnsafeMutablePointer<GSubprocessLauncher>! { return ptr?.assumingMemoryBound(to: GSubprocessLauncher.self) }

    /// Returns the value of the environment variable `variable` in the
    /// environment of processes launched from this launcher.
    /// 
    /// On UNIX, the returned string can be an arbitrary byte string.
    /// On Windows, it will be UTF-8.
    @inlinable func getenv(variable: UnsafePointer<gchar>!) -> String! {
        let rv = g_subprocess_launcher_getenv(subprocess_launcher_ptr, variable).map({ String(cString: $0) })
        return rv
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
    @inlinable func set(childSetup child_setup: GSpawnChildSetupFunc?, userData user_data: gpointer! = nil, destroyNotify destroy_notify: GDestroyNotify?) {
        g_subprocess_launcher_set_child_setup(subprocess_launcher_ptr, child_setup, user_data, destroy_notify)
    
    }

    /// Sets the current working directory that processes will be launched
    /// with.
    /// 
    /// By default processes are launched with the current working directory
    /// of the launching process at the time of launch.
    @inlinable func set(cwd: UnsafePointer<gchar>!) {
        g_subprocess_launcher_set_cwd(subprocess_launcher_ptr, cwd)
    
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
    @inlinable func setEnviron(env: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>!) {
        g_subprocess_launcher_set_environ(subprocess_launcher_ptr, env)
    
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
    @inlinable func set(flags: SubprocessFlags) {
        g_subprocess_launcher_set_flags(subprocess_launcher_ptr, flags.value)
    
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
    @inlinable func setStderrFile(path: UnsafePointer<gchar>? = nil) {
        g_subprocess_launcher_set_stderr_file_path(subprocess_launcher_ptr, path)
    
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
    @inlinable func setStdinFile(path: UnsafePointer<gchar>!) {
        g_subprocess_launcher_set_stdin_file_path(subprocess_launcher_ptr, path)
    
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
    @inlinable func setStdoutFile(path: UnsafePointer<gchar>? = nil) {
        g_subprocess_launcher_set_stdout_file_path(subprocess_launcher_ptr, path)
    
    }

    /// Sets the environment variable `variable` in the environment of
    /// processes launched from this launcher.
    /// 
    /// On UNIX, both the variable's name and value can be arbitrary byte
    /// strings, except that the variable's name cannot contain '='.
    /// On Windows, they should be in UTF-8.
    @inlinable func setenv(variable: UnsafePointer<gchar>!, value: UnsafePointer<gchar>!, overwrite: Bool) {
        g_subprocess_launcher_setenv(subprocess_launcher_ptr, variable, value, gboolean((overwrite) ? 1 : 0))
    
    }


    // *** spawn() is not available because it has a varargs (...) parameter!


    /// Creates a `GSubprocess` given a provided array of arguments.
    @inlinable func spawnv(argv: UnsafePointer<UnsafePointer<gchar>?>!) throws -> SubprocessRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = SubprocessRef(gconstpointer: gconstpointer(g_subprocess_launcher_spawnv(subprocess_launcher_ptr, argv, &error)))
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func takeFd(sourceFd source_fd: Int, targetFd target_fd: Int) {
        g_subprocess_launcher_take_fd(subprocess_launcher_ptr, gint(source_fd), gint(target_fd))
    
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
    @inlinable func takeStderr(fd: Int) {
        g_subprocess_launcher_take_stderr_fd(subprocess_launcher_ptr, gint(fd))
    
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
    @inlinable func takeStdin(fd: Int) {
        g_subprocess_launcher_take_stdin_fd(subprocess_launcher_ptr, gint(fd))
    
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
    @inlinable func takeStdout(fd: Int) {
        g_subprocess_launcher_take_stdout_fd(subprocess_launcher_ptr, gint(fd))
    
    }

    /// Removes the environment variable `variable` from the environment of
    /// processes launched from this launcher.
    /// 
    /// On UNIX, the variable's name can be an arbitrary byte string not
    /// containing '='. On Windows, it should be in UTF-8.
    @inlinable func unsetenv(variable: UnsafePointer<gchar>!) {
        g_subprocess_launcher_unsetenv(subprocess_launcher_ptr, variable)
    
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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTask` instance.
    var task_ptr: UnsafeMutablePointer<GTask>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension TaskRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTask>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTask>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTask>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTask>?) {
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

    /// Reference intialiser for a related type that implements `TaskProtocol`
    @inlinable init<T: TaskProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TaskProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TaskProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TaskProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TaskProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TaskProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
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
    @inlinable init<CancellableT: CancellableProtocol, ObjectT: ObjectProtocol>( source_object: ObjectT? = nil, cancellable: CancellableT? = nil, callback: GAsyncReadyCallback? = nil, callbackData callback_data: gpointer! = nil) {
        let rv = g_task_new(source_object?.object_ptr, cancellable?.cancellable_ptr, callback, callback_data)
        ptr = UnsafeMutableRawPointer(rv)
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
    @inlinable public init(_ op: UnsafeMutablePointer<GTask>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Task` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTask>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Task` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Task` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Task` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTask>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Task` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTask>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GTask`.
    /// i.e., ownership is transferred to the `Task` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTask>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `TaskProtocol`
    /// Will retain `GTask`.
    /// - Parameter other: an instance of a related type that implements `TaskProtocol`
    @inlinable public init<T: TaskProtocol>(task other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TaskProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TaskProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TaskProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TaskProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TaskProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TaskProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TaskProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TaskProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
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
    @inlinable public init<CancellableT: CancellableProtocol, ObjectT: ObjectProtocol>( source_object: ObjectT? = nil, cancellable: CancellableT? = nil, callback: GAsyncReadyCallback? = nil, callbackData callback_data: gpointer! = nil) {
        let rv = g_task_new(source_object?.object_ptr, cancellable?.cancellable_ptr, callback, callback_data)
        super.init(gpointer: (rv))
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: TaskPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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
    @inlinable func get(property: TaskPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Task property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: TaskPropertyName, value v: GLibObject.Value) {
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
    @inlinable @discardableResult func connect(signal kind: TaskSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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
    @inlinable var task_ptr: UnsafeMutablePointer<GTask>! { return ptr?.assumingMemoryBound(to: GTask.self) }

    /// A utility function for dealing with async operations where you need
    /// to wait for a `GSource` to trigger. Attaches `source` to `task`'s
    /// `GMainContext` with `task`'s [priority](#io-priority), and sets `source`'s
    /// callback to `callback`, with `task` as the callback's `user_data`.
    /// 
    /// It will set the `source`’s name to the task’s name (as set with
    /// `g_task_set_name()`), if one has been set.
    /// 
    /// This takes a reference on `task` until `source` is destroyed.
    @inlinable func attach<SourceT: SourceProtocol>(source: SourceT, callback: GSourceFunc?) {
        g_task_attach_source(task_ptr, source.source_ptr, callback)
    
    }

    /// Gets `task`'s `GCancellable`
    @inlinable func getCancellable() -> CancellableRef! {
        let rv = CancellableRef(gconstpointer: gconstpointer(g_task_get_cancellable(task_ptr)))
        return rv
    }

    /// Gets `task`'s check-cancellable flag. See
    /// `g_task_set_check_cancellable()` for more details.
    @inlinable func getCheckCancellable() -> Bool {
        let rv = ((g_task_get_check_cancellable(task_ptr)) != 0)
        return rv
    }

    /// Gets the value of `GTask:completed`. This changes from `false` to `true` after
    /// the task’s callback is invoked, and will return `false` if called from inside
    /// the callback.
    @inlinable func getCompleted() -> Bool {
        let rv = ((g_task_get_completed(task_ptr)) != 0)
        return rv
    }

    /// Gets the `GMainContext` that `task` will return its result in (that
    /// is, the context that was the
    /// [thread-default main context](#g-main-context-push-thread-default)
    /// at the point when `task` was created).
    /// 
    /// This will always return a non-`nil` value, even if the task's
    /// context is the default `GMainContext`.
    @inlinable func getContext() -> MainContextRef! {
        let rv = MainContextRef(gconstpointer: gconstpointer(g_task_get_context(task_ptr)))
        return rv
    }

    /// Gets `task`’s name. See `g_task_set_name()`.
    @inlinable func getName() -> String! {
        let rv = g_task_get_name(task_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets `task`'s priority
    @inlinable func getPriority() -> Int {
        let rv = Int(g_task_get_priority(task_ptr))
        return rv
    }

    /// Gets `task`'s return-on-cancel flag. See
    /// `g_task_set_return_on_cancel()` for more details.
    @inlinable func getReturnOnCancel() -> Bool {
        let rv = ((g_task_get_return_on_cancel(task_ptr)) != 0)
        return rv
    }

    /// Gets the source object from `task`. Like
    /// `g_async_result_get_source_object()`, but does not ref the object.
    @inlinable func getSourceObject() -> ObjectRef! {
        guard let rv = ObjectRef(gpointer: g_task_get_source_object(task_ptr)) else { return nil }
        return rv
    }

    /// Gets `task`'s source tag. See `g_task_set_source_tag()`.
    @inlinable func getSourceTag() -> gpointer! {
        let rv = g_task_get_source_tag(task_ptr)
        return rv
    }

    /// Gets `task`'s `task_data`.
    @inlinable func getTaskData() -> gpointer! {
        let rv = g_task_get_task_data(task_ptr)
        return rv
    }

    /// Tests if `task` resulted in an error.
    @inlinable func hadError() -> Bool {
        let rv = ((g_task_had_error(task_ptr)) != 0)
        return rv
    }

    /// Gets the result of `task` as a `gboolean`.
    /// 
    /// If the task resulted in an error, or was cancelled, then this will
    /// instead return `false` and set `error`.
    /// 
    /// Since this method transfers ownership of the return value (or
    /// error) to the caller, you may only call it once.
    @inlinable func propagateBoolean() throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_task_propagate_boolean(task_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Gets the result of `task` as an integer (`gssize`).
    /// 
    /// If the task resulted in an error, or was cancelled, then this will
    /// instead return -1 and set `error`.
    /// 
    /// Since this method transfers ownership of the return value (or
    /// error) to the caller, you may only call it once.
    @inlinable func propagateInt() throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_task_propagate_int(task_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Gets the result of `task` as a pointer, and transfers ownership
    /// of that value to the caller.
    /// 
    /// If the task resulted in an error, or was cancelled, then this will
    /// instead return `nil` and set `error`.
    /// 
    /// Since this method transfers ownership of the return value (or
    /// error) to the caller, you may only call it once.
    @inlinable func propagatePointer() throws -> gpointer! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_task_propagate_pointer(task_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func propagate<ValueT: ValueProtocol>(value: ValueT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_task_propagate_value(task_ptr, value.value_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Sets `task`'s result to `result` and completes the task (see
    /// `g_task_return_pointer()` for more discussion of exactly what this
    /// means).
    @inlinable func returnBoolean(result: Bool) {
        g_task_return_boolean(task_ptr, gboolean((result) ? 1 : 0))
    
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
    @inlinable func return_<GLibErrorT: ErrorProtocol>(error: GLibErrorT) {
        g_task_return_error(task_ptr, error.error_ptr)
    
    }

    /// Checks if `task`'s `GCancellable` has been cancelled, and if so, sets
    /// `task`'s error accordingly and completes the task (see
    /// `g_task_return_pointer()` for more discussion of exactly what this
    /// means).
    @inlinable func returnErrorIfCancelled() -> Bool {
        let rv = ((g_task_return_error_if_cancelled(task_ptr)) != 0)
        return rv
    }

    /// Sets `task`'s result to `result` and completes the task (see
    /// `g_task_return_pointer()` for more discussion of exactly what this
    /// means).
    @inlinable func returnInt(result: gssize) {
        g_task_return_int(task_ptr, result)
    
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
    @inlinable func returnPointer(result: gpointer! = nil, resultDestroy result_destroy: GDestroyNotify? = nil) {
        g_task_return_pointer(task_ptr, result, result_destroy)
    
    }

    /// Sets `task`'s result to `result` (by copying it) and completes the task.
    /// 
    /// If `result` is `nil` then a `GValue` of type `G_TYPE_POINTER`
    /// with a value of `nil` will be used for the result.
    /// 
    /// This is a very generic low-level method intended primarily for use
    /// by language bindings; for C code, `g_task_return_pointer()` and the
    /// like will normally be much easier to use.
    @inlinable func returnValue<ValueT: ValueProtocol>(result: ValueT? = nil) {
        g_task_return_value(task_ptr, result?.value_ptr)
    
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
    @inlinable func runInThread(taskFunc task_func: GTaskThreadFunc?) {
        g_task_run_in_thread(task_ptr, task_func)
    
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
    @inlinable func runInThreadSync(taskFunc task_func: GTaskThreadFunc?) {
        g_task_run_in_thread_sync(task_ptr, task_func)
    
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
    @inlinable func set(checkCancellable check_cancellable: Bool) {
        g_task_set_check_cancellable(task_ptr, gboolean((check_cancellable) ? 1 : 0))
    
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
    @inlinable func set(name: UnsafePointer<gchar>? = nil) {
        g_task_set_name(task_ptr, name)
    
    }

    /// Sets `task`'s priority. If you do not call this, it will default to
    /// `G_PRIORITY_DEFAULT`.
    /// 
    /// This will affect the priority of `GSources` created with
    /// `g_task_attach_source()` and the scheduling of tasks run in threads,
    /// and can also be explicitly retrieved later via
    /// `g_task_get_priority()`.
    @inlinable func set(priority: Int) {
        g_task_set_priority(task_ptr, gint(priority))
    
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
    @inlinable func set(returnOnCancel return_on_cancel: Bool) -> Bool {
        let rv = ((g_task_set_return_on_cancel(task_ptr, gboolean((return_on_cancel) ? 1 : 0))) != 0)
        return rv
    }

    /// Sets `task`'s source tag. You can use this to tag a task return
    /// value with a particular pointer (usually a pointer to the function
    /// doing the tagging) and then later check it using
    /// `g_task_get_source_tag()` (or `g_async_result_is_tagged()`) in the
    /// task's "finish" function, to figure out if the response came from a
    /// particular place.
    @inlinable func set(sourceTag source_tag: gpointer! = nil) {
        g_task_set_source_tag(task_ptr, source_tag)
    
    }

    /// Sets `task`'s task data (freeing the existing task data, if any).
    @inlinable func set(taskData task_data: gpointer! = nil, taskDataDestroy task_data_destroy: GDestroyNotify? = nil) {
        g_task_set_task_data(task_ptr, task_data, task_data_destroy)
    
    }
    /// Gets `task`'s `GCancellable`
    @inlinable var cancellable: CancellableRef! {
        /// Gets `task`'s `GCancellable`
        get {
            let rv = CancellableRef(gconstpointer: gconstpointer(g_task_get_cancellable(task_ptr)))
            return rv
        }
    }

    /// Gets `task`'s check-cancellable flag. See
    /// `g_task_set_check_cancellable()` for more details.
    @inlinable var checkCancellable: Bool {
        /// Gets `task`'s check-cancellable flag. See
        /// `g_task_set_check_cancellable()` for more details.
        get {
            let rv = ((g_task_get_check_cancellable(task_ptr)) != 0)
            return rv
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
            g_task_set_check_cancellable(task_ptr, gboolean((newValue) ? 1 : 0))
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
    @inlinable var completed: Bool {
        /// Gets the value of `GTask:completed`. This changes from `false` to `true` after
        /// the task’s callback is invoked, and will return `false` if called from inside
        /// the callback.
        get {
            let rv = ((g_task_get_completed(task_ptr)) != 0)
            return rv
        }
    }

    /// Gets the `GMainContext` that `task` will return its result in (that
    /// is, the context that was the
    /// [thread-default main context](#g-main-context-push-thread-default)
    /// at the point when `task` was created).
    /// 
    /// This will always return a non-`nil` value, even if the task's
    /// context is the default `GMainContext`.
    @inlinable var context: MainContextRef! {
        /// Gets the `GMainContext` that `task` will return its result in (that
        /// is, the context that was the
        /// [thread-default main context](#g-main-context-push-thread-default)
        /// at the point when `task` was created).
        /// 
        /// This will always return a non-`nil` value, even if the task's
        /// context is the default `GMainContext`.
        get {
            let rv = MainContextRef(gconstpointer: gconstpointer(g_task_get_context(task_ptr)))
            return rv
        }
    }

    /// Gets `task`’s name. See `g_task_set_name()`.
    @inlinable var name: String! {
        /// Gets `task`’s name. See `g_task_set_name()`.
        get {
            let rv = g_task_get_name(task_ptr).map({ String(cString: $0) })
            return rv
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
            g_task_set_name(task_ptr, newValue)
        }
    }

    /// Gets `task`'s priority
    @inlinable var priority: Int {
        /// Gets `task`'s priority
        get {
            let rv = Int(g_task_get_priority(task_ptr))
            return rv
        }
        /// Sets `task`'s priority. If you do not call this, it will default to
        /// `G_PRIORITY_DEFAULT`.
        /// 
        /// This will affect the priority of `GSources` created with
        /// `g_task_attach_source()` and the scheduling of tasks run in threads,
        /// and can also be explicitly retrieved later via
        /// `g_task_get_priority()`.
        nonmutating set {
            g_task_set_priority(task_ptr, gint(newValue))
        }
    }

    /// Gets `task`'s return-on-cancel flag. See
    /// `g_task_set_return_on_cancel()` for more details.
    @inlinable var returnOnCancel: Bool {
        /// Gets `task`'s return-on-cancel flag. See
        /// `g_task_set_return_on_cancel()` for more details.
        get {
            let rv = ((g_task_get_return_on_cancel(task_ptr)) != 0)
            return rv
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
            _ = g_task_set_return_on_cancel(task_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the source object from `task`. Like
    /// `g_async_result_get_source_object()`, but does not ref the object.
    @inlinable var sourceObject: ObjectRef! {
        /// Gets the source object from `task`. Like
        /// `g_async_result_get_source_object()`, but does not ref the object.
        get {
            guard let rv = ObjectRef(gpointer: g_task_get_source_object(task_ptr)) else { return nil }
            return rv
        }
    }

    /// Gets `task`'s source tag. See `g_task_set_source_tag()`.
    @inlinable var sourceTag: gpointer! {
        /// Gets `task`'s source tag. See `g_task_set_source_tag()`.
        get {
            let rv = g_task_get_source_tag(task_ptr)
            return rv
        }
        /// Sets `task`'s source tag. You can use this to tag a task return
        /// value with a particular pointer (usually a pointer to the function
        /// doing the tagging) and then later check it using
        /// `g_task_get_source_tag()` (or `g_async_result_is_tagged()`) in the
        /// task's "finish" function, to figure out if the response came from a
        /// particular place.
        nonmutating set {
            g_task_set_source_tag(task_ptr, newValue)
        }
    }

    /// Gets `task`'s `task_data`.
    @inlinable var taskData: gpointer! {
        /// Gets `task`'s `task_data`.
        get {
            let rv = g_task_get_task_data(task_ptr)
            return rv
        }
    }


}



