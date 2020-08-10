::
@echo off
SET /a good = 0
SET /a ng = 0
if exist count.txt (    
    for /f %%i in ('type count.txt') do (
        set /a good = %%i
    )

)

:START
color 07
cls
call doProg.bat
SET /a OLD = %ERRORLEVEL%
choice /t 1 /d y /n
cls
IF %OLD% EQU 0 (
color    2F
echo              OOOOOOOOO             KKKKKKKKK    KKKKKKK
echo            OO:::::::::OO           K:::::::K    K:::::K
echo          OO:::::::::::::OO         K:::::::K    K:::::K
echo         O:::::::OOO:::::::O        K:::::::K   K::::::K
echo         O::::::O   O::::::O        KK::::::K  K:::::KKK
echo         O:::::O     O:::::O          K:::::K K:::::K   
echo         O:::::O     O:::::O          K::::::K:::::K    
echo         O:::::O     O:::::O          K:::::::::::K     
echo         O:::::O     O:::::O          K:::::::::::K     
echo         O:::::O     O:::::O          K::::::K:::::K    
echo         O:::::O     O:::::O          K:::::K K:::::K   
echo         O::::::O   O::::::O        KK::::::K  K:::::KKK
echo         O:::::::OOO:::::::O        K:::::::K   K::::::K
echo          OO:::::::::::::OO         K:::::::K    K:::::K
echo            OO:::::::::OO           K:::::::K    K:::::K
echo              OOOOOOOOO             KKKKKKKKK    KKKKKKK
set /a good = %good% + 1
echo %good% > count.txt
) else ( 
set /a ng = %ng% + 1
color    4F
echo     NNNNNNNN        NNNNNNNN             GGGGGGGGGGGGG
echo     N:::::::N       N::::::N          GGG::::::::::::G
echo     N::::::::N      N::::::N        GG:::::::::::::::G
echo     N:::::::::N     N::::::N       G:::::GGGGGGGG::::G
echo     N::::::::::N    N::::::N      G:::::G       GGGGGG
echo     N:::::::::::N   N::::::N     G:::::G              
echo     N:::::::N::::N  N::::::N     G:::::G              
echo     N::::::N N::::N N::::::N     G:::::G    GGGGGGGGGG
echo     N::::::N  N::::N:::::::N     G:::::G    G::::::::G
echo     N::::::N   N:::::::::::N     G:::::G    GGGGG::::G
echo     N::::::N    N::::::::::N     G:::::G        G::::G
echo     N::::::N     N:::::::::N      G:::::G       G::::G
echo     N::::::N      N::::::::N       G:::::GGGGGGGG::::G
echo     N::::::N       N:::::::N        GG:::::::::::::::G
echo     N::::::N        N::::::N          GGG::::::GGG:::G
echo     NNNNNNNN         NNNNNNN             GGGGGG   GGGG 
) 
echo. 
echo. 
echo 成功次数: %good% 
echo 失败次数: %ng%

PAUSE
goto START
    
    
    
    
    
    
    
    
    
    
    
    
    
   
   