#include <criterion/criterion.h>
#include "libft.h"

Test(ft_strlen, simple_string)
{
    cr_assert_eq(ft_strlen("hello"), 5);
}
