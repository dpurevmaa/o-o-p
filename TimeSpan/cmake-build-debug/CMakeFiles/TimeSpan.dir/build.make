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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/purevmaadamdinsuren/Desktop/Personal Projects/ObjectOrientedProgramming/o-o-p/TimeSpan"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/purevmaadamdinsuren/Desktop/Personal Projects/ObjectOrientedProgramming/o-o-p/TimeSpan/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/TimeSpan.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/TimeSpan.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/TimeSpan.dir/flags.make

CMakeFiles/TimeSpan.dir/TimeMachine.cpp.o: CMakeFiles/TimeSpan.dir/flags.make
CMakeFiles/TimeSpan.dir/TimeMachine.cpp.o: ../TimeMachine.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/purevmaadamdinsuren/Desktop/Personal Projects/ObjectOrientedProgramming/o-o-p/TimeSpan/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/TimeSpan.dir/TimeMachine.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TimeSpan.dir/TimeMachine.cpp.o -c "/Users/purevmaadamdinsuren/Desktop/Personal Projects/ObjectOrientedProgramming/o-o-p/TimeSpan/TimeMachine.cpp"

CMakeFiles/TimeSpan.dir/TimeMachine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TimeSpan.dir/TimeMachine.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/purevmaadamdinsuren/Desktop/Personal Projects/ObjectOrientedProgramming/o-o-p/TimeSpan/TimeMachine.cpp" > CMakeFiles/TimeSpan.dir/TimeMachine.cpp.i

CMakeFiles/TimeSpan.dir/TimeMachine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TimeSpan.dir/TimeMachine.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/purevmaadamdinsuren/Desktop/Personal Projects/ObjectOrientedProgramming/o-o-p/TimeSpan/TimeMachine.cpp" -o CMakeFiles/TimeSpan.dir/TimeMachine.cpp.s

CMakeFiles/TimeSpan.dir/TimeSpan.cpp.o: CMakeFiles/TimeSpan.dir/flags.make
CMakeFiles/TimeSpan.dir/TimeSpan.cpp.o: ../TimeSpan.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/purevmaadamdinsuren/Desktop/Personal Projects/ObjectOrientedProgramming/o-o-p/TimeSpan/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/TimeSpan.dir/TimeSpan.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TimeSpan.dir/TimeSpan.cpp.o -c "/Users/purevmaadamdinsuren/Desktop/Personal Projects/ObjectOrientedProgramming/o-o-p/TimeSpan/TimeSpan.cpp"

CMakeFiles/TimeSpan.dir/TimeSpan.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TimeSpan.dir/TimeSpan.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/purevmaadamdinsuren/Desktop/Personal Projects/ObjectOrientedProgramming/o-o-p/TimeSpan/TimeSpan.cpp" > CMakeFiles/TimeSpan.dir/TimeSpan.cpp.i

CMakeFiles/TimeSpan.dir/TimeSpan.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TimeSpan.dir/TimeSpan.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/purevmaadamdinsuren/Desktop/Personal Projects/ObjectOrientedProgramming/o-o-p/TimeSpan/TimeSpan.cpp" -o CMakeFiles/TimeSpan.dir/TimeSpan.cpp.s

# Object files for target TimeSpan
TimeSpan_OBJECTS = \
"CMakeFiles/TimeSpan.dir/TimeMachine.cpp.o" \
"CMakeFiles/TimeSpan.dir/TimeSpan.cpp.o"

# External object files for target TimeSpan
TimeSpan_EXTERNAL_OBJECTS =

TimeSpan: CMakeFiles/TimeSpan.dir/TimeMachine.cpp.o
TimeSpan: CMakeFiles/TimeSpan.dir/TimeSpan.cpp.o
TimeSpan: CMakeFiles/TimeSpan.dir/build.make
TimeSpan: CMakeFiles/TimeSpan.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/purevmaadamdinsuren/Desktop/Personal Projects/ObjectOrientedProgramming/o-o-p/TimeSpan/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable TimeSpan"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TimeSpan.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/TimeSpan.dir/build: TimeSpan

.PHONY : CMakeFiles/TimeSpan.dir/build

CMakeFiles/TimeSpan.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/TimeSpan.dir/cmake_clean.cmake
.PHONY : CMakeFiles/TimeSpan.dir/clean

CMakeFiles/TimeSpan.dir/depend:
	cd "/Users/purevmaadamdinsuren/Desktop/Personal Projects/ObjectOrientedProgramming/o-o-p/TimeSpan/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/purevmaadamdinsuren/Desktop/Personal Projects/ObjectOrientedProgramming/o-o-p/TimeSpan" "/Users/purevmaadamdinsuren/Desktop/Personal Projects/ObjectOrientedProgramming/o-o-p/TimeSpan" "/Users/purevmaadamdinsuren/Desktop/Personal Projects/ObjectOrientedProgramming/o-o-p/TimeSpan/cmake-build-debug" "/Users/purevmaadamdinsuren/Desktop/Personal Projects/ObjectOrientedProgramming/o-o-p/TimeSpan/cmake-build-debug" "/Users/purevmaadamdinsuren/Desktop/Personal Projects/ObjectOrientedProgramming/o-o-p/TimeSpan/cmake-build-debug/CMakeFiles/TimeSpan.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/TimeSpan.dir/depend
