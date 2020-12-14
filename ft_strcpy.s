section .text
	global _ft_strcpy
	

_ft_strcpy:
	mov rax, rdi
	mov rcx, 0

copy:
	cmp BYTE [rsi + rcx], 0
	je end
	mov dl,BYTE [rsi + rcx]
	mov BYTE [rdi + rcx],dl
	add rcx, 1
	jmp copy

end:
	mov dl, 0
	mov BYTE [rdi + rcx],dl
	ret
