@echo off

pushd %~dp0\docker

wsl docker exec -it postfix-for-development mail

popd

echo Press any key to finish.
pause > NUL
