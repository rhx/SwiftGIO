import CGLib
import GLib
import GLibObject

// MARK: - PermissionPrivate Record

/// The `PermissionPrivateProtocol` protocol exposes the methods and properties of an underlying `GPermissionPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PermissionPrivate`.
/// Alternatively, use `PermissionPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol PermissionPrivateProtocol {
    /// Untyped pointer to the underlying `GPermissionPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GPermissionPrivate` instance.
    var _ptr: UnsafeMutablePointer<GPermissionPrivate> { get }
}

/// The `PermissionPrivateRef` type acts as a lightweight Swift reference to an underlying `GPermissionPrivate` instance.
/// It exposes methods that can operate on this data type through `PermissionPrivateProtocol` conformance.
/// Use `PermissionPrivateRef` only as an `unowned` reference to an existing `GPermissionPrivate` instance.
///

public struct PermissionPrivateRef: PermissionPrivateProtocol {
    /// Untyped pointer to the underlying `GPermissionPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension PermissionPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GPermissionPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PermissionPrivateProtocol`
    init<T: PermissionPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PermissionPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PermissionPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PermissionPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PermissionPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PermissionPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PermissionPrivate` type acts as an owner of an underlying `GPermissionPrivate` instance.
/// It provides the methods that can operate on this data type through `PermissionPrivateProtocol` conformance.
/// Use `PermissionPrivate` as a strong reference or owner of a `GPermissionPrivate` instance.
///

open class PermissionPrivate: PermissionPrivateProtocol {
    /// Untyped pointer to the underlying `GPermissionPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PermissionPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GPermissionPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GPermissionPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `PermissionPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GPermissionPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GPermissionPrivate, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `PermissionPrivateProtocol`
    /// `GPermissionPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `PermissionPrivateProtocol`
    public init<T: PermissionPrivateProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GPermissionPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GPermissionPrivate`.
    deinit {
        // no reference counting for GPermissionPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PermissionPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PermissionPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GPermissionPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PermissionPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PermissionPrivateProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GPermissionPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PermissionPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PermissionPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GPermissionPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PermissionPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PermissionPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GPermissionPrivate, cannot ref(cast(_ptr))
    }



}

// MARK: - no PermissionPrivate properties

// MARK: - no signals


public extension PermissionPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GPermissionPrivate` instance.
    var _ptr: UnsafeMutablePointer<GPermissionPrivate> { return ptr.assumingMemoryBound(to: GPermissionPrivate.self) }

}



// MARK: - PollableInputStreamInterface Record

/// The `PollableInputStreamInterfaceProtocol` protocol exposes the methods and properties of an underlying `GPollableInputStreamInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PollableInputStreamInterface`.
/// Alternatively, use `PollableInputStreamInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
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
public protocol PollableInputStreamInterfaceProtocol {
    /// Untyped pointer to the underlying `GPollableInputStreamInterface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GPollableInputStreamInterface` instance.
    var _ptr: UnsafeMutablePointer<GPollableInputStreamInterface> { get }
}

