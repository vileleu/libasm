section .text
	global _ft_strcmp

_ft_strcmp:
	mov rcx, -1
	mov dh, 0
	jmp boucle

boucle:
	inc rcx
	mov dh, BYTE [rsi + rcx]
	cmp BYTE [rdi + rcx], dh
	je bouclebis
	mov dh, BYTE [rdi + rcx]
	mov ch, BYTE [rsi + rcx]
	cmp dh, 0
	jl absol
	cmp ch, 0
	jl abso
	jmp verif

absol:
	cmp ch, 0
	jl verif
	neg dh
	jmp verif



abso:
	neg ch
	jmp verif

verif:
	sub dh, ch
	cmp dh, 0
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