all : $(SERVER) $(CLIENT)

SERVER			=	server
SERVER_SRC		=	server.c

CLIENT			=	client
CLIENT_SRC		=	client.c 

UTILS		        =	minitalk_utils 
UTILS_SRC               =       minitalk_utils.c
 
CC			=	@gcc
RM 			=	@rm -f
FLAGS			= 	-Wall -Werror -Wextra


$(SERVER) : $(SERVER_OBJ) $(UTILS_OBJ)
	$(CC) $(FLAGS) $(SERVER_SRC) $(UTILS_SRC) -o $(SERVER)

$(CLIENT) : $(CLIENT_OBJ) $(UTILS_OBJ)
	$(CC) $(FLAGS) $(CLIENT_SRC) $(UTILS_SRC) -o $(CLIENT)

fclean : clean

clean :
	@rm -rf server client

re : fclean all

.PHONY: all fclean re
