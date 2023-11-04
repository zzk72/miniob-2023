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
CMAKE_SOURCE_DIR = /home/zzk/MyData/miniob-2023

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zzk/MyData/miniob-2023

# Include any dependencies generated for this target.
include unittest/CMakeFiles/md5_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include unittest/CMakeFiles/md5_test.dir/compiler_depend.make

# Include the progress variables for this target.
include unittest/CMakeFiles/md5_test.dir/progress.make

# Include the compile flags for this target's objects.
include unittest/CMakeFiles/md5_test.dir/flags.make

unittest/CMakeFiles/md5_test.dir/md5_test.cpp.o: unittest/CMakeFiles/md5_test.dir/flags.make
unittest/CMakeFiles/md5_test.dir/md5_test.cpp.o: unittest/md5_test.cpp
unittest/CMakeFiles/md5_test.dir/md5_test.cpp.o: unittest/CMakeFiles/md5_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zzk/MyData/miniob-2023/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object unittest/CMakeFiles/md5_test.dir/md5_test.cpp.o"
	cd /home/zzk/MyData/miniob-2023/unittest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT unittest/CMakeFiles/md5_test.dir/md5_test.cpp.o -MF CMakeFiles/md5_test.dir/md5_test.cpp.o.d -o CMakeFiles/md5_test.dir/md5_test.cpp.o -c /home/zzk/MyData/miniob-2023/unittest/md5_test.cpp

unittest/CMakeFiles/md5_test.dir/md5_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/md5_test.dir/md5_test.cpp.i"
	cd /home/zzk/MyData/miniob-2023/unittest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zzk/MyData/miniob-2023/unittest/md5_test.cpp > CMakeFiles/md5_test.dir/md5_test.cpp.i

unittest/CMakeFiles/md5_test.dir/md5_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/md5_test.dir/md5_test.cpp.s"
	cd /home/zzk/MyData/miniob-2023/unittest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zzk/MyData/miniob-2023/unittest/md5_test.cpp -o CMakeFiles/md5_test.dir/md5_test.cpp.s

# Object files for target md5_test
md5_test_OBJECTS = \
"CMakeFiles/md5_test.dir/md5_test.cpp.o"

# External object files for target md5_test
md5_test_EXTERNAL_OBJECTS =

bin/md5_test: unittest/CMakeFiles/md5_test.dir/md5_test.cpp.o
bin/md5_test: unittest/CMakeFiles/md5_test.dir/build.make
bin/md5_test: lib/libcommon.a
bin/md5_test: lib/libobserver.a
bin/md5_test: lib/libcommon.a
bin/md5_test: /usr/lib/x86_64-linux-gnu/libreadline.so
bin/md5_test: /usr/local/lib/libevent_pthreads.a
bin/md5_test: /usr/local/lib/libevent_core.a
bin/md5_test: unittest/CMakeFiles/md5_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zzk/MyData/miniob-2023/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/md5_test"
	cd /home/zzk/MyData/miniob-2023/unittest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/md5_test.dir/link.txt --verbose=$(VERBOSE)
	cd /home/zzk/MyData/miniob-2023/unittest && /usr/bin/cmake -D TEST_TARGET=md5_test -D TEST_EXECUTABLE=/home/zzk/MyData/miniob-2023/bin/md5_test -D TEST_EXECUTOR= -D TEST_WORKING_DIR=/home/zzk/MyData/miniob-2023/unittest -D TEST_EXTRA_ARGS= -D TEST_PROPERTIES= -D TEST_PREFIX= -D TEST_SUFFIX= -D TEST_FILTER= -D NO_PRETTY_TYPES=FALSE -D NO_PRETTY_VALUES=FALSE -D TEST_LIST=md5_test_TESTS -D CTEST_FILE=/home/zzk/MyData/miniob-2023/unittest/md5_test[1]_tests.cmake -D TEST_DISCOVERY_TIMEOUT=5 -D TEST_XML_OUTPUT_DIR= -P /usr/share/cmake-3.22/Modules/GoogleTestAddTests.cmake

# Rule to build all files generated by this target.
unittest/CMakeFiles/md5_test.dir/build: bin/md5_test
.PHONY : unittest/CMakeFiles/md5_test.dir/build

unittest/CMakeFiles/md5_test.dir/clean:
	cd /home/zzk/MyData/miniob-2023/unittest && $(CMAKE_COMMAND) -P CMakeFiles/md5_test.dir/cmake_clean.cmake
.PHONY : unittest/CMakeFiles/md5_test.dir/clean

unittest/CMakeFiles/md5_test.dir/depend:
	cd /home/zzk/MyData/miniob-2023 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zzk/MyData/miniob-2023 /home/zzk/MyData/miniob-2023/unittest /home/zzk/MyData/miniob-2023 /home/zzk/MyData/miniob-2023/unittest /home/zzk/MyData/miniob-2023/unittest/CMakeFiles/md5_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : unittest/CMakeFiles/md5_test.dir/depend

