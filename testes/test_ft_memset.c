#include <criterion/criterion.h>
#include "libft.h"
#include <stdio.h>
#include <string.h>

Test(ft_memset, simple_test)
{
    char buffer[4];

    cr_assert_eq(ft_memset(buffer, 65, 4),memset(buffer, 65, 4));
    
}