/// The `PollableInputStreamInterfaceRef` type acts as a lightweight Swift reference to an underlying `GPollableInputStreamInterface` instance.
/// It exposes methods that can operate on this data type through `PollableInputStreamInterfaceProtocol` conformance.
/// Use `PollableInputStreamInterfaceRef` only as an `unowned` reference to an existing `GPollableInputStreamInterface` instance.
///
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
public struct PollableInputStreamInterfaceRef: PollableInputStreamInterfaceProtocol {
    /// Untyped pointer to the underlying `GPollableInputStreamInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension PollableInputStreamInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GPollableInputStreamInterface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PollableInputStreamInterfaceProtocol`
    init<T: PollableInputStreamInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamInterfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamInterfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamInterfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamInterfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamInterfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PollableInputStreamInterface` type acts as an owner of an underlying `GPollableInputStreamInterface` instance.
/// It provides the methods that can operate on this data type through `PollableInputStreamInterfaceProtocol` conformance.
/// Use `PollableInputStreamInterface` as a strong reference or owner of a `GPollableInputStreamInterface` instance.
///
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
open class PollableInputStreamInterface: PollableInputStreamInterfaceProtocol {
    /// Untyped pointer to the underlying `GPollableInputStreamInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PollableInputStreamInterface` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GPollableInputStreamInterface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GPollableInputStreamInterface` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `PollableInputStreamInterface` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GPollableInputStreamInterface>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GPollableInputStreamInterface, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `PollableInputStreamInterfaceProtocol`
    /// `GPollableInputStreamInterface` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `PollableInputStreamInterfaceProtocol`
    public init<T: PollableInputStreamInterfaceProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GPollableInputStreamInterface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GPollableInputStreamInterface`.
    deinit {
        // no reference counting for GPollableInputStreamInterface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamInterfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamInterfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GPollableInputStreamInterface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamInterfaceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamInterfaceProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GPollableInputStreamInterface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamInterfaceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamInterfaceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GPollableInputStreamInterface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamInterfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamInterfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GPollableInputStreamInterface, cannot ref(cast(_ptr))
    }



}

// MARK: - no PollableInputStreamInterface properties

// MARK: - no signals


public extension PollableInputStreamInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GPollableInputStreamInterface` instance.
    var _ptr: UnsafeMutablePointer<GPollableInputStreamInterface> { return ptr.assumingMemoryBound(to: GPollableInputStreamInterface.self) }

}



// MARK: - PollableOutputStreamInterface Record

/// The `PollableOutputStreamInterfaceProtocol` protocol exposes the methods and properties of an underlying `GPollableOutputStreamInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PollableOutputStreamInterface`.
/// Alternatively, use `PollableOutputStreamInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
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
public protocol PollableOutputStreamInterfaceProtocol {
    /// Untyped pointer to the underlying `GPollableOutputStreamInterface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GPollableOutputStreamInterface` instance.
    var _ptr: UnsafeMutablePointer<GPollableOutputStreamInterface> { get }
}

/// The `PollableOutputStreamInterfaceRef` type acts as a lightweight Swift reference to an underlying `GPollableOutputStreamInterface` instance.
/// It exposes methods that can operate on this data type through `PollableOutputStreamInterfaceProtocol` conformance.
/// Use `PollableOutputStreamInterfaceRef` only as an `unowned` reference to an existing `GPollableOutputStreamInterface` instance.
///
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
public struct PollableOutputStreamInterfaceRef: PollableOutputStreamInterfaceProtocol {
    /// Untyped pointer to the underlying `GPollableOutputStreamInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension PollableOutputStreamInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GPollableOutputStreamInterface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PollableOutputStreamInterfaceProtocol`
    init<T: PollableOutputStreamInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableOutputStreamInterfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableOutputStreamInterfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableOutputStreamInterfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableOutputStreamInterfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableOutputStreamInterfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PollableOutputStreamInterface` type acts as an owner of an underlying `GPollableOutputStreamInterface` instance.
/// It provides the methods that can operate on this data type through `PollableOutputStreamInterfaceProtocol` conformance.
/// Use `PollableOutputStreamInterface` as a strong reference or owner of a `GPollableOutputStreamInterface` instance.
///
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
open class PollableOutputStreamInterface: PollableOutputStreamInterfaceProtocol {
    /// Untyped pointer to the underlying `GPollableOutputStreamInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PollableOutputStreamInterface` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GPollableOutputStreamInterface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GPollableOutputStreamInterface` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `PollableOutputStreamInterface` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GPollableOutputStreamInterface>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GPollableOutputStreamInterface, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `PollableOutputStreamInterfaceProtocol`
    /// `GPollableOutputStreamInterface` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `PollableOutputStreamInterfaceProtocol`
    public init<T: PollableOutputStreamInterfaceProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GPollableOutputStreamInterface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GPollableOutputStreamInterface`.
    deinit {
        // no reference counting for GPollableOutputStreamInterface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableOutputStreamInterfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableOutputStreamInterfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GPollableOutputStreamInterface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableOutputStreamInterfaceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableOutputStreamInterfaceProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GPollableOutputStreamInterface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableOutputStreamInterfaceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableOutputStreamInterfaceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GPollableOutputStreamInterface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableOutputStreamInterfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableOutputStreamInterfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GPollableOutputStreamInterface, cannot ref(cast(_ptr))
    }



}

// MARK: - no PollableOutputStreamInterface properties

// MARK: - no signals


public extension PollableOutputStreamInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GPollableOutputStreamInterface` instance.
    var _ptr: UnsafeMutablePointer<GPollableOutputStreamInterface> { return ptr.assumingMemoryBound(to: GPollableOutputStreamInterface.self) }

}



