@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  semantic startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and SEMANTIC_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\semantic-1.0-mca.jar;%APP_HOME%\lib\json-20180813.jar;%APP_HOME%\lib\jsoup-1.11.3.jar;%APP_HOME%\lib\jdom2-2.0.6.jar;%APP_HOME%\lib\aws-java-sdk-s3-1.11.516.jar;%APP_HOME%\lib\annotations-13.0.jar;%APP_HOME%\lib\poi-ooxml-4.0.1.jar;%APP_HOME%\lib\poi-4.0.1.jar;%APP_HOME%\lib\pdfbox-2.0.14.jar;%APP_HOME%\lib\mysql-connector-java-8.0.15.jar;%APP_HOME%\lib\gson-2.8.5.jar;%APP_HOME%\lib\aspectjtools-1.9.3.RC1.jar;%APP_HOME%\lib\commons-io-2.6.jar;%APP_HOME%\lib\aws-java-sdk-kms-1.11.516.jar;%APP_HOME%\lib\aws-java-sdk-core-1.11.516.jar;%APP_HOME%\lib\jmespath-java-1.11.516.jar;%APP_HOME%\lib\httpclient-4.5.5.jar;%APP_HOME%\lib\commons-codec-1.11.jar;%APP_HOME%\lib\commons-collections4-4.2.jar;%APP_HOME%\lib\commons-math3-3.6.1.jar;%APP_HOME%\lib\poi-ooxml-schemas-4.0.1.jar;%APP_HOME%\lib\commons-compress-1.18.jar;%APP_HOME%\lib\curvesapi-1.05.jar;%APP_HOME%\lib\fontbox-2.0.14.jar;%APP_HOME%\lib\commons-logging-1.2.jar;%APP_HOME%\lib\protobuf-java-3.6.1.jar;%APP_HOME%\lib\ion-java-1.0.2.jar;%APP_HOME%\lib\jackson-databind-2.6.7.2.jar;%APP_HOME%\lib\jackson-dataformat-cbor-2.6.7.jar;%APP_HOME%\lib\joda-time-2.8.1.jar;%APP_HOME%\lib\xmlbeans-3.0.2.jar;%APP_HOME%\lib\httpcore-4.4.9.jar;%APP_HOME%\lib\jackson-annotations-2.6.0.jar;%APP_HOME%\lib\jackson-core-2.6.7.jar

@rem Execute semantic
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %SEMANTIC_OPTS%  -classpath "%CLASSPATH%" Semantic %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable SEMANTIC_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%SEMANTIC_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
