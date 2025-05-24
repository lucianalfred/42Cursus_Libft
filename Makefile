# Compiler and flags
CC = gcc
CFLAGS = -Wall -Wextra -Werror
AR = ar rcs
RM = rm -f

# Library name and sources
NAME = libft.a
SRC = ft_strlen ft_memset ft_bzero ft_memcpy

BONUS = ft_lstnew ft_lstadd_front ft_lstsize ft_lstlast ft_lstadd_back \
        ft_lstdelone ft_lstclear ft_lstiter ft_lstmap

SRCS = $(addsuffix .c, $(SRC))
BONUS_SRCS = $(addsuffix .c, $(BONUS))
OBJS = $(SRCS:.c=.o)
BONUS_OBJS = $(BONUS_SRCS:.c=.o)
HEADER = libft.h

# Test configuration
TEST_DIR = testes
TEST_SRCS = $(wildcard $(TEST_DIR)/*.c)
TEST_BIN = test_runner

# Build rules
all: $(NAME)

$(NAME): $(OBJS)
	$(AR) $(NAME) $(OBJS)

bonus: $(BONUS_OBJS)
	$(AR) $(NAME) $(BONUS_OBJS)

%.o: %.c $(HEADER)
	$(CC) $(CFLAGS) -c $< -o $@

# Test rules
test: $(NAME)
	$(CC) $(CFLAGS) -I. $(TEST_SRCS) -o $(TEST_BIN) -L. -lft -lcriterion
	./$(TEST_BIN)

valgrind: test
	valgrind --leak-check=full --show-leak-kinds=all ./$(TEST_BIN)

# Clean rules
clean:
	$(RM) $(OBJS) $(BONUS_OBJS)

fclean: clean
	$(RM) $(NAME) $(TEST_BIN)

re: fclean all

.PHONY: all clean fclean re test valgrind bonus
