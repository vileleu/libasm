#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <errno.h>

size_t	ft_strlen(const char *s);
char	*ft_strcpy(char *dest, const char *src);
int		ft_strcmp(const char *s1, const char *s2);
ssize_t	ft_write(int fd, const void *buf, size_t count);
ssize_t	read(int fd, void *buf, size_t count);

int		main()
{
	char	s1[] = "sah";
	char	s2[] = "sah";
	char	src[] = "cargo";
	char	dest[] = "bl   ";
	int		nb;

	nb = 0;
	nb = ft_strlen(src);
	printf("\n----ft_strlen----\nle mot %s a %d caracteres!\n\n", src, nb);
	printf("----ft_strcpy----\ndest = %s, src = %s\n", dest, src);
	ft_strcpy(dest, src);
	printf("dest = %s, src = %s\n\n", dest, src);
	printf("----ft_strcmp----\n%d\n\n", ft_strcmp(s1, s2));
	printf("----ft_write----\n");
	nb = open("test.txt", O_RDWR | O_APPEND);
	ft_write(nb, "skilipampam", 11);
	ft_write(1, "skilipampam", 11);
	printf("\n\n");
	printf("----ft_read----\n");
	ft_read(nb, );
	return (0);
}