// MARK: - ProxyAddressClass Record

/// The `ProxyAddressClassProtocol` protocol exposes the methods and properties of an underlying `GProxyAddressClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ProxyAddressClass`.
/// Alternatively, use `ProxyAddressClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Class structure for `GProxyAddress`.
public protocol ProxyAddressClassProtocol {
    /// Untyped pointer to the underlying `GProxyAddressClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GProxyAddressClass` instance.
    var _ptr: UnsafeMutablePointer<GProxyAddressClass> { get }
}

/// The `ProxyAddressClassRef` type acts as a lightweight Swift reference to an underlying `GProxyAddressClass` instance.
/// It exposes methods that can operate on this data type through `ProxyAddressClassProtocol` conformance.
/// Use `ProxyAddressClassRef` only as an `unowned` reference to an existing `GProxyAddressClass` instance.
///
/// Class structure for `GProxyAddress`.
public struct ProxyAddressClassRef: ProxyAddressClassProtocol {
    /// Untyped pointer to the underlying `GProxyAddressClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ProxyAddressClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GProxyAddressClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ProxyAddressClassProtocol`
    init<T: ProxyAddressClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ProxyAddressClass` type acts as an owner of an underlying `GProxyAddressClass` instance.
/// It provides the methods that can operate on this data type through `ProxyAddressClassProtocol` conformance.
/// Use `ProxyAddressClass` as a strong reference or owner of a `GProxyAddressClass` instance.
///
/// Class structure for `GProxyAddress`.
open class ProxyAddressClass: ProxyAddressClassProtocol {
    /// Untyped pointer to the underlying `GProxyAddressClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ProxyAddressClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GProxyAddressClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GProxyAddressClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ProxyAddressClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GProxyAddressClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GProxyAddressClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `ProxyAddressClassProtocol`
    /// `GProxyAddressClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ProxyAddressClassProtocol`
    public init<T: ProxyAddressClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GProxyAddressClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GProxyAddressClass`.
    deinit {
        // no reference counting for GProxyAddressClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GProxyAddressClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GProxyAddressClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GProxyAddressClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GProxyAddressClass, cannot ref(cast(_ptr))
    }



}

// MARK: - no ProxyAddressClass properties

// MARK: - no signals


public extension ProxyAddressClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GProxyAddressClass` instance.
    var _ptr: UnsafeMutablePointer<GProxyAddressClass> { return ptr.assumingMemoryBound(to: GProxyAddressClass.self) }

}



// MARK: - ProxyAddressEnumeratorClass Record

/// The `ProxyAddressEnumeratorClassProtocol` protocol exposes the methods and properties of an underlying `GProxyAddressEnumeratorClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ProxyAddressEnumeratorClass`.
/// Alternatively, use `ProxyAddressEnumeratorClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Class structure for `GProxyAddressEnumerator`.
public protocol ProxyAddressEnumeratorClassProtocol {
    /// Untyped pointer to the underlying `GProxyAddressEnumeratorClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GProxyAddressEnumeratorClass` instance.
    var _ptr: UnsafeMutablePointer<GProxyAddressEnumeratorClass> { get }
}

