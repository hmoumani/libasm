
section .text
    global _ft_strlen

_ft_strlen:
    mov rax, 0
    call _count

_count:
    cmp BYTE[rdi + rax], 0
    je exit
    inc rax
    jne _count

exit:
    ret