#include <criterion/criterion.h>
#include "libft.h"
#include <stdio.h>
#include <string.h>

Test(ft_memcpy, simple_test_for_memcpy)
{
    char buffer1[7] = "Luciano";
    char buffer2[7];
    cr_assert_eq(ft_memcpy(buffer2,buffer1, 4),memcpy(buffer2,buffer1, 4));    
}