/// The `ProxyAddressEnumeratorClassRef` type acts as a lightweight Swift reference to an underlying `GProxyAddressEnumeratorClass` instance.
/// It exposes methods that can operate on this data type through `ProxyAddressEnumeratorClassProtocol` conformance.
/// Use `ProxyAddressEnumeratorClassRef` only as an `unowned` reference to an existing `GProxyAddressEnumeratorClass` instance.
///
/// Class structure for `GProxyAddressEnumerator`.
public struct ProxyAddressEnumeratorClassRef: ProxyAddressEnumeratorClassProtocol {
    /// Untyped pointer to the underlying `GProxyAddressEnumeratorClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ProxyAddressEnumeratorClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GProxyAddressEnumeratorClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ProxyAddressEnumeratorClassProtocol`
    init<T: ProxyAddressEnumeratorClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ProxyAddressEnumeratorClass` type acts as an owner of an underlying `GProxyAddressEnumeratorClass` instance.
/// It provides the methods that can operate on this data type through `ProxyAddressEnumeratorClassProtocol` conformance.
/// Use `ProxyAddressEnumeratorClass` as a strong reference or owner of a `GProxyAddressEnumeratorClass` instance.
///
/// Class structure for `GProxyAddressEnumerator`.
open class ProxyAddressEnumeratorClass: ProxyAddressEnumeratorClassProtocol {
    /// Untyped pointer to the underlying `GProxyAddressEnumeratorClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ProxyAddressEnumeratorClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GProxyAddressEnumeratorClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GProxyAddressEnumeratorClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ProxyAddressEnumeratorClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GProxyAddressEnumeratorClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GProxyAddressEnumeratorClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `ProxyAddressEnumeratorClassProtocol`
    /// `GProxyAddressEnumeratorClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ProxyAddressEnumeratorClassProtocol`
    public init<T: ProxyAddressEnumeratorClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GProxyAddressEnumeratorClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GProxyAddressEnumeratorClass`.
    deinit {
        // no reference counting for GProxyAddressEnumeratorClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GProxyAddressEnumeratorClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GProxyAddressEnumeratorClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GProxyAddressEnumeratorClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GProxyAddressEnumeratorClass, cannot ref(cast(_ptr))
    }



}

// MARK: - no ProxyAddressEnumeratorClass properties

// MARK: - no signals


public extension ProxyAddressEnumeratorClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GProxyAddressEnumeratorClass` instance.
    var _ptr: UnsafeMutablePointer<GProxyAddressEnumeratorClass> { return ptr.assumingMemoryBound(to: GProxyAddressEnumeratorClass.self) }

}



// MARK: - ProxyAddressEnumeratorPrivate Record

/// The `ProxyAddressEnumeratorPrivateProtocol` protocol exposes the methods and properties of an underlying `GProxyAddressEnumeratorPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ProxyAddressEnumeratorPrivate`.
/// Alternatively, use `ProxyAddressEnumeratorPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ProxyAddressEnumeratorPrivateProtocol {
    /// Untyped pointer to the underlying `GProxyAddressEnumeratorPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GProxyAddressEnumeratorPrivate` instance.
    var _ptr: UnsafeMutablePointer<GProxyAddressEnumeratorPrivate> { get }
}

/// The `ProxyAddressEnumeratorPrivateRef` type acts as a lightweight Swift reference to an underlying `GProxyAddressEnumeratorPrivate` instance.
/// It exposes methods that can operate on this data type through `ProxyAddressEnumeratorPrivateProtocol` conformance.
/// Use `ProxyAddressEnumeratorPrivateRef` only as an `unowned` reference to an existing `GProxyAddressEnumeratorPrivate` instance.
///

public struct ProxyAddressEnumeratorPrivateRef: ProxyAddressEnumeratorPrivateProtocol {
    /// Untyped pointer to the underlying `GProxyAddressEnumeratorPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ProxyAddressEnumeratorPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GProxyAddressEnumeratorPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ProxyAddressEnumeratorPrivateProtocol`
    init<T: ProxyAddressEnumeratorPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ProxyAddressEnumeratorPrivate` type acts as an owner of an underlying `GProxyAddressEnumeratorPrivate` instance.
/// It provides the methods that can operate on this data type through `ProxyAddressEnumeratorPrivateProtocol` conformance.
/// Use `ProxyAddressEnumeratorPrivate` as a strong reference or owner of a `GProxyAddressEnumeratorPrivate` instance.
///

open class ProxyAddressEnumeratorPrivate: ProxyAddressEnumeratorPrivateProtocol {
    /// Untyped pointer to the underlying `GProxyAddressEnumeratorPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ProxyAddressEnumeratorPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GProxyAddressEnumeratorPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GProxyAddressEnumeratorPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ProxyAddressEnumeratorPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GProxyAddressEnumeratorPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GProxyAddressEnumeratorPrivate, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `ProxyAddressEnumeratorPrivateProtocol`
    /// `GProxyAddressEnumeratorPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ProxyAddressEnumeratorPrivateProtocol`
    public init<T: ProxyAddressEnumeratorPrivateProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GProxyAddressEnumeratorPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GProxyAddressEnumeratorPrivate`.
    deinit {
        // no reference counting for GProxyAddressEnumeratorPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GProxyAddressEnumeratorPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorPrivateProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GProxyAddressEnumeratorPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GProxyAddressEnumeratorPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GProxyAddressEnumeratorPrivate, cannot ref(cast(_ptr))
    }



}

// MARK: - no ProxyAddressEnumeratorPrivate properties

// MARK: - no signals


public extension ProxyAddressEnumeratorPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GProxyAddressEnumeratorPrivate` instance.
    var _ptr: UnsafeMutablePointer<GProxyAddressEnumeratorPrivate> { return ptr.assumingMemoryBound(to: GProxyAddressEnumeratorPrivate.self) }

}



