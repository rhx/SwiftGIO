import CGLib
import GLib
import GLibObject

// MARK: - TLSClientConnection Interface

/// The `TLSClientConnectionProtocol` protocol exposes the methods and properties of an underlying `GTlsClientConnection` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TLSClientConnection`.
/// Alternatively, use `TLSClientConnectionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GTlsClientConnection` is the client-side subclass of
/// `GTlsConnection`, representing a client-side TLS connection.
public protocol TLSClientConnectionProtocol: TLSConnectionProtocol {
        /// Untyped pointer to the underlying `GTlsClientConnection` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTlsClientConnection` instance.
    var tls_client_connection_ptr: UnsafeMutablePointer<GTlsClientConnection>! { get }

}

/// The `TLSClientConnectionRef` type acts as a lightweight Swift reference to an underlying `GTlsClientConnection` instance.
/// It exposes methods that can operate on this data type through `TLSClientConnectionProtocol` conformance.
/// Use `TLSClientConnectionRef` only as an `unowned` reference to an existing `GTlsClientConnection` instance.
///
/// `GTlsClientConnection` is the client-side subclass of
/// `GTlsConnection`, representing a client-side TLS connection.
public struct TLSClientConnectionRef: TLSClientConnectionProtocol {
        /// Untyped pointer to the underlying `GTlsClientConnection` instance.
    /// For type-safe access, use the generated, typed pointer `tls_client_connection_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TLSClientConnectionRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTlsClientConnection>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTlsClientConnection>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTlsClientConnection>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTlsClientConnection>?) {
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

