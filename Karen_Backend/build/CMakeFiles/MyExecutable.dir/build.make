# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_SOURCE_DIR = /home/lyudvik/C++/Project/Karen_Project/Karen_Backend

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lyudvik/C++/Project/Karen_Project/Karen_Backend/build

# Include any dependencies generated for this target.
include CMakeFiles/MyExecutable.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/MyExecutable.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/MyExecutable.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MyExecutable.dir/flags.make

CMakeFiles/MyExecutable.dir/implements/main.cpp.o: CMakeFiles/MyExecutable.dir/flags.make
CMakeFiles/MyExecutable.dir/implements/main.cpp.o: /home/lyudvik/C++/Project/Karen_Project/Karen_Backend/implements/main.cpp
CMakeFiles/MyExecutable.dir/implements/main.cpp.o: CMakeFiles/MyExecutable.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lyudvik/C++/Project/Karen_Project/Karen_Backend/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/MyExecutable.dir/implements/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/MyExecutable.dir/implements/main.cpp.o -MF CMakeFiles/MyExecutable.dir/implements/main.cpp.o.d -o CMakeFiles/MyExecutable.dir/implements/main.cpp.o -c /home/lyudvik/C++/Project/Karen_Project/Karen_Backend/implements/main.cpp

CMakeFiles/MyExecutable.dir/implements/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MyExecutable.dir/implements/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lyudvik/C++/Project/Karen_Project/Karen_Backend/implements/main.cpp > CMakeFiles/MyExecutable.dir/implements/main.cpp.i

CMakeFiles/MyExecutable.dir/implements/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MyExecutable.dir/implements/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lyudvik/C++/Project/Karen_Project/Karen_Backend/implements/main.cpp -o CMakeFiles/MyExecutable.dir/implements/main.cpp.s

CMakeFiles/MyExecutable.dir/implements/mainImplement.cpp.o: CMakeFiles/MyExecutable.dir/flags.make
CMakeFiles/MyExecutable.dir/implements/mainImplement.cpp.o: /home/lyudvik/C++/Project/Karen_Project/Karen_Backend/implements/mainImplement.cpp
CMakeFiles/MyExecutable.dir/implements/mainImplement.cpp.o: CMakeFiles/MyExecutable.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lyudvik/C++/Project/Karen_Project/Karen_Backend/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/MyExecutable.dir/implements/mainImplement.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/MyExecutable.dir/implements/mainImplement.cpp.o -MF CMakeFiles/MyExecutable.dir/implements/mainImplement.cpp.o.d -o CMakeFiles/MyExecutable.dir/implements/mainImplement.cpp.o -c /home/lyudvik/C++/Project/Karen_Project/Karen_Backend/implements/mainImplement.cpp

CMakeFiles/MyExecutable.dir/implements/mainImplement.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MyExecutable.dir/implements/mainImplement.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lyudvik/C++/Project/Karen_Project/Karen_Backend/implements/mainImplement.cpp > CMakeFiles/MyExecutable.dir/implements/mainImplement.cpp.i

CMakeFiles/MyExecutable.dir/implements/mainImplement.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MyExecutable.dir/implements/mainImplement.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lyudvik/C++/Project/Karen_Project/Karen_Backend/implements/mainImplement.cpp -o CMakeFiles/MyExecutable.dir/implements/mainImplement.cpp.s

CMakeFiles/MyExecutable.dir/implements/helperFunctions.cpp.o: CMakeFiles/MyExecutable.dir/flags.make
CMakeFiles/MyExecutable.dir/implements/helperFunctions.cpp.o: /home/lyudvik/C++/Project/Karen_Project/Karen_Backend/implements/helperFunctions.cpp
CMakeFiles/MyExecutable.dir/implements/helperFunctions.cpp.o: CMakeFiles/MyExecutable.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lyudvik/C++/Project/Karen_Project/Karen_Backend/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/MyExecutable.dir/implements/helperFunctions.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/MyExecutable.dir/implements/helperFunctions.cpp.o -MF CMakeFiles/MyExecutable.dir/implements/helperFunctions.cpp.o.d -o CMakeFiles/MyExecutable.dir/implements/helperFunctions.cpp.o -c /home/lyudvik/C++/Project/Karen_Project/Karen_Backend/implements/helperFunctions.cpp

CMakeFiles/MyExecutable.dir/implements/helperFunctions.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MyExecutable.dir/implements/helperFunctions.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lyudvik/C++/Project/Karen_Project/Karen_Backend/implements/helperFunctions.cpp > CMakeFiles/MyExecutable.dir/implements/helperFunctions.cpp.i

