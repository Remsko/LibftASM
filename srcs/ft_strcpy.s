
section .text
    global _ft_strcpy
    extern _ft_strlen

; size_t  ft_strlen(const char *s);
; rdi = s

; char *ft_strcpy(char *dst, const char *src);
; rdi = dst
; rsi = src

_ft_strcpy:
            push    rdi
            mov     rdi, rsi
            call    _ft_strlen
            mov     rcx, rax
            inc     rcx
            pop     rdi
            mov     rax, rdi
            rep     movsb
            ret
