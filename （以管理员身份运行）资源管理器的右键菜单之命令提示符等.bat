@echo off
echo.
echo �ļ����Ҽ��˵��еġ�������ʾ���������ڽ���������ʾ�������ҵ�ǰĿ¼Ϊ���ļ���Ŀ¼��
reg add HKEY_CLASSES_ROOT\*\shell\������ʾ�� /ve /t REG_SZ /d "������ʾ��(&F)" /f
reg add HKEY_CLASSES_ROOT\*\shell\������ʾ��\command /ve /t REG_SZ /d "cmd /k" /f

echo.
echo �ļ����Ҽ��˵��еġ���������ʾ����ִ�С������ڽ���������ʾ�������ҵ�ǰĿ¼Ϊ���ļ���Ŀ¼����ִ�и��ļ���
reg add HKEY_CLASSES_ROOT\*\shell\��������ʾ����ִ�� /ve /t REG_SZ /d "��������ʾ����ִ��(&X)" /f
reg add HKEY_CLASSES_ROOT\*\shell\��������ʾ����ִ��\command /ve /t REG_SZ /d "cmd /k ""%%1""" /f


echo.
echo �ļ����Ҽ��˵��еġ�����ȫ·���������塱�����Ƹ��ļ���ȫ·���������塣
reg add HKEY_CLASSES_ROOT\*\shell\����ȫ·���������� /ve /t REG_SZ /d "����ȫ·����������(&Z)" /f
reg add HKEY_CLASSES_ROOT\*\shell\����ȫ·����������\command /ve /t REG_SZ /d "cmd /c set/p="""%%1"""<nul|CLIP" /f

echo.
echo Ŀ¼���Ҽ��˵��еġ�������ʾ���������ڽ���������ʾ�������ҵ�ǰĿ¼Ϊ��Ŀ¼��
reg add HKEY_CLASSES_ROOT\Folder\shell\������ʾ�� /ve /t REG_SZ /d "������ʾ��(&F)" /f
reg add HKEY_CLASSES_ROOT\Folder\shell\������ʾ��\command /ve /t REG_SZ /d "cmd /k cd /d ""%%1""" /f

echo.
echo Ŀ¼���Ҽ��˵��еġ�����ȫ·���������塱�����Ƹ�Ŀ¼��ȫ·���������塣
reg add HKEY_CLASSES_ROOT\Folder\shell\����ȫ·���������� /ve /t REG_SZ /d "����ȫ·����������(&Z)" /f
reg add HKEY_CLASSES_ROOT\Folder\shell\����ȫ·����������\command /ve /t REG_SZ /d "cmd /c set/p= """%%1""" < nul | CLIP" /f

pause
