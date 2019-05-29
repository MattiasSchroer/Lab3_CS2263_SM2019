# TODO: add targets to compile LinkedList.c

# TODO: add a target for each .input file in the Data directory to run the compiled LinkedList program with the tests in ./Data

# TODO: add a target that can run all the tests above.

# compile with gcc, change this to clang if you prefer
COMPILER = gcc

# The C flags to pass to gcc
C_FLAGS = -Wall -Wextra -std=c99


# prepend the command with '@' so that Make does not print the command before running it
help:
	@printf "available command:\n"
	@printf "	make help               (this command)\n"
	@printf "	make Stack              (to build your C program)\n"
	@printf "	make test               (to run every test case)\n"
	@printf "	make test1               (to run test1)\n"
	@printf "	make test2               (to run test2)\n"
	@printf "	make test3               (to run test3)\n"



# link our .o files to make an executable
Stack: Stack.o
	$(COMPILER) $(C_FLAGS) -o Stack Stack.o

# compile the `Stack.o` file
Stack.o: Stack.c
	$(COMPILER) $(C_FLAGS) -c Stack.c

#################################################################
# Test Cases
test: all_tests

all_tests: test1 test2 test3

test1: Stack
	./Stack < Data/test1.input > test1.result

test2: Stack
	./Stack < Data/test2.input > test2.result

test3: Stack
	./Stack < Data/test3.input > test3.result

	#################################################################
