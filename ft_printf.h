/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gbuczyns <gbuczyns@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/20 20:34:41 by agorski           #+#    #+#             */
/*   Updated: 2024/05/12 15:58:57 by gbuczyns         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include "./libft/libft.h"
# include <stdarg.h>
# include <unistd.h>

int	ft_printf(const char *imput, ...);
int	print_char(int c);
int	print_string(char *str);
int	print_digit(long n, int base);
int	print_hexl(unsigned long int n);
int	print_hexu(unsigned long int n);
int	print_pointer(void *prt);
int	print_unsigned(unsigned int n);

#endif
