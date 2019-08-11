# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tferrari <tferrari@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/04/13 16:44:11 by tferrari          #+#    #+#              #
#    Updated: 2019/08/11 17:11:44 by tferrari         ###   ########.fr        #
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

OBJS_DIR = obj

OBJS_C = $(addprefix $(OBJS_DIR)/, $(SRC_COL:.c=.o))

OBJS_G = $(addprefix $(OBJS_DIR)/, $(SRC_GRA:.c=.o))

OBJS_S = $(addprefix $(OBJS_DIR)/, $(SRC_SUL:.c=.o))

all : $(NAME1) $(NAME2) $(NAME3)

$(NAME1): $(OBJS_C)
	@clang -o $(NAME1) $(OBJS_C)
	@echo "\033[32mexecutable Collen créé\033[0m"

$(NAME2): $(OBJS_G)
	@clang -o $(NAME2) $(OBJS_G)
	@echo "\033[32mexecutable Grace créé\033[0m"

$(NAME3): $(OBJS_S)
	@clang -o $(NAME3) $(OBJS_S)
	@echo "\033[32mexecutable Sully créé\033[0m"

$(OBJS_DIR)/%.o: $(SRC_DIR)/%.c
	@mkdir -p $(OBJS_DIR)
	@clang -Wall -Werror -Wextra -o $@ -c $<
	@echo "Fichier" $< "recompilé."

clean:
	@rm -rf $(OBJS_DIR)
	@echo "\033[31mFichier objet de Dr_quine supprimé\033[0m"

fclean: clean
	@rm -f $(NAME1) $(NAME2) $(NAME3)
	@echo "\033[31mDr_quine supprimé\033[0m"

re: fclean all
