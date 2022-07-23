mov ah, 0x0e
mov al, 'A'

label:
	int 0x10
	inc al

	cmp al, 'Z' + 1
	je exit

	jmp label
exit:
	jmp $

times 510-($-$$) db 0
db 0x55, 0xaa
