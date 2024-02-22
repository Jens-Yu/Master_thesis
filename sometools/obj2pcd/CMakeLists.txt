cmake_minimum_required(VERSION 3.5 FATAL_ERROR)
project(obj2pcd_converter)

find_package(PCL 1.9 REQUIRED COMPONENTS io)
find_package(VTK REQUIRED)

include_directories(${PCL_INCLUDE_DIRS} ${VTK_INCLUDE_DIRS})
link_directories(${PCL_LIBRARY_DIRS} ${VTK_LIBRARY_DIRS})
add_definitions(${PCL_DEFINITIONS})

add_executable(obj2pcd obj2pcd.cpp)
target_link_libraries(obj2pcd ${PCL_LIBRARIES} ${VTK_LIBRARIES})