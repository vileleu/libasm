section .text
	extern __errno_location
	global ft_read

ft_read:
	mov rax, 0
	syscall
	cmp rax, 0
	jl error
	jmp end

error:
	neg rax
	push r9
	mov r9, rax
	call __errno_location
	mov [rax], r9
	pop r9
	mov rax, -1
	jmp end

end:
	ret
