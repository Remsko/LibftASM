
section .text
    global _ft_strcmp
    extern _ft_strlen

; int ft_strcmp(const char *s1, const char *s2);
; rdi = s1
; rsi = s2

; rax = s1 - s2

_ft_strcmp:
length:
            mov     rdx, rdi
            xor     rcx, rcx
            not     rcx
            xor     al, al
            cld
    repne   scasb
            not     rcx
            mov     rdi, rdx
compare:
            cld
    repe    cmpsb
            mov     al, byte [rdi - 1]
            mov     bl, byte [rsi - 1]
            sub     rax, rbx
            ret