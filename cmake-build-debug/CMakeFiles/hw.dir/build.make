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
CMAKE_COMMAND = /home/kip/clion/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/kip/clion/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kip/hw

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kip/hw/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/hw.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/hw.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/hw.dir/flags.make

CMakeFiles/hw.dir/main.cpp.o: CMakeFiles/hw.dir/flags.make
CMakeFiles/hw.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kip/hw/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/hw.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hw.dir/main.cpp.o -c /home/kip/hw/main.cpp

CMakeFiles/hw.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hw.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kip/hw/main.cpp > CMakeFiles/hw.dir/main.cpp.i

CMakeFiles/hw.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hw.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kip/hw/main.cpp -o CMakeFiles/hw.dir/main.cpp.s

# Object files for target hw
hw_OBJECTS = \
"CMakeFiles/hw.dir/main.cpp.o"

# External object files for target hw
hw_EXTERNAL_OBJECTS =

hw: CMakeFiles/hw.dir/main.cpp.o
hw: CMakeFiles/hw.dir/build.make
hw: CMakeFiles/hw.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kip/hw/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable hw"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hw.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/hw.dir/build: hw

.PHONY : CMakeFiles/hw.dir/build

CMakeFiles/hw.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/hw.dir/cmake_clean.cmake
.PHONY : CMakeFiles/hw.dir/clean

CMakeFiles/hw.dir/depend:
	cd /home/kip/hw/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kip/hw /home/kip/hw /home/kip/hw/cmake-build-debug /home/kip/hw/cmake-build-debug /home/kip/hw/cmake-build-debug/CMakeFiles/hw.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/hw.dir/depend

