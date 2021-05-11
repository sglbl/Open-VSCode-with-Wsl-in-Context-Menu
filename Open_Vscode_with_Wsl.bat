:: ######################################- batch file from github.com/sglbl -##############################################
   chcp 1254
   @echo off
   color 04
   title Open VSCode with Wsl option in right click context menu 

:: ########################################################################################################################
   set "KeyOfOpeningSpesificFolder=HKCR\Directory\shell\Wsl and VSCode"
   REG ADD "%KeyOfOpeningSpesificFolder%" /ve /t REG_EXPAND_SZ /d "Open VSCode with Wsl"
   REG ADD "%KeyOfOpeningSpesificFolder%\command" /ve /t REG_EXPAND_SZ /d "wsl --cd \"%%V\" code . "
:: #########################################################################################################################
   set "KeyOfOpeningCurrentFolder=HKCR\Directory\Background\shell\Wsl and VSCode"
   REG ADD "%KeyOfOpeningCurrentFolder%" /ve /t REG_EXPAND_SZ /d "Open VSCode with Wsl"
   REG ADD "%KeyOfOpeningCurrentFolder%\command" /ve /t REG_EXPAND_SZ /d "wsl --cd \"%%V\" code ."
:: #########################################################################################################################
   pause>nul
   exit /b
:: ##########################################Prepared by: Suleyman Golbol####################################################