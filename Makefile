NAME = libasm.a
CC = nasm
RM = rm -rf
CFLAGS = -f

INC_PATH += ./incs

INC_NAME += 

INC = $(addprefix $(INC_PATH)/,$(INC_NAME))

CPPFLAGS = $(addprefix -I,$(INC_PATH))

SRC_PATH = srcs

SRC_NAME += ft_strlen.s

vpath %.s $(SRC_PATH)

UNAME := $(shell uname -s)
ifeq ($(UNAME), Linux)
	CFLAGS += elf64
else
	CFLAGS += macho64
endif

OBJ_PATH = obj
OBJ_NAME = $(SRC_NAME:%.s=%.o)
OBJ = $(addprefix $(OBJ_PATH)/,$(OBJ_NAME)) 

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)

$(OBJ): $(INC) | $(OBJ_PATH)
$(OBJ): $(OBJ_PATH)/%.o: %.s
	$(CC) $(CFLAGS) $(CPPFLAGS) -o $@ $<

$(OBJ_PATH):
	mkdir -p $@

clean:
	$(RM) $(OBJ_PATH)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re test