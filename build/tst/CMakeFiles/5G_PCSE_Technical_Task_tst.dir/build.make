# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ahmed/projects/5G_PCSE_Technical_Task

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ahmed/projects/5G_PCSE_Technical_Task/build

# Include any dependencies generated for this target.
include tst/CMakeFiles/5G_PCSE_Technical_Task_tst.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tst/CMakeFiles/5G_PCSE_Technical_Task_tst.dir/compiler_depend.make

# Include the progress variables for this target.
include tst/CMakeFiles/5G_PCSE_Technical_Task_tst.dir/progress.make

# Include the compile flags for this target's objects.
include tst/CMakeFiles/5G_PCSE_Technical_Task_tst.dir/flags.make

tst/CMakeFiles/5G_PCSE_Technical_Task_tst.dir/main.cpp.o: tst/CMakeFiles/5G_PCSE_Technical_Task_tst.dir/flags.make
tst/CMakeFiles/5G_PCSE_Technical_Task_tst.dir/main.cpp.o: ../tst/main.cpp
tst/CMakeFiles/5G_PCSE_Technical_Task_tst.dir/main.cpp.o: tst/CMakeFiles/5G_PCSE_Technical_Task_tst.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ahmed/projects/5G_PCSE_Technical_Task/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tst/CMakeFiles/5G_PCSE_Technical_Task_tst.dir/main.cpp.o"
	cd /home/ahmed/projects/5G_PCSE_Technical_Task/build/tst && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tst/CMakeFiles/5G_PCSE_Technical_Task_tst.dir/main.cpp.o -MF CMakeFiles/5G_PCSE_Technical_Task_tst.dir/main.cpp.o.d -o CMakeFiles/5G_PCSE_Technical_Task_tst.dir/main.cpp.o -c /home/ahmed/projects/5G_PCSE_Technical_Task/tst/main.cpp

tst/CMakeFiles/5G_PCSE_Technical_Task_tst.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/5G_PCSE_Technical_Task_tst.dir/main.cpp.i"
	cd /home/ahmed/projects/5G_PCSE_Technical_Task/build/tst && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ahmed/projects/5G_PCSE_Technical_Task/tst/main.cpp > CMakeFiles/5G_PCSE_Technical_Task_tst.dir/main.cpp.i

tst/CMakeFiles/5G_PCSE_Technical_Task_tst.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/5G_PCSE_Technical_Task_tst.dir/main.cpp.s"
	cd /home/ahmed/projects/5G_PCSE_Technical_Task/build/tst && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ahmed/projects/5G_PCSE_Technical_Task/tst/main.cpp -o CMakeFiles/5G_PCSE_Technical_Task_tst.dir/main.cpp.s

tst/CMakeFiles/5G_PCSE_Technical_Task_tst.dir/unit_test.cpp.o: tst/CMakeFiles/5G_PCSE_Technical_Task_tst.dir/flags.make
tst/CMakeFiles/5G_PCSE_Technical_Task_tst.dir/unit_test.cpp.o: ../tst/unit_test.cpp
tst/CMakeFiles/5G_PCSE_Technical_Task_tst.dir/unit_test.cpp.o: tst/CMakeFiles/5G_PCSE_Technical_Task_tst.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ahmed/projects/5G_PCSE_Technical_Task/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tst/CMakeFiles/5G_PCSE_Technical_Task_tst.dir/unit_test.cpp.o"
	cd /home/ahmed/projects/5G_PCSE_Technical_Task/build/tst && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tst/CMakeFiles/5G_PCSE_Technical_Task_tst.dir/unit_test.cpp.o -MF CMakeFiles/5G_PCSE_Technical_Task_tst.dir/unit_test.cpp.o.d -o CMakeFiles/5G_PCSE_Technical_Task_tst.dir/unit_test.cpp.o -c /home/ahmed/projects/5G_PCSE_Technical_Task/tst/unit_test.cpp

tst/CMakeFiles/5G_PCSE_Technical_Task_tst.dir/unit_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/5G_PCSE_Technical_Task_tst.dir/unit_test.cpp.i"
	cd /home/ahmed/projects/5G_PCSE_Technical_Task/build/tst && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ahmed/projects/5G_PCSE_Technical_Task/tst/unit_test.cpp > CMakeFiles/5G_PCSE_Technical_Task_tst.dir/unit_test.cpp.i

tst/CMakeFiles/5G_PCSE_Technical_Task_tst.dir/unit_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/5G_PCSE_Technical_Task_tst.dir/unit_test.cpp.s"
	cd /home/ahmed/projects/5G_PCSE_Technical_Task/build/tst && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ahmed/projects/5G_PCSE_Technical_Task/tst/unit_test.cpp -o CMakeFiles/5G_PCSE_Technical_Task_tst.dir/unit_test.cpp.s

# Object files for target 5G_PCSE_Technical_Task_tst
5G_PCSE_Technical_Task_tst_OBJECTS = \
"CMakeFiles/5G_PCSE_Technical_Task_tst.dir/main.cpp.o" \
"CMakeFiles/5G_PCSE_Technical_Task_tst.dir/unit_test.cpp.o"

# External object files for target 5G_PCSE_Technical_Task_tst
5G_PCSE_Technical_Task_tst_EXTERNAL_OBJECTS =

tst/5G_PCSE_Technical_Task_tst: tst/CMakeFiles/5G_PCSE_Technical_Task_tst.dir/main.cpp.o
tst/5G_PCSE_Technical_Task_tst: tst/CMakeFiles/5G_PCSE_Technical_Task_tst.dir/unit_test.cpp.o
tst/5G_PCSE_Technical_Task_tst: tst/CMakeFiles/5G_PCSE_Technical_Task_tst.dir/build.make
tst/5G_PCSE_Technical_Task_tst: src/lib5G_PCSE_Technical_Task_lib.a
tst/5G_PCSE_Technical_Task_tst: lib/libgtest.a
tst/5G_PCSE_Technical_Task_tst: tst/CMakeFiles/5G_PCSE_Technical_Task_tst.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ahmed/projects/5G_PCSE_Technical_Task/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable 5G_PCSE_Technical_Task_tst"
	cd /home/ahmed/projects/5G_PCSE_Technical_Task/build/tst && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/5G_PCSE_Technical_Task_tst.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tst/CMakeFiles/5G_PCSE_Technical_Task_tst.dir/build: tst/5G_PCSE_Technical_Task_tst
.PHONY : tst/CMakeFiles/5G_PCSE_Technical_Task_tst.dir/build

tst/CMakeFiles/5G_PCSE_Technical_Task_tst.dir/clean:
	cd /home/ahmed/projects/5G_PCSE_Technical_Task/build/tst && $(CMAKE_COMMAND) -P CMakeFiles/5G_PCSE_Technical_Task_tst.dir/cmake_clean.cmake
.PHONY : tst/CMakeFiles/5G_PCSE_Technical_Task_tst.dir/clean

tst/CMakeFiles/5G_PCSE_Technical_Task_tst.dir/depend:
	cd /home/ahmed/projects/5G_PCSE_Technical_Task/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ahmed/projects/5G_PCSE_Technical_Task /home/ahmed/projects/5G_PCSE_Technical_Task/tst /home/ahmed/projects/5G_PCSE_Technical_Task/build /home/ahmed/projects/5G_PCSE_Technical_Task/build/tst /home/ahmed/projects/5G_PCSE_Technical_Task/build/tst/CMakeFiles/5G_PCSE_Technical_Task_tst.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tst/CMakeFiles/5G_PCSE_Technical_Task_tst.dir/depend

