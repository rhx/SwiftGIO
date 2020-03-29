import CGLib
import GLib
import GLibObject

/// The string used to obtain a Unix device path with `g_drive_get_identifier()`.
public let DRIVE_IDENTIFIER_KIND_UNIX_DEVICE = G_DRIVE_IDENTIFIER_KIND_UNIX_DEVICE /* utf8 0 */

/// A key in the "access" namespace for checking deletion privileges.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
/// This attribute will be `true` if the user is able to delete the file.
public let FILE_ATTRIBUTE_ACCESS_CAN_DELETE = G_FILE_ATTRIBUTE_ACCESS_CAN_DELETE /* utf8 1 */

/// A key in the "access" namespace for getting execution privileges.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
/// This attribute will be `true` if the user is able to execute the file.
public let FILE_ATTRIBUTE_ACCESS_CAN_EXECUTE = G_FILE_ATTRIBUTE_ACCESS_CAN_EXECUTE /* utf8 2 */

/// A key in the "access" namespace for getting read privileges.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
/// This attribute will be `true` if the user is able to read the file.
public let FILE_ATTRIBUTE_ACCESS_CAN_READ = G_FILE_ATTRIBUTE_ACCESS_CAN_READ /* utf8 3 */

/// A key in the "access" namespace for checking renaming privileges.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
/// This attribute will be `true` if the user is able to rename the file.
public let FILE_ATTRIBUTE_ACCESS_CAN_RENAME = G_FILE_ATTRIBUTE_ACCESS_CAN_RENAME /* utf8 4 */

/// A key in the "access" namespace for checking trashing privileges.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
/// This attribute will be `true` if the user is able to move the file to
/// the trash.
public let FILE_ATTRIBUTE_ACCESS_CAN_TRASH = G_FILE_ATTRIBUTE_ACCESS_CAN_TRASH /* utf8 5 */

/// A key in the "access" namespace for getting write privileges.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
/// This attribute will be `true` if the user is able to write to the file.
public let FILE_ATTRIBUTE_ACCESS_CAN_WRITE = G_FILE_ATTRIBUTE_ACCESS_CAN_WRITE /* utf8 6 */

/// A key in the "dos" namespace for checking if the file's archive flag
/// is set. This attribute is `true` if the archive flag is set. This attribute
/// is only available for DOS file systems. Corresponding `GFileAttributeType`
/// is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
public let FILE_ATTRIBUTE_DOS_IS_ARCHIVE = G_FILE_ATTRIBUTE_DOS_IS_ARCHIVE /* utf8 7 */

/// A key in the "dos" namespace for checking if the file is a NTFS mount point
/// (a volume mount or a junction point).
/// This attribute is `true` if file is a reparse point of type
/// [IO_REPARSE_TAG_MOUNT_POINT](https://msdn.microsoft.com/en-us/library/dd541667.aspx).
/// This attribute is only available for DOS file systems.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
public let FILE_ATTRIBUTE_DOS_IS_MOUNTPOINT = G_FILE_ATTRIBUTE_DOS_IS_MOUNTPOINT /* utf8 8 */

/// A key in the "dos" namespace for checking if the file's backup flag
/// is set. This attribute is `true` if the backup flag is set. This attribute
/// is only available for DOS file systems. Corresponding `GFileAttributeType`
/// is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
public let FILE_ATTRIBUTE_DOS_IS_SYSTEM = G_FILE_ATTRIBUTE_DOS_IS_SYSTEM /* utf8 9 */

/// A key in the "dos" namespace for getting the file NTFS reparse tag.
/// This value is 0 for files that are not reparse points.
/// See the [Reparse Tags](https://msdn.microsoft.com/en-us/library/dd541667.aspx)
/// page for possible reparse tag values. Corresponding `GFileAttributeType`
/// is `G_FILE_ATTRIBUTE_TYPE_UINT32`.
public let FILE_ATTRIBUTE_DOS_REPARSE_POINT_TAG = G_FILE_ATTRIBUTE_DOS_REPARSE_POINT_TAG /* utf8 10 */

/// A key in the "etag" namespace for getting the value of the file's
/// entity tag. Corresponding `GFileAttributeType` is
/// `G_FILE_ATTRIBUTE_TYPE_STRING`.
public let FILE_ATTRIBUTE_ETAG_VALUE = G_FILE_ATTRIBUTE_ETAG_VALUE /* utf8 11 */

/// A key in the "filesystem" namespace for getting the number of bytes of free space left on the
/// file system. Corresponding `GFileAttributeType` is
/// `G_FILE_ATTRIBUTE_TYPE_UINT64`.
public let FILE_ATTRIBUTE_FILESYSTEM_FREE = G_FILE_ATTRIBUTE_FILESYSTEM_FREE /* utf8 12 */

