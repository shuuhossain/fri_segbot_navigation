# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/fri/catkin_ws_shsl/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/fri/catkin_ws_shsl/build

# Include any dependencies generated for this target.
include handgestures/CMakeFiles/handgestures_node.dir/depend.make

# Include the progress variables for this target.
include handgestures/CMakeFiles/handgestures_node.dir/progress.make

# Include the compile flags for this target's objects.
include handgestures/CMakeFiles/handgestures_node.dir/flags.make

handgestures/CMakeFiles/handgestures_node.dir/src/main.cpp.o: handgestures/CMakeFiles/handgestures_node.dir/flags.make
handgestures/CMakeFiles/handgestures_node.dir/src/main.cpp.o: /home/fri/catkin_ws_shsl/src/handgestures/src/main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/fri/catkin_ws_shsl/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object handgestures/CMakeFiles/handgestures_node.dir/src/main.cpp.o"
	cd /home/fri/catkin_ws_shsl/build/handgestures && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/handgestures_node.dir/src/main.cpp.o -c /home/fri/catkin_ws_shsl/src/handgestures/src/main.cpp

handgestures/CMakeFiles/handgestures_node.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/handgestures_node.dir/src/main.cpp.i"
	cd /home/fri/catkin_ws_shsl/build/handgestures && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/fri/catkin_ws_shsl/src/handgestures/src/main.cpp > CMakeFiles/handgestures_node.dir/src/main.cpp.i

handgestures/CMakeFiles/handgestures_node.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/handgestures_node.dir/src/main.cpp.s"
	cd /home/fri/catkin_ws_shsl/build/handgestures && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/fri/catkin_ws_shsl/src/handgestures/src/main.cpp -o CMakeFiles/handgestures_node.dir/src/main.cpp.s

handgestures/CMakeFiles/handgestures_node.dir/src/main.cpp.o.requires:
.PHONY : handgestures/CMakeFiles/handgestures_node.dir/src/main.cpp.o.requires

handgestures/CMakeFiles/handgestures_node.dir/src/main.cpp.o.provides: handgestures/CMakeFiles/handgestures_node.dir/src/main.cpp.o.requires
	$(MAKE) -f handgestures/CMakeFiles/handgestures_node.dir/build.make handgestures/CMakeFiles/handgestures_node.dir/src/main.cpp.o.provides.build
.PHONY : handgestures/CMakeFiles/handgestures_node.dir/src/main.cpp.o.provides

handgestures/CMakeFiles/handgestures_node.dir/src/main.cpp.o.provides.build: handgestures/CMakeFiles/handgestures_node.dir/src/main.cpp.o

# Object files for target handgestures_node
handgestures_node_OBJECTS = \
"CMakeFiles/handgestures_node.dir/src/main.cpp.o"

# External object files for target handgestures_node
handgestures_node_EXTERNAL_OBJECTS =

