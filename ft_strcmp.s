section .text
	global _ft_strcmp

_ft_strcmp:
	mov rcx, -1
	mov dl, 0

boucle:
	inc rcx
	mov dl, BYTE [rsi + rcx]
	cmp BYTE [rdi + rcx], dl
	je bouclebis
	mov dl, BYTE [rdi + rcx]
	sub dl, BYTE [rsi + rcx]
	cmp dl, 0
	jg plus
	jl moins
	mov rax, 0
	jmp end

bouclebis:
	cmp BYTE [rdi + rcx], 0
	jne boucle
	mov rax, 0
	jmp end

plus:
	mov rax, 1
	jmp end

moins:
	mov rax, -1
	jmp end
	
end:
	ret