// MARK: - ProxyAddressPrivate Record

/// The `ProxyAddressPrivateProtocol` protocol exposes the methods and properties of an underlying `GProxyAddressPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ProxyAddressPrivate`.
/// Alternatively, use `ProxyAddressPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ProxyAddressPrivateProtocol {
    /// Untyped pointer to the underlying `GProxyAddressPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GProxyAddressPrivate` instance.
    var _ptr: UnsafeMutablePointer<GProxyAddressPrivate> { get }
}

/// The `ProxyAddressPrivateRef` type acts as a lightweight Swift reference to an underlying `GProxyAddressPrivate` instance.
/// It exposes methods that can operate on this data type through `ProxyAddressPrivateProtocol` conformance.
/// Use `ProxyAddressPrivateRef` only as an `unowned` reference to an existing `GProxyAddressPrivate` instance.
///

public struct ProxyAddressPrivateRef: ProxyAddressPrivateProtocol {
    /// Untyped pointer to the underlying `GProxyAddressPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ProxyAddressPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GProxyAddressPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ProxyAddressPrivateProtocol`
    init<T: ProxyAddressPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ProxyAddressPrivate` type acts as an owner of an underlying `GProxyAddressPrivate` instance.
/// It provides the methods that can operate on this data type through `ProxyAddressPrivateProtocol` conformance.
/// Use `ProxyAddressPrivate` as a strong reference or owner of a `GProxyAddressPrivate` instance.
///

open class ProxyAddressPrivate: ProxyAddressPrivateProtocol {
    /// Untyped pointer to the underlying `GProxyAddressPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ProxyAddressPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GProxyAddressPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GProxyAddressPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ProxyAddressPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GProxyAddressPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GProxyAddressPrivate, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `ProxyAddressPrivateProtocol`
    /// `GProxyAddressPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ProxyAddressPrivateProtocol`
    public init<T: ProxyAddressPrivateProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GProxyAddressPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GProxyAddressPrivate`.
    deinit {
        // no reference counting for GProxyAddressPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GProxyAddressPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressPrivateProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GProxyAddressPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GProxyAddressPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GProxyAddressPrivate, cannot ref(cast(_ptr))
    }



}

// MARK: - no ProxyAddressPrivate properties

// MARK: - no signals


public extension ProxyAddressPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GProxyAddressPrivate` instance.
    var _ptr: UnsafeMutablePointer<GProxyAddressPrivate> { return ptr.assumingMemoryBound(to: GProxyAddressPrivate.self) }

}



// MARK: - ProxyInterface Record

/// The `ProxyInterfaceProtocol` protocol exposes the methods and properties of an underlying `GProxyInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ProxyInterface`.
/// Alternatively, use `ProxyInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Provides an interface for handling proxy connection and payload.
public protocol ProxyInterfaceProtocol {
    /// Untyped pointer to the underlying `GProxyInterface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GProxyInterface` instance.
    var _ptr: UnsafeMutablePointer<GProxyInterface> { get }
}

