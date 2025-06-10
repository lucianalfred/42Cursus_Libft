# Nome da biblioteca
NAME = libft.a

# Comandos
CC = gcc
AR = ar rcs
RM = rm -f

# Flags
CFLAGS = -Wall -Wextra -Werror

# Diretórios
INCLUDES_DIR = includes
SRCS_DIR = srcs
TESTES_DIR = tests

# Arquivos-fonte
SRCS_FILES = \
	ft_isalpha.c

# Lista de .c com caminho completo
SRCS = $(addprefix $(SRCS_DIR)/, $(SRCS_FILES))

# Objetos (no diretório atual)
OBJS = $(SRCS_FILES:.c=.o)

# Arquivos de teste
LIBFT = $(SRCS_DIR)/ft_isalpha.c
TEST_ISALPHA = $(TESTES_DIR)/ft_isalpha_test.c
IS_ALPHA_TEST_EXEC = ft_isalpha_test

# Regra padrão
all: $(NAME)

# Geração da lib
$(NAME): $(OBJS)
	$(AR) $@ $^

# Compilar .c de srcs para .o no diretório atual
%.o: $(SRCS_DIR)/%.c
	$(CC) $(CFLAGS) -I $(INCLUDES_DIR) -c $< -o $@

# Teste de ft_isalpha
ft_isalpha_test:
	$(CC) $(CFLAGS) $(LIBFT) $(TEST_ISALPHA) -I$(INCLUDES_DIR) -o $(IS_ALPHA_TEST_EXEC)
	@echo "Executando teste para ft_isalpha:"
	./$(IS_ALPHA_TEST_EXEC)

# Limpeza
clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME) $(IS_ALPHA_TEST_EXEC)

re: fclean all

.PHONY: all clean fclean re ft_isalpha_test
