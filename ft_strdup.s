section .text
    global _ft_strdup
    extern _malloc
    extern _ft_strlen
    extern _ft_strcpy
    extern ___error

_ft_strdup:
    push rdi
    call _ft_strlen
    inc rax
    mov rdi, rax
    call _malloc
    cmp rax, 0
    je error
    mov rdi, rax
    pop rsi
    call _ft_strcpy
    ret
error:
    error:
    push 12        ; save errno
    call ___error   ; rax is now points to external variable errno.
    pop qword[rax]  ; The QWORD PTR is just a size specifier (It means that a 64 bit value is read from the address)
    mov rax, 0
    ret
