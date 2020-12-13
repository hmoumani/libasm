section .text
	global _ft_strcmp

_ft_strcmp:
    mov rax, 0

comp:
    mov dl, BYTE[rsi + rax]
    cmp BYTE[rdi + rax], dl
    jg greater
    jl less
    inc rax
    cmp BYTE[rdi + rax], 0
    je end
    call comp

greater:
    mov rax, 1
    ret

less:
    mov rax, -1
    ret

end : 
    mov rax, 0
    ret