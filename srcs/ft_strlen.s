global _ft_strlen

section .text

; size_t  ft_strlen(const char *s);
; rdi = s

_ft_strlen:
        xor     rcx, rcx    ; rcx = 0
        not     rcx         ; rcx = -1
        sub     al, al      ; al = 0
        cld                 ; clear df flag
repne   scasb               ; search al in rdi
        not     rcx         ; ecx = - strlen - 2 and |ecx| = ecx - 1 so |ecx| - 1 = strlen 
        ;dec     rcx         ; ecx = strlen
        lea     rax, [rcx - 1] ; 
        ret