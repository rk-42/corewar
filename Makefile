
DEPENDENCIES = Makefile libft/Makefile vm/Makefile assembler/Makefile disassembler/Makefile

ECHO		=	/bin/echo -e

.SUFFIXES:

all:	$(DEPENDENCIES)
		@$(MAKE) -C libft/
		@$(MAKE) -C vm/
		@$(MAKE) -C assembler/
		@$(MAKE) -C disassembler/

clean:
		@$(MAKE) -C libft/ clean
		@$(MAKE) -C vm/ clean
		@$(MAKE) -C assembler/ clean
		@$(MAKE) -C disassembler/ clean

fclean:	clean
		@$(MAKE) -C libft/ fclean
		@$(MAKE) -C vm/ fclean
		@$(MAKE) -C assembler/ fclean
		@$(MAKE) -C disassembler/ fclean

re:
		@echo "Recompiling"
		@$(MAKE) fclean
		@$(MAKE) all

.PHONY: clean fclean all re
