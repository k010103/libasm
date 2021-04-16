
;int	ft_strcmp(const char *s1, const char *s2)
;{
;	unsigned char	*us1;
;	unsigned char	*us2;
;
;	us1 = (unsigned char*)s1;
;	us2 = (unsigned char*)s2;
;	while (*us1 && *us2)
;	{
;		if (*us1 != *us2)
;			return (*us1 - *us2);
;		us1++;
;		us2++;
;	}
;	return (*us1 - *us2);
;}

section .text
	global  _ft_strcmp

_ft_strcmp:
	mov		rcx, 0
	mov		rdx, 0
	mov		rax, 0

cmp:
	mov		dl, BYTE[rsi+rcx]
	cmp		dl, BYTE[rdi+rcx]
	jne		end
	cmp		BYTE[rdi+rcx], 0
	je		end
	inc		rcx
	jmp		cmp

end:
	mov		al, BYTE[rdi+rcx]
	sub		rax, rdx
	ret