/// A key in the "filesystem" namespace for checking if the file system
/// is read only. Is set to `true` if the file system is read only.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
public let FILE_ATTRIBUTE_FILESYSTEM_READONLY = G_FILE_ATTRIBUTE_FILESYSTEM_READONLY /* utf8 13 */

/// A key in the "filesystem" namespace for checking if the file system
/// is remote. Is set to `true` if the file system is remote.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
public let FILE_ATTRIBUTE_FILESYSTEM_REMOTE = G_FILE_ATTRIBUTE_FILESYSTEM_REMOTE /* utf8 14 */

/// A key in the "filesystem" namespace for getting the total size (in bytes) of the file system,
/// used in `g_file_query_filesystem_info()`. Corresponding `GFileAttributeType`
/// is `G_FILE_ATTRIBUTE_TYPE_UINT64`.
public let FILE_ATTRIBUTE_FILESYSTEM_SIZE = G_FILE_ATTRIBUTE_FILESYSTEM_SIZE /* utf8 15 */

/// A key in the "filesystem" namespace for getting the file system's type.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_STRING`.
public let FILE_ATTRIBUTE_FILESYSTEM_TYPE = G_FILE_ATTRIBUTE_FILESYSTEM_TYPE /* utf8 16 */

/// A key in the "filesystem" namespace for getting the number of bytes of used on the
/// file system. Corresponding `GFileAttributeType` is
/// `G_FILE_ATTRIBUTE_TYPE_UINT64`.
public let FILE_ATTRIBUTE_FILESYSTEM_USED = G_FILE_ATTRIBUTE_FILESYSTEM_USED /* utf8 17 */

/// A key in the "filesystem" namespace for hinting a file manager
/// application whether it should preview (e.g. thumbnail) files on the
/// file system. The value for this key contain a
/// `GFilesystemPreviewType`.
public let FILE_ATTRIBUTE_FILESYSTEM_USE_PREVIEW = G_FILE_ATTRIBUTE_FILESYSTEM_USE_PREVIEW /* utf8 18 */

/// A key in the "gvfs" namespace that gets the name of the current
/// GVFS backend in use. Corresponding `GFileAttributeType` is
/// `G_FILE_ATTRIBUTE_TYPE_STRING`.
public let FILE_ATTRIBUTE_GVFS_BACKEND = G_FILE_ATTRIBUTE_GVFS_BACKEND /* utf8 19 */

/// A key in the "id" namespace for getting a file identifier.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_STRING`.
/// An example use would be during listing files, to avoid recursive
/// directory scanning.
public let FILE_ATTRIBUTE_ID_FILE = G_FILE_ATTRIBUTE_ID_FILE /* utf8 20 */

/// A key in the "id" namespace for getting the file system identifier.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_STRING`.
/// An example use would be during drag and drop to see if the source
/// and target are on the same filesystem (default to move) or not (default
/// to copy).
public let FILE_ATTRIBUTE_ID_FILESYSTEM = G_FILE_ATTRIBUTE_ID_FILESYSTEM /* utf8 21 */

/// A key in the "mountable" namespace for checking if a file (of type G_FILE_TYPE_MOUNTABLE) can be ejected.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
public let FILE_ATTRIBUTE_MOUNTABLE_CAN_EJECT = G_FILE_ATTRIBUTE_MOUNTABLE_CAN_EJECT /* utf8 22 */

/// A key in the "mountable" namespace for checking if a file (of type G_FILE_TYPE_MOUNTABLE) is mountable.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
public let FILE_ATTRIBUTE_MOUNTABLE_CAN_MOUNT = G_FILE_ATTRIBUTE_MOUNTABLE_CAN_MOUNT /* utf8 23 */

/// A key in the "mountable" namespace for checking if a file (of type G_FILE_TYPE_MOUNTABLE) can be polled.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
public let FILE_ATTRIBUTE_MOUNTABLE_CAN_POLL = G_FILE_ATTRIBUTE_MOUNTABLE_CAN_POLL /* utf8 24 */

/// A key in the "mountable" namespace for checking if a file (of type G_FILE_TYPE_MOUNTABLE) can be started.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
public let FILE_ATTRIBUTE_MOUNTABLE_CAN_START = G_FILE_ATTRIBUTE_MOUNTABLE_CAN_START /* utf8 25 */

/// A key in the "mountable" namespace for checking if a file (of type G_FILE_TYPE_MOUNTABLE) can be started
/// degraded.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
public let FILE_ATTRIBUTE_MOUNTABLE_CAN_START_DEGRADED = G_FILE_ATTRIBUTE_MOUNTABLE_CAN_START_DEGRADED /* utf8 26 */

