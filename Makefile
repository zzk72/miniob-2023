# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

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

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target test
test:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running tests..."
	/usr/bin/ctest --force-new-ctest-process $(ARGS)
.PHONY : test

# Special rule for the target test
test/fast: test
.PHONY : test/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# Special rule for the target list_install_components
list_install_components:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Available install components are: \"Unspecified\""
.PHONY : list_install_components

# Special rule for the target list_install_components
list_install_components/fast: list_install_components
.PHONY : list_install_components/fast

# Special rule for the target install
install: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/bin/cmake -P cmake_install.cmake
.PHONY : install

# Special rule for the target install
install/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/bin/cmake -P cmake_install.cmake
.PHONY : install/fast

# Special rule for the target install/local
install/local: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/usr/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local

# Special rule for the target install/local
install/local/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/usr/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local/fast

# Special rule for the target install/strip
install/strip: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing the project stripped..."
	/usr/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip

# Special rule for the target install/strip
install/strip/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing the project stripped..."
	/usr/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/zzk/MyData/miniob-2023/CMakeFiles /home/zzk/MyData/miniob-2023//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/zzk/MyData/miniob-2023/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named common

# Build rule for target.
common: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 common
.PHONY : common

# fast build rule for target.
common/fast:
	$(MAKE) $(MAKESILENT) -f deps/common/CMakeFiles/common.dir/build.make deps/common/CMakeFiles/common.dir/build
.PHONY : common/fast

#=============================================================================
# Target rules for targets named obclient

# Build rule for target.
obclient: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 obclient
.PHONY : obclient

# fast build rule for target.
obclient/fast:
	$(MAKE) $(MAKESILENT) -f src/obclient/CMakeFiles/obclient.dir/build.make src/obclient/CMakeFiles/obclient.dir/build
.PHONY : obclient/fast

#=============================================================================
# Target rules for targets named observer

# Build rule for target.
observer: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 observer
.PHONY : observer

# fast build rule for target.
observer/fast:
	$(MAKE) $(MAKESILENT) -f src/observer/CMakeFiles/observer.dir/build.make src/observer/CMakeFiles/observer.dir/build
.PHONY : observer/fast

#=============================================================================
# Target rules for targets named observer_static

# Build rule for target.
observer_static: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 observer_static
.PHONY : observer_static

# fast build rule for target.
observer_static/fast:
	$(MAKE) $(MAKESILENT) -f src/observer/CMakeFiles/observer_static.dir/build.make src/observer/CMakeFiles/observer_static.dir/build
.PHONY : observer_static/fast

#=============================================================================
# Target rules for targets named client_performance_test

# Build rule for target.
client_performance_test: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 client_performance_test
.PHONY : client_performance_test

# fast build rule for target.
client_performance_test/fast:
	$(MAKE) $(MAKESILENT) -f test/perf/CMakeFiles/client_performance_test.dir/build.make test/perf/CMakeFiles/client_performance_test.dir/build
.PHONY : client_performance_test/fast

#=============================================================================
# Target rules for targets named bplus_tree_concurrency_test

# Build rule for target.
bplus_tree_concurrency_test: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 bplus_tree_concurrency_test
.PHONY : bplus_tree_concurrency_test

# fast build rule for target.
bplus_tree_concurrency_test/fast:
	$(MAKE) $(MAKESILENT) -f benchmark/CMakeFiles/bplus_tree_concurrency_test.dir/build.make benchmark/CMakeFiles/bplus_tree_concurrency_test.dir/build
.PHONY : bplus_tree_concurrency_test/fast

#=============================================================================
# Target rules for targets named record_manager_concurrency_test

# Build rule for target.
record_manager_concurrency_test: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 record_manager_concurrency_test
.PHONY : record_manager_concurrency_test

# fast build rule for target.
record_manager_concurrency_test/fast:
	$(MAKE) $(MAKESILENT) -f benchmark/CMakeFiles/record_manager_concurrency_test.dir/build.make benchmark/CMakeFiles/record_manager_concurrency_test.dir/build
.PHONY : record_manager_concurrency_test/fast

#=============================================================================
# Target rules for targets named server_concurrency_test

# Build rule for target.
server_concurrency_test: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 server_concurrency_test
.PHONY : server_concurrency_test

# fast build rule for target.
server_concurrency_test/fast:
	$(MAKE) $(MAKESILENT) -f benchmark/CMakeFiles/server_concurrency_test.dir/build.make benchmark/CMakeFiles/server_concurrency_test.dir/build
.PHONY : server_concurrency_test/fast

#=============================================================================
# Target rules for targets named clog_reader

# Build rule for target.
clog_reader: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clog_reader
.PHONY : clog_reader

# fast build rule for target.
clog_reader/fast:
	$(MAKE) $(MAKESILENT) -f tools/CMakeFiles/clog_reader.dir/build.make tools/CMakeFiles/clog_reader.dir/build
.PHONY : clog_reader/fast

#=============================================================================
# Target rules for targets named arithmetic_expression_test

# Build rule for target.
arithmetic_expression_test: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 arithmetic_expression_test
.PHONY : arithmetic_expression_test

# fast build rule for target.
arithmetic_expression_test/fast:
	$(MAKE) $(MAKESILENT) -f unittest/CMakeFiles/arithmetic_expression_test.dir/build.make unittest/CMakeFiles/arithmetic_expression_test.dir/build
.PHONY : arithmetic_expression_test/fast

#=============================================================================
# Target rules for targets named bitmap_test

# Build rule for target.
bitmap_test: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 bitmap_test
.PHONY : bitmap_test

