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
CMAKE_SOURCE_DIR = /mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/Min-Span-Tree

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/Min-Span-Tree/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Min_Span_Tree.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Min_Span_Tree.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Min_Span_Tree.dir/flags.make

CMakeFiles/Min_Span_Tree.dir/main.c.o: CMakeFiles/Min_Span_Tree.dir/flags.make
CMakeFiles/Min_Span_Tree.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/Min-Span-Tree/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Min_Span_Tree.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Min_Span_Tree.dir/main.c.o   -c /mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/Min-Span-Tree/main.c

CMakeFiles/Min_Span_Tree.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Min_Span_Tree.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/Min-Span-Tree/main.c > CMakeFiles/Min_Span_Tree.dir/main.c.i

CMakeFiles/Min_Span_Tree.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Min_Span_Tree.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/Min-Span-Tree/main.c -o CMakeFiles/Min_Span_Tree.dir/main.c.s

CMakeFiles/Min_Span_Tree.dir/mst_util.c.o: CMakeFiles/Min_Span_Tree.dir/flags.make
CMakeFiles/Min_Span_Tree.dir/mst_util.c.o: ../mst_util.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/Min-Span-Tree/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/Min_Span_Tree.dir/mst_util.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Min_Span_Tree.dir/mst_util.c.o   -c /mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/Min-Span-Tree/mst_util.c

CMakeFiles/Min_Span_Tree.dir/mst_util.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Min_Span_Tree.dir/mst_util.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/Min-Span-Tree/mst_util.c > CMakeFiles/Min_Span_Tree.dir/mst_util.c.i

CMakeFiles/Min_Span_Tree.dir/mst_util.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Min_Span_Tree.dir/mst_util.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/Min-Span-Tree/mst_util.c -o CMakeFiles/Min_Span_Tree.dir/mst_util.c.s

# Object files for target Min_Span_Tree
Min_Span_Tree_OBJECTS = \
"CMakeFiles/Min_Span_Tree.dir/main.c.o" \
"CMakeFiles/Min_Span_Tree.dir/mst_util.c.o"

# External object files for target Min_Span_Tree
Min_Span_Tree_EXTERNAL_OBJECTS =

Min_Span_Tree: CMakeFiles/Min_Span_Tree.dir/main.c.o
Min_Span_Tree: CMakeFiles/Min_Span_Tree.dir/mst_util.c.o
Min_Span_Tree: CMakeFiles/Min_Span_Tree.dir/build.make
Min_Span_Tree: CMakeFiles/Min_Span_Tree.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/Min-Span-Tree/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable Min_Span_Tree"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Min_Span_Tree.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Min_Span_Tree.dir/build: Min_Span_Tree

.PHONY : CMakeFiles/Min_Span_Tree.dir/build

CMakeFiles/Min_Span_Tree.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Min_Span_Tree.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Min_Span_Tree.dir/clean

CMakeFiles/Min_Span_Tree.dir/depend:
	cd /mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/Min-Span-Tree/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/Min-Span-Tree /mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/Min-Span-Tree /mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/Min-Span-Tree/cmake-build-debug /mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/Min-Span-Tree/cmake-build-debug /mnt/d/University-Work/Assignment-SEM04-02-2019/DAA/Min-Span-Tree/cmake-build-debug/CMakeFiles/Min_Span_Tree.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Min_Span_Tree.dir/depend