/// A key in the "mountable" namespace for checking if a file (of type G_FILE_TYPE_MOUNTABLE) can be stopped.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
public let FILE_ATTRIBUTE_MOUNTABLE_CAN_STOP = G_FILE_ATTRIBUTE_MOUNTABLE_CAN_STOP /* utf8 27 */

/// A key in the "mountable" namespace for checking if a file (of type G_FILE_TYPE_MOUNTABLE)  is unmountable.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
public let FILE_ATTRIBUTE_MOUNTABLE_CAN_UNMOUNT = G_FILE_ATTRIBUTE_MOUNTABLE_CAN_UNMOUNT /* utf8 28 */

/// A key in the "mountable" namespace for getting the HAL UDI for the mountable
/// file. Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_STRING`.
public let FILE_ATTRIBUTE_MOUNTABLE_HAL_UDI = G_FILE_ATTRIBUTE_MOUNTABLE_HAL_UDI /* utf8 29 */

/// A key in the "mountable" namespace for checking if a file (of type G_FILE_TYPE_MOUNTABLE)
/// is automatically polled for media.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
public let FILE_ATTRIBUTE_MOUNTABLE_IS_MEDIA_CHECK_AUTOMATIC = G_FILE_ATTRIBUTE_MOUNTABLE_IS_MEDIA_CHECK_AUTOMATIC /* utf8 30 */

/// A key in the "mountable" namespace for getting the `GDriveStartStopType`.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_UINT32`.
public let FILE_ATTRIBUTE_MOUNTABLE_START_STOP_TYPE = G_FILE_ATTRIBUTE_MOUNTABLE_START_STOP_TYPE /* utf8 31 */

/// A key in the "mountable" namespace for getting the unix device.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_UINT32`.
public let FILE_ATTRIBUTE_MOUNTABLE_UNIX_DEVICE = G_FILE_ATTRIBUTE_MOUNTABLE_UNIX_DEVICE /* utf8 32 */

/// A key in the "mountable" namespace for getting the unix device file.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_STRING`.
public let FILE_ATTRIBUTE_MOUNTABLE_UNIX_DEVICE_FILE = G_FILE_ATTRIBUTE_MOUNTABLE_UNIX_DEVICE_FILE /* utf8 33 */

/// A key in the "owner" namespace for getting the file owner's group.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_STRING`.
public let FILE_ATTRIBUTE_OWNER_GROUP = G_FILE_ATTRIBUTE_OWNER_GROUP /* utf8 34 */

/// A key in the "owner" namespace for getting the user name of the
/// file's owner. Corresponding `GFileAttributeType` is
/// `G_FILE_ATTRIBUTE_TYPE_STRING`.
public let FILE_ATTRIBUTE_OWNER_USER = G_FILE_ATTRIBUTE_OWNER_USER /* utf8 35 */

/// A key in the "owner" namespace for getting the real name of the
/// user that owns the file. Corresponding `GFileAttributeType` is
/// `G_FILE_ATTRIBUTE_TYPE_STRING`.
public let FILE_ATTRIBUTE_OWNER_USER_REAL = G_FILE_ATTRIBUTE_OWNER_USER_REAL /* utf8 36 */

/// A key in the "preview" namespace for getting a `GIcon` that can be
/// used to get preview of the file. For example, it may be a low
/// resolution thumbnail without metadata. Corresponding
/// `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_OBJECT`.  The value
/// for this key should contain a `GIcon`.
public let FILE_ATTRIBUTE_PREVIEW_ICON = G_FILE_ATTRIBUTE_PREVIEW_ICON /* utf8 37 */

/// A key in the "recent" namespace for getting time, when the metadata for the
/// file in `recent:///` was last changed. Corresponding `GFileAttributeType` is
/// `G_FILE_ATTRIBUTE_TYPE_INT64`.
public let FILE_ATTRIBUTE_RECENT_MODIFIED = G_FILE_ATTRIBUTE_RECENT_MODIFIED /* utf8 38 */

/// A key in the "selinux" namespace for getting the file's SELinux
/// context. Corresponding `GFileAttributeType` is
/// `G_FILE_ATTRIBUTE_TYPE_STRING`. Note that this attribute is only
/// available if GLib has been built with SELinux support.
public let FILE_ATTRIBUTE_SELINUX_CONTEXT = G_FILE_ATTRIBUTE_SELINUX_CONTEXT /* utf8 39 */