# fast build rule for target.
bitmap_test/fast:
	$(MAKE) $(MAKESILENT) -f unittest/CMakeFiles/bitmap_test.dir/build.make unittest/CMakeFiles/bitmap_test.dir/build
.PHONY : bitmap_test/fast

#=============================================================================
# Target rules for targets named bp_manager_test

# Build rule for target.
bp_manager_test: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 bp_manager_test
.PHONY : bp_manager_test

# fast build rule for target.
bp_manager_test/fast:
	$(MAKE) $(MAKESILENT) -f unittest/CMakeFiles/bp_manager_test.dir/build.make unittest/CMakeFiles/bp_manager_test.dir/build
.PHONY : bp_manager_test/fast

#=============================================================================
# Target rules for targets named bplus_tree_test

# Build rule for target.
bplus_tree_test: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 bplus_tree_test
.PHONY : bplus_tree_test

# fast build rule for target.
bplus_tree_test/fast:
	$(MAKE) $(MAKESILENT) -f unittest/CMakeFiles/bplus_tree_test.dir/build.make unittest/CMakeFiles/bplus_tree_test.dir/build
.PHONY : bplus_tree_test/fast

#=============================================================================
# Target rules for targets named clog_test

# Build rule for target.
clog_test: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clog_test
.PHONY : clog_test

# fast build rule for target.
clog_test/fast:
	$(MAKE) $(MAKESILENT) -f unittest/CMakeFiles/clog_test.dir/build.make unittest/CMakeFiles/clog_test.dir/build
.PHONY : clog_test/fast

#=============================================================================
# Target rules for targets named log_test

# Build rule for target.
log_test: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 log_test
.PHONY : log_test

# fast build rule for target.
log_test/fast:
	$(MAKE) $(MAKESILENT) -f unittest/CMakeFiles/log_test.dir/build.make unittest/CMakeFiles/log_test.dir/build
.PHONY : log_test/fast

#=============================================================================
# Target rules for targets named lower_bound_test

# Build rule for target.
lower_bound_test: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 lower_bound_test
.PHONY : lower_bound_test

# fast build rule for target.
lower_bound_test/fast:
	$(MAKE) $(MAKESILENT) -f unittest/CMakeFiles/lower_bound_test.dir/build.make unittest/CMakeFiles/lower_bound_test.dir/build
.PHONY : lower_bound_test/fast

#=============================================================================
# Target rules for targets named md5_test

# Build rule for target.
md5_test: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 md5_test
.PHONY : md5_test

# fast build rule for target.
md5_test/fast:
	$(MAKE) $(MAKESILENT) -f unittest/CMakeFiles/md5_test.dir/build.make unittest/CMakeFiles/md5_test.dir/build
.PHONY : md5_test/fast

#=============================================================================
# Target rules for targets named mem_pool_test

# Build rule for target.
mem_pool_test: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 mem_pool_test
.PHONY : mem_pool_test

# fast build rule for target.
mem_pool_test/fast:
	$(MAKE) $(MAKESILENT) -f unittest/CMakeFiles/mem_pool_test.dir/build.make unittest/CMakeFiles/mem_pool_test.dir/build
.PHONY : mem_pool_test/fast

#=============================================================================
# Target rules for targets named persist_test

# Build rule for target.
persist_test: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 persist_test
.PHONY : persist_test

# fast build rule for target.
persist_test/fast:
	$(MAKE) $(MAKESILENT) -f unittest/CMakeFiles/persist_test.dir/build.make unittest/CMakeFiles/persist_test.dir/build
.PHONY : persist_test/fast

#=============================================================================
# Target rules for targets named pidfile_test

# Build rule for target.
pidfile_test: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 pidfile_test
.PHONY : pidfile_test

# fast build rule for target.
pidfile_test/fast:
	$(MAKE) $(MAKESILENT) -f unittest/CMakeFiles/pidfile_test.dir/build.make unittest/CMakeFiles/pidfile_test.dir/build
.PHONY : pidfile_test/fast

#=============================================================================
# Target rules for targets named record_manager_test

# Build rule for target.
record_manager_test: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 record_manager_test
.PHONY : record_manager_test

# fast build rule for target.
record_manager_test/fast:
	$(MAKE) $(MAKESILENT) -f unittest/CMakeFiles/record_manager_test.dir/build.make unittest/CMakeFiles/record_manager_test.dir/build
.PHONY : record_manager_test/fast

#=============================================================================
# Target rules for targets named ring_buffer_test

# Build rule for target.
ring_buffer_test: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 ring_buffer_test
.PHONY : ring_buffer_test

# fast build rule for target.
ring_buffer_test/fast:
	$(MAKE) $(MAKESILENT) -f unittest/CMakeFiles/ring_buffer_test.dir/build.make unittest/CMakeFiles/ring_buffer_test.dir/build
.PHONY : ring_buffer_test/fast

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... install"
	@echo "... install/local"
	@echo "... install/strip"
	@echo "... list_install_components"
	@echo "... rebuild_cache"
	@echo "... test"
	@echo "... arithmetic_expression_test"
	@echo "... bitmap_test"
	@echo "... bp_manager_test"
	@echo "... bplus_tree_concurrency_test"
	@echo "... bplus_tree_test"
	@echo "... client_performance_test"
	@echo "... clog_reader"
	@echo "... clog_test"
	@echo "... common"
	@echo "... log_test"
	@echo "... lower_bound_test"
	@echo "... md5_test"
	@echo "... mem_pool_test"
	@echo "... obclient"
	@echo "... observer"
	@echo "... observer_static"
	@echo "... persist_test"
	@echo "... pidfile_test"
	@echo "... record_manager_concurrency_test"
	@echo "... record_manager_test"
	@echo "... ring_buffer_test"
	@echo "... server_concurrency_test"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

