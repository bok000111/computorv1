NAME = computorv1

all: $(NAME)

$(NAME):
	@cargo build --bin $(NAME) --release && cp target/release/$(NAME) $(NAME)

clean:
	@cargo clean

fclean: clean
	@rm -f $(NAME)

re: fclean all

test: fclean
	@cargo test --release --test test

.PHONY: $(NAME) all clean fclean re
