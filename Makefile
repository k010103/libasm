# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: junmkang <junmkang@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/07 17:46:39 by junmkang          #+#    #+#              #
#    Updated: 2021/04/14 17:19:12 by junmkang         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

CC = gcc
CCFLAG = -Wall -Werror -Wextra -L. -lasm -I

ASM = nasm
ASMFLAG = -f macho64

RM = rm -f

INCLUDE_DIR = ./include/

SRCS_NAME = \
		./srcs/ft_strlen.s \
		./srcs/ft_write.s \
		./srcs/ft_read.s \
		./srcs/ft_strcmp.s \
		./srcs/ft_strcpy.s \
		./srcs/ft_strdup.s

OBJS = $(SRCS_NAME:.s=.o)

all : $(NAME)

$(NAME) :
	$(ASM) $(ASMFLAG) ./srcs/ft_strlen.s
	$(ASM) $(ASMFLAG) ./srcs/ft_write.s
	$(ASM) $(ASMFLAG) ./srcs/ft_read.s
	$(ASM) $(ASMFLAG) ./srcs/ft_strcmp.s
	$(ASM) $(ASMFLAG) ./srcs/ft_strcpy.s
	$(ASM) $(ASMFLAG) ./srcs/ft_strdup.s
	ar rcs $(NAME) $(OBJS)

test : re
	$(CC) $(CCFLAG) $(INCLUDE_DIR) main.c $(NAME)

test2 : re
	$(CC) $(CCFLAG) $(INCLUDE_DIR) main2.c $(NAME)

clean :
	$(RM) $(OBJS)

fclean : clean
	$(RM) $(OBJS) $(NAME) ./a.out

re : fclean $(NAME)


