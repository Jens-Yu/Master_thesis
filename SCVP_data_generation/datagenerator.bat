@echo off
setlocal

:: 设置原始 YAML 文件和程序的路径
set "yamlFile=D:\Programfiles\SCVP-Simulation-main\SCVP-Simulation-main\Set_covering_data_generator\DefaultConfiguration.yaml"         :: YAML 文件的路径
set "programPath=D:\Programfiles\SCVP-Simulation-main\SCVP-Simulation-main\Set_covering_data_generator\SCVP_data_generation\SCVP_data_generation.exe"
set "pcdFolderPath=D:\Programfiles\SCVP-Simulation-main\SCVP-Simulation-main\Set_covering_data_generator\3d_models"    :: 包含 PCD 文件的文件夹的路径

:: 遍历文件夹中的每个 PCD 文件
for %%f in ("%pcdFolderPath%\*.pcd") do (
    echo Processing: %%~nf

    :: 使用 PowerShell 替换 YAML 文件中的 name_of_pcd 字段
    powershell -Command "(Get-Content '%yamlFile%') -replace 'name_of_pcd: .+', 'name_of_pcd: """"%%~nf""""' | Set-Content '%yamlFile%'"


    :: 启动程序
    "%programPath%"
)

endlocal
