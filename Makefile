#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: yzakharc <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/11/30 11:02:22 by yzakharc          #+#    #+#              #
#    Updated: 2016/12/12 20:12:10 by yzakharc         ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME = libft.a

CC = gcc

CFLAGS = -Wall -Wextra -Werror

SRC =				\
	ft_memset.c		\
	ft_bzero.c		\
	ft_memcpy.c		\
	ft_memccpy.c	\
	ft_memmove.c	\
	ft_memchr.c		\
	ft_memcmp.c		\
	ft_strlen.c		\
	ft_strdup.c		\
	ft_strcpy.c		\
	ft_strncpy.c	\
	ft_strcat.c		\
	ft_strncat.c	\
	ft_strlcat.c	\
	ft_strchr.c		\
	ft_strrchr.c	\
	ft_strstr.c		\
	ft_strnstr.c	\
	ft_strcmp.c		\
	ft_strncmp.c	\
	ft_atoi.c		\
	ft_isalpha.c	\
	ft_isdigit.c	\
	ft_isalnum.c	\
	ft_isascii.c	\
	ft_isprint.c	\
	ft_toupper.c	\
	ft_tolower.c	\
	ft_memalloc.c	\
	ft_memdel.c		\
	ft_strnew.c		\
	ft_strdel.c		\
	ft_strclr.c		\
	ft_striter.c	\
	ft_putchar.c	\
	ft_putstr.c		\
	ft_putendl.c	\
	ft_putnbr.c		\
	ft_putchar_fd.c	\
	ft_putstr_fd.c	\
	ft_putendl_fd.c	\
	ft_putnbr_fd.c	\
	ft_striteri.c	\
	ft_strmap.c		\
	ft_strmapi.c	\
	ft_strequ.c		\
	ft_strnequ.c	\
	ft_strsub.c		\
	ft_isspace.c	\
	ft_strjoin.c	\
	ft_strtrim.c	\
	ft_lstnew.c		\
	ft_lstdelone.c	\
	ft_lstdel.c		\
	ft_lstadd.c		\
	ft_lstiter.c	\
	ft_nbri.c		\
	ft_nbrstr.c		\
	ft_strrev.c		\
	ft_itoa.c		\
	ft_lstmap.c		\
	ft_strsplit.c	\
	ft_cntwords.c	\

OBJ = $(SRC:.c=.o)

all : $(NAME)

$(NAME) : $(OBJ)
	ar -cru $(NAME) $(OBJ)
	ranlib $(NAME)

%.o : %c. libft.h
	$(CC) $(CFLAGS) -c -o $@ $<

clean :
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(NAME)

re : clean  all

norm :
	norminette ft_*.c libft.h

remove :
	rm -Rf *.c~
	rm -Rf *.c\#
	rm -Rf *.out
