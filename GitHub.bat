@echo off
rem Define the path to the local directory where the EPG XML file will be stored
set "localDirectory=C:\Users\juan7\AppData\Local\WebGrab+Plus"

rem Define the URL of the GitHub repository
set "githubRepoUrl=https://github.com/juan7mata/EPG"

rem Navigate to the local directory
cd /d "%localDirectory%"

rem Pull changes from the GitHub repository to ensure we have the latest version
git pull origin main

rem Download the latest EPG XML file from the GitHub repository
curl -o guide.xml "%githubRepoUrl%/raw/main/guide.xml"

rem Add the updated XML file to the Git staging area
git add guide.xml

rem Commit the changes with a message indicating the update
git commit -m "Update EPG XML file"

rem Push the changes to the GitHub repository
git push origin main
