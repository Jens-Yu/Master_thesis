@echo off
cd /d D:\Programfiles\SCVP-Simulation-main\SCVP-Simulation-main\Set_covering_data_generator\3d_models
for %%f in (*.ply) do (
  echo Converting %%f
  D:\Programfiles\tools\ply2pcd\build\Release\ply2pcd.exe "%%f" "%%~nf.pcd"
)
echo Conversion complete.