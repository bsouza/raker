Raker is a simple tool based on Ruby rake to wrap cmaker with tools like GTest.
-------------------------------------------------------------------------------

Raker uses:

 - raker dir to build project files
 - CMakeLists.txt file to run cmake in raker dir


Install:

 - Download and extract this project
 - Verify if raker script have permission to execute
    - if not, run command 'chmod +x raker' inside project dir 
 - Make a symlink to /usr/bin
    - as root user
    - cd /usr/bin 
    - ln -s <path_to_downloaded_project>/raker raker
 - enjoy =D