CMakeFiles/MyExecutable.dir/implements/helperFunctions.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MyExecutable.dir/implements/helperFunctions.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lyudvik/C++/Project/Karen_Project/Karen_Backend/implements/helperFunctions.cpp -o CMakeFiles/MyExecutable.dir/implements/helperFunctions.cpp.s

CMakeFiles/MyExecutable.dir/implements/evantSwitch.cpp.o: CMakeFiles/MyExecutable.dir/flags.make
CMakeFiles/MyExecutable.dir/implements/evantSwitch.cpp.o: /home/lyudvik/C++/Project/Karen_Project/Karen_Backend/implements/evantSwitch.cpp
CMakeFiles/MyExecutable.dir/implements/evantSwitch.cpp.o: CMakeFiles/MyExecutable.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lyudvik/C++/Project/Karen_Project/Karen_Backend/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/MyExecutable.dir/implements/evantSwitch.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/MyExecutable.dir/implements/evantSwitch.cpp.o -MF CMakeFiles/MyExecutable.dir/implements/evantSwitch.cpp.o.d -o CMakeFiles/MyExecutable.dir/implements/evantSwitch.cpp.o -c /home/lyudvik/C++/Project/Karen_Project/Karen_Backend/implements/evantSwitch.cpp

CMakeFiles/MyExecutable.dir/implements/evantSwitch.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MyExecutable.dir/implements/evantSwitch.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lyudvik/C++/Project/Karen_Project/Karen_Backend/implements/evantSwitch.cpp > CMakeFiles/MyExecutable.dir/implements/evantSwitch.cpp.i

CMakeFiles/MyExecutable.dir/implements/evantSwitch.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MyExecutable.dir/implements/evantSwitch.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lyudvik/C++/Project/Karen_Project/Karen_Backend/implements/evantSwitch.cpp -o CMakeFiles/MyExecutable.dir/implements/evantSwitch.cpp.s

CMakeFiles/MyExecutable.dir/implements/dataBase.cpp.o: CMakeFiles/MyExecutable.dir/flags.make
CMakeFiles/MyExecutable.dir/implements/dataBase.cpp.o: /home/lyudvik/C++/Project/Karen_Project/Karen_Backend/implements/dataBase.cpp
CMakeFiles/MyExecutable.dir/implements/dataBase.cpp.o: CMakeFiles/MyExecutable.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lyudvik/C++/Project/Karen_Project/Karen_Backend/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/MyExecutable.dir/implements/dataBase.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/MyExecutable.dir/implements/dataBase.cpp.o -MF CMakeFiles/MyExecutable.dir/implements/dataBase.cpp.o.d -o CMakeFiles/MyExecutable.dir/implements/dataBase.cpp.o -c /home/lyudvik/C++/Project/Karen_Project/Karen_Backend/implements/dataBase.cpp

CMakeFiles/MyExecutable.dir/implements/dataBase.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MyExecutable.dir/implements/dataBase.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lyudvik/C++/Project/Karen_Project/Karen_Backend/implements/dataBase.cpp > CMakeFiles/MyExecutable.dir/implements/dataBase.cpp.i

CMakeFiles/MyExecutable.dir/implements/dataBase.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MyExecutable.dir/implements/dataBase.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lyudvik/C++/Project/Karen_Project/Karen_Backend/implements/dataBase.cpp -o CMakeFiles/MyExecutable.dir/implements/dataBase.cpp.s

CMakeFiles/MyExecutable.dir/implements/evants/evants.cpp.o: CMakeFiles/MyExecutable.dir/flags.make
CMakeFiles/MyExecutable.dir/implements/evants/evants.cpp.o: /home/lyudvik/C++/Project/Karen_Project/Karen_Backend/implements/evants/evants.cpp
CMakeFiles/MyExecutable.dir/implements/evants/evants.cpp.o: CMakeFiles/MyExecutable.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lyudvik/C++/Project/Karen_Project/Karen_Backend/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/MyExecutable.dir/implements/evants/evants.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/MyExecutable.dir/implements/evants/evants.cpp.o -MF CMakeFiles/MyExecutable.dir/implements/evants/evants.cpp.o.d -o CMakeFiles/MyExecutable.dir/implements/evants/evants.cpp.o -c /home/lyudvik/C++/Project/Karen_Project/Karen_Backend/implements/evants/evants.cpp

