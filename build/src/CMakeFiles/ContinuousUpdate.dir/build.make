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

# Utility rule file for ContinuousUpdate.

# Include any custom commands dependencies for this target.
include src/CMakeFiles/ContinuousUpdate.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/ContinuousUpdate.dir/progress.make

src/CMakeFiles/ContinuousUpdate:
	cd /home/ahmed/projects/5G_PCSE_Technical_Task/build/src && /usr/bin/ctest -D ContinuousUpdate

ContinuousUpdate: src/CMakeFiles/ContinuousUpdate
ContinuousUpdate: src/CMakeFiles/ContinuousUpdate.dir/build.make
.PHONY : ContinuousUpdate

# Rule to build all files generated by this target.
src/CMakeFiles/ContinuousUpdate.dir/build: ContinuousUpdate
.PHONY : src/CMakeFiles/ContinuousUpdate.dir/build

src/CMakeFiles/ContinuousUpdate.dir/clean:
	cd /home/ahmed/projects/5G_PCSE_Technical_Task/build/src && $(CMAKE_COMMAND) -P CMakeFiles/ContinuousUpdate.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/ContinuousUpdate.dir/clean

src/CMakeFiles/ContinuousUpdate.dir/depend:
	cd /home/ahmed/projects/5G_PCSE_Technical_Task/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ahmed/projects/5G_PCSE_Technical_Task /home/ahmed/projects/5G_PCSE_Technical_Task/src /home/ahmed/projects/5G_PCSE_Technical_Task/build /home/ahmed/projects/5G_PCSE_Technical_Task/build/src /home/ahmed/projects/5G_PCSE_Technical_Task/build/src/CMakeFiles/ContinuousUpdate.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/ContinuousUpdate.dir/depend

