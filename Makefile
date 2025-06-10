# NOME do executavel

NAME = libft.a

# Flags e comandos shell
CC = gcc 
AR = ar
RM = rm -f

CFLAGS = -Wall -Wextra -Werror

#diretorios

INCLUDES_DIR = includes
SRCS_DIR = srcs
TESTES_DIR = tests

SRCS_FILES = \

SRCS = $(addprefix $(SRCS_DIR)/, $(SRCS_FILES))

OBJS = $(SRCS_FILES:.c=.o)

#Arquivos de testes

LIBFT = $(SRCS_DIR)/ft_isalpha.c
TEST_ISALPHA = $(TESTES_DIR)/ft_isalpha_test.c

#Executaveis dos testes
IS_ALPHA_TEST_EXEC = ft_isalpha

ft_isalpha_test: 
	$(CC) $(CFLAGS) $(LIBFT) $(TEST_ISALPHA) -o $(IS_ALPHA_TEST_EXEC)
	./$(IS_ALPHA_TEST_EXEC) 
all: $(NAME)

$(NAME): $(OBJS)
	$(AR) rcs $(NAME) $(OBJS)
%.o:$(SRCS_DIR)/%.c
	$(CC) $(CFLAGS) -I $(INCLUDES_DIR) -c $< -o $@

clean:
	$(RM) $(OBJS)
fclean: clean
	$(RM) $(NAME)
re: fclean all


.PHONY: all clean fclean re ft_isalpha_test