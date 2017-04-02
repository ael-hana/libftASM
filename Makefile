NAME=libfts.a

CC=nasm

CFLAGS=-f macho64

RM=rm -f

SRC=ft_bzero.s \
	ft_isalnum.s \
	ft_isalpha.s \
	ft_isascii.s \
	ft_isdigit.s \
	ft_isprint.s \
	ft_puts.s \
	ft_strcat.s \
	ft_tolower.s \
	ft_toupper.s \
	ft_strlen.s \
	ft_memset.s \
	ft_memcpy.s \
	ft_cat.s \
	ft_strchr.s \
	ft_strrchr.s \
	ft_strclen.s \
	ft_strplen.s \
	ft_putstr.s \
	ft_strdup.s

OBJ=$(SRC:.s=.o)

%.o: %.s
	$(CC) $(CFLAGS) $< -o $@

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

all: $(NAME)

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: clean fclean
