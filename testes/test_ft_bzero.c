#include <criterion/criterion.h>
#include <string.h>     
#include "libft.h"      

Test(ft_bzero, zeroes_memory_like_bzero)
{
    char buf1[10];
    char buf2[10];

    memset(buf1, 'A', sizeof(buf1));
    memset(buf2, 'A', sizeof(buf2));

    ft_bzero(buf1, 10);
    bzero(buf2, 10);  
    cr_assert_arr_eq(buf1, buf2, 10, "Buffers differ after zeroing.");
}
