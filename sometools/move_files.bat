@echo off
setlocal

set SOURCE_DIR=D:\YJM\Models
set DEST_DIR=D:\Programfiles\Myscvp\3d_models

move "%SOURCE_DIR%\*.pcd" "%DEST_DIR%"

echo Files moved.