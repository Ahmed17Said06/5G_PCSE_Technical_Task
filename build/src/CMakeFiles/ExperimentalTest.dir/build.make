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

# Utility rule file for ExperimentalTest.

# Include any custom commands dependencies for this target.
include src/CMakeFiles/ExperimentalTest.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/ExperimentalTest.dir/progress.make

src/CMakeFiles/ExperimentalTest:
	cd /home/ahmed/projects/5G_PCSE_Technical_Task/build/src && /usr/bin/ctest -D ExperimentalTest

ExperimentalTest: src/CMakeFiles/ExperimentalTest
ExperimentalTest: src/CMakeFiles/ExperimentalTest.dir/build.make
.PHONY : ExperimentalTest

# Rule to build all files generated by this target.
src/CMakeFiles/ExperimentalTest.dir/build: ExperimentalTest
.PHONY : src/CMakeFiles/ExperimentalTest.dir/build

src/CMakeFiles/ExperimentalTest.dir/clean:
	cd /home/ahmed/projects/5G_PCSE_Technical_Task/build/src && $(CMAKE_COMMAND) -P CMakeFiles/ExperimentalTest.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/ExperimentalTest.dir/clean

src/CMakeFiles/ExperimentalTest.dir/depend:
	cd /home/ahmed/projects/5G_PCSE_Technical_Task/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ahmed/projects/5G_PCSE_Technical_Task /home/ahmed/projects/5G_PCSE_Technical_Task/src /home/ahmed/projects/5G_PCSE_Technical_Task/build /home/ahmed/projects/5G_PCSE_Technical_Task/build/src /home/ahmed/projects/5G_PCSE_Technical_Task/build/src/CMakeFiles/ExperimentalTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/ExperimentalTest.dir/depend

