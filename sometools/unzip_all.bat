@echo off
setlocal

set SOURCE_DIR=D:\Programfiles\SCVP-Simulation-main\SCVP-Simulation-main\Set_covering_data_generator\3d_models

for %%f in ("%SOURCE_DIR%\*.zip") do (
  echo Extracting %%f
  PowerShell -Command "Expand-Archive -LiteralPath '%%f' -DestinationPath '%SOURCE_DIR%'"
)

echo Extraction complete.