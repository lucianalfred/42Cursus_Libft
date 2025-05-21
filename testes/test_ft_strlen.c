#include <criterion/criterion.h>
#include "libft.h"
#include <stdio.h>
#include <string.h>

Test(ft_strlen, simple_string)
{
    cr_assert_eq(ft_strlen("hello"),strlen("hello"));
    cr_assert_eq(ft_strlen("Luciano Alfredo"),strlen("Luciano Alfredo"));
    cr_assert_eq(ft_strlen("hello Luciano"),strlen("hello Luciano"));
}
