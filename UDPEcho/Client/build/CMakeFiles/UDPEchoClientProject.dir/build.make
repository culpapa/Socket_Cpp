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
CMAKE_SOURCE_DIR = C:\C++\Socket\UDPEcho\Client

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\C++\Socket\UDPEcho\Client\build

# Include any dependencies generated for this target.
include CMakeFiles/UDPEchoClientProject.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/UDPEchoClientProject.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/UDPEchoClientProject.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/UDPEchoClientProject.dir/flags.make

CMakeFiles/UDPEchoClientProject.dir/main.cpp.obj: CMakeFiles/UDPEchoClientProject.dir/flags.make
CMakeFiles/UDPEchoClientProject.dir/main.cpp.obj: C:/C++/Socket/UDPEcho/Client/main.cpp
CMakeFiles/UDPEchoClientProject.dir/main.cpp.obj: CMakeFiles/UDPEchoClientProject.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\C++\Socket\UDPEcho\Client\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/UDPEchoClientProject.dir/main.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/UDPEchoClientProject.dir/main.cpp.obj -MF CMakeFiles\UDPEchoClientProject.dir\main.cpp.obj.d -o CMakeFiles\UDPEchoClientProject.dir\main.cpp.obj -c C:\C++\Socket\UDPEcho\Client\main.cpp

CMakeFiles/UDPEchoClientProject.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/UDPEchoClientProject.dir/main.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\C++\Socket\UDPEcho\Client\main.cpp > CMakeFiles\UDPEchoClientProject.dir\main.cpp.i

CMakeFiles/UDPEchoClientProject.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/UDPEchoClientProject.dir/main.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\C++\Socket\UDPEcho\Client\main.cpp -o CMakeFiles\UDPEchoClientProject.dir\main.cpp.s

CMakeFiles/UDPEchoClientProject.dir/UDPEchoClient.cpp.obj: CMakeFiles/UDPEchoClientProject.dir/flags.make
CMakeFiles/UDPEchoClientProject.dir/UDPEchoClient.cpp.obj: C:/C++/Socket/UDPEcho/Client/UDPEchoClient.cpp
CMakeFiles/UDPEchoClientProject.dir/UDPEchoClient.cpp.obj: CMakeFiles/UDPEchoClientProject.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\C++\Socket\UDPEcho\Client\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/UDPEchoClientProject.dir/UDPEchoClient.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/UDPEchoClientProject.dir/UDPEchoClient.cpp.obj -MF CMakeFiles\UDPEchoClientProject.dir\UDPEchoClient.cpp.obj.d -o CMakeFiles\UDPEchoClientProject.dir\UDPEchoClient.cpp.obj -c C:\C++\Socket\UDPEcho\Client\UDPEchoClient.cpp

CMakeFiles/UDPEchoClientProject.dir/UDPEchoClient.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/UDPEchoClientProject.dir/UDPEchoClient.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\C++\Socket\UDPEcho\Client\UDPEchoClient.cpp > CMakeFiles\UDPEchoClientProject.dir\UDPEchoClient.cpp.i

CMakeFiles/UDPEchoClientProject.dir/UDPEchoClient.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/UDPEchoClientProject.dir/UDPEchoClient.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\C++\Socket\UDPEcho\Client\UDPEchoClient.cpp -o CMakeFiles\UDPEchoClientProject.dir\UDPEchoClient.cpp.s

# Object files for target UDPEchoClientProject
UDPEchoClientProject_OBJECTS = \
"CMakeFiles/UDPEchoClientProject.dir/main.cpp.obj" \
"CMakeFiles/UDPEchoClientProject.dir/UDPEchoClient.cpp.obj"

# External object files for target UDPEchoClientProject
UDPEchoClientProject_EXTERNAL_OBJECTS =

UDPEchoClientProject.exe: CMakeFiles/UDPEchoClientProject.dir/main.cpp.obj
UDPEchoClientProject.exe: CMakeFiles/UDPEchoClientProject.dir/UDPEchoClient.cpp.obj
UDPEchoClientProject.exe: CMakeFiles/UDPEchoClientProject.dir/build.make
UDPEchoClientProject.exe: CMakeFiles/UDPEchoClientProject.dir/linkLibs.rsp
UDPEchoClientProject.exe: CMakeFiles/UDPEchoClientProject.dir/objects1.rsp
UDPEchoClientProject.exe: CMakeFiles/UDPEchoClientProject.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\C++\Socket\UDPEcho\Client\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable UDPEchoClientProject.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\UDPEchoClientProject.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/UDPEchoClientProject.dir/build: UDPEchoClientProject.exe
.PHONY : CMakeFiles/UDPEchoClientProject.dir/build

CMakeFiles/UDPEchoClientProject.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\UDPEchoClientProject.dir\cmake_clean.cmake
.PHONY : CMakeFiles/UDPEchoClientProject.dir/clean

CMakeFiles/UDPEchoClientProject.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\C++\Socket\UDPEcho\Client C:\C++\Socket\UDPEcho\Client C:\C++\Socket\UDPEcho\Client\build C:\C++\Socket\UDPEcho\Client\build C:\C++\Socket\UDPEcho\Client\build\CMakeFiles\UDPEchoClientProject.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/UDPEchoClientProject.dir/depend
