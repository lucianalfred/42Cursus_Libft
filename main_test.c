#include <stdlib.h>
#include <stdio.h>


size_t  ft_strlen(const char *s)
{
    size_t i;

    i = 0;
    while(s[i] != '\0')
        i++;
    return (i);
}

size_t	ft_strlcpy(char *dest, const char *src, size_t size)
{
	size_t	i;

	i = 0;
	if (size > 0)
	{
		while (src[i] && i < (size - 1))
		{
			dest[i] = src[i];
			i++;
		}
		dest[i] = 0;
	}
	while (src[i])
		i++;
	return (i);
}



static int	ft_charinset(char c, const char *set)
{
	while (*set)
	{
		if (c == *set)
			return (1);
		set++;
	}
	return (0);
}

char	*ft_strtrim(char const *s1, char const *set)
{
	size_t	start;
	size_t	end;
	size_t	len;
	char	*trimmed;

	if (!s1 || !set)
		return (NULL);

	start = 0;
	while (s1[start] && ft_charinset(s1[start], set))
		start++;

	end = ft_strlen(s1);
	while (end > start && ft_charinset(s1[end - 1], set))
		end--;

	len = end - start;
	trimmed = (char *)malloc(sizeof(char) * (len + 1));
	if (!trimmed)
		return (NULL);

	ft_strlcpy(trimmed, s1 + start, len + 1);
	return (trimmed);
}

int main()
{
    char s[] = "xyxyxyxyxLucianoxyxyAnanaxxxxxxxxxxxxxxaaaaaaxyxyx";
    char set[] = "xya";
    
    printf("%s",ft_strtrim(s, set));


    return (0);
}