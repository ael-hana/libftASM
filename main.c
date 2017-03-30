#include <fcntl.h>
int		ft_cat(int);
int		main(int ac, char **av)
{
	int	fd;

	fd = open(av[1], O_RDONLY);
	ft_cat(fd);
	return (0);
}
