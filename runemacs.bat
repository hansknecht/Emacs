rem Set the Emacs home directory to the drive label of the flash drive.
set HOME=%~dp0

rem Set an evironment variable to tell Emacs that it is running portably
set EMACS_PORTABLE="Y"

rem Find the Emacs executable and execute it.
"%~dp0/bin/runemacs.exe" %

