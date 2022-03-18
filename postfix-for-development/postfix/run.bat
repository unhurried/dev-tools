@echo off

pushd %~dp0\docker

wsl ./run.sh

popd

echo Press any key to finish.
pause > NUL
