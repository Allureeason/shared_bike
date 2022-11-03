# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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
CMAKE_SOURCE_DIR = /home/busy/busy/shared_bike

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/busy/busy/shared_bike

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/busy/busy/shared_bike/CMakeFiles /home/busy/busy/shared_bike/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/busy/busy/shared_bike/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named SharedBike

# Build rule for target.
SharedBike: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 SharedBike
.PHONY : SharedBike

# fast build rule for target.
SharedBike/fast:
	$(MAKE) -f CMakeFiles/SharedBike.dir/build.make CMakeFiles/SharedBike.dir/build
.PHONY : SharedBike/fast

#=============================================================================
# Target rules for targets named shared_bike

# Build rule for target.
shared_bike: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 shared_bike
.PHONY : shared_bike

# fast build rule for target.
shared_bike/fast:
	$(MAKE) -f CMakeFiles/shared_bike.dir/build.make CMakeFiles/shared_bike.dir/build
.PHONY : shared_bike/fast

src/events.o: src/events.cpp.o

.PHONY : src/events.o

# target to build an object file
src/events.cpp.o:
	$(MAKE) -f CMakeFiles/shared_bike.dir/build.make CMakeFiles/shared_bike.dir/src/events.cpp.o
.PHONY : src/events.cpp.o

src/events.i: src/events.cpp.i

.PHONY : src/events.i

# target to preprocess a source file
src/events.cpp.i:
	$(MAKE) -f CMakeFiles/shared_bike.dir/build.make CMakeFiles/shared_bike.dir/src/events.cpp.i
.PHONY : src/events.cpp.i

src/events.s: src/events.cpp.s

.PHONY : src/events.s

# target to generate assembly for a file
src/events.cpp.s:
	$(MAKE) -f CMakeFiles/shared_bike.dir/build.make CMakeFiles/shared_bike.dir/src/events.cpp.s
.PHONY : src/events.cpp.s

src/iEvent.o: src/iEvent.cpp.o

.PHONY : src/iEvent.o

# target to build an object file
src/iEvent.cpp.o:
	$(MAKE) -f CMakeFiles/shared_bike.dir/build.make CMakeFiles/shared_bike.dir/src/iEvent.cpp.o
.PHONY : src/iEvent.cpp.o

src/iEvent.i: src/iEvent.cpp.i

.PHONY : src/iEvent.i

# target to preprocess a source file
src/iEvent.cpp.i:
	$(MAKE) -f CMakeFiles/shared_bike.dir/build.make CMakeFiles/shared_bike.dir/src/iEvent.cpp.i
.PHONY : src/iEvent.cpp.i

src/iEvent.s: src/iEvent.cpp.s

.PHONY : src/iEvent.s

# target to generate assembly for a file
src/iEvent.cpp.s:
	$(MAKE) -f CMakeFiles/shared_bike.dir/build.make CMakeFiles/shared_bike.dir/src/iEvent.cpp.s
.PHONY : src/iEvent.cpp.s

src/main.o: src/main.cpp.o

.PHONY : src/main.o

# target to build an object file
src/main.cpp.o:
	$(MAKE) -f CMakeFiles/SharedBike.dir/build.make CMakeFiles/SharedBike.dir/src/main.cpp.o
.PHONY : src/main.cpp.o

src/main.i: src/main.cpp.i

.PHONY : src/main.i

# target to preprocess a source file
src/main.cpp.i:
	$(MAKE) -f CMakeFiles/SharedBike.dir/build.make CMakeFiles/SharedBike.dir/src/main.cpp.i
.PHONY : src/main.cpp.i

src/main.s: src/main.cpp.s

.PHONY : src/main.s

# target to generate assembly for a file
src/main.cpp.s:
	$(MAKE) -f CMakeFiles/SharedBike.dir/build.make CMakeFiles/SharedBike.dir/src/main.cpp.s
.PHONY : src/main.cpp.s

src/proto/bike.pb.o: src/proto/bike.pb.cc.o

.PHONY : src/proto/bike.pb.o

# target to build an object file
src/proto/bike.pb.cc.o:
	$(MAKE) -f CMakeFiles/shared_bike.dir/build.make CMakeFiles/shared_bike.dir/src/proto/bike.pb.cc.o
.PHONY : src/proto/bike.pb.cc.o

src/proto/bike.pb.i: src/proto/bike.pb.cc.i

.PHONY : src/proto/bike.pb.i

# target to preprocess a source file
src/proto/bike.pb.cc.i:
	$(MAKE) -f CMakeFiles/shared_bike.dir/build.make CMakeFiles/shared_bike.dir/src/proto/bike.pb.cc.i
.PHONY : src/proto/bike.pb.cc.i

src/proto/bike.pb.s: src/proto/bike.pb.cc.s

.PHONY : src/proto/bike.pb.s

# target to generate assembly for a file
src/proto/bike.pb.cc.s:
	$(MAKE) -f CMakeFiles/shared_bike.dir/build.make CMakeFiles/shared_bike.dir/src/proto/bike.pb.cc.s
.PHONY : src/proto/bike.pb.cc.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... edit_cache"
	@echo "... SharedBike"
	@echo "... shared_bike"
	@echo "... src/events.o"
	@echo "... src/events.i"
	@echo "... src/events.s"
	@echo "... src/iEvent.o"
	@echo "... src/iEvent.i"
	@echo "... src/iEvent.s"
	@echo "... src/main.o"
	@echo "... src/main.i"
	@echo "... src/main.s"
	@echo "... src/proto/bike.pb.o"
	@echo "... src/proto/bike.pb.i"
	@echo "... src/proto/bike.pb.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

