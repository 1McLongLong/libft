CC = cc
CFLAGS = -Wall -Wextra -Werror 

SRCF= ft_isalpha.c ft_atoi.c ft_calloc.c ft_isprint.c ft_memcpy.c ft_memset.c ft_strlcpy.c ft_strrchr.c ft_atoi.c ft_isalnum.c ft_isascii.c \
      ft_memchr.c ft_strchr.c ft_strlen.c ft_tolower.c ft_bzero.c ft_isdigit.c ft_memcmp.c ft_strdup.c ft_strncmp.c ft_toupper.c \
	  ft_strlcat.c ft_memmove.c ft_strnstr.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_substr.c ft_strjoin.c ft_strtrim.c\
	  ft_itoa.c ft_strmapi.c ft_striteri.c ft_split.c

BSRCF= ft_lstadd_back_bonus.c ft_lstadd_front_bonus.c ft_lstlast_bonus.c ft_lstnew_bonus.c ft_lstsize_bonus.c

OBJF = $(SRCF:.c=.o) 
BOBJF = $(BSRCF:.c=.o)

NAME = libft.a

all : $(NAME)


$(NAME) : $(OBJF)
	ar -rcs $(NAME) $(OBJF)

%.o: %.c libft.h
	$(CC) $(CFLAGS) -c $< -o $@

bonus: $(BOBJF)
	ar -rcs $(NAME) $(BOBJF)

clean:
	rm -f $(OBJF) $(BOBJF)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY = all bonus clean fclean re