/// A key in the "standard" namespace for getting the amount of disk space
/// that is consumed by the file (in bytes).  This will generally be larger
/// than the file size (due to block size overhead) but can occasionally be
/// smaller (for example, for sparse files).
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_UINT64`.
public let FILE_ATTRIBUTE_STANDARD_ALLOCATED_SIZE = G_FILE_ATTRIBUTE_STANDARD_ALLOCATED_SIZE /* utf8 40 */

/// A key in the "standard" namespace for getting the content type of the file.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_STRING`.
/// The value for this key should contain a valid content type.
public let FILE_ATTRIBUTE_STANDARD_CONTENT_TYPE = G_FILE_ATTRIBUTE_STANDARD_CONTENT_TYPE /* utf8 41 */

/// A key in the "standard" namespace for getting the copy name of the file.
/// The copy name is an optional version of the name. If available it's always
/// in UTF8, and corresponds directly to the original filename (only transcoded to
/// UTF8). This is useful if you want to copy the file to another filesystem that
/// might have a different encoding. If the filename is not a valid string in the
/// encoding selected for the filesystem it is in then the copy name will not be set.
/// 
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_STRING`.
public let FILE_ATTRIBUTE_STANDARD_COPY_NAME = G_FILE_ATTRIBUTE_STANDARD_COPY_NAME /* utf8 42 */

/// A key in the "standard" namespace for getting the description of the file.
/// The description is a utf8 string that describes the file, generally containing
/// the filename, but can also contain furter information. Example descriptions
/// could be "filename (on hostname)" for a remote file or "filename (in trash)"
/// for a file in the trash. This is useful for instance as the window title
/// when displaying a directory or for a bookmarks menu.
/// 
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_STRING`.
public let FILE_ATTRIBUTE_STANDARD_DESCRIPTION = G_FILE_ATTRIBUTE_STANDARD_DESCRIPTION /* utf8 43 */

/// A key in the "standard" namespace for getting the display name of the file.
/// A display name is guaranteed to be in UTF8 and can thus be displayed in
/// the UI.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_STRING`.
public let FILE_ATTRIBUTE_STANDARD_DISPLAY_NAME = G_FILE_ATTRIBUTE_STANDARD_DISPLAY_NAME /* utf8 44 */

/// A key in the "standard" namespace for edit name of the file.
/// An edit name is similar to the display name, but it is meant to be
/// used when you want to rename the file in the UI. The display name
/// might contain information you don't want in the new filename (such as
/// "(invalid unicode)" if the filename was in an invalid encoding).
/// 
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_STRING`.
public let FILE_ATTRIBUTE_STANDARD_EDIT_NAME = G_FILE_ATTRIBUTE_STANDARD_EDIT_NAME /* utf8 45 */

/// A key in the "standard" namespace for getting the fast content type.
/// The fast content type isn't as reliable as the regular one, as it
/// only uses the filename to guess it, but it is faster to calculate than the
/// regular content type.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_STRING`.
public let FILE_ATTRIBUTE_STANDARD_FAST_CONTENT_TYPE = G_FILE_ATTRIBUTE_STANDARD_FAST_CONTENT_TYPE /* utf8 46 */

/// A key in the "standard" namespace for getting the icon for the file.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_OBJECT`.
/// The value for this key should contain a `GIcon`.
public let FILE_ATTRIBUTE_STANDARD_ICON = G_FILE_ATTRIBUTE_STANDARD_ICON /* utf8 47 */

/// A key in the "standard" namespace for checking if a file is a backup file.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
public let FILE_ATTRIBUTE_STANDARD_IS_BACKUP = G_FILE_ATTRIBUTE_STANDARD_IS_BACKUP /* utf8 48 */

/// A key in the "standard" namespace for checking if a file is hidden.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
public let FILE_ATTRIBUTE_STANDARD_IS_HIDDEN = G_FILE_ATTRIBUTE_STANDARD_IS_HIDDEN /* utf8 49 */

/// A key in the "standard" namespace for checking if the file is a symlink.
/// Typically the actual type is something else, if we followed the symlink
/// to get the type.
/// On Windows NTFS mountpoints are considered to be symlinks as well.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
public let FILE_ATTRIBUTE_STANDARD_IS_SYMLINK = G_FILE_ATTRIBUTE_STANDARD_IS_SYMLINK /* utf8 50 */

/// A key in the "standard" namespace for checking if a file is virtual.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
public let FILE_ATTRIBUTE_STANDARD_IS_VIRTUAL = G_FILE_ATTRIBUTE_STANDARD_IS_VIRTUAL /* utf8 51 */

/// A key in the "standard" namespace for checking if a file is
/// volatile. This is meant for opaque, non-POSIX-like backends to
/// indicate that the URI is not persistent. Applications should look
/// at `G_FILE_ATTRIBUTE_STANDARD_SYMLINK_TARGET` for the persistent URI.
/// 
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
public let FILE_ATTRIBUTE_STANDARD_IS_VOLATILE = G_FILE_ATTRIBUTE_STANDARD_IS_VOLATILE /* utf8 52 */

