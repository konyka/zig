pub const errno_t = u16;
pub const exitcode_t = u32;
pub const fd_t = u32;
pub const signal_t = u8;

pub const ciovec_t = extern struct {
    buf: [*]const u8,
    buf_len: usize,
};

pub const SIGABRT: signal_t = 6;

pub extern "wasi_unstable" fn proc_raise(sig: signal_t) errno_t;

pub extern "wasi_unstable" fn proc_exit(rval: exitcode_t) noreturn;

pub extern "wasi_unstable" fn fd_write(fd: fd_t, iovs: *const ciovec_t, iovs_len: usize, nwritten: *usize) errno_t;
