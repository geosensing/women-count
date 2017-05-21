:: from https://superuser.com/questions/1146686/move-all-files-within-subfolders-to-parent-folder
@ECHO OFF
SETLOCAL
SET parent="D:\github\women-count\photos\"
CD /d %parent% 
FOR /r %parent% %%d IN (*.*) DO MOVE "%%d" %parent% 
FOR /f "delims=" %%d IN ('DIR /a:d /s /b ^| SORT /r') DO RD "%%d"
ECHO Done. Press any key to terminate script.
PAUSE >NUL