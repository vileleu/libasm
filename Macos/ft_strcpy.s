section .text
	global _ft_strcpy

_ft_strcpy:
	mov rcx, 0
	mov dl, 0

boucle:
	cmp BYTE [rsi + rcx], 0
	jne copy
	mov BYTE [rdi + rcx], 0
	jmp end

copy:
	mov dl, BYTE [rsi + rcx]
	mov BYTE [rdi + rcx], dl
	inc rcx
	jmp boucle

end:
	mov rax, rdi
	ret
