# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.27

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\C++\Socket\UDPFile\UDPFileClient

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\C++\Socket\UDPFile\UDPFileClient\build

# Include any dependencies generated for this target.
include CMakeFiles/UDPFileClientProject.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/UDPFileClientProject.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/UDPFileClientProject.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/UDPFileClientProject.dir/flags.make

CMakeFiles/UDPFileClientProject.dir/main.cpp.obj: CMakeFiles/UDPFileClientProject.dir/flags.make
CMakeFiles/UDPFileClientProject.dir/main.cpp.obj: C:/C++/Socket/UDPFile/UDPFileClient/main.cpp
CMakeFiles/UDPFileClientProject.dir/main.cpp.obj: CMakeFiles/UDPFileClientProject.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\C++\Socket\UDPFile\UDPFileClient\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/UDPFileClientProject.dir/main.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/UDPFileClientProject.dir/main.cpp.obj -MF CMakeFiles\UDPFileClientProject.dir\main.cpp.obj.d -o CMakeFiles\UDPFileClientProject.dir\main.cpp.obj -c C:\C++\Socket\UDPFile\UDPFileClient\main.cpp

CMakeFiles/UDPFileClientProject.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/UDPFileClientProject.dir/main.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\C++\Socket\UDPFile\UDPFileClient\main.cpp > CMakeFiles\UDPFileClientProject.dir\main.cpp.i

CMakeFiles/UDPFileClientProject.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/UDPFileClientProject.dir/main.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\C++\Socket\UDPFile\UDPFileClient\main.cpp -o CMakeFiles\UDPFileClientProject.dir\main.cpp.s

CMakeFiles/UDPFileClientProject.dir/UDPFileClient.cpp.obj: CMakeFiles/UDPFileClientProject.dir/flags.make
CMakeFiles/UDPFileClientProject.dir/UDPFileClient.cpp.obj: C:/C++/Socket/UDPFile/UDPFileClient/UDPFileClient.cpp
CMakeFiles/UDPFileClientProject.dir/UDPFileClient.cpp.obj: CMakeFiles/UDPFileClientProject.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\C++\Socket\UDPFile\UDPFileClient\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/UDPFileClientProject.dir/UDPFileClient.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/UDPFileClientProject.dir/UDPFileClient.cpp.obj -MF CMakeFiles\UDPFileClientProject.dir\UDPFileClient.cpp.obj.d -o CMakeFiles\UDPFileClientProject.dir\UDPFileClient.cpp.obj -c C:\C++\Socket\UDPFile\UDPFileClient\UDPFileClient.cpp

CMakeFiles/UDPFileClientProject.dir/UDPFileClient.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/UDPFileClientProject.dir/UDPFileClient.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\C++\Socket\UDPFile\UDPFileClient\UDPFileClient.cpp > CMakeFiles\UDPFileClientProject.dir\UDPFileClient.cpp.i

CMakeFiles/UDPFileClientProject.dir/UDPFileClient.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/UDPFileClientProject.dir/UDPFileClient.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\C++\Socket\UDPFile\UDPFileClient\UDPFileClient.cpp -o CMakeFiles\UDPFileClientProject.dir\UDPFileClient.cpp.s

# Object files for target UDPFileClientProject
UDPFileClientProject_OBJECTS = \
"CMakeFiles/UDPFileClientProject.dir/main.cpp.obj" \
"CMakeFiles/UDPFileClientProject.dir/UDPFileClient.cpp.obj"

# External object files for target UDPFileClientProject
UDPFileClientProject_EXTERNAL_OBJECTS =

UDPFileClientProject.exe: CMakeFiles/UDPFileClientProject.dir/main.cpp.obj
UDPFileClientProject.exe: CMakeFiles/UDPFileClientProject.dir/UDPFileClient.cpp.obj
UDPFileClientProject.exe: CMakeFiles/UDPFileClientProject.dir/build.make
UDPFileClientProject.exe: CMakeFiles/UDPFileClientProject.dir/linkLibs.rsp
UDPFileClientProject.exe: CMakeFiles/UDPFileClientProject.dir/objects1.rsp
UDPFileClientProject.exe: CMakeFiles/UDPFileClientProject.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\C++\Socket\UDPFile\UDPFileClient\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable UDPFileClientProject.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\UDPFileClientProject.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/UDPFileClientProject.dir/build: UDPFileClientProject.exe
.PHONY : CMakeFiles/UDPFileClientProject.dir/build

CMakeFiles/UDPFileClientProject.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\UDPFileClientProject.dir\cmake_clean.cmake
.PHONY : CMakeFiles/UDPFileClientProject.dir/clean

CMakeFiles/UDPFileClientProject.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\C++\Socket\UDPFile\UDPFileClient C:\C++\Socket\UDPFile\UDPFileClient C:\C++\Socket\UDPFile\UDPFileClient\build C:\C++\Socket\UDPFile\UDPFileClient\build C:\C++\Socket\UDPFile\UDPFileClient\build\CMakeFiles\UDPFileClientProject.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/UDPFileClientProject.dir/depend

