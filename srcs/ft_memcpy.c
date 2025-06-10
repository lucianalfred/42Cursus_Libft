#include "libft.h"

void *ft_memcpy(void *dest, const void *src,size_t n)
{
    size_t counter;
    unsigned char *destiny;
    unsigned char *source;

    if (!dest && !src)
        return (NULL);
    destiny = (unsigned char *)dest;
    source = (unsigned char *)src;
    counter = 0;
    while (counter < n)
    {
        destiny[counter] = source[counter];
        counter++;
    }
    return (destiny);

}