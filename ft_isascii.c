#include "libft.h"

int	ft_isascii(int c)
{
	unsigned int	i;

	i = (unsigned int)c;
	return (i <= 127);
}
