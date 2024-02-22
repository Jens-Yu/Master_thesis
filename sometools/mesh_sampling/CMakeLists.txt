cmake_minimum_required(VERSION 3.5)
project(CAD_to_PointCloud)

# 设置 C++ 标准
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# 寻找 PCL 库
find_package(PCL 1.9 REQUIRED)

# 添加 PCL 的头文件路径
include_directories(${PCL_INCLUDE_DIRS})

# 链接 PCL 库
link_directories(${PCL_LIBRARY_DIRS})
add_definitions(${PCL_DEFINITIONS})

# 创建可执行文件
add_executable(cad_to_pointcloud mesh_sampling.cpp)

# 链接 PCL 库到可执行文件
target_link_libraries(cad_to_pointcloud ${PCL_LIBRARIES})