/// A key in the "standard" namespace for getting the name of the file.
/// The name is the on-disk filename which may not be in any known encoding,
/// and can thus not be generally displayed as is.
/// Use `G_FILE_ATTRIBUTE_STANDARD_DISPLAY_NAME` if you need to display the
/// name in a user interface.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BYTE_STRING`.
public let FILE_ATTRIBUTE_STANDARD_NAME = G_FILE_ATTRIBUTE_STANDARD_NAME /* utf8 53 */

/// A key in the "standard" namespace for getting the file's size (in bytes).
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_UINT64`.
public let FILE_ATTRIBUTE_STANDARD_SIZE = G_FILE_ATTRIBUTE_STANDARD_SIZE /* utf8 54 */

/// A key in the "standard" namespace for setting the sort order of a file.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_INT32`.
/// An example use would be in file managers, which would use this key
/// to set the order files are displayed. Files with smaller sort order
/// should be sorted first, and files without sort order as if sort order
/// was zero.
public let FILE_ATTRIBUTE_STANDARD_SORT_ORDER = G_FILE_ATTRIBUTE_STANDARD_SORT_ORDER /* utf8 55 */

/// A key in the "standard" namespace for getting the symbolic icon for the file.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_OBJECT`.
/// The value for this key should contain a `GIcon`.
public let FILE_ATTRIBUTE_STANDARD_SYMBOLIC_ICON = G_FILE_ATTRIBUTE_STANDARD_SYMBOLIC_ICON /* utf8 56 */

/// A key in the "standard" namespace for getting the symlink target, if the file
/// is a symlink. Corresponding `GFileAttributeType` is
/// `G_FILE_ATTRIBUTE_TYPE_BYTE_STRING`.
public let FILE_ATTRIBUTE_STANDARD_SYMLINK_TARGET = G_FILE_ATTRIBUTE_STANDARD_SYMLINK_TARGET /* utf8 57 */

/// A key in the "standard" namespace for getting the target URI for the file, in
/// the case of `G_FILE_TYPE_SHORTCUT` or `G_FILE_TYPE_MOUNTABLE` files.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_STRING`.
public let FILE_ATTRIBUTE_STANDARD_TARGET_URI = G_FILE_ATTRIBUTE_STANDARD_TARGET_URI /* utf8 58 */

/// A key in the "standard" namespace for storing file types.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_UINT32`.
/// The value for this key should contain a `GFileType`.
public let FILE_ATTRIBUTE_STANDARD_TYPE = G_FILE_ATTRIBUTE_STANDARD_TYPE /* utf8 59 */

/// A key in the "thumbnail" namespace for checking if thumbnailing failed.
/// This attribute is `true` if thumbnailing failed. Corresponding
/// `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
public let FILE_ATTRIBUTE_THUMBNAILING_FAILED = G_FILE_ATTRIBUTE_THUMBNAILING_FAILED /* utf8 60 */

/// A key in the "thumbnail" namespace for checking whether the thumbnail is outdated.
/// This attribute is `true` if the thumbnail is up-to-date with the file it represents,
/// and `false` if the file has been modified since the thumbnail was generated.
/// 
/// If `G_FILE_ATTRIBUTE_THUMBNAILING_FAILED` is `true` and this attribute is `false`,
/// it indicates that thumbnailing may be attempted again and may succeed.
/// 
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
public let FILE_ATTRIBUTE_THUMBNAIL_IS_VALID = G_FILE_ATTRIBUTE_THUMBNAIL_IS_VALID /* utf8 61 */

/// A key in the "thumbnail" namespace for getting the path to the thumbnail
/// image. Corresponding `GFileAttributeType` is
/// `G_FILE_ATTRIBUTE_TYPE_BYTE_STRING`.
public let FILE_ATTRIBUTE_THUMBNAIL_PATH = G_FILE_ATTRIBUTE_THUMBNAIL_PATH /* utf8 62 */

/// A key in the "time" namespace for getting the time the file was last
/// accessed. Corresponding `GFileAttributeType` is
/// `G_FILE_ATTRIBUTE_TYPE_UINT64`, and contains the time since the
/// file was last accessed, in seconds since the UNIX epoch.
public let FILE_ATTRIBUTE_TIME_ACCESS = G_FILE_ATTRIBUTE_TIME_ACCESS /* utf8 63 */

