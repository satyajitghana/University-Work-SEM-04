# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/cmake/bin/cmake

# The command to remove a file.
RM = /opt/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/QUACK

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/QUACK/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/QUACK.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/QUACK.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/QUACK.dir/flags.make

CMakeFiles/QUACK.dir/main.c.o: CMakeFiles/QUACK.dir/flags.make
CMakeFiles/QUACK.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/QUACK/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/QUACK.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/QUACK.dir/main.c.o   -c /mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/QUACK/main.c

CMakeFiles/QUACK.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/QUACK.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/QUACK/main.c > CMakeFiles/QUACK.dir/main.c.i

CMakeFiles/QUACK.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/QUACK.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/QUACK/main.c -o CMakeFiles/QUACK.dir/main.c.s

CMakeFiles/QUACK.dir/stack.c.o: CMakeFiles/QUACK.dir/flags.make
CMakeFiles/QUACK.dir/stack.c.o: ../stack.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/QUACK/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/QUACK.dir/stack.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/QUACK.dir/stack.c.o   -c /mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/QUACK/stack.c

CMakeFiles/QUACK.dir/stack.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/QUACK.dir/stack.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/QUACK/stack.c > CMakeFiles/QUACK.dir/stack.c.i

CMakeFiles/QUACK.dir/stack.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/QUACK.dir/stack.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/QUACK/stack.c -o CMakeFiles/QUACK.dir/stack.c.s

CMakeFiles/QUACK.dir/input_helper.c.o: CMakeFiles/QUACK.dir/flags.make
CMakeFiles/QUACK.dir/input_helper.c.o: ../input_helper.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/QUACK/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/QUACK.dir/input_helper.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/QUACK.dir/input_helper.c.o   -c /mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/QUACK/input_helper.c

CMakeFiles/QUACK.dir/input_helper.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/QUACK.dir/input_helper.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/QUACK/input_helper.c > CMakeFiles/QUACK.dir/input_helper.c.i

CMakeFiles/QUACK.dir/input_helper.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/QUACK.dir/input_helper.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/QUACK/input_helper.c -o CMakeFiles/QUACK.dir/input_helper.c.s

CMakeFiles/QUACK.dir/quack.c.o: CMakeFiles/QUACK.dir/flags.make
CMakeFiles/QUACK.dir/quack.c.o: ../quack.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/QUACK/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/QUACK.dir/quack.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/QUACK.dir/quack.c.o   -c /mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/QUACK/quack.c

CMakeFiles/QUACK.dir/quack.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/QUACK.dir/quack.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/QUACK/quack.c > CMakeFiles/QUACK.dir/quack.c.i

CMakeFiles/QUACK.dir/quack.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/QUACK.dir/quack.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/QUACK/quack.c -o CMakeFiles/QUACK.dir/quack.c.s

CMakeFiles/QUACK.dir/vector.c.o: CMakeFiles/QUACK.dir/flags.make
CMakeFiles/QUACK.dir/vector.c.o: ../vector.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/QUACK/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/QUACK.dir/vector.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/QUACK.dir/vector.c.o   -c /mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/QUACK/vector.c

CMakeFiles/QUACK.dir/vector.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/QUACK.dir/vector.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/QUACK/vector.c > CMakeFiles/QUACK.dir/vector.c.i

CMakeFiles/QUACK.dir/vector.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/QUACK.dir/vector.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/QUACK/vector.c -o CMakeFiles/QUACK.dir/vector.c.s

# Object files for target QUACK
QUACK_OBJECTS = \
"CMakeFiles/QUACK.dir/main.c.o" \
"CMakeFiles/QUACK.dir/stack.c.o" \
"CMakeFiles/QUACK.dir/input_helper.c.o" \
"CMakeFiles/QUACK.dir/quack.c.o" \
"CMakeFiles/QUACK.dir/vector.c.o"

# External object files for target QUACK
QUACK_EXTERNAL_OBJECTS =

QUACK: CMakeFiles/QUACK.dir/main.c.o
QUACK: CMakeFiles/QUACK.dir/stack.c.o
QUACK: CMakeFiles/QUACK.dir/input_helper.c.o
QUACK: CMakeFiles/QUACK.dir/quack.c.o
QUACK: CMakeFiles/QUACK.dir/vector.c.o
QUACK: CMakeFiles/QUACK.dir/build.make
QUACK: CMakeFiles/QUACK.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/QUACK/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking C executable QUACK"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/QUACK.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/QUACK.dir/build: QUACK

.PHONY : CMakeFiles/QUACK.dir/build

CMakeFiles/QUACK.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/QUACK.dir/cmake_clean.cmake
.PHONY : CMakeFiles/QUACK.dir/clean

CMakeFiles/QUACK.dir/depend:
	cd /mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/QUACK/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/QUACK /mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/QUACK /mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/QUACK/cmake-build-debug /mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/QUACK/cmake-build-debug /mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/QUACK/cmake-build-debug/CMakeFiles/QUACK.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/QUACK.dir/depend

