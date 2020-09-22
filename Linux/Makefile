BLUE = 		'\033[0;34m'
GREEN = 	'\033[0;32m'
LIGHTBLUE = '\033[1;34m'
RED = 		'\033[0;31m'
YELLOW = 	'\033[1;33m'
ORANGE = 	'\033[0;33m'
MAGENTA = 	'\033[0;35m'
RESET = 	'\033[0m'

SRCS		= ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s

OBJS		= ${SRCS:.s=.o}

NAME		= libasm.a

FLAGS		= -Wall -Wextra -Werror

RM			= rm -rf

%.o: %.s
			nasm -f elf64 $<

${NAME}:	${OBJS}
			@echo $(GREEN) "[Compiling library]" $(RESET)
			ar rc ${NAME} ${OBJS}

all:		${NAME}

test:		${NAME}
			gcc ${FLAGS} main.c ${NAME} -no-pie

clean:
			@echo $(ORANGE) "[Erase files ".o"]" $(RESET)
			${RM} ${OBJS}

fclean:		clean
			@echo $(ORANGE) "[Erase library]" $(RESET)
			${RM} ${NAME} a.out

re:			fclean all

.PHONY:		clean fclean re all
