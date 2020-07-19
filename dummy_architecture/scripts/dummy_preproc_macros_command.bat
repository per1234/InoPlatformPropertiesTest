@echo off
REM A wrapper for the compiler command used to preprocess macros.
REM It runs the list arguments up to the START_PLATFORM_PROPERTIES_LIST key, and ignores the rest.
REM The purpose is to allow all the platform properties to be printed in the log without breaking the compiler command.

setlocal EnableDelayedExpansion

REM Concatenate the arguments that represent the compiler command into a variable.
for %%a in (%*) do (
  if "%%a"=="START_PLATFORM_PROPERTIES_LIST" goto run_compiler_command
  call set "compiler_command=%%compiler_command%% %%a"
)

:run_compiler_command
REM The "=" is lost from the -mmcu option when it's passed to the batch file as an argument, so it must be replaced.
set "compiler_command=%compiler_command:-mmcu =-mmcu=%"

REM Run the avr-g++ command.
%compiler_command%
