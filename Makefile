# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tferrari <tferrari@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/04/13 16:44:11 by tferrari          #+#    #+#              #
#    Updated: 2017/11/11 13:57:23 by tferrari         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

.PHONY: libft

NAME1 = Colleen

NAME2 = Grace

NAME3 = Sully

SRC_DIR = src

SRC_COL = Colleen.c

SRC_GRA = Grace.c

SRC_SUL = Sully.c

SRC = $(addprefix $(SRC_DIR)/, $(SRC_FILE))

OBJS_DIR = obj

OBJS = $(addprefix $(OBJS_DIR)/, $(SRC_FILE:.c=.o))

all : $(NAME1)

$(NAME1): $(OBJS)
	@clang -o $(NAME1) $(OBJS)
	@echo "\033[32mexecutable Dr_quine créé\033[0m"

$(OBJS_DIR)/%.o: $(SRC_DIR)/%.c
	@mkdir -p $(OBJS_DIR)
	@clang -Wall -Werror -Wextra $(INC) -o $@ -c $<
	@echo "Fichier" $< "recompilé."

clean:
	@rm -rf $(OBJS_DIR)
	@echo "\033[31mFichier objet de Dr_quine supprimé\033[0m"

fclean: clean
	@rm -f $(NAME)
	@echo "\033[31mDr_quine supprimé\033[0m"

re: fclean all
