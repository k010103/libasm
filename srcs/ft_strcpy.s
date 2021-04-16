
;char *ft_strcpy(char *dest, char *src)
;{
;	int i;
;
;	i = 0;
;	while (src[i] != '\0')
;	{
;		dest[i] = src[i];
;		i++;
;	}
;	dest[i] = '\0';
;	return (dest);
;}

section .text
	global _ft_strcpy

_ft_strcpy:
	mov		rcx, 0
	jmp		loop

loop:
	mov		al, BYTE[rsi + rcx]
	mov		BYTE[rdi + rcx], al
	inc		rcx
	cmp		al, 0
	je		return
	jmp		loop

return:
	mov		rax, rdi
	ret