/// A key in the "time" namespace for getting the microseconds of the time
/// the file was last accessed. This should be used in conjunction with
/// `G_FILE_ATTRIBUTE_TIME_ACCESS`. Corresponding `GFileAttributeType` is
/// `G_FILE_ATTRIBUTE_TYPE_UINT32`.
public let FILE_ATTRIBUTE_TIME_ACCESS_USEC = G_FILE_ATTRIBUTE_TIME_ACCESS_USEC /* utf8 64 */

/// A key in the "time" namespace for getting the time the file was last
/// changed. Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_UINT64`,
/// and contains the time since the file was last changed, in seconds since the
/// UNIX epoch.
/// 
/// This corresponds to the traditional UNIX ctime.
public let FILE_ATTRIBUTE_TIME_CHANGED = G_FILE_ATTRIBUTE_TIME_CHANGED /* utf8 65 */

/// A key in the "time" namespace for getting the microseconds of the time
/// the file was last changed. This should be used in conjunction with
/// `G_FILE_ATTRIBUTE_TIME_CHANGED`. Corresponding `GFileAttributeType` is
/// `G_FILE_ATTRIBUTE_TYPE_UINT32`.
public let FILE_ATTRIBUTE_TIME_CHANGED_USEC = G_FILE_ATTRIBUTE_TIME_CHANGED_USEC /* utf8 66 */

/// A key in the "time" namespace for getting the time the file was created.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_UINT64`,
/// and contains the time since the file was created, in seconds since the UNIX
/// epoch.
/// 
/// This corresponds to the NTFS ctime.
public let FILE_ATTRIBUTE_TIME_CREATED = G_FILE_ATTRIBUTE_TIME_CREATED /* utf8 67 */

/// A key in the "time" namespace for getting the microseconds of the time
/// the file was created. This should be used in conjunction with
/// `G_FILE_ATTRIBUTE_TIME_CREATED`. Corresponding `GFileAttributeType` is
/// `G_FILE_ATTRIBUTE_TYPE_UINT32`.
public let FILE_ATTRIBUTE_TIME_CREATED_USEC = G_FILE_ATTRIBUTE_TIME_CREATED_USEC /* utf8 68 */

/// A key in the "time" namespace for getting the time the file was last
/// modified. Corresponding `GFileAttributeType` is
/// `G_FILE_ATTRIBUTE_TYPE_UINT64`, and contains the time since the
/// file was modified, in seconds since the UNIX epoch.
public let FILE_ATTRIBUTE_TIME_MODIFIED = G_FILE_ATTRIBUTE_TIME_MODIFIED /* utf8 69 */

/// A key in the "time" namespace for getting the microseconds of the time
/// the file was last modified. This should be used in conjunction with
/// `G_FILE_ATTRIBUTE_TIME_MODIFIED`. Corresponding `GFileAttributeType` is
/// `G_FILE_ATTRIBUTE_TYPE_UINT32`.
public let FILE_ATTRIBUTE_TIME_MODIFIED_USEC = G_FILE_ATTRIBUTE_TIME_MODIFIED_USEC /* utf8 70 */

/// A key in the "trash" namespace.  When requested against
/// items in `trash:///`, will return the date and time when the file
/// was trashed. The format of the returned string is YYYY-MM-DDThh:mm:ss.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_STRING`.
public let FILE_ATTRIBUTE_TRASH_DELETION_DATE = G_FILE_ATTRIBUTE_TRASH_DELETION_DATE /* utf8 71 */

/// A key in the "trash" namespace.  When requested against
/// `trash:///` returns the number of (toplevel) items in the trash folder.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_UINT32`.
public let FILE_ATTRIBUTE_TRASH_ITEM_COUNT = G_FILE_ATTRIBUTE_TRASH_ITEM_COUNT /* utf8 72 */

/// A key in the "trash" namespace.  When requested against
/// items in `trash:///`, will return the original path to the file before it
/// was trashed. Corresponding `GFileAttributeType` is
/// `G_FILE_ATTRIBUTE_TYPE_BYTE_STRING`.
public let FILE_ATTRIBUTE_TRASH_ORIG_PATH = G_FILE_ATTRIBUTE_TRASH_ORIG_PATH /* utf8 73 */

/// A key in the "unix" namespace for getting the number of blocks allocated
/// for the file. This attribute is only available for UNIX file systems.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_UINT64`.
public let FILE_ATTRIBUTE_UNIX_BLOCKS = G_FILE_ATTRIBUTE_UNIX_BLOCKS /* utf8 74 */

/// A key in the "unix" namespace for getting the block size for the file
/// system. This attribute is only available for UNIX file systems.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_UINT32`.
public let FILE_ATTRIBUTE_UNIX_BLOCK_SIZE = G_FILE_ATTRIBUTE_UNIX_BLOCK_SIZE /* utf8 75 */

