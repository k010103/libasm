
;char	*ft_strdup(const char *s)
;{
;	int		i;
;	int		len;
;	char	*str;
;
;	i = 0;
;	len = ft_strlen(s);
;	str = (char *)malloc(sizeof(char) * (len + 1));
;	if (!str)
;		return (0);
;	while (s[i])
;	{
;		str[i] = s[i];
;		i++;
;	}
;	str[i] = '\0';
;	return (str);
;}

section .text
	global _ft_strdup
	extern _ft_strlen
	extern _ft_strcpy
	extern _malloc

_ft_strdup:
	mov		rax, 0
	push	rdi
	call	_ft_strlen
	mov		rdi, rax
	call	_malloc
	cmp		rax, 0
	je		err
	mov		rdi, rax
	pop		rsi
	push	rax
	call	_ft_strcpy
	pop		rdx
	ret

err:
	ret
