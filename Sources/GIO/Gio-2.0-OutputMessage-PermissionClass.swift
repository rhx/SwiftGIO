import CGLib
import GLib
import GLibObject

// MARK: - OutputMessage Record

/// The `OutputMessageProtocol` protocol exposes the methods and properties of an underlying `GOutputMessage` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `OutputMessage`.
/// Alternatively, use `OutputMessageRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Structure used for scatter/gather data output when sending multiple
/// messages or packets in one go. You generally pass in an array of
/// `GOutputVectors` and the operation will use all the buffers as if they
/// were one buffer.
/// 
/// If `address` is `nil` then the message is sent to the default receiver
/// (as previously set by `g_socket_connect()`).
public protocol OutputMessageProtocol {
    /// Untyped pointer to the underlying `GOutputMessage` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GOutputMessage` instance.
    var _ptr: UnsafeMutablePointer<GOutputMessage> { get }
}

/// The `OutputMessageRef` type acts as a lightweight Swift reference to an underlying `GOutputMessage` instance.
/// It exposes methods that can operate on this data type through `OutputMessageProtocol` conformance.
/// Use `OutputMessageRef` only as an `unowned` reference to an existing `GOutputMessage` instance.
///
/// Structure used for scatter/gather data output when sending multiple
/// messages or packets in one go. You generally pass in an array of
/// `GOutputVectors` and the operation will use all the buffers as if they
/// were one buffer.
/// 
/// If `address` is `nil` then the message is sent to the default receiver
/// (as previously set by `g_socket_connect()`).
public struct OutputMessageRef: OutputMessageProtocol {
    /// Untyped pointer to the underlying `GOutputMessage` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension OutputMessageRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GOutputMessage>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `OutputMessageProtocol`
    init<T: OutputMessageProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputMessageProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputMessageProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputMessageProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputMessageProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputMessageProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `OutputMessage` type acts as an owner of an underlying `GOutputMessage` instance.
/// It provides the methods that can operate on this data type through `OutputMessageProtocol` conformance.
/// Use `OutputMessage` as a strong reference or owner of a `GOutputMessage` instance.
///
/// Structure used for scatter/gather data output when sending multiple
/// messages or packets in one go. You generally pass in an array of
/// `GOutputVectors` and the operation will use all the buffers as if they
/// were one buffer.
/// 
/// If `address` is `nil` then the message is sent to the default receiver
/// (as previously set by `g_socket_connect()`).
open class OutputMessage: OutputMessageProtocol {
    /// Untyped pointer to the underlying `GOutputMessage` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `OutputMessage` instance.
    public init(_ op: UnsafeMutablePointer<GOutputMessage>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `OutputMessageProtocol`
    /// `GOutputMessage` does not allow reference counting.
    public convenience init<T: OutputMessageProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GOutputMessage, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GOutputMessage`.
    deinit {
        // no reference counting for GOutputMessage, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputMessageProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GOutputMessage.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputMessageProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GOutputMessage.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputMessageProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GOutputMessage.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputMessageProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GOutputMessage>(opaquePointer))
    }



}

// MARK: - no OutputMessage properties

// MARK: - no signals


public extension OutputMessageProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GOutputMessage` instance.
    var _ptr: UnsafeMutablePointer<GOutputMessage> { return ptr.assumingMemoryBound(to: GOutputMessage.self) }

}



// MARK: - OutputStreamClass Record

/// The `OutputStreamClassProtocol` protocol exposes the methods and properties of an underlying `GOutputStreamClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `OutputStreamClass`.
/// Alternatively, use `OutputStreamClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol OutputStreamClassProtocol {
    /// Untyped pointer to the underlying `GOutputStreamClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GOutputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GOutputStreamClass> { get }
}

/// The `OutputStreamClassRef` type acts as a lightweight Swift reference to an underlying `GOutputStreamClass` instance.
/// It exposes methods that can operate on this data type through `OutputStreamClassProtocol` conformance.
/// Use `OutputStreamClassRef` only as an `unowned` reference to an existing `GOutputStreamClass` instance.
///

public struct OutputStreamClassRef: OutputStreamClassProtocol {
    /// Untyped pointer to the underlying `GOutputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension OutputStreamClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GOutputStreamClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `OutputStreamClassProtocol`
    init<T: OutputStreamClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputStreamClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputStreamClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputStreamClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputStreamClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputStreamClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `OutputStreamClass` type acts as an owner of an underlying `GOutputStreamClass` instance.
/// It provides the methods that can operate on this data type through `OutputStreamClassProtocol` conformance.
/// Use `OutputStreamClass` as a strong reference or owner of a `GOutputStreamClass` instance.
///

open class OutputStreamClass: OutputStreamClassProtocol {
    /// Untyped pointer to the underlying `GOutputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `OutputStreamClass` instance.
    public init(_ op: UnsafeMutablePointer<GOutputStreamClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `OutputStreamClassProtocol`
    /// `GOutputStreamClass` does not allow reference counting.
    public convenience init<T: OutputStreamClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GOutputStreamClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GOutputStreamClass`.
    deinit {
        // no reference counting for GOutputStreamClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputStreamClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GOutputStreamClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputStreamClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GOutputStreamClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputStreamClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GOutputStreamClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputStreamClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GOutputStreamClass>(opaquePointer))
    }



}

// MARK: - no OutputStreamClass properties

// MARK: - no signals


public extension OutputStreamClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GOutputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GOutputStreamClass> { return ptr.assumingMemoryBound(to: GOutputStreamClass.self) }

}



// MARK: - OutputStreamPrivate Record

/// The `OutputStreamPrivateProtocol` protocol exposes the methods and properties of an underlying `GOutputStreamPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `OutputStreamPrivate`.
/// Alternatively, use `OutputStreamPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol OutputStreamPrivateProtocol {
    /// Untyped pointer to the underlying `GOutputStreamPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GOutputStreamPrivate` instance.
    var _ptr: UnsafeMutablePointer<GOutputStreamPrivate> { get }
}

/// The `OutputStreamPrivateRef` type acts as a lightweight Swift reference to an underlying `GOutputStreamPrivate` instance.
/// It exposes methods that can operate on this data type through `OutputStreamPrivateProtocol` conformance.
/// Use `OutputStreamPrivateRef` only as an `unowned` reference to an existing `GOutputStreamPrivate` instance.
///

public struct OutputStreamPrivateRef: OutputStreamPrivateProtocol {
    /// Untyped pointer to the underlying `GOutputStreamPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension OutputStreamPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GOutputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `OutputStreamPrivateProtocol`
    init<T: OutputStreamPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputStreamPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputStreamPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputStreamPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputStreamPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputStreamPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `OutputStreamPrivate` type acts as an owner of an underlying `GOutputStreamPrivate` instance.
/// It provides the methods that can operate on this data type through `OutputStreamPrivateProtocol` conformance.
/// Use `OutputStreamPrivate` as a strong reference or owner of a `GOutputStreamPrivate` instance.
///

open class OutputStreamPrivate: OutputStreamPrivateProtocol {
    /// Untyped pointer to the underlying `GOutputStreamPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `OutputStreamPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GOutputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `OutputStreamPrivateProtocol`
    /// `GOutputStreamPrivate` does not allow reference counting.
    public convenience init<T: OutputStreamPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GOutputStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GOutputStreamPrivate`.
    deinit {
        // no reference counting for GOutputStreamPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputStreamPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GOutputStreamPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputStreamPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GOutputStreamPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputStreamPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GOutputStreamPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputStreamPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GOutputStreamPrivate>(opaquePointer))
    }



}

// MARK: - no OutputStreamPrivate properties

// MARK: - no signals


public extension OutputStreamPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GOutputStreamPrivate` instance.
    var _ptr: UnsafeMutablePointer<GOutputStreamPrivate> { return ptr.assumingMemoryBound(to: GOutputStreamPrivate.self) }

}



// MARK: - OutputVector Record

/// The `OutputVectorProtocol` protocol exposes the methods and properties of an underlying `GOutputVector` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `OutputVector`.
/// Alternatively, use `OutputVectorRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Structure used for scatter/gather data output.
/// You generally pass in an array of `GOutputVectors`
/// and the operation will use all the buffers as if they were
/// one buffer.
public protocol OutputVectorProtocol {
    /// Untyped pointer to the underlying `GOutputVector` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GOutputVector` instance.
    var _ptr: UnsafeMutablePointer<GOutputVector> { get }
}

/// The `OutputVectorRef` type acts as a lightweight Swift reference to an underlying `GOutputVector` instance.
/// It exposes methods that can operate on this data type through `OutputVectorProtocol` conformance.
/// Use `OutputVectorRef` only as an `unowned` reference to an existing `GOutputVector` instance.
///
/// Structure used for scatter/gather data output.
/// You generally pass in an array of `GOutputVectors`
/// and the operation will use all the buffers as if they were
/// one buffer.
public struct OutputVectorRef: OutputVectorProtocol {
    /// Untyped pointer to the underlying `GOutputVector` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension OutputVectorRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GOutputVector>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `OutputVectorProtocol`
    init<T: OutputVectorProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputVectorProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputVectorProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputVectorProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputVectorProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputVectorProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `OutputVector` type acts as an owner of an underlying `GOutputVector` instance.
/// It provides the methods that can operate on this data type through `OutputVectorProtocol` conformance.
/// Use `OutputVector` as a strong reference or owner of a `GOutputVector` instance.
///
/// Structure used for scatter/gather data output.
/// You generally pass in an array of `GOutputVectors`
/// and the operation will use all the buffers as if they were
/// one buffer.
open class OutputVector: OutputVectorProtocol {
    /// Untyped pointer to the underlying `GOutputVector` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `OutputVector` instance.
    public init(_ op: UnsafeMutablePointer<GOutputVector>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `OutputVectorProtocol`
    /// `GOutputVector` does not allow reference counting.
    public convenience init<T: OutputVectorProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GOutputVector, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GOutputVector`.
    deinit {
        // no reference counting for GOutputVector, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputVectorProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GOutputVector.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputVectorProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GOutputVector.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputVectorProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GOutputVector.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputVectorProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GOutputVector>(opaquePointer))
    }



}

// MARK: - no OutputVector properties

// MARK: - no signals


public extension OutputVectorProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GOutputVector` instance.
    var _ptr: UnsafeMutablePointer<GOutputVector> { return ptr.assumingMemoryBound(to: GOutputVector.self) }

}



// MARK: - PermissionClass Record

/// The `PermissionClassProtocol` protocol exposes the methods and properties of an underlying `GPermissionClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PermissionClass`.
/// Alternatively, use `PermissionClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol PermissionClassProtocol {
    /// Untyped pointer to the underlying `GPermissionClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GPermissionClass` instance.
    var _ptr: UnsafeMutablePointer<GPermissionClass> { get }
}

/// The `PermissionClassRef` type acts as a lightweight Swift reference to an underlying `GPermissionClass` instance.
/// It exposes methods that can operate on this data type through `PermissionClassProtocol` conformance.
/// Use `PermissionClassRef` only as an `unowned` reference to an existing `GPermissionClass` instance.
///

public struct PermissionClassRef: PermissionClassProtocol {
    /// Untyped pointer to the underlying `GPermissionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension PermissionClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GPermissionClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PermissionClassProtocol`
    init<T: PermissionClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PermissionClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PermissionClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PermissionClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PermissionClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PermissionClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PermissionClass` type acts as an owner of an underlying `GPermissionClass` instance.
/// It provides the methods that can operate on this data type through `PermissionClassProtocol` conformance.
/// Use `PermissionClass` as a strong reference or owner of a `GPermissionClass` instance.
///

open class PermissionClass: PermissionClassProtocol {
    /// Untyped pointer to the underlying `GPermissionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `PermissionClass` instance.
    public init(_ op: UnsafeMutablePointer<GPermissionClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `PermissionClassProtocol`
    /// `GPermissionClass` does not allow reference counting.
    public convenience init<T: PermissionClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GPermissionClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GPermissionClass`.
    deinit {
        // no reference counting for GPermissionClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PermissionClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GPermissionClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PermissionClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GPermissionClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PermissionClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GPermissionClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PermissionClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GPermissionClass>(opaquePointer))
    }



}

// MARK: - no PermissionClass properties

// MARK: - no signals


public extension PermissionClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GPermissionClass` instance.
    var _ptr: UnsafeMutablePointer<GPermissionClass> { return ptr.assumingMemoryBound(to: GPermissionClass.self) }

}