CMakeFiles/MyExecutable.dir/implements/evants/evants.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MyExecutable.dir/implements/evants/evants.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lyudvik/C++/Project/Karen_Project/Karen_Backend/implements/evants/evants.cpp > CMakeFiles/MyExecutable.dir/implements/evants/evants.cpp.i

CMakeFiles/MyExecutable.dir/implements/evants/evants.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MyExecutable.dir/implements/evants/evants.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lyudvik/C++/Project/Karen_Project/Karen_Backend/implements/evants/evants.cpp -o CMakeFiles/MyExecutable.dir/implements/evants/evants.cpp.s

CMakeFiles/MyExecutable.dir/implements/sitizen.cpp.o: CMakeFiles/MyExecutable.dir/flags.make
CMakeFiles/MyExecutable.dir/implements/sitizen.cpp.o: /home/lyudvik/C++/Project/Karen_Project/Karen_Backend/implements/sitizen.cpp
CMakeFiles/MyExecutable.dir/implements/sitizen.cpp.o: CMakeFiles/MyExecutable.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lyudvik/C++/Project/Karen_Project/Karen_Backend/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/MyExecutable.dir/implements/sitizen.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/MyExecutable.dir/implements/sitizen.cpp.o -MF CMakeFiles/MyExecutable.dir/implements/sitizen.cpp.o.d -o CMakeFiles/MyExecutable.dir/implements/sitizen.cpp.o -c /home/lyudvik/C++/Project/Karen_Project/Karen_Backend/implements/sitizen.cpp

CMakeFiles/MyExecutable.dir/implements/sitizen.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MyExecutable.dir/implements/sitizen.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lyudvik/C++/Project/Karen_Project/Karen_Backend/implements/sitizen.cpp > CMakeFiles/MyExecutable.dir/implements/sitizen.cpp.i

CMakeFiles/MyExecutable.dir/implements/sitizen.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MyExecutable.dir/implements/sitizen.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lyudvik/C++/Project/Karen_Project/Karen_Backend/implements/sitizen.cpp -o CMakeFiles/MyExecutable.dir/implements/sitizen.cpp.s

# Object files for target MyExecutable
MyExecutable_OBJECTS = \
"CMakeFiles/MyExecutable.dir/implements/main.cpp.o" \
"CMakeFiles/MyExecutable.dir/implements/mainImplement.cpp.o" \
"CMakeFiles/MyExecutable.dir/implements/helperFunctions.cpp.o" \
"CMakeFiles/MyExecutable.dir/implements/evantSwitch.cpp.o" \
"CMakeFiles/MyExecutable.dir/implements/dataBase.cpp.o" \
"CMakeFiles/MyExecutable.dir/implements/evants/evants.cpp.o" \
"CMakeFiles/MyExecutable.dir/implements/sitizen.cpp.o"

# External object files for target MyExecutable
MyExecutable_EXTERNAL_OBJECTS =

MyExecutable: CMakeFiles/MyExecutable.dir/implements/main.cpp.o
MyExecutable: CMakeFiles/MyExecutable.dir/implements/mainImplement.cpp.o
MyExecutable: CMakeFiles/MyExecutable.dir/implements/helperFunctions.cpp.o
MyExecutable: CMakeFiles/MyExecutable.dir/implements/evantSwitch.cpp.o
MyExecutable: CMakeFiles/MyExecutable.dir/implements/dataBase.cpp.o
MyExecutable: CMakeFiles/MyExecutable.dir/implements/evants/evants.cpp.o
MyExecutable: CMakeFiles/MyExecutable.dir/implements/sitizen.cpp.o
MyExecutable: CMakeFiles/MyExecutable.dir/build.make
MyExecutable: CMakeFiles/MyExecutable.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lyudvik/C++/Project/Karen_Project/Karen_Backend/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable MyExecutable"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MyExecutable.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MyExecutable.dir/build: MyExecutable
.PHONY : CMakeFiles/MyExecutable.dir/build

CMakeFiles/MyExecutable.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MyExecutable.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MyExecutable.dir/clean

CMakeFiles/MyExecutable.dir/depend:
	cd /home/lyudvik/C++/Project/Karen_Project/Karen_Backend/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lyudvik/C++/Project/Karen_Project/Karen_Backend /home/lyudvik/C++/Project/Karen_Project/Karen_Backend /home/lyudvik/C++/Project/Karen_Project/Karen_Backend/build /home/lyudvik/C++/Project/Karen_Project/Karen_Backend/build /home/lyudvik/C++/Project/Karen_Project/Karen_Backend/build/CMakeFiles/MyExecutable.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MyExecutable.dir/depend

