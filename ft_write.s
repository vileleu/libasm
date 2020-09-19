section .text
	extern ___error
	global _ft_write

_ft_write:
	mov rax, 0x2000004
	syscall
	jb error
	jmp end
	
error:
	push r9
	mov r9, rax
	call ___error
	mov [rax], r9
	pop r9
	mov rax, -1
	jmp end

end:
	ret