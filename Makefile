# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rimarque <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/24 14:39:30 by rimarque          #+#    #+#              #
#    Updated: 2023/01/10 17:44:15 by rimarque         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

HDRS = libft.h

CC = cc

CFLAGS  = -Wall -Wextra -Werror

RM = rm -rf

OBJ = $(FT_FUNCTIONS:.c=.o)

FT_FUNCTIONS =  ft_bzero.c \
           ft_isalnum.c \
           ft_isalpha.c \
           ft_isascii.c \
           ft_isdigit.c \
           ft_isprint.c \
           ft_memset.c \
           ft_strlen.c \
           ft_memcpy.c \
           ft_memmove.c \
           ft_strlcpy.c \
           ft_strlcat.c \
	   ft_toupper.c \
	   ft_tolower.c \
	   ft_strchr.c \
	   ft_strrchr.c \
	   ft_strncmp.c \
	   ft_memchr.c \
	   ft_memcmp.c \
	   ft_strnstr.c \
	   ft_atoi.c \
	   ft_calloc.c \
	   ft_strdup.c \
	   ft_substr.c \
	   ft_strjoin.c \
	   ft_strtrim.c \
	   ft_strmapi.c \
	   ft_striteri.c \
	   ft_putchar_fd.c \
	   ft_putstr_fd.c \
	   ft_putendl_fd.c \
	   ft_putnbr_fd.c \
	   ft_itoa.c \
	   ft_split.c

all: $(NAME)

$(NAME): $(OBJ) $(HDRS)
	@ar rcs $(NAME) $(OBJ)

clean:
	@$(RM) $(OBJ)
	@$(RM) a.out
	@$(RM) libft.h.gch
	@$(RM) libft.so

fclean: clean
	@$(RM) $(NAME)

re: fclean all
        
.PHONY: all clean fclean re

so:
	$(CC) -nostartfiles -fPIC $(CFLAGS) $(FT_FUNCTIONS)
	gcc -nostartfiles -shared -o libft.so $(OBJ)

