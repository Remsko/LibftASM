section .text
    global _ft_write

; ssize_t write(int fildes, const void *buf, size_t nbyte);
; rdi = fd
; rsi = buf
; rdx = size

_ft_write:
            mov     rax, 0x2000004
            syscall
            ret