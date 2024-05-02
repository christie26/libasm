#include <stdio.h>

size_t	ft_strlen(const char *str)
{
	size_t	i;

	i = 0;
	while (str[i])
		i++;
	return (i);
}

int main()
{
	char str[] = "Hello, World!";
	printf("Length of string: %zu\n", ft_strlen(str));
	return 0;
}