/// The `ProxyInterfaceRef` type acts as a lightweight Swift reference to an underlying `GProxyInterface` instance.
/// It exposes methods that can operate on this data type through `ProxyInterfaceProtocol` conformance.
/// Use `ProxyInterfaceRef` only as an `unowned` reference to an existing `GProxyInterface` instance.
///
/// Provides an interface for handling proxy connection and payload.
public struct ProxyInterfaceRef: ProxyInterfaceProtocol {
    /// Untyped pointer to the underlying `GProxyInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ProxyInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GProxyInterface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ProxyInterfaceProtocol`
    init<T: ProxyInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyInterfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyInterfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyInterfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyInterfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyInterfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ProxyInterface` type acts as an owner of an underlying `GProxyInterface` instance.
/// It provides the methods that can operate on this data type through `ProxyInterfaceProtocol` conformance.
/// Use `ProxyInterface` as a strong reference or owner of a `GProxyInterface` instance.
///
/// Provides an interface for handling proxy connection and payload.
open class ProxyInterface: ProxyInterfaceProtocol {
    /// Untyped pointer to the underlying `GProxyInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ProxyInterface` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GProxyInterface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GProxyInterface` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ProxyInterface` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GProxyInterface>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GProxyInterface, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `ProxyInterfaceProtocol`
    /// `GProxyInterface` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ProxyInterfaceProtocol`
    public init<T: ProxyInterfaceProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GProxyInterface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GProxyInterface`.
    deinit {
        // no reference counting for GProxyInterface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyInterfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyInterfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GProxyInterface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyInterfaceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyInterfaceProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GProxyInterface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyInterfaceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyInterfaceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GProxyInterface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyInterfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyInterfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GProxyInterface, cannot ref(cast(_ptr))
    }



}

// MARK: - no ProxyInterface properties

// MARK: - no signals


public extension ProxyInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GProxyInterface` instance.
    var _ptr: UnsafeMutablePointer<GProxyInterface> { return ptr.assumingMemoryBound(to: GProxyInterface.self) }

}



// MARK: - ProxyResolverInterface Record

/// The `ProxyResolverInterfaceProtocol` protocol exposes the methods and properties of an underlying `GProxyResolverInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ProxyResolverInterface`.
/// Alternatively, use `ProxyResolverInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The virtual function table for `GProxyResolver`.
public protocol ProxyResolverInterfaceProtocol {
    /// Untyped pointer to the underlying `GProxyResolverInterface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GProxyResolverInterface` instance.
    var _ptr: UnsafeMutablePointer<GProxyResolverInterface> { get }
}

/// The `ProxyResolverInterfaceRef` type acts as a lightweight Swift reference to an underlying `GProxyResolverInterface` instance.
/// It exposes methods that can operate on this data type through `ProxyResolverInterfaceProtocol` conformance.
/// Use `ProxyResolverInterfaceRef` only as an `unowned` reference to an existing `GProxyResolverInterface` instance.
///
/// The virtual function table for `GProxyResolver`.
public struct ProxyResolverInterfaceRef: ProxyResolverInterfaceProtocol {
    /// Untyped pointer to the underlying `GProxyResolverInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ProxyResolverInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GProxyResolverInterface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ProxyResolverInterfaceProtocol`
    init<T: ProxyResolverInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyResolverInterfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyResolverInterfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyResolverInterfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyResolverInterfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyResolverInterfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ProxyResolverInterface` type acts as an owner of an underlying `GProxyResolverInterface` instance.
/// It provides the methods that can operate on this data type through `ProxyResolverInterfaceProtocol` conformance.
/// Use `ProxyResolverInterface` as a strong reference or owner of a `GProxyResolverInterface` instance.
///
/// The virtual function table for `GProxyResolver`.
open class ProxyResolverInterface: ProxyResolverInterfaceProtocol {
    /// Untyped pointer to the underlying `GProxyResolverInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ProxyResolverInterface` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GProxyResolverInterface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GProxyResolverInterface` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ProxyResolverInterface` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GProxyResolverInterface>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GProxyResolverInterface, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `ProxyResolverInterfaceProtocol`
    /// `GProxyResolverInterface` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ProxyResolverInterfaceProtocol`
    public init<T: ProxyResolverInterfaceProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GProxyResolverInterface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GProxyResolverInterface`.
    deinit {
        // no reference counting for GProxyResolverInterface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyResolverInterfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyResolverInterfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GProxyResolverInterface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyResolverInterfaceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyResolverInterfaceProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GProxyResolverInterface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyResolverInterfaceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyResolverInterfaceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GProxyResolverInterface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyResolverInterfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyResolverInterfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GProxyResolverInterface, cannot ref(cast(_ptr))
    }



}

// MARK: - no ProxyResolverInterface properties

// MARK: - no signals


public extension ProxyResolverInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GProxyResolverInterface` instance.
    var _ptr: UnsafeMutablePointer<GProxyResolverInterface> { return ptr.assumingMemoryBound(to: GProxyResolverInterface.self) }

}