/// A key in the "unix" namespace for getting the device id of the device the
/// file is located on (see `stat()` documentation). This attribute is only
/// available for UNIX file systems. Corresponding `GFileAttributeType` is
/// `G_FILE_ATTRIBUTE_TYPE_UINT32`.
public let FILE_ATTRIBUTE_UNIX_DEVICE = G_FILE_ATTRIBUTE_UNIX_DEVICE /* utf8 76 */

/// A key in the "unix" namespace for getting the group ID for the file.
/// This attribute is only available for UNIX file systems.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_UINT32`.
public let FILE_ATTRIBUTE_UNIX_GID = G_FILE_ATTRIBUTE_UNIX_GID /* utf8 77 */

/// A key in the "unix" namespace for getting the inode of the file.
/// This attribute is only available for UNIX file systems. Corresponding
/// `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_UINT64`.
public let FILE_ATTRIBUTE_UNIX_INODE = G_FILE_ATTRIBUTE_UNIX_INODE /* utf8 78 */

/// A key in the "unix" namespace for checking if the file represents a
/// UNIX mount point. This attribute is `true` if the file is a UNIX mount
/// point. Since 2.58, `/` is considered to be a mount point.
/// This attribute is only available for UNIX file systems.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
public let FILE_ATTRIBUTE_UNIX_IS_MOUNTPOINT = G_FILE_ATTRIBUTE_UNIX_IS_MOUNTPOINT /* utf8 79 */

/// A key in the "unix" namespace for getting the mode of the file
/// (e.g. whether the file is a regular file, symlink, etc). See `lstat()`
/// documentation. This attribute is only available for UNIX file systems.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_UINT32`.
public let FILE_ATTRIBUTE_UNIX_MODE = G_FILE_ATTRIBUTE_UNIX_MODE /* utf8 80 */

/// A key in the "unix" namespace for getting the number of hard links
/// for a file. See `lstat()` documentation. This attribute is only available
/// for UNIX file systems. Corresponding `GFileAttributeType` is
/// `G_FILE_ATTRIBUTE_TYPE_UINT32`.
public let FILE_ATTRIBUTE_UNIX_NLINK = G_FILE_ATTRIBUTE_UNIX_NLINK /* utf8 81 */

/// A key in the "unix" namespace for getting the device ID for the file
/// (if it is a special file). See `lstat()` documentation. This attribute
/// is only available for UNIX file systems. Corresponding `GFileAttributeType`
/// is `G_FILE_ATTRIBUTE_TYPE_UINT32`.
public let FILE_ATTRIBUTE_UNIX_RDEV = G_FILE_ATTRIBUTE_UNIX_RDEV /* utf8 82 */

/// A key in the "unix" namespace for getting the user ID for the file.
/// This attribute is only available for UNIX file systems.
/// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_UINT32`.
public let FILE_ATTRIBUTE_UNIX_UID = G_FILE_ATTRIBUTE_UNIX_UID /* utf8 83 */

/// The menu item attribute which holds the action name of the item.  Action
/// names are namespaced with an identifier for the action group in which the
/// action resides. For example, "win." for window-specific actions and "app."
/// for application-wide actions.
/// 
/// See also `g_menu_model_get_item_attribute()` and `g_menu_item_set_attribute()`.
public let MENU_ATTRIBUTE_ACTION = G_MENU_ATTRIBUTE_ACTION /* utf8 84 */

/// The menu item attribute that holds the namespace for all action names in
/// menus that are linked from this item.
public let MENU_ATTRIBUTE_ACTION_NAMESPACE = G_MENU_ATTRIBUTE_ACTION_NAMESPACE /* utf8 85 */

/// The menu item attribute which holds the icon of the item.
/// 
/// The icon is stored in the format returned by `g_icon_serialize()`.
/// 
/// This attribute is intended only to represent 'noun' icons such as
/// favicons for a webpage, or application icons.  It should not be used
/// for 'verbs' (ie: stock icons).
public let MENU_ATTRIBUTE_ICON = G_MENU_ATTRIBUTE_ICON /* utf8 86 */

/// The menu item attribute which holds the label of the item.
public let MENU_ATTRIBUTE_LABEL = G_MENU_ATTRIBUTE_LABEL /* utf8 87 */

/// The menu item attribute which holds the target with which the item's action
/// will be activated.
/// 
/// See also `g_menu_item_set_action_and_target()`
public let MENU_ATTRIBUTE_TARGET = G_MENU_ATTRIBUTE_TARGET /* utf8 88 */

/// The name of the link that associates a menu item with a section.  The linked
/// menu will usually be shown in place of the menu item, using the item's label
/// as a header.
/// 
/// See also `g_menu_item_set_link()`.
public let MENU_LINK_SECTION = G_MENU_LINK_SECTION /* utf8 89 */

