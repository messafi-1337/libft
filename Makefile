# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: messafi <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/09 12:10:21 by messafi           #+#    #+#              #
#    Updated: 2021/11/10 19:20:03 by messafi          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC=cc
CFLAGS=-Wall -Werror -Wextra
NAME=libft.a
SRC=ft_bzero.c\
		  ft_isalpha.c\
		  ft_isdigit.c\
		  ft_memchr.c\
		  ft_strchr.c\
		  ft_strrchr.c\
		  ft_atoi.c\
		  ft_isascii.c\
		  ft_memcmp.c\
		  ft_strlen.c\
		  ft_tolower.c\
		  ft_strncmp.c\
		  ft_toupper.c\
		  ft_isalnum.c\
		  ft_isprint.c\
		  ft_memset.c\
		  ft_strnstr.c\
		  ft_memcpy.c\
		  ft_memmove.c\
		  ft_strlcat.c\
		  ft_strdup.c\
		  ft_calloc.c\
		  ft_substr.c\
		  ft_strtrim.c\
		  ft_strjoin.c\
		  ft_strlcpy.c\
		  ft_split.c\
		  ft_itoa.c\
		  ft_strmapi.c\
		  ft_striteri.c\
		  ft_putchar_fd.c\
		  ft_putstr_fd.c\
		  ft_putendl_fd.c\
		  ft_putnbr_fd.c\

OBJ=$(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	ar -rc $(NAME) $(OBJ)
clean:
	rm -f $(OBJ)
fclean: clean
	rm -f libft.a
re: fclean all
