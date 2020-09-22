section .text
	extern ft_strlen
	extern ft_strcpy
	extern malloc
	global ft_strdup

ft_strdup:
	call ft_strlen
	add rax, 1
	push rdi
	mov rdi, rax
	call malloc
	pop rdi
	push rdi
	mov rsi, rdi
	mov rdi, rax
	call ft_strcpy
	pop rdi

end:
	ret
