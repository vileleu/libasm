section .text
	global ft_strlen

ft_strlen:
	mov rcx, 0

boucle:
	cmp BYTE [rdi + rcx], 0
	jne count
	jmp end

count:
	inc rcx
	jmp boucle

end:
	mov rax, rcx
	ret
