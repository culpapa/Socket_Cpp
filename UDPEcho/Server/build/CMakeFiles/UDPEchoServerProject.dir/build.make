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
CMAKE_SOURCE_DIR = C:\C++\Socket\UDPEcho\Server

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\C++\Socket\UDPEcho\Server\build

# Include any dependencies generated for this target.
include CMakeFiles/UDPEchoServerProject.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/UDPEchoServerProject.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/UDPEchoServerProject.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/UDPEchoServerProject.dir/flags.make

CMakeFiles/UDPEchoServerProject.dir/main.cpp.obj: CMakeFiles/UDPEchoServerProject.dir/flags.make
CMakeFiles/UDPEchoServerProject.dir/main.cpp.obj: C:/C++/Socket/UDPEcho/Server/main.cpp
CMakeFiles/UDPEchoServerProject.dir/main.cpp.obj: CMakeFiles/UDPEchoServerProject.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\C++\Socket\UDPEcho\Server\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/UDPEchoServerProject.dir/main.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/UDPEchoServerProject.dir/main.cpp.obj -MF CMakeFiles\UDPEchoServerProject.dir\main.cpp.obj.d -o CMakeFiles\UDPEchoServerProject.dir\main.cpp.obj -c C:\C++\Socket\UDPEcho\Server\main.cpp

CMakeFiles/UDPEchoServerProject.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/UDPEchoServerProject.dir/main.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\C++\Socket\UDPEcho\Server\main.cpp > CMakeFiles\UDPEchoServerProject.dir\main.cpp.i

CMakeFiles/UDPEchoServerProject.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/UDPEchoServerProject.dir/main.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\C++\Socket\UDPEcho\Server\main.cpp -o CMakeFiles\UDPEchoServerProject.dir\main.cpp.s

CMakeFiles/UDPEchoServerProject.dir/UDPEchoServer.cpp.obj: CMakeFiles/UDPEchoServerProject.dir/flags.make
CMakeFiles/UDPEchoServerProject.dir/UDPEchoServer.cpp.obj: C:/C++/Socket/UDPEcho/Server/UDPEchoServer.cpp
CMakeFiles/UDPEchoServerProject.dir/UDPEchoServer.cpp.obj: CMakeFiles/UDPEchoServerProject.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\C++\Socket\UDPEcho\Server\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/UDPEchoServerProject.dir/UDPEchoServer.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/UDPEchoServerProject.dir/UDPEchoServer.cpp.obj -MF CMakeFiles\UDPEchoServerProject.dir\UDPEchoServer.cpp.obj.d -o CMakeFiles\UDPEchoServerProject.dir\UDPEchoServer.cpp.obj -c C:\C++\Socket\UDPEcho\Server\UDPEchoServer.cpp

CMakeFiles/UDPEchoServerProject.dir/UDPEchoServer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/UDPEchoServerProject.dir/UDPEchoServer.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\C++\Socket\UDPEcho\Server\UDPEchoServer.cpp > CMakeFiles\UDPEchoServerProject.dir\UDPEchoServer.cpp.i

CMakeFiles/UDPEchoServerProject.dir/UDPEchoServer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/UDPEchoServerProject.dir/UDPEchoServer.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\C++\Socket\UDPEcho\Server\UDPEchoServer.cpp -o CMakeFiles\UDPEchoServerProject.dir\UDPEchoServer.cpp.s

# Object files for target UDPEchoServerProject
UDPEchoServerProject_OBJECTS = \
"CMakeFiles/UDPEchoServerProject.dir/main.cpp.obj" \
"CMakeFiles/UDPEchoServerProject.dir/UDPEchoServer.cpp.obj"

# External object files for target UDPEchoServerProject
UDPEchoServerProject_EXTERNAL_OBJECTS =

UDPEchoServerProject.exe: CMakeFiles/UDPEchoServerProject.dir/main.cpp.obj
UDPEchoServerProject.exe: CMakeFiles/UDPEchoServerProject.dir/UDPEchoServer.cpp.obj
UDPEchoServerProject.exe: CMakeFiles/UDPEchoServerProject.dir/build.make
UDPEchoServerProject.exe: CMakeFiles/UDPEchoServerProject.dir/linkLibs.rsp
UDPEchoServerProject.exe: CMakeFiles/UDPEchoServerProject.dir/objects1.rsp
UDPEchoServerProject.exe: CMakeFiles/UDPEchoServerProject.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\C++\Socket\UDPEcho\Server\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable UDPEchoServerProject.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\UDPEchoServerProject.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/UDPEchoServerProject.dir/build: UDPEchoServerProject.exe
.PHONY : CMakeFiles/UDPEchoServerProject.dir/build

CMakeFiles/UDPEchoServerProject.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\UDPEchoServerProject.dir\cmake_clean.cmake
.PHONY : CMakeFiles/UDPEchoServerProject.dir/clean

CMakeFiles/UDPEchoServerProject.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\C++\Socket\UDPEcho\Server C:\C++\Socket\UDPEcho\Server C:\C++\Socket\UDPEcho\Server\build C:\C++\Socket\UDPEcho\Server\build C:\C++\Socket\UDPEcho\Server\build\CMakeFiles\UDPEchoServerProject.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/UDPEchoServerProject.dir/depend
