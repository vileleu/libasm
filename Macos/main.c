#include <stdio.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <errno.h>
#define BUF 10

size_t	ft_strlen(const char *s);
char	*ft_strcpy(char *dest, const char *src);
int		ft_strcmp(const char *s1, const char *s2);
ssize_t	ft_write(int fd, const void *buf, size_t count);
ssize_t	ft_read(int fd, void *buf, size_t count);
char	*ft_strdup(const char *s);

int		main(void)
{
	char	s1[] = "cargo";
	char	s2[] = "maquereux";
	char	src[] = "allay";
	char	dest[] = "no   ";
	char	str[BUF + 1];
	int		nb;
	int		fd;

	nb = 0;
	nb = ft_strlen(src);
	printf("\n----ft_strlen----\nle mot %s a %d caracteres!\n\n", src, nb);
	printf("----ft_strdup----\n%s\n\n", ft_strdup(dest));
	printf("----ft_strcpy----\ndest = %s, src = %s\n", dest, src);
	ft_strcpy(dest, src);
	printf("dest = %s, src = %s\n\n", dest, src);
	printf("----ft_strcmp----\n%d\n\n", ft_strcmp(s1, s2));
	printf("----strcmp----\n%d\n\n", strcmp(s1, s2));
	printf("----ft_strdup----\n%s\n\n", ft_strdup(dest));
	fd = open("test.txt", O_RDWR | O_APPEND);
	printf("----ft_read----\n");
	nb = ft_read(fd, str, BUF);
	printf("ret = %d, %s\n", nb, str);
	printf("ERRNO = %d\n\n", errno);
	printf("----ft_write----\n");
	nb = ft_write(50, "ski", 3);
	printf("ret = %d\n", nb);
	printf("ERRNO = %d", errno);
	printf("\n\n");
	return (0);
}
