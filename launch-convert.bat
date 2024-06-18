@echo off
:: this file will convert all image in folder named in
:: and save all the coverted file in the folder named out
:: by @zahiruddinnorzain github

echo  _                       _           
echo | |                     | |          
echo | |__   _____      _____| |__  _ __  
echo | '_ \ / _ \ \ /\ / / _ \ '_ \| '_ \ 
echo | |_) | (_) \ V  V /  __/ |_) | |_) |
echo |_.__/ \___/ \_/\_/ \___|_.__/| .__/ 
echo                               | |    
echo                               |_|

echo #####################
echo CONVERT IMAGE TO WEBP
echo #####################

set "input_dir=.\in"
set "output_dir=.\out"

rem Loop through all JPEG and PNG files in the directory
for %%F in ("%input_dir%\*.*") do (
    if exist "%%F" (
        rem Process each file here
        echo File found: %%~nxF
	cwebp -progress -short -q 80 ".\in\%%~nxF" -o ".\out\%%~nF.webp"
    )
)
echo ################
echo ##### DONE #####
echo ################
echo by zahiruddinnorzain