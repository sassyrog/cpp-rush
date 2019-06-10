# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: Roger Ndaba <rogerndaba@gmil.com>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/06/10 15:55:44 by Roger Ndaba       #+#    #+#              #
#    Updated: 2019/06/10 16:04:29 by Roger Ndaba      ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = ft_retro

CC = clang++ -Wall -Wextra -Werror -lncurses

SRC = Bullet.cpp  Enemy.cpp  main.cpp  Screen.cpp  SpaceShip.cpp  Window.cpp

OBJ = $(SRC:.cpp=.o)

all: $(NAME)

$(NAME): $(OBJ)
	@$(CC) -o $(NAME) $(OBJ)
	@printf "\e[1;32mCompiled successfully\e[0m\n"

%.o: %.cpp
	@$(CC) $(CXXFLAGS) -o $@ -c $<

clean:
	@rm -rf $(OBJ)

fclean: clean
	@rm -rf $(NAME)

re: fclean all

