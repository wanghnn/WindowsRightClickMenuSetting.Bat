@echo off
echo.
echo 文件的右键菜单中的“命令提示符”：用于进入命令提示符，并且当前目录为该文件的目录。
reg add HKEY_CLASSES_ROOT\*\shell\命令提示符 /ve /t REG_SZ /d "命令提示符(&F)" /f
reg add HKEY_CLASSES_ROOT\*\shell\命令提示符\command /ve /t REG_SZ /d "cmd /k" /f

echo.
echo 文件的右键菜单中的“在命令提示符中执行”：用于进入命令提示符，并且当前目录为该文件的目录，且执行该文件。
reg add HKEY_CLASSES_ROOT\*\shell\在命令提示符中执行 /ve /t REG_SZ /d "在命令提示符中执行(&X)" /f
reg add HKEY_CLASSES_ROOT\*\shell\在命令提示符中执行\command /ve /t REG_SZ /d "cmd /k ""%%1""" /f


echo.
echo 文件的右键菜单中的“复制全路径到剪贴板”：复制该文件的全路径到剪贴板。
reg add HKEY_CLASSES_ROOT\*\shell\复制全路径到剪贴板 /ve /t REG_SZ /d "复制全路径到剪贴板(&Z)" /f
reg add HKEY_CLASSES_ROOT\*\shell\复制全路径到剪贴板\command /ve /t REG_SZ /d "cmd /c set/p="""%%1"""<nul|CLIP" /f

echo.
echo 目录的右键菜单中的“命令提示符”：用于进入命令提示符，并且当前目录为该目录。
reg add HKEY_CLASSES_ROOT\Folder\shell\命令提示符 /ve /t REG_SZ /d "命令提示符(&F)" /f
reg add HKEY_CLASSES_ROOT\Folder\shell\命令提示符\command /ve /t REG_SZ /d "cmd /k cd /d ""%%1""" /f

echo.
echo 目录的右键菜单中的“复制全路径到剪贴板”：复制该目录的全路径到剪贴板。
reg add HKEY_CLASSES_ROOT\Folder\shell\复制全路径到剪贴板 /ve /t REG_SZ /d "复制全路径到剪贴板(&Z)" /f
reg add HKEY_CLASSES_ROOT\Folder\shell\复制全路径到剪贴板\command /ve /t REG_SZ /d "cmd /c set/p= """%%1""" < nul | CLIP" /f

pause
