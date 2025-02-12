@echo off
setlocal enabledelayedexpansion

:: Establece el tamaño inicial de la ventana
set WIDTH=800
set HEIGHT=600

:LOOP
:: Abre el Rickroll con el tamaño actual
start mshta "javascript:var w=window.open('https://www.youtube.com/watch?v=dQw4w9WgXcQ','_blank','width=!WIDTH!,height=!HEIGHT!');w.blur();setTimeout('if(w)w.close();',5000);window.close();"

:: Aumenta el tamaño de la ventana en cada iteración
set /a WIDTH+=100
set /a HEIGHT+=75

:: Pequeño retraso para evitar saturación inmediata
timeout /t 3 >nul

goto LOOP