// MARK: - RemoteActionGroupInterface Record

/// The `RemoteActionGroupInterfaceProtocol` protocol exposes the methods and properties of an underlying `GRemoteActionGroupInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RemoteActionGroupInterface`.
/// Alternatively, use `RemoteActionGroupInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The virtual function table for `GRemoteActionGroup`.
public protocol RemoteActionGroupInterfaceProtocol {
    /// Untyped pointer to the underlying `GRemoteActionGroupInterface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GRemoteActionGroupInterface` instance.
    var _ptr: UnsafeMutablePointer<GRemoteActionGroupInterface> { get }
}

/// The `RemoteActionGroupInterfaceRef` type acts as a lightweight Swift reference to an underlying `GRemoteActionGroupInterface` instance.
/// It exposes methods that can operate on this data type through `RemoteActionGroupInterfaceProtocol` conformance.
/// Use `RemoteActionGroupInterfaceRef` only as an `unowned` reference to an existing `GRemoteActionGroupInterface` instance.
///
/// The virtual function table for `GRemoteActionGroup`.
public struct RemoteActionGroupInterfaceRef: RemoteActionGroupInterfaceProtocol {
    /// Untyped pointer to the underlying `GRemoteActionGroupInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RemoteActionGroupInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GRemoteActionGroupInterface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RemoteActionGroupInterfaceProtocol`
    init<T: RemoteActionGroupInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RemoteActionGroupInterfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RemoteActionGroupInterfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RemoteActionGroupInterfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RemoteActionGroupInterfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RemoteActionGroupInterfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RemoteActionGroupInterface` type acts as an owner of an underlying `GRemoteActionGroupInterface` instance.
/// It provides the methods that can operate on this data type through `RemoteActionGroupInterfaceProtocol` conformance.
/// Use `RemoteActionGroupInterface` as a strong reference or owner of a `GRemoteActionGroupInterface` instance.
///
/// The virtual function table for `GRemoteActionGroup`.
open class RemoteActionGroupInterface: RemoteActionGroupInterfaceProtocol {
    /// Untyped pointer to the underlying `GRemoteActionGroupInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RemoteActionGroupInterface` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GRemoteActionGroupInterface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GRemoteActionGroupInterface` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `RemoteActionGroupInterface` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GRemoteActionGroupInterface>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GRemoteActionGroupInterface, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `RemoteActionGroupInterfaceProtocol`
    /// `GRemoteActionGroupInterface` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `RemoteActionGroupInterfaceProtocol`
    public init<T: RemoteActionGroupInterfaceProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GRemoteActionGroupInterface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GRemoteActionGroupInterface`.
    deinit {
        // no reference counting for GRemoteActionGroupInterface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RemoteActionGroupInterfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RemoteActionGroupInterfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GRemoteActionGroupInterface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RemoteActionGroupInterfaceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RemoteActionGroupInterfaceProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GRemoteActionGroupInterface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RemoteActionGroupInterfaceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RemoteActionGroupInterfaceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GRemoteActionGroupInterface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RemoteActionGroupInterfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RemoteActionGroupInterfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GRemoteActionGroupInterface, cannot ref(cast(_ptr))
    }



}

// MARK: - no RemoteActionGroupInterface properties

// MARK: - no signals


public extension RemoteActionGroupInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GRemoteActionGroupInterface` instance.
    var _ptr: UnsafeMutablePointer<GRemoteActionGroupInterface> { return ptr.assumingMemoryBound(to: GRemoteActionGroupInterface.self) }

}



