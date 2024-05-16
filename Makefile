# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gbuczyns <gbuczyns@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/05/10 18:56:40 by gbuczyns          #+#    #+#              #
#    Updated: 2024/05/12 16:13:07 by gbuczyns         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME= libftprintf.a
LIBFTNAME= libft.a
CC= cc
CFLAGS= -Wall -Wextra -Werror
LIBTFDIR= ./libft

SRC= ft_printf.c ft_print_digit.c ft_print_hexl.c ft_print_hexu.c \
ft_print_pointer.c ft_print_string.c ft_print_unsigned.c

OBJ= $(SRC:%.c=%.o)

%.o: %.c
	$(CC) $(CFLAGS) -o $@ -c $<

all: $(NAME)

$(NAME): libft $(OBJ)
	ar rcs $(NAME) $(OBJ)

libft:
	@make -C $(LIBTFDIR)
	@cp $(LIBTFDIR)/$(LIBFTNAME) .
	@mv $(LIBFTNAME) $(NAME)

clean:
	rm -f *.o

cleanlibft:
	@make clean -C $(LIBTFDIR)

fclean: clean
	rm -f $(NAME)

fcleanlibft:
	@make fclean -C $(LIBTFDIR)

allclean: clean cleanlibft

allfclean: fclean fcleanlibft
	rm a.out

re: fclean fcleanlibft all

testl:
	nm libftprintf.a

test:
	cc ft_printf.c -L. -lftprintf

.PHONY: all libft clean cleanlibft fclean fcleanlibft allclean allfclean re test testl