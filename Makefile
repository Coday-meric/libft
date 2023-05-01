# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: amaisonn <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/02/06 18:08:22 by amaisonn          #+#    #+#              #
#    Updated: 2023/02/14 11:00:17 by amaisonn         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC = ft_split ft_itoa ft_strmapi ft_striteri ft_putchar_fd ft_putstr_fd ft_putendl_fd ft_putnbr_fd ft_strtrim ft_strjoin ft_substr ft_strdup ft_calloc ft_isascii ft_isalpha ft_isdigit ft_isalnum ft_isprint ft_strlen ft_memset ft_bzero ft_memcpy ft_memmove ft_strlcpy ft_strlcat ft_toupper ft_tolower ft_strchr ft_strrchr ft_strncmp ft_memchr ft_memcmp ft_strnstr ft_atoi

SRCS = 	$(addsuffix .c, ${SRC})

OBJS = ${SRCS:.c=.o}

FLAG = -Wall -Wextra -Werror

.c.o:
			gcc ${FLAG} -c $< -o ${<:.c=.o}

$(NAME):	${OBJS}
			ar rc $(NAME) ${OBJS} 

all: $(NAME)

clean:
			rm -f $(OBJS)

fclean: 	clean
			rm -f $(NAME)

re: 		fclean all
