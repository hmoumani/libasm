section .text
    global _ft_read
    extern ___error

_ft_read:
    mov rax, 0x2000003
    syscall
    jc error
    ret

error:
    push rax        ; save errno
    call ___error   ; rax is now points to external variable errno.
    pop qword[rax]  ; The QWORD PTR is just a size specifier (It means that a 64 bit value is read from the address)
    mov rax, -1
    ret