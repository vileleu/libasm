section .text
	extern _ft_strlen
	extern _ft_strcpy
	extern _malloc
	global _ft_strdup

_ft_strdup:
	call _ft_strlen
	add rax, 1
	push rdi
	mov rdi, rax
	call _malloc
	pop rdi
	push rdi
	mov rsi, rdi
	mov rdi, rax
	call _ft_strcpy
	pop rdi

end:
	ret