/// The name of the link that associates a menu item with a submenu.
/// 
/// See also `g_menu_item_set_link()`.
public let MENU_LINK_SUBMENU = G_MENU_LINK_SUBMENU /* utf8 90 */

public let NATIVE_VOLUME_MONITOR_EXTENSION_POINT_NAME = G_NATIVE_VOLUME_MONITOR_EXTENSION_POINT_NAME /* utf8 91 */

/// Extension point for network status monitoring functionality.
/// See [Extending GIO](#extending-gio).
public let NETWORK_MONITOR_EXTENSION_POINT_NAME = G_NETWORK_MONITOR_EXTENSION_POINT_NAME /* utf8 92 */

/// Extension point for proxy functionality.
/// See [Extending GIO](#extending-gio).
public let PROXY_EXTENSION_POINT_NAME = G_PROXY_EXTENSION_POINT_NAME /* utf8 93 */

/// Extension point for proxy resolving functionality.
/// See [Extending GIO](#extending-gio).
public let PROXY_RESOLVER_EXTENSION_POINT_NAME = G_PROXY_RESOLVER_EXTENSION_POINT_NAME /* utf8 94 */

/// Extension point for `GSettingsBackend` functionality.
public let SETTINGS_BACKEND_EXTENSION_POINT_NAME = G_SETTINGS_BACKEND_EXTENSION_POINT_NAME /* utf8 95 */

/// Extension point for TLS functionality via `GTlsBackend`.
/// See [Extending GIO](#extending-gio).
public let TLS_BACKEND_EXTENSION_POINT_NAME = G_TLS_BACKEND_EXTENSION_POINT_NAME /* utf8 96 */

/// The purpose used to verify the client certificate in a TLS connection.
/// Used by TLS servers.
public let TLS_DATABASE_PURPOSE_AUTHENTICATE_CLIENT = G_TLS_DATABASE_PURPOSE_AUTHENTICATE_CLIENT /* utf8 97 */

/// The purpose used to verify the server certificate in a TLS connection. This
/// is the most common purpose in use. Used by TLS clients.
public let TLS_DATABASE_PURPOSE_AUTHENTICATE_SERVER = G_TLS_DATABASE_PURPOSE_AUTHENTICATE_SERVER /* utf8 98 */

/// Extension point for `GVfs` functionality.
/// See [Extending GIO](#extending-gio).
public let VFS_EXTENSION_POINT_NAME = G_VFS_EXTENSION_POINT_NAME /* utf8 99 */

/// The string used to obtain the volume class with `g_volume_get_identifier()`.
/// 
/// Known volume classes include `device`, `network`, and `loop`. Other
/// classes may be added in the future.
/// 
/// This is intended to be used by applications to classify `GVolume`
/// instances into different sections - for example a file manager or
/// file chooser can use this information to show `network` volumes under
/// a "Network" heading and `device` volumes under a "Devices" heading.
public let VOLUME_IDENTIFIER_KIND_CLASS = G_VOLUME_IDENTIFIER_KIND_CLASS /* utf8 100 */

/// The string used to obtain a Hal UDI with `g_volume_get_identifier()`.
///
/// **VOLUME_IDENTIFIER_KIND_HAL_UDI is deprecated:**
/// Do not use, HAL is deprecated.
// deprecated G_VOLUME_IDENTIFIER_KIND_HAL_UDI = G_VOLUME_IDENTIFIER_KIND_HAL_UDI /* utf8 101 */

/// The string used to obtain a filesystem label with `g_volume_get_identifier()`.
public let VOLUME_IDENTIFIER_KIND_LABEL = G_VOLUME_IDENTIFIER_KIND_LABEL /* utf8 102 */

/// The string used to obtain a NFS mount with `g_volume_get_identifier()`.
public let VOLUME_IDENTIFIER_KIND_NFS_MOUNT = G_VOLUME_IDENTIFIER_KIND_NFS_MOUNT /* utf8 103 */

/// The string used to obtain a Unix device path with `g_volume_get_identifier()`.
public let VOLUME_IDENTIFIER_KIND_UNIX_DEVICE = G_VOLUME_IDENTIFIER_KIND_UNIX_DEVICE /* utf8 104 */

/// The string used to obtain a UUID with `g_volume_get_identifier()`.
public let VOLUME_IDENTIFIER_KIND_UUID = G_VOLUME_IDENTIFIER_KIND_UUID /* utf8 105 */

/// Extension point for volume monitor functionality.
/// See [Extending GIO](#extending-gio).
public let VOLUME_MONITOR_EXTENSION_POINT_NAME = G_VOLUME_MONITOR_EXTENSION_POINT_NAME /* utf8 106 */