@echo off
echo Backing up...
echo Datetime: %mydate%_%mytime%
for /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c%%a%%b)
for /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a%%b)
if not exist "e:\tmp\backup\parental\%mydate%_%mytime%" mkdir e:\tmp\backup\parental\%mydate%_%mytime%
if not exist "e:\tmp\backup\parental\%mydate%_%mytime%\css" mkdir e:\tmp\backup\parental\%mydate%_%mytime%\css
if not exist "e:\tmp\backup\parental\%mydate%_%mytime%\scss" mkdir e:\tmp\backup\parental\%mydate%_%mytime%\scss
if not exist "e:\tmp\backup\parental\%mydate%_%mytime%\js" mkdir e:\tmp\backup\parental\%mydate%_%mytime%\js
copy css\style.css "e:\tmp\backup\parental\%mydate%_%mytime%\css\style.css" /Y
copy scss\style.scss "e:\tmp\backup\parental\%mydate%_%mytime%\scss\style.scss" /Y
copy js\script.js "e:\tmp\backup\parental\%mydate%_%mytime%\js\script.js" /Y
copy .scss-lint.yml "e:\tmp\backup\parental\%mydate%_%mytime%\.scss-lint.yml" /Y
copy gulpfile.js "e:\tmp\backup\parental\%mydate%_%mytime%\gulpfile.js" /Y
copy index.html "e:\tmp\backup\parental\%mydate%_%mytime%\index.html" /Y
copy package-lock.json "e:\tmp\backup\parental\%mydate%_%mytime%\package-lock.json" /Y
echo Backup finished.