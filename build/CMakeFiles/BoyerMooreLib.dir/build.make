# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/rhtsang/Prompt

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/rhtsang/Prompt/build

# Include any dependencies generated for this target.
include CMakeFiles/BoyerMooreLib.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/BoyerMooreLib.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/BoyerMooreLib.dir/flags.make

CMakeFiles/BoyerMooreLib.dir/BoyerMoore.cpp.o: CMakeFiles/BoyerMooreLib.dir/flags.make
CMakeFiles/BoyerMooreLib.dir/BoyerMoore.cpp.o: ../BoyerMoore.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rhtsang/Prompt/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/BoyerMooreLib.dir/BoyerMoore.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BoyerMooreLib.dir/BoyerMoore.cpp.o -c /home/rhtsang/Prompt/BoyerMoore.cpp

CMakeFiles/BoyerMooreLib.dir/BoyerMoore.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BoyerMooreLib.dir/BoyerMoore.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rhtsang/Prompt/BoyerMoore.cpp > CMakeFiles/BoyerMooreLib.dir/BoyerMoore.cpp.i

CMakeFiles/BoyerMooreLib.dir/BoyerMoore.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BoyerMooreLib.dir/BoyerMoore.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rhtsang/Prompt/BoyerMoore.cpp -o CMakeFiles/BoyerMooreLib.dir/BoyerMoore.cpp.s

CMakeFiles/BoyerMooreLib.dir/BoyerMoore.cpp.o.requires:

.PHONY : CMakeFiles/BoyerMooreLib.dir/BoyerMoore.cpp.o.requires

CMakeFiles/BoyerMooreLib.dir/BoyerMoore.cpp.o.provides: CMakeFiles/BoyerMooreLib.dir/BoyerMoore.cpp.o.requires
	$(MAKE) -f CMakeFiles/BoyerMooreLib.dir/build.make CMakeFiles/BoyerMooreLib.dir/BoyerMoore.cpp.o.provides.build
.PHONY : CMakeFiles/BoyerMooreLib.dir/BoyerMoore.cpp.o.provides

CMakeFiles/BoyerMooreLib.dir/BoyerMoore.cpp.o.provides.build: CMakeFiles/BoyerMooreLib.dir/BoyerMoore.cpp.o


CMakeFiles/BoyerMooreLib.dir/BoyerMoorePreprocessing.cpp.o: CMakeFiles/BoyerMooreLib.dir/flags.make
CMakeFiles/BoyerMooreLib.dir/BoyerMoorePreprocessing.cpp.o: ../BoyerMoorePreprocessing.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rhtsang/Prompt/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/BoyerMooreLib.dir/BoyerMoorePreprocessing.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BoyerMooreLib.dir/BoyerMoorePreprocessing.cpp.o -c /home/rhtsang/Prompt/BoyerMoorePreprocessing.cpp

CMakeFiles/BoyerMooreLib.dir/BoyerMoorePreprocessing.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BoyerMooreLib.dir/BoyerMoorePreprocessing.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rhtsang/Prompt/BoyerMoorePreprocessing.cpp > CMakeFiles/BoyerMooreLib.dir/BoyerMoorePreprocessing.cpp.i

CMakeFiles/BoyerMooreLib.dir/BoyerMoorePreprocessing.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BoyerMooreLib.dir/BoyerMoorePreprocessing.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rhtsang/Prompt/BoyerMoorePreprocessing.cpp -o CMakeFiles/BoyerMooreLib.dir/BoyerMoorePreprocessing.cpp.s

CMakeFiles/BoyerMooreLib.dir/BoyerMoorePreprocessing.cpp.o.requires:

.PHONY : CMakeFiles/BoyerMooreLib.dir/BoyerMoorePreprocessing.cpp.o.requires

CMakeFiles/BoyerMooreLib.dir/BoyerMoorePreprocessing.cpp.o.provides: CMakeFiles/BoyerMooreLib.dir/BoyerMoorePreprocessing.cpp.o.requires
	$(MAKE) -f CMakeFiles/BoyerMooreLib.dir/build.make CMakeFiles/BoyerMooreLib.dir/BoyerMoorePreprocessing.cpp.o.provides.build
.PHONY : CMakeFiles/BoyerMooreLib.dir/BoyerMoorePreprocessing.cpp.o.provides

CMakeFiles/BoyerMooreLib.dir/BoyerMoorePreprocessing.cpp.o.provides.build: CMakeFiles/BoyerMooreLib.dir/BoyerMoorePreprocessing.cpp.o


# Object files for target BoyerMooreLib
BoyerMooreLib_OBJECTS = \
"CMakeFiles/BoyerMooreLib.dir/BoyerMoore.cpp.o" \
"CMakeFiles/BoyerMooreLib.dir/BoyerMoorePreprocessing.cpp.o"

# External object files for target BoyerMooreLib
BoyerMooreLib_EXTERNAL_OBJECTS =

libBoyerMooreLib.a: CMakeFiles/BoyerMooreLib.dir/BoyerMoore.cpp.o
libBoyerMooreLib.a: CMakeFiles/BoyerMooreLib.dir/BoyerMoorePreprocessing.cpp.o
libBoyerMooreLib.a: CMakeFiles/BoyerMooreLib.dir/build.make
libBoyerMooreLib.a: CMakeFiles/BoyerMooreLib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/rhtsang/Prompt/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libBoyerMooreLib.a"
	$(CMAKE_COMMAND) -P CMakeFiles/BoyerMooreLib.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/BoyerMooreLib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/BoyerMooreLib.dir/build: libBoyerMooreLib.a

.PHONY : CMakeFiles/BoyerMooreLib.dir/build

CMakeFiles/BoyerMooreLib.dir/requires: CMakeFiles/BoyerMooreLib.dir/BoyerMoore.cpp.o.requires
CMakeFiles/BoyerMooreLib.dir/requires: CMakeFiles/BoyerMooreLib.dir/BoyerMoorePreprocessing.cpp.o.requires

.PHONY : CMakeFiles/BoyerMooreLib.dir/requires

CMakeFiles/BoyerMooreLib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/BoyerMooreLib.dir/cmake_clean.cmake
.PHONY : CMakeFiles/BoyerMooreLib.dir/clean

CMakeFiles/BoyerMooreLib.dir/depend:
	cd /home/rhtsang/Prompt/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rhtsang/Prompt /home/rhtsang/Prompt /home/rhtsang/Prompt/build /home/rhtsang/Prompt/build /home/rhtsang/Prompt/build/CMakeFiles/BoyerMooreLib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/BoyerMooreLib.dir/depend