    /// Reference intialiser for a related type that implements `TLSClientConnectionProtocol`
    @inlinable init<T: TLSClientConnectionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSClientConnectionProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSClientConnectionProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSClientConnectionProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSClientConnectionProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSClientConnectionProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TLSClientConnection` type acts as a reference-counted owner of an underlying `GTlsClientConnection` instance.
/// It provides the methods that can operate on this data type through `TLSClientConnectionProtocol` conformance.
/// Use `TLSClientConnection` as a strong reference or owner of a `GTlsClientConnection` instance.
///
/// `GTlsClientConnection` is the client-side subclass of
/// `GTlsConnection`, representing a client-side TLS connection.
open class TLSClientConnection: TLSConnection, TLSClientConnectionProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSClientConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTlsClientConnection>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSClientConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTlsClientConnection>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSClientConnection` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSClientConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSClientConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTlsClientConnection>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSClientConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTlsClientConnection>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GTlsClientConnection`.
    /// i.e., ownership is transferred to the `TLSClientConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTlsClientConnection>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `TLSClientConnectionProtocol`
    /// Will retain `GTlsClientConnection`.
    /// - Parameter other: an instance of a related type that implements `TLSClientConnectionProtocol`
    @inlinable public init<T: TLSClientConnectionProtocol>(tlsClientConnection other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSClientConnectionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSClientConnectionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSClientConnectionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSClientConnectionProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSClientConnectionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSClientConnectionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSClientConnectionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSClientConnectionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum TLSClientConnectionPropertyName: String, PropertyNameProtocol {
    /// A list of the distinguished names of the Certificate Authorities
    /// that the server will accept client certificates signed by. If the
    /// server requests a client certificate during the handshake, then
    /// this property will be set after the handshake completes.
    /// 
    /// Each item in the list is a `GByteArray` which contains the complete
    /// subject DN of the certificate authority.
    case acceptedCas = "accepted-cas"
    /// The list of application-layer protocols that the connection
    /// advertises that it is willing to speak. See
    /// `g_tls_connection_set_advertised_protocols()`.
    case advertisedProtocols = "advertised-protocols"
    /// The `GIOStream` that the connection wraps. The connection holds a reference
    /// to this stream, and may run operations on the stream from other threads
    /// throughout its lifetime. Consequently, after the `GIOStream` has been
    /// constructed, application code may only run its own operations on this
    /// stream when no `GIOStream` operations are running.
    case baseIoStream = "base-io-stream"
    /// The connection's certificate; see
    /// `g_tls_connection_set_certificate()`.
    case certificate = "certificate"
    case closed = "closed"
    /// The certificate database to use when verifying this TLS connection.
    /// If no certificate database is set, then the default database will be
    /// used. See `g_tls_backend_get_default_database()`.
    case database = "database"
    case inputStream = "input-stream"
    /// A `GTlsInteraction` object to be used when the connection or certificate
    /// database need to interact with the user. This will be used to prompt the
    /// user for passwords where necessary.
    case interaction = "interaction"
    /// The application-layer protocol negotiated during the TLS
    /// handshake. See `g_tls_connection_get_negotiated_protocol()`.
    case negotiatedProtocol = "negotiated-protocol"
    case outputStream = "output-stream"
    /// The connection's peer's certificate, after the TLS handshake has
    /// completed or failed. Note in particular that this is not yet set
    /// during the emission of `GTlsConnection::accept`-certificate.
    /// 
    /// (You can watch for a `GObject::notify` signal on this property to
    /// detect when a handshake has occurred.)
    case peerCertificate = "peer-certificate"
    /// The errors noticed while verifying
    /// `GTlsConnection:peer`-certificate. Normally this should be 0, but
    /// it may not be if `GTlsClientConnection:validation`-flags is not
    /// `G_TLS_CERTIFICATE_VALIDATE_ALL`, or if
    /// `GTlsConnection::accept`-certificate overrode the default
    /// behavior.
    case peerCertificateErrors = "peer-certificate-errors"
    /// The rehandshaking mode. See
    /// `g_tls_connection_set_rehandshake_mode()`.
    ///
    /// **rehandshake-mode is deprecated:**
    /// The rehandshake mode is ignored.
    case rehandshakeMode = "rehandshake-mode"
    /// Whether or not proper TLS close notification is required.
    /// See `g_tls_connection_set_require_close_notify()`.
    case requireCloseNotify = "require-close-notify"
    /// A `GSocketConnectable` describing the identity of the server that
    /// is expected on the other end of the connection.
    /// 
    /// If the `G_TLS_CERTIFICATE_BAD_IDENTITY` flag is set in
    /// `GTlsClientConnection:validation`-flags, this object will be used
    /// to determine the expected identify of the remote end of the
    /// connection; if `GTlsClientConnection:server`-identity is not set,
    /// or does not match the identity presented by the server, then the
    /// `G_TLS_CERTIFICATE_BAD_IDENTITY` validation will fail.
    /// 
    /// In addition to its use in verifying the server certificate,
    /// this is also used to give a hint to the server about what
    /// certificate we expect, which is useful for servers that serve
    /// virtual hosts.
    case serverIdentity = "server-identity"
    /// SSL 3.0 is no longer supported. See
    /// `g_tls_client_connection_set_use_ssl3()` for details.
    ///
    /// **use-ssl3 is deprecated:**
    /// SSL 3.0 is insecure.
    case useSSL3 = "use-ssl3"
    /// Whether or not the system certificate database will be used to
    /// verify peer certificates. See
    /// `g_tls_connection_set_use_system_certdb()`.
    ///
    /// **use-system-certdb is deprecated:**
    /// Use GTlsConnection:database instead
    case useSystemCertdb = "use-system-certdb"
    /// What steps to perform when validating a certificate received from
    /// a server. Server certificates that fail to validate in any of the
    /// ways indicated here will be rejected unless the application
    /// overrides the default via `GTlsConnection::accept`-certificate.
    case validationFlags = "validation-flags"
}

public extension TLSClientConnectionProtocol {
    /// Bind a `TLSClientConnectionPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: TLSClientConnectionPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a TLSClientConnection property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: TLSClientConnectionPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a TLSClientConnection property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: TLSClientConnectionPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum TLSClientConnectionSignalName: String, SignalNameProtocol {
    /// Emitted during the TLS handshake after the peer certificate has
    /// been received. You can examine `peer_cert`'s certification path by
    /// calling `g_tls_certificate_get_issuer()` on it.
    /// 
    /// For a client-side connection, `peer_cert` is the server's
    /// certificate, and the signal will only be emitted if the
    /// certificate was not acceptable according to `conn`'s
    /// `GTlsClientConnection:validation_flags`. If you would like the
    /// certificate to be accepted despite `errors`, return `true` from the
    /// signal handler. Otherwise, if no handler accepts the certificate,
    /// the handshake will fail with `G_TLS_ERROR_BAD_CERTIFICATE`.
    /// 
    /// For a server-side connection, `peer_cert` is the certificate
    /// presented by the client, if this was requested via the server's
    /// `GTlsServerConnection:authentication_mode`. On the server side,
    /// the signal is always emitted when the client presents a
    /// certificate, and the certificate will only be accepted if a
    /// handler returns `true`.
    /// 
    /// Note that if this signal is emitted as part of asynchronous I/O
    /// in the main thread, then you should not attempt to interact with
    /// the user before returning from the signal handler. If you want to
    /// let the user decide whether or not to accept the certificate, you
    /// would have to return `false` from the signal handler on the first
    /// attempt, and then after the connection attempt returns a
    /// `G_TLS_ERROR_BAD_CERTIFICATE`, you can interact with the user, and
    /// if the user decides to accept the certificate, remember that fact,
    /// create a new connection, and return `true` from the signal handler
    /// the next time.
    /// 
    /// If you are doing I/O in another thread, you do not
    /// need to worry about this, and can simply block in the signal
    /// handler until the UI thread returns an answer.
    case acceptCertificate = "accept-certificate"
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
    /// A list of the distinguished names of the Certificate Authorities
    /// that the server will accept client certificates signed by. If the
    /// server requests a client certificate during the handshake, then
    /// this property will be set after the handshake completes.
    /// 
    /// Each item in the list is a `GByteArray` which contains the complete
    /// subject DN of the certificate authority.
    case notifyAcceptedCas = "notify::accepted-cas"
    /// The list of application-layer protocols that the connection
    /// advertises that it is willing to speak. See
    /// `g_tls_connection_set_advertised_protocols()`.
    case notifyAdvertisedProtocols = "notify::advertised-protocols"
    /// The `GIOStream` that the connection wraps. The connection holds a reference
    /// to this stream, and may run operations on the stream from other threads
    /// throughout its lifetime. Consequently, after the `GIOStream` has been
    /// constructed, application code may only run its own operations on this
    /// stream when no `GIOStream` operations are running.
    case notifyBaseIoStream = "notify::base-io-stream"
    /// The connection's certificate; see
    /// `g_tls_connection_set_certificate()`.
    case notifyCertificate = "notify::certificate"
    case notifyClosed = "notify::closed"
    /// The certificate database to use when verifying this TLS connection.
    /// If no certificate database is set, then the default database will be
    /// used. See `g_tls_backend_get_default_database()`.
    case notifyDatabase = "notify::database"
    case notifyInputStream = "notify::input-stream"
    /// A `GTlsInteraction` object to be used when the connection or certificate
    /// database need to interact with the user. This will be used to prompt the
    /// user for passwords where necessary.
    case notifyInteraction = "notify::interaction"
    /// The application-layer protocol negotiated during the TLS
    /// handshake. See `g_tls_connection_get_negotiated_protocol()`.
    case notifyNegotiatedProtocol = "notify::negotiated-protocol"
    case notifyOutputStream = "notify::output-stream"
    /// The connection's peer's certificate, after the TLS handshake has
    /// completed or failed. Note in particular that this is not yet set
    /// during the emission of `GTlsConnection::accept`-certificate.
    /// 
    /// (You can watch for a `GObject::notify` signal on this property to
    /// detect when a handshake has occurred.)
    case notifyPeerCertificate = "notify::peer-certificate"
    /// The errors noticed while verifying
    /// `GTlsConnection:peer`-certificate. Normally this should be 0, but
    /// it may not be if `GTlsClientConnection:validation`-flags is not
    /// `G_TLS_CERTIFICATE_VALIDATE_ALL`, or if
    /// `GTlsConnection::accept`-certificate overrode the default
    /// behavior.
    case notifyPeerCertificateErrors = "notify::peer-certificate-errors"
    /// The rehandshaking mode. See
    /// `g_tls_connection_set_rehandshake_mode()`.
    ///
    /// **rehandshake-mode is deprecated:**
    /// The rehandshake mode is ignored.
    case notifyRehandshakeMode = "notify::rehandshake-mode"
    /// Whether or not proper TLS close notification is required.
    /// See `g_tls_connection_set_require_close_notify()`.
    case notifyRequireCloseNotify = "notify::require-close-notify"
    /// A `GSocketConnectable` describing the identity of the server that
    /// is expected on the other end of the connection.
    /// 
    /// If the `G_TLS_CERTIFICATE_BAD_IDENTITY` flag is set in
    /// `GTlsClientConnection:validation`-flags, this object will be used
    /// to determine the expected identify of the remote end of the
    /// connection; if `GTlsClientConnection:server`-identity is not set,
    /// or does not match the identity presented by the server, then the
    /// `G_TLS_CERTIFICATE_BAD_IDENTITY` validation will fail.
    /// 
    /// In addition to its use in verifying the server certificate,
    /// this is also used to give a hint to the server about what
    /// certificate we expect, which is useful for servers that serve
    /// virtual hosts.
    case notifyServerIdentity = "notify::server-identity"
    /// SSL 3.0 is no longer supported. See
    /// `g_tls_client_connection_set_use_ssl3()` for details.
    ///
    /// **use-ssl3 is deprecated:**
    /// SSL 3.0 is insecure.
    case notifyUseSSL3 = "notify::use-ssl3"
    /// Whether or not the system certificate database will be used to
    /// verify peer certificates. See
    /// `g_tls_connection_set_use_system_certdb()`.
    ///
    /// **use-system-certdb is deprecated:**
    /// Use GTlsConnection:database instead
    case notifyUseSystemCertdb = "notify::use-system-certdb"
    /// What steps to perform when validating a certificate received from
    /// a server. Server certificates that fail to validate in any of the
    /// ways indicated here will be rejected unless the application
    /// overrides the default via `GTlsConnection::accept`-certificate.
    case notifyValidationFlags = "notify::validation-flags"
}

public extension TLSClientConnectionProtocol {
    /// Connect a `TLSClientConnectionSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: TLSClientConnectionSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: TLSClientConnection Interface: TLSClientConnectionProtocol extension (methods and fields)
public extension TLSClientConnectionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTlsClientConnection` instance.
    @inlinable var tls_client_connection_ptr: UnsafeMutablePointer<GTlsClientConnection>! { return ptr?.assumingMemoryBound(to: GTlsClientConnection.self) }

    /// Possibly copies session state from one connection to another, for use
    /// in TLS session resumption. This is not normally needed, but may be
    /// used when the same session needs to be used between different
    /// endpoints, as is required by some protocols, such as FTP over TLS.
    /// `source` should have already completed a handshake and, since TLS 1.3,
    /// it should have been used to read data at least once. `conn` should not
    /// have completed a handshake.
    /// 
    /// It is not possible to know whether a call to this function will
    /// actually do anything. Because session resumption is normally used
    /// only for performance benefit, the TLS backend might not implement
    /// this function. Even if implemented, it may not actually succeed in
    /// allowing `conn` to resume `source`'s TLS session, because the server
    /// may not have sent a session resumption token to `source`, or it may
    /// refuse to accept the token from `conn`. There is no way to know
    /// whether a call to this function is actually successful.
    /// 
    /// Using this function is not required to benefit from session
    /// resumption. If the TLS backend supports session resumption, the
    /// session will be resumed automatically if it is possible to do so
    /// without weakening the privacy guarantees normally provided by TLS,
    /// without need to call this function. For example, with TLS 1.3,
    /// a session ticket will be automatically copied from any
    /// `GTlsClientConnection` that has previously received session tickets
    /// from the server, provided a ticket is available that has not
    /// previously been used for session resumption, since session ticket
    /// reuse would be a privacy weakness. Using this function causes the
    /// ticket to be copied without regard for privacy considerations.
    @inlinable func copySessionState<TLSClientConnectionT: TLSClientConnectionProtocol>(source: TLSClientConnectionT) {
        g_tls_client_connection_copy_session_state(tls_client_connection_ptr, source.tls_client_connection_ptr)
    
    }

    /// Gets the list of distinguished names of the Certificate Authorities
    /// that the server will accept certificates from. This will be set
    /// during the TLS handshake if the server requests a certificate.
    /// Otherwise, it will be `nil`.
    /// 
    /// Each item in the list is a `GByteArray` which contains the complete
    /// subject DN of the certificate authority.
    @inlinable func getAcceptedCas() -> GLib.ListRef! {
        let rv = GLib.ListRef(g_tls_client_connection_get_accepted_cas(tls_client_connection_ptr))
        return rv
    }

    /// Gets `conn`'s expected server identity
    @inlinable func getServerIdentity() -> SocketConnectableRef! {
        let rv = SocketConnectableRef(gconstpointer: gconstpointer(g_tls_client_connection_get_server_identity(tls_client_connection_ptr)))
        return rv
    }

    /// SSL 3.0 is no longer supported. See
    /// `g_tls_client_connection_set_use_ssl3()` for details.
    ///
    /// **get_use_ssl3 is deprecated:**
    /// SSL 3.0 is insecure.
    @available(*, deprecated) @inlinable func getUseSSL3() -> Bool {
        let rv = ((g_tls_client_connection_get_use_ssl3(tls_client_connection_ptr)) != 0)
        return rv
    }

    /// Gets `conn`'s validation flags
    @inlinable func getValidationFlags() -> TLSCertificateFlags {
        let rv = TLSCertificateFlags(g_tls_client_connection_get_validation_flags(tls_client_connection_ptr))
        return rv
    }

    /// Sets `conn`'s expected server identity, which is used both to tell
    /// servers on virtual hosts which certificate to present, and also
    /// to let `conn` know what name to look for in the certificate when
    /// performing `G_TLS_CERTIFICATE_BAD_IDENTITY` validation, if enabled.
    @inlinable func setServer<SocketConnectableT: SocketConnectableProtocol>(identity: SocketConnectableT) {
        g_tls_client_connection_set_server_identity(tls_client_connection_ptr, identity.socket_connectable_ptr)
    
    }

    /// Since GLib 2.42.1, SSL 3.0 is no longer supported.
    /// 
    /// From GLib 2.42.1 through GLib 2.62, this function could be used to
    /// force use of TLS 1.0, the lowest-supported TLS protocol version at
    /// the time. In the past, this was needed to connect to broken TLS
    /// servers that exhibited protocol version intolerance. Such servers
    /// are no longer common, and using TLS 1.0 is no longer considered
    /// acceptable.
    /// 
    /// Since GLib 2.64, this function does nothing.
    ///
    /// **set_use_ssl3 is deprecated:**
    /// SSL 3.0 is insecure.
    @available(*, deprecated) @inlinable func set(useSSL3: Bool) {
        g_tls_client_connection_set_use_ssl3(tls_client_connection_ptr, gboolean((useSSL3) ? 1 : 0))
    
    }

    /// Sets `conn`'s validation flags, to override the default set of
    /// checks performed when validating a server certificate. By default,
    /// `G_TLS_CERTIFICATE_VALIDATE_ALL` is used.
    @inlinable func setValidation(flags: TLSCertificateFlags) {
        g_tls_client_connection_set_validation_flags(tls_client_connection_ptr, flags.value)
    
    }
    /// Gets the list of distinguished names of the Certificate Authorities
    /// that the server will accept certificates from. This will be set
    /// during the TLS handshake if the server requests a certificate.
    /// Otherwise, it will be `nil`.
    /// 
    /// Each item in the list is a `GByteArray` which contains the complete
    /// subject DN of the certificate authority.
    @inlinable var acceptedCas: GLib.ListRef! {
        /// Gets the list of distinguished names of the Certificate Authorities
        /// that the server will accept certificates from. This will be set
        /// during the TLS handshake if the server requests a certificate.
        /// Otherwise, it will be `nil`.
        /// 
        /// Each item in the list is a `GByteArray` which contains the complete
        /// subject DN of the certificate authority.
        get {
            let rv = GLib.ListRef(g_tls_client_connection_get_accepted_cas(tls_client_connection_ptr))
            return rv
        }
    }

    /// Gets `conn`'s expected server identity
    @inlinable var serverIdentity: SocketConnectableRef! {
        /// Gets `conn`'s expected server identity
        get {
            let rv = SocketConnectableRef(gconstpointer: gconstpointer(g_tls_client_connection_get_server_identity(tls_client_connection_ptr)))
            return rv
        }
        /// Sets `conn`'s expected server identity, which is used both to tell
        /// servers on virtual hosts which certificate to present, and also
        /// to let `conn` know what name to look for in the certificate when
        /// performing `G_TLS_CERTIFICATE_BAD_IDENTITY` validation, if enabled.
        nonmutating set {
            g_tls_client_connection_set_server_identity(tls_client_connection_ptr, UnsafeMutablePointer<GSocketConnectable>(newValue?.socket_connectable_ptr))
        }
    }

    /// SSL 3.0 is no longer supported. See
    /// `g_tls_client_connection_set_use_ssl3()` for details.
    ///
    /// **get_use_ssl3 is deprecated:**
    /// SSL 3.0 is insecure.
    @inlinable var useSSL3: Bool {
        /// SSL 3.0 is no longer supported. See
        /// `g_tls_client_connection_set_use_ssl3()` for details.
        ///
        /// **get_use_ssl3 is deprecated:**
        /// SSL 3.0 is insecure.
        @available(*, deprecated) get {
            let rv = ((g_tls_client_connection_get_use_ssl3(tls_client_connection_ptr)) != 0)
            return rv
        }
        /// Since GLib 2.42.1, SSL 3.0 is no longer supported.
        /// 
        /// From GLib 2.42.1 through GLib 2.62, this function could be used to
        /// force use of TLS 1.0, the lowest-supported TLS protocol version at
        /// the time. In the past, this was needed to connect to broken TLS
        /// servers that exhibited protocol version intolerance. Such servers
        /// are no longer common, and using TLS 1.0 is no longer considered
        /// acceptable.
        /// 
        /// Since GLib 2.64, this function does nothing.
        ///
        /// **set_use_ssl3 is deprecated:**
        /// SSL 3.0 is insecure.
        @available(*, deprecated) nonmutating set {
            g_tls_client_connection_set_use_ssl3(tls_client_connection_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets `conn`'s validation flags
    @inlinable var validationFlags: TLSCertificateFlags {
        /// Gets `conn`'s validation flags
        get {
            let rv = TLSCertificateFlags(g_tls_client_connection_get_validation_flags(tls_client_connection_ptr))
            return rv
        }
        /// Sets `conn`'s validation flags, to override the default set of
        /// checks performed when validating a server certificate. By default,
        /// `G_TLS_CERTIFICATE_VALIDATE_ALL` is used.
        nonmutating set {
            g_tls_client_connection_set_validation_flags(tls_client_connection_ptr, newValue.value)
        }
    }


}



// MARK: - TLSFileDatabase Interface

/// The `TLSFileDatabaseProtocol` protocol exposes the methods and properties of an underlying `GTlsFileDatabase` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TLSFileDatabase`.
/// Alternatively, use `TLSFileDatabaseRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GTlsFileDatabase` is implemented by `GTlsDatabase` objects which load
/// their certificate information from a file. It is an interface which
/// TLS library specific subtypes implement.
public protocol TLSFileDatabaseProtocol: TLSDatabaseProtocol {
        /// Untyped pointer to the underlying `GTlsFileDatabase` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTlsFileDatabase` instance.
    var tls_file_database_ptr: UnsafeMutablePointer<GTlsFileDatabase>! { get }

}

/// The `TLSFileDatabaseRef` type acts as a lightweight Swift reference to an underlying `GTlsFileDatabase` instance.
/// It exposes methods that can operate on this data type through `TLSFileDatabaseProtocol` conformance.
/// Use `TLSFileDatabaseRef` only as an `unowned` reference to an existing `GTlsFileDatabase` instance.
///
/// `GTlsFileDatabase` is implemented by `GTlsDatabase` objects which load
/// their certificate information from a file. It is an interface which
/// TLS library specific subtypes implement.
public struct TLSFileDatabaseRef: TLSFileDatabaseProtocol {
        /// Untyped pointer to the underlying `GTlsFileDatabase` instance.
    /// For type-safe access, use the generated, typed pointer `tls_file_database_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TLSFileDatabaseRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTlsFileDatabase>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTlsFileDatabase>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTlsFileDatabase>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTlsFileDatabase>?) {
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

    /// Reference intialiser for a related type that implements `TLSFileDatabaseProtocol`
    @inlinable init<T: TLSFileDatabaseProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSFileDatabaseProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSFileDatabaseProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSFileDatabaseProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSFileDatabaseProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSFileDatabaseProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TLSFileDatabase` type acts as a reference-counted owner of an underlying `GTlsFileDatabase` instance.
/// It provides the methods that can operate on this data type through `TLSFileDatabaseProtocol` conformance.
/// Use `TLSFileDatabase` as a strong reference or owner of a `GTlsFileDatabase` instance.
///
/// `GTlsFileDatabase` is implemented by `GTlsDatabase` objects which load
/// their certificate information from a file. It is an interface which
/// TLS library specific subtypes implement.
open class TLSFileDatabase: TLSDatabase, TLSFileDatabaseProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSFileDatabase` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTlsFileDatabase>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSFileDatabase` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTlsFileDatabase>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSFileDatabase` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSFileDatabase` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSFileDatabase` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTlsFileDatabase>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSFileDatabase` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTlsFileDatabase>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GTlsFileDatabase`.
    /// i.e., ownership is transferred to the `TLSFileDatabase` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTlsFileDatabase>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `TLSFileDatabaseProtocol`
    /// Will retain `GTlsFileDatabase`.
    /// - Parameter other: an instance of a related type that implements `TLSFileDatabaseProtocol`
    @inlinable public init<T: TLSFileDatabaseProtocol>(tlsFileDatabase other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSFileDatabaseProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSFileDatabaseProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSFileDatabaseProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSFileDatabaseProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSFileDatabaseProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSFileDatabaseProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSFileDatabaseProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSFileDatabaseProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum TLSFileDatabasePropertyName: String, PropertyNameProtocol {
    /// The path to a file containing PEM encoded certificate authority
    /// root anchors. The certificates in this file will be treated as
    /// root authorities for the purpose of verifying other certificates
    /// via the `g_tls_database_verify_chain()` operation.
    case anchors = "anchors"
}

public extension TLSFileDatabaseProtocol {
    /// Bind a `TLSFileDatabasePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: TLSFileDatabasePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a TLSFileDatabase property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: TLSFileDatabasePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a TLSFileDatabase property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: TLSFileDatabasePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum TLSFileDatabaseSignalName: String, SignalNameProtocol {
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
    /// The path to a file containing PEM encoded certificate authority
    /// root anchors. The certificates in this file will be treated as
    /// root authorities for the purpose of verifying other certificates
    /// via the `g_tls_database_verify_chain()` operation.
    case notifyAnchors = "notify::anchors"
}

public extension TLSFileDatabaseProtocol {
    /// Connect a `TLSFileDatabaseSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: TLSFileDatabaseSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: TLSFileDatabase Interface: TLSFileDatabaseProtocol extension (methods and fields)
public extension TLSFileDatabaseProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTlsFileDatabase` instance.
    @inlinable var tls_file_database_ptr: UnsafeMutablePointer<GTlsFileDatabase>! { return ptr?.assumingMemoryBound(to: GTlsFileDatabase.self) }



}



// MARK: - TLSServerConnection Interface

/// The `TLSServerConnectionProtocol` protocol exposes the methods and properties of an underlying `GTlsServerConnection` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TLSServerConnection`.
/// Alternatively, use `TLSServerConnectionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GTlsServerConnection` is the server-side subclass of `GTlsConnection`,
/// representing a server-side TLS connection.
public protocol TLSServerConnectionProtocol: TLSConnectionProtocol {
        /// Untyped pointer to the underlying `GTlsServerConnection` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTlsServerConnection` instance.
    var tls_server_connection_ptr: UnsafeMutablePointer<GTlsServerConnection>! { get }

}

/// The `TLSServerConnectionRef` type acts as a lightweight Swift reference to an underlying `GTlsServerConnection` instance.
/// It exposes methods that can operate on this data type through `TLSServerConnectionProtocol` conformance.
/// Use `TLSServerConnectionRef` only as an `unowned` reference to an existing `GTlsServerConnection` instance.
///
/// `GTlsServerConnection` is the server-side subclass of `GTlsConnection`,
/// representing a server-side TLS connection.
public struct TLSServerConnectionRef: TLSServerConnectionProtocol {
        /// Untyped pointer to the underlying `GTlsServerConnection` instance.
    /// For type-safe access, use the generated, typed pointer `tls_server_connection_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TLSServerConnectionRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTlsServerConnection>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTlsServerConnection>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTlsServerConnection>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTlsServerConnection>?) {
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

    /// Reference intialiser for a related type that implements `TLSServerConnectionProtocol`
    @inlinable init<T: TLSServerConnectionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSServerConnectionProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSServerConnectionProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSServerConnectionProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSServerConnectionProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSServerConnectionProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TLSServerConnection` type acts as a reference-counted owner of an underlying `GTlsServerConnection` instance.
/// It provides the methods that can operate on this data type through `TLSServerConnectionProtocol` conformance.
/// Use `TLSServerConnection` as a strong reference or owner of a `GTlsServerConnection` instance.
///
/// `GTlsServerConnection` is the server-side subclass of `GTlsConnection`,
/// representing a server-side TLS connection.
open class TLSServerConnection: TLSConnection, TLSServerConnectionProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSServerConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTlsServerConnection>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSServerConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTlsServerConnection>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSServerConnection` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSServerConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSServerConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTlsServerConnection>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSServerConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTlsServerConnection>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GTlsServerConnection`.
    /// i.e., ownership is transferred to the `TLSServerConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTlsServerConnection>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `TLSServerConnectionProtocol`
    /// Will retain `GTlsServerConnection`.
    /// - Parameter other: an instance of a related type that implements `TLSServerConnectionProtocol`
    @inlinable public init<T: TLSServerConnectionProtocol>(tlsServerConnection other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSServerConnectionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSServerConnectionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSServerConnectionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSServerConnectionProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSServerConnectionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSServerConnectionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSServerConnectionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSServerConnectionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum TLSServerConnectionPropertyName: String, PropertyNameProtocol {
    /// The list of application-layer protocols that the connection
    /// advertises that it is willing to speak. See
    /// `g_tls_connection_set_advertised_protocols()`.
    case advertisedProtocols = "advertised-protocols"
    /// The `GTlsAuthenticationMode` for the server. This can be changed
    /// before calling `g_tls_connection_handshake()` if you want to
    /// rehandshake with a different mode from the initial handshake.
    case authenticationMode = "authentication-mode"
    /// The `GIOStream` that the connection wraps. The connection holds a reference
    /// to this stream, and may run operations on the stream from other threads
    /// throughout its lifetime. Consequently, after the `GIOStream` has been
    /// constructed, application code may only run its own operations on this
    /// stream when no `GIOStream` operations are running.
    case baseIoStream = "base-io-stream"
    /// The connection's certificate; see
    /// `g_tls_connection_set_certificate()`.
    case certificate = "certificate"
    case closed = "closed"
    /// The certificate database to use when verifying this TLS connection.
    /// If no certificate database is set, then the default database will be
    /// used. See `g_tls_backend_get_default_database()`.
    case database = "database"
    case inputStream = "input-stream"
    /// A `GTlsInteraction` object to be used when the connection or certificate
    /// database need to interact with the user. This will be used to prompt the
    /// user for passwords where necessary.
    case interaction = "interaction"
    /// The application-layer protocol negotiated during the TLS
    /// handshake. See `g_tls_connection_get_negotiated_protocol()`.
    case negotiatedProtocol = "negotiated-protocol"
    case outputStream = "output-stream"
    /// The connection's peer's certificate, after the TLS handshake has
    /// completed or failed. Note in particular that this is not yet set
    /// during the emission of `GTlsConnection::accept`-certificate.
    /// 
    /// (You can watch for a `GObject::notify` signal on this property to
    /// detect when a handshake has occurred.)
    case peerCertificate = "peer-certificate"
    /// The errors noticed while verifying
    /// `GTlsConnection:peer`-certificate. Normally this should be 0, but
    /// it may not be if `GTlsClientConnection:validation`-flags is not
    /// `G_TLS_CERTIFICATE_VALIDATE_ALL`, or if
    /// `GTlsConnection::accept`-certificate overrode the default
    /// behavior.
    case peerCertificateErrors = "peer-certificate-errors"
    /// The rehandshaking mode. See
    /// `g_tls_connection_set_rehandshake_mode()`.
    ///
    /// **rehandshake-mode is deprecated:**
    /// The rehandshake mode is ignored.
    case rehandshakeMode = "rehandshake-mode"
    /// Whether or not proper TLS close notification is required.
    /// See `g_tls_connection_set_require_close_notify()`.
    case requireCloseNotify = "require-close-notify"
    /// Whether or not the system certificate database will be used to
    /// verify peer certificates. See
    /// `g_tls_connection_set_use_system_certdb()`.
    ///
    /// **use-system-certdb is deprecated:**
    /// Use GTlsConnection:database instead
    case useSystemCertdb = "use-system-certdb"
}

public extension TLSServerConnectionProtocol {
    /// Bind a `TLSServerConnectionPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: TLSServerConnectionPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a TLSServerConnection property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: TLSServerConnectionPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a TLSServerConnection property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: TLSServerConnectionPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum TLSServerConnectionSignalName: String, SignalNameProtocol {
    /// Emitted during the TLS handshake after the peer certificate has
    /// been received. You can examine `peer_cert`'s certification path by
    /// calling `g_tls_certificate_get_issuer()` on it.
    /// 
    /// For a client-side connection, `peer_cert` is the server's
    /// certificate, and the signal will only be emitted if the
    /// certificate was not acceptable according to `conn`'s
    /// `GTlsClientConnection:validation_flags`. If you would like the
    /// certificate to be accepted despite `errors`, return `true` from the
    /// signal handler. Otherwise, if no handler accepts the certificate,
    /// the handshake will fail with `G_TLS_ERROR_BAD_CERTIFICATE`.
    /// 
    /// For a server-side connection, `peer_cert` is the certificate
    /// presented by the client, if this was requested via the server's
    /// `GTlsServerConnection:authentication_mode`. On the server side,
    /// the signal is always emitted when the client presents a
    /// certificate, and the certificate will only be accepted if a
    /// handler returns `true`.
    /// 
    /// Note that if this signal is emitted as part of asynchronous I/O
    /// in the main thread, then you should not attempt to interact with
    /// the user before returning from the signal handler. If you want to
    /// let the user decide whether or not to accept the certificate, you
    /// would have to return `false` from the signal handler on the first
    /// attempt, and then after the connection attempt returns a
    /// `G_TLS_ERROR_BAD_CERTIFICATE`, you can interact with the user, and
    /// if the user decides to accept the certificate, remember that fact,
    /// create a new connection, and return `true` from the signal handler
    /// the next time.
    /// 
    /// If you are doing I/O in another thread, you do not
    /// need to worry about this, and can simply block in the signal
    /// handler until the UI thread returns an answer.
    case acceptCertificate = "accept-certificate"
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
    /// The list of application-layer protocols that the connection
    /// advertises that it is willing to speak. See
    /// `g_tls_connection_set_advertised_protocols()`.
    case notifyAdvertisedProtocols = "notify::advertised-protocols"
    /// The `GTlsAuthenticationMode` for the server. This can be changed
    /// before calling `g_tls_connection_handshake()` if you want to
    /// rehandshake with a different mode from the initial handshake.
    case notifyAuthenticationMode = "notify::authentication-mode"
    /// The `GIOStream` that the connection wraps. The connection holds a reference
    /// to this stream, and may run operations on the stream from other threads
    /// throughout its lifetime. Consequently, after the `GIOStream` has been
    /// constructed, application code may only run its own operations on this
    /// stream when no `GIOStream` operations are running.
    case notifyBaseIoStream = "notify::base-io-stream"
    /// The connection's certificate; see
    /// `g_tls_connection_set_certificate()`.
    case notifyCertificate = "notify::certificate"
    case notifyClosed = "notify::closed"
    /// The certificate database to use when verifying this TLS connection.
    /// If no certificate database is set, then the default database will be
    /// used. See `g_tls_backend_get_default_database()`.
    case notifyDatabase = "notify::database"
    case notifyInputStream = "notify::input-stream"
    /// A `GTlsInteraction` object to be used when the connection or certificate
    /// database need to interact with the user. This will be used to prompt the
    /// user for passwords where necessary.
    case notifyInteraction = "notify::interaction"
    /// The application-layer protocol negotiated during the TLS
    /// handshake. See `g_tls_connection_get_negotiated_protocol()`.
    case notifyNegotiatedProtocol = "notify::negotiated-protocol"
    case notifyOutputStream = "notify::output-stream"
    /// The connection's peer's certificate, after the TLS handshake has
    /// completed or failed. Note in particular that this is not yet set
    /// during the emission of `GTlsConnection::accept`-certificate.
    /// 
    /// (You can watch for a `GObject::notify` signal on this property to
    /// detect when a handshake has occurred.)
    case notifyPeerCertificate = "notify::peer-certificate"
    /// The errors noticed while verifying
    /// `GTlsConnection:peer`-certificate. Normally this should be 0, but
    /// it may not be if `GTlsClientConnection:validation`-flags is not
    /// `G_TLS_CERTIFICATE_VALIDATE_ALL`, or if
    /// `GTlsConnection::accept`-certificate overrode the default
    /// behavior.
    case notifyPeerCertificateErrors = "notify::peer-certificate-errors"
    /// The rehandshaking mode. See
    /// `g_tls_connection_set_rehandshake_mode()`.
    ///
    /// **rehandshake-mode is deprecated:**
    /// The rehandshake mode is ignored.
    case notifyRehandshakeMode = "notify::rehandshake-mode"
    /// Whether or not proper TLS close notification is required.
    /// See `g_tls_connection_set_require_close_notify()`.
    case notifyRequireCloseNotify = "notify::require-close-notify"
    /// Whether or not the system certificate database will be used to
    /// verify peer certificates. See
    /// `g_tls_connection_set_use_system_certdb()`.
    ///
    /// **use-system-certdb is deprecated:**
    /// Use GTlsConnection:database instead
    case notifyUseSystemCertdb = "notify::use-system-certdb"
}

public extension TLSServerConnectionProtocol {
    /// Connect a `TLSServerConnectionSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: TLSServerConnectionSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: TLSServerConnection Interface: TLSServerConnectionProtocol extension (methods and fields)
public extension TLSServerConnectionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTlsServerConnection` instance.
    @inlinable var tls_server_connection_ptr: UnsafeMutablePointer<GTlsServerConnection>! { return ptr?.assumingMemoryBound(to: GTlsServerConnection.self) }



}



// MARK: - Volume Interface

/// The `VolumeProtocol` protocol exposes the methods and properties of an underlying `GVolume` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Volume`.
/// Alternatively, use `VolumeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GVolume` interface represents user-visible objects that can be
/// mounted. Note, when porting from GnomeVFS, `GVolume` is the moral
/// equivalent of `GnomeVFSDrive`.
/// 
/// Mounting a `GVolume` instance is an asynchronous operation. For more
/// information about asynchronous operations, see `GAsyncResult` and
/// `GTask`. To mount a `GVolume`, first call `g_volume_mount()` with (at
/// least) the `GVolume` instance, optionally a `GMountOperation` object
/// and a `GAsyncReadyCallback`.
/// 
/// Typically, one will only want to pass `nil` for the
/// `GMountOperation` if automounting all volumes when a desktop session
/// starts since it's not desirable to put up a lot of dialogs asking
/// for credentials.
/// 
/// The callback will be fired when the operation has resolved (either
/// with success or failure), and a `GAsyncResult` instance will be
/// passed to the callback.  That callback should then call
/// `g_volume_mount_finish()` with the `GVolume` instance and the
/// `GAsyncResult` data to see if the operation was completed
/// successfully.  If an `error` is present when `g_volume_mount_finish()`
/// is called, then it will be filled with any error information.
/// 
/// ## Volume Identifiers # <a name="volume-identifier"></a>
/// 
/// It is sometimes necessary to directly access the underlying
/// operating system object behind a volume (e.g. for passing a volume
/// to an application via the commandline). For this purpose, GIO
/// allows to obtain an 'identifier' for the volume. There can be
/// different kinds of identifiers, such as Hal UDIs, filesystem labels,
/// traditional Unix devices (e.g. `/dev/sda2`), UUIDs. GIO uses predefined
/// strings as names for the different kinds of identifiers:
/// `G_VOLUME_IDENTIFIER_KIND_UUID`, `G_VOLUME_IDENTIFIER_KIND_LABEL`, etc.
/// Use `g_volume_get_identifier()` to obtain an identifier for a volume.
/// 
/// 
/// Note that `G_VOLUME_IDENTIFIER_KIND_HAL_UDI` will only be available
/// when the gvfs hal volume monitor is in use. Other volume monitors
/// will generally be able to provide the `G_VOLUME_IDENTIFIER_KIND_UNIX_DEVICE`
/// identifier, which can be used to obtain a hal device by means of
/// `libhal_manager_find_device_string_match()`.
public protocol VolumeProtocol {
        /// Untyped pointer to the underlying `GVolume` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GVolume` instance.
    var volume_ptr: UnsafeMutablePointer<GVolume>! { get }

}

/// The `VolumeRef` type acts as a lightweight Swift reference to an underlying `GVolume` instance.
/// It exposes methods that can operate on this data type through `VolumeProtocol` conformance.
/// Use `VolumeRef` only as an `unowned` reference to an existing `GVolume` instance.
///
/// The `GVolume` interface represents user-visible objects that can be
/// mounted. Note, when porting from GnomeVFS, `GVolume` is the moral
/// equivalent of `GnomeVFSDrive`.
/// 
/// Mounting a `GVolume` instance is an asynchronous operation. For more
/// information about asynchronous operations, see `GAsyncResult` and
/// `GTask`. To mount a `GVolume`, first call `g_volume_mount()` with (at
/// least) the `GVolume` instance, optionally a `GMountOperation` object
/// and a `GAsyncReadyCallback`.
/// 
/// Typically, one will only want to pass `nil` for the
/// `GMountOperation` if automounting all volumes when a desktop session
/// starts since it's not desirable to put up a lot of dialogs asking
/// for credentials.
/// 
/// The callback will be fired when the operation has resolved (either
/// with success or failure), and a `GAsyncResult` instance will be
/// passed to the callback.  That callback should then call
/// `g_volume_mount_finish()` with the `GVolume` instance and the
/// `GAsyncResult` data to see if the operation was completed
/// successfully.  If an `error` is present when `g_volume_mount_finish()`
/// is called, then it will be filled with any error information.
/// 
/// ## Volume Identifiers # <a name="volume-identifier"></a>
/// 
/// It is sometimes necessary to directly access the underlying
/// operating system object behind a volume (e.g. for passing a volume
/// to an application via the commandline). For this purpose, GIO
/// allows to obtain an 'identifier' for the volume. There can be
/// different kinds of identifiers, such as Hal UDIs, filesystem labels,
/// traditional Unix devices (e.g. `/dev/sda2`), UUIDs. GIO uses predefined
/// strings as names for the different kinds of identifiers:
/// `G_VOLUME_IDENTIFIER_KIND_UUID`, `G_VOLUME_IDENTIFIER_KIND_LABEL`, etc.
/// Use `g_volume_get_identifier()` to obtain an identifier for a volume.
/// 
/// 
/// Note that `G_VOLUME_IDENTIFIER_KIND_HAL_UDI` will only be available
/// when the gvfs hal volume monitor is in use. Other volume monitors
/// will generally be able to provide the `G_VOLUME_IDENTIFIER_KIND_UNIX_DEVICE`
/// identifier, which can be used to obtain a hal device by means of
/// `libhal_manager_find_device_string_match()`.
public struct VolumeRef: VolumeProtocol {
        /// Untyped pointer to the underlying `GVolume` instance.
    /// For type-safe access, use the generated, typed pointer `volume_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension VolumeRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GVolume>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GVolume>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GVolume>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GVolume>?) {
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

    /// Reference intialiser for a related type that implements `VolumeProtocol`
    @inlinable init<T: VolumeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Volume` type acts as an owner of an underlying `GVolume` instance.
/// It provides the methods that can operate on this data type through `VolumeProtocol` conformance.
/// Use `Volume` as a strong reference or owner of a `GVolume` instance.
///
/// The `GVolume` interface represents user-visible objects that can be
/// mounted. Note, when porting from GnomeVFS, `GVolume` is the moral
/// equivalent of `GnomeVFSDrive`.
/// 
/// Mounting a `GVolume` instance is an asynchronous operation. For more
/// information about asynchronous operations, see `GAsyncResult` and
/// `GTask`. To mount a `GVolume`, first call `g_volume_mount()` with (at
/// least) the `GVolume` instance, optionally a `GMountOperation` object
/// and a `GAsyncReadyCallback`.
/// 
/// Typically, one will only want to pass `nil` for the
/// `GMountOperation` if automounting all volumes when a desktop session
/// starts since it's not desirable to put up a lot of dialogs asking
/// for credentials.
/// 
/// The callback will be fired when the operation has resolved (either
/// with success or failure), and a `GAsyncResult` instance will be
/// passed to the callback.  That callback should then call
/// `g_volume_mount_finish()` with the `GVolume` instance and the
/// `GAsyncResult` data to see if the operation was completed
/// successfully.  If an `error` is present when `g_volume_mount_finish()`
/// is called, then it will be filled with any error information.
/// 
/// ## Volume Identifiers # <a name="volume-identifier"></a>
/// 
/// It is sometimes necessary to directly access the underlying
/// operating system object behind a volume (e.g. for passing a volume
/// to an application via the commandline). For this purpose, GIO
/// allows to obtain an 'identifier' for the volume. There can be
/// different kinds of identifiers, such as Hal UDIs, filesystem labels,
/// traditional Unix devices (e.g. `/dev/sda2`), UUIDs. GIO uses predefined
/// strings as names for the different kinds of identifiers:
/// `G_VOLUME_IDENTIFIER_KIND_UUID`, `G_VOLUME_IDENTIFIER_KIND_LABEL`, etc.
/// Use `g_volume_get_identifier()` to obtain an identifier for a volume.
/// 
/// 
/// Note that `G_VOLUME_IDENTIFIER_KIND_HAL_UDI` will only be available
/// when the gvfs hal volume monitor is in use. Other volume monitors
/// will generally be able to provide the `G_VOLUME_IDENTIFIER_KIND_UNIX_DEVICE`
/// identifier, which can be used to obtain a hal device by means of
/// `libhal_manager_find_device_string_match()`.
open class Volume: VolumeProtocol {
        /// Untyped pointer to the underlying `GVolume` instance.
    /// For type-safe access, use the generated, typed pointer `volume_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Volume` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GVolume>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Volume` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GVolume>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Volume` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Volume` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Volume` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GVolume>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Volume` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GVolume>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GVolume` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Volume` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GVolume>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GVolume, cannot ref(volume_ptr)
    }

    /// Reference intialiser for a related type that implements `VolumeProtocol`
    /// `GVolume` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `VolumeProtocol`
    @inlinable public init<T: VolumeProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GVolume, cannot ref(volume_ptr)
    }

    /// Do-nothing destructor for `GVolume`.
    deinit {
        // no reference counting for GVolume, cannot unref(volume_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GVolume, cannot ref(volume_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GVolume, cannot ref(volume_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GVolume, cannot ref(volume_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GVolume, cannot ref(volume_ptr)
    }



}

// MARK: no Volume properties

public enum VolumeSignalName: String, SignalNameProtocol {
    /// Emitted when the volume has been changed.
    case changed = "changed"
    /// This signal is emitted when the `GVolume` have been removed. If
    /// the recipient is holding references to the object they should
    /// release them so the object can be finalized.
    case removed = "removed"

}

public extension VolumeProtocol {
    /// Connect a `VolumeSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: VolumeSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: Volume Interface: VolumeProtocol extension (methods and fields)
public extension VolumeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GVolume` instance.
    @inlinable var volume_ptr: UnsafeMutablePointer<GVolume>! { return ptr?.assumingMemoryBound(to: GVolume.self) }

    /// Checks if a volume can be ejected.
    @inlinable func canEject() -> Bool {
        let rv = ((g_volume_can_eject(volume_ptr)) != 0)
        return rv
    }

    /// Checks if a volume can be mounted.
    @inlinable func canMount() -> Bool {
        let rv = ((g_volume_can_mount(volume_ptr)) != 0)
        return rv
    }

    /// Ejects a volume. This is an asynchronous operation, and is
    /// finished by calling `g_volume_eject_finish()` with the `volume`
    /// and `GAsyncResult` returned in the `callback`.
    ///
    /// **eject is deprecated:**
    /// Use g_volume_eject_with_operation() instead.
    @available(*, deprecated) @inlinable func eject(flags: MountUnmountFlags, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_volume_eject(volume_ptr, flags.value, cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Ejects a volume. This is an asynchronous operation, and is
    /// finished by calling `g_volume_eject_finish()` with the `volume`
    /// and `GAsyncResult` returned in the `callback`.
    ///
    /// **eject is deprecated:**
    /// Use g_volume_eject_with_operation() instead.
    @available(*, deprecated) @inlinable func eject<CancellableT: CancellableProtocol>(flags: MountUnmountFlags, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_volume_eject(volume_ptr, flags.value, cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes ejecting a volume. If any errors occurred during the operation,
    /// `error` will be set to contain the errors and `false` will be returned.
    ///
    /// **eject_finish is deprecated:**
    /// Use g_volume_eject_with_operation_finish() instead.
    @available(*, deprecated) @inlinable func ejectFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_volume_eject_finish(volume_ptr, result.async_result_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Ejects a volume. This is an asynchronous operation, and is
    /// finished by calling `g_volume_eject_with_operation_finish()` with the `volume`
    /// and `GAsyncResult` data returned in the `callback`.
    @inlinable func ejectWithOperation(flags: MountUnmountFlags, mountOperation: MountOperationRef? = nil, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_volume_eject_with_operation(volume_ptr, flags.value, mountOperation?.mount_operation_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Ejects a volume. This is an asynchronous operation, and is
    /// finished by calling `g_volume_eject_with_operation_finish()` with the `volume`
    /// and `GAsyncResult` data returned in the `callback`.
    @inlinable func ejectWithOperation<CancellableT: CancellableProtocol, MountOperationT: MountOperationProtocol>(flags: MountUnmountFlags, mountOperation: MountOperationT?, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_volume_eject_with_operation(volume_ptr, flags.value, mountOperation?.mount_operation_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes ejecting a volume. If any errors occurred during the operation,
    /// `error` will be set to contain the errors and `false` will be returned.
    @inlinable func ejectWithOperationFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_volume_eject_with_operation_finish(volume_ptr, result.async_result_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Gets the kinds of [identifiers](#volume-identifier) that `volume` has.
    /// Use `g_volume_get_identifier()` to obtain the identifiers themselves.
    @inlinable func enumerateIdentifiers() -> UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>! {
        let rv = g_volume_enumerate_identifiers(volume_ptr)
        return rv
    }

    /// Gets the activation root for a `GVolume` if it is known ahead of
    /// mount time. Returns `nil` otherwise. If not `nil` and if `volume`
    /// is mounted, then the result of `g_mount_get_root()` on the
    /// `GMount` object obtained from `g_volume_get_mount()` will always
    /// either be equal or a prefix of what this function returns. In
    /// other words, in code
    /// 
    /// (C Language Example):
    /// ```C
    ///   GMount *mount;
    ///   GFile *mount_root
    ///   GFile *volume_activation_root;
    /// 
    ///   mount = g_volume_get_mount (volume); // mounted, so never NULL
    ///   mount_root = g_mount_get_root (mount);
    ///   volume_activation_root = g_volume_get_activation_root (volume); // assume not NULL
    /// ```
    /// then the expression
    /// (C Language Example):
    /// ```C
    ///   (g_file_has_prefix (volume_activation_root, mount_root) ||
    ///    g_file_equal (volume_activation_root, mount_root))
    /// ```
    /// will always be `true`.
    /// 
    /// Activation roots are typically used in `GVolumeMonitor`
    /// implementations to find the underlying mount to shadow, see
    /// `g_mount_is_shadowed()` for more details.
    @inlinable func getActivationRoot() -> FileRef! {
        let rv = FileRef(gconstpointer: gconstpointer(g_volume_get_activation_root(volume_ptr)))
        return rv
    }

    /// Gets the drive for the `volume`.
    @inlinable func getDrive() -> DriveRef! {
        let rv = DriveRef(gconstpointer: gconstpointer(g_volume_get_drive(volume_ptr)))
        return rv
    }

    /// Gets the icon for `volume`.
    @inlinable func getIcon() -> IconRef! {
        let rv = IconRef(gconstpointer: gconstpointer(g_volume_get_icon(volume_ptr)))
        return rv
    }

    /// Gets the identifier of the given kind for `volume`.
    /// See the [introduction](#volume-identifier) for more
    /// information about volume identifiers.
    @inlinable func getIdentifier(kind: UnsafePointer<CChar>!) -> String! {
        let rv = g_volume_get_identifier(volume_ptr, kind).map({ String(cString: $0) })
        return rv
    }

    /// Gets the mount for the `volume`.
    @inlinable func getMount() -> MountRef! {
        let rv = MountRef(gconstpointer: gconstpointer(g_volume_get_mount(volume_ptr)))
        return rv
    }

    /// Gets the name of `volume`.
    @inlinable func getName() -> String! {
        let rv = g_volume_get_name(volume_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the sort key for `volume`, if any.
    @inlinable func getSortKey() -> String! {
        let rv = g_volume_get_sort_key(volume_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the symbolic icon for `volume`.
    @inlinable func getSymbolicIcon() -> IconRef! {
        let rv = IconRef(gconstpointer: gconstpointer(g_volume_get_symbolic_icon(volume_ptr)))
        return rv
    }

    /// Gets the UUID for the `volume`. The reference is typically based on
    /// the file system UUID for the volume in question and should be
    /// considered an opaque string. Returns `nil` if there is no UUID
    /// available.
    @inlinable func getUuid() -> String! {
        let rv = g_volume_get_uuid(volume_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Mounts a volume. This is an asynchronous operation, and is
    /// finished by calling `g_volume_mount_finish()` with the `volume`
    /// and `GAsyncResult` returned in the `callback`.
    @inlinable func getMount(flags: MountMountFlags, mountOperation: MountOperationRef? = nil, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_volume_mount(volume_ptr, flags.value, mountOperation?.mount_operation_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Mounts a volume. This is an asynchronous operation, and is
    /// finished by calling `g_volume_mount_finish()` with the `volume`
    /// and `GAsyncResult` returned in the `callback`.
    @inlinable func getMount<CancellableT: CancellableProtocol, MountOperationT: MountOperationProtocol>(flags: MountMountFlags, mountOperation: MountOperationT?, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_volume_mount(volume_ptr, flags.value, mountOperation?.mount_operation_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes mounting a volume. If any errors occurred during the operation,
    /// `error` will be set to contain the errors and `false` will be returned.
    /// 
    /// If the mount operation succeeded, `g_volume_get_mount()` on `volume`
    /// is guaranteed to return the mount right after calling this
    /// function; there's no need to listen for the 'mount-added' signal on
    /// `GVolumeMonitor`.
    @inlinable func mountFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_volume_mount_finish(volume_ptr, result.async_result_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Returns whether the volume should be automatically mounted.
    @inlinable func shouldAutomount() -> Bool {
        let rv = ((g_volume_should_automount(volume_ptr)) != 0)
        return rv
    }
    /// Gets the activation root for a `GVolume` if it is known ahead of
    /// mount time. Returns `nil` otherwise. If not `nil` and if `volume`
    /// is mounted, then the result of `g_mount_get_root()` on the
    /// `GMount` object obtained from `g_volume_get_mount()` will always
    /// either be equal or a prefix of what this function returns. In
    /// other words, in code
    /// 
    /// (C Language Example):
    /// ```C
    ///   GMount *mount;
    ///   GFile *mount_root
    ///   GFile *volume_activation_root;
    /// 
    ///   mount = g_volume_get_mount (volume); // mounted, so never NULL
    ///   mount_root = g_mount_get_root (mount);
    ///   volume_activation_root = g_volume_get_activation_root (volume); // assume not NULL
    /// ```
    /// then the expression
    /// (C Language Example):
    /// ```C
    ///   (g_file_has_prefix (volume_activation_root, mount_root) ||
    ///    g_file_equal (volume_activation_root, mount_root))
    /// ```
    /// will always be `true`.
    /// 
    /// Activation roots are typically used in `GVolumeMonitor`
    /// implementations to find the underlying mount to shadow, see
    /// `g_mount_is_shadowed()` for more details.
    @inlinable var activationRoot: FileRef! {
        /// Gets the activation root for a `GVolume` if it is known ahead of
        /// mount time. Returns `nil` otherwise. If not `nil` and if `volume`
        /// is mounted, then the result of `g_mount_get_root()` on the
        /// `GMount` object obtained from `g_volume_get_mount()` will always
        /// either be equal or a prefix of what this function returns. In
        /// other words, in code
        /// 
        /// (C Language Example):
        /// ```C
        ///   GMount *mount;
        ///   GFile *mount_root
        ///   GFile *volume_activation_root;
        /// 
        ///   mount = g_volume_get_mount (volume); // mounted, so never NULL
        ///   mount_root = g_mount_get_root (mount);
        ///   volume_activation_root = g_volume_get_activation_root (volume); // assume not NULL
        /// ```
        /// then the expression
        /// (C Language Example):
        /// ```C
        ///   (g_file_has_prefix (volume_activation_root, mount_root) ||
        ///    g_file_equal (volume_activation_root, mount_root))
        /// ```
        /// will always be `true`.
        /// 
        /// Activation roots are typically used in `GVolumeMonitor`
        /// implementations to find the underlying mount to shadow, see
        /// `g_mount_is_shadowed()` for more details.
        get {
            let rv = FileRef(gconstpointer: gconstpointer(g_volume_get_activation_root(volume_ptr)))
            return rv
        }
    }

    /// Gets the drive for the `volume`.
    @inlinable var drive: DriveRef! {
        /// Gets the drive for the `volume`.
        get {
            let rv = DriveRef(gconstpointer: gconstpointer(g_volume_get_drive(volume_ptr)))
            return rv
        }
    }

    /// Gets the icon for `volume`.
    @inlinable var icon: IconRef! {
        /// Gets the icon for `volume`.
        get {
            let rv = IconRef(gconstpointer: gconstpointer(g_volume_get_icon(volume_ptr)))
            return rv
        }
    }

    /// Gets the mount for the `volume`.
    @inlinable var mount: MountRef! {
        /// Gets the mount for the `volume`.
        get {
            let rv = MountRef(gconstpointer: gconstpointer(g_volume_get_mount(volume_ptr)))
            return rv
        }
    }

    /// Gets the name of `volume`.
    @inlinable var name: String! {
        /// Gets the name of `volume`.
        get {
            let rv = g_volume_get_name(volume_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the sort key for `volume`, if any.
    @inlinable var sortKey: String! {
        /// Gets the sort key for `volume`, if any.
        get {
            let rv = g_volume_get_sort_key(volume_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the symbolic icon for `volume`.
    @inlinable var symbolicIcon: IconRef! {
        /// Gets the symbolic icon for `volume`.
        get {
            let rv = IconRef(gconstpointer: gconstpointer(g_volume_get_symbolic_icon(volume_ptr)))
            return rv
        }
    }

    /// Gets the UUID for the `volume`. The reference is typically based on
    /// the file system UUID for the volume in question and should be
    /// considered an opaque string. Returns `nil` if there is no UUID
    /// available.
    @inlinable var uuid: String! {
        /// Gets the UUID for the `volume`. The reference is typically based on
        /// the file system UUID for the volume in question and should be
        /// considered an opaque string. Returns `nil` if there is no UUID
        /// available.
        get {
            let rv = g_volume_get_uuid(volume_ptr).map({ String(cString: $0) })
            return rv
        }
    }


}



