# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tferrari <tferrari@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/04/13 16:44:11 by tferrari          #+#    #+#              #
#    Updated: 2019/05/22 15:28:45 by tferrari         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC_C = Collen.s

SRC_G = Grace.s

OBJ_PATH = .obj/

NAME1 = Collen

NAME2 = Grace

NASM = nasm

CFLAGS = -f macho64

OBJ_NAME_C = $(SRC_C:.s=.o)
OBJ_NAME_G = $(SRC_G:.s=.o)

OBJ_C = $(addprefix $(OBJ_PATH), $(OBJ_NAME_C))
OBJ_G = $(addprefix $(OBJ_PATH), $(OBJ_NAME_G))

.PHONY: all, clean, fclean, re

all: $(NAME1) $(NAME2)

$(NAME1): $(OBJ_C)
	@ld $^ -o $(NAME1) -macosx_version_min 10.8 -lSystem
	@echo "\033[32mexecutable Collen créé\033[0m"

$(OBJ_PATH)%.o: %.s
	@mkdir $(OBJ_PATH) 2> /dev/null || true
	@$(NASM) $(CFLAGS) $< -o $@
	@echo "Fichier" $< "recompilé."

$(NAME2): $(OBJ_G)
	@ld $^ -o $(NAME2) -macosx_version_min 10.8 -lSystem
	@echo "\033[32mexecutable Grace créé\033[0m"

$(OBJ_PATH)%.o: %.s
	@mkdir $(OBJ_PATH) 2> /dev/null || true
	@$(NASM) $(CFLAGS) $< -o $@
	@echo "Fichier" $< "recompilé."

clean:
	@rm -rf$(OBJ)
	@rmdir $(OBJ_PATH) 2> /dev/null || true
	@echo "\033[31mFichier objet de Dr_quine supprimé\033[0m"

fclean: clean
	@rm -fv $(NAME1) $(NAME2)
	@echo "\033[31mDr_quine supprimé\033[0m"

re: fclean all
