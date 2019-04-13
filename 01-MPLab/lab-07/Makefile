# Source, Executables
SRC = file.s
OBJ = $(SRC:.s=.o)
TARGET = output

# Compiler and Linker
CAS = as
CASFLAGS = -gstabs
LL = ld

# Compile and assemble S source files into Object files
%.o: %.s
	$(CAS) $(CASFLAGS) $*.s -o $*.o

$(TARGET): $(OBJ)
	$(LL) $(OBJ) -o $(TARGET)

clean:
	rm $(OBJ) $(TARGET)
