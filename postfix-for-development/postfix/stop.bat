@echo off

pushd %~dp0\docker

wsl docker stop postfix-for-development

popd

echo Press any key to finish.
pause > NUL