/home/fri/catkin_ws_shsl/devel/lib/handgestures/handgestures_node: handgestures/CMakeFiles/handgestures_node.dir/src/main.cpp.o
/home/fri/catkin_ws_shsl/devel/lib/handgestures/handgestures_node: /opt/ros/hydro/lib/libtf.so
/home/fri/catkin_ws_shsl/devel/lib/handgestures/handgestures_node: /opt/ros/hydro/lib/libtf2_ros.so
/home/fri/catkin_ws_shsl/devel/lib/handgestures/handgestures_node: /opt/ros/hydro/lib/libactionlib.so
/home/fri/catkin_ws_shsl/devel/lib/handgestures/handgestures_node: /opt/ros/hydro/lib/libmessage_filters.so
/home/fri/catkin_ws_shsl/devel/lib/handgestures/handgestures_node: /opt/ros/hydro/lib/libroscpp.so
/home/fri/catkin_ws_shsl/devel/lib/handgestures/handgestures_node: /usr/lib/libboost_signals-mt.so
/home/fri/catkin_ws_shsl/devel/lib/handgestures/handgestures_node: /usr/lib/libboost_filesystem-mt.so
/home/fri/catkin_ws_shsl/devel/lib/handgestures/handgestures_node: /opt/ros/hydro/lib/libxmlrpcpp.so
/home/fri/catkin_ws_shsl/devel/lib/handgestures/handgestures_node: /opt/ros/hydro/lib/libtf2.so
/home/fri/catkin_ws_shsl/devel/lib/handgestures/handgestures_node: /opt/ros/hydro/lib/libroscpp_serialization.so
/home/fri/catkin_ws_shsl/devel/lib/handgestures/handgestures_node: /opt/ros/hydro/lib/librosconsole.so
/home/fri/catkin_ws_shsl/devel/lib/handgestures/handgestures_node: /opt/ros/hydro/lib/librosconsole_log4cxx.so
/home/fri/catkin_ws_shsl/devel/lib/handgestures/handgestures_node: /opt/ros/hydro/lib/librosconsole_backend_interface.so
/home/fri/catkin_ws_shsl/devel/lib/handgestures/handgestures_node: /usr/lib/liblog4cxx.so
/home/fri/catkin_ws_shsl/devel/lib/handgestures/handgestures_node: /usr/lib/libboost_regex-mt.so
/home/fri/catkin_ws_shsl/devel/lib/handgestures/handgestures_node: /opt/ros/hydro/lib/librostime.so
/home/fri/catkin_ws_shsl/devel/lib/handgestures/handgestures_node: /usr/lib/libboost_date_time-mt.so
/home/fri/catkin_ws_shsl/devel/lib/handgestures/handgestures_node: /usr/lib/libboost_system-mt.so
/home/fri/catkin_ws_shsl/devel/lib/handgestures/handgestures_node: /usr/lib/libboost_thread-mt.so
/home/fri/catkin_ws_shsl/devel/lib/handgestures/handgestures_node: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/fri/catkin_ws_shsl/devel/lib/handgestures/handgestures_node: /opt/ros/hydro/lib/libcpp_common.so
/home/fri/catkin_ws_shsl/devel/lib/handgestures/handgestures_node: /opt/ros/hydro/lib/libconsole_bridge.so
/home/fri/catkin_ws_shsl/devel/lib/handgestures/handgestures_node: handgestures/CMakeFiles/handgestures_node.dir/build.make
/home/fri/catkin_ws_shsl/devel/lib/handgestures/handgestures_node: handgestures/CMakeFiles/handgestures_node.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable /home/fri/catkin_ws_shsl/devel/lib/handgestures/handgestures_node"
	cd /home/fri/catkin_ws_shsl/build/handgestures && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/handgestures_node.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
handgestures/CMakeFiles/handgestures_node.dir/build: /home/fri/catkin_ws_shsl/devel/lib/handgestures/handgestures_node
.PHONY : handgestures/CMakeFiles/handgestures_node.dir/build

handgestures/CMakeFiles/handgestures_node.dir/requires: handgestures/CMakeFiles/handgestures_node.dir/src/main.cpp.o.requires
.PHONY : handgestures/CMakeFiles/handgestures_node.dir/requires

handgestures/CMakeFiles/handgestures_node.dir/clean:
	cd /home/fri/catkin_ws_shsl/build/handgestures && $(CMAKE_COMMAND) -P CMakeFiles/handgestures_node.dir/cmake_clean.cmake
.PHONY : handgestures/CMakeFiles/handgestures_node.dir/clean

handgestures/CMakeFiles/handgestures_node.dir/depend:
	cd /home/fri/catkin_ws_shsl/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/fri/catkin_ws_shsl/src /home/fri/catkin_ws_shsl/src/handgestures /home/fri/catkin_ws_shsl/build /home/fri/catkin_ws_shsl/build/handgestures /home/fri/catkin_ws_shsl/build/handgestures/CMakeFiles/handgestures_node.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : handgestures/CMakeFiles/handgestures_node.dir/depend

