mov ah, 0x0e
mov al, 'A'
int 0x10

label:
	inc al
	int 0x10

	cmp al, 'Z'
	je exit

	jmp label
exit:

times 510-($-$$) db 0
db 0x55, 0xaa
