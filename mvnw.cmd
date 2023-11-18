@echo off
SETLOCAL
SET DIRNAME=%~dp0%
SET APP_BASE_NAME=%~n0%
SET APP_HOME=%DIRNAME%
PUSHD "%APP_HOME%"
SET MAVEN_PROJECTBASEDIR=%MAVEN_BASEDIR%
IF "%MAVEN_PROJECTBASEDIR%"=="" SET "MAVEN_PROJECTBASEDIR=%APP_HOME%"
CALL "%MAVEN_PROJECTBASEDIR%\.mvn\jvm.config"
SET MAVEN_JAVA_EXE=
IF EXIST "%JAVA_HOME%\bin\java.exe" SET "MAVEN_JAVA_EXE=%JAVA_HOME%\bin\java.exe"
IF NOT "%MAVEN_JAVA_EXE%"=="" goto okJavaHome
ECHO The JAVA_HOME environment variable is not defined correctly
EXIT /B 1
:okJavaHome
IF NOT "%MAVEN_WRAPPER_SKIP%" == "" goto end
IF EXIST "%APP_HOME%\.mvn\wrapper\maven-wrapper.jar" goto mvnJarOk
IF NOT EXIST "%APP_HOME%\.mvn\wrapper\maven-wrapper.jar" (
    ECHO Couldn't find .mvn\wrapper\maven-wrapper.jar, downloading it...
    powershell -Command "& {[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; Invoke-WebRequest http://central.github.com/maven/maven-wrapper/0.5.5/maven-wrapper.jar -OutFile .mvn\wrapper\maven-wrapper.jar}"
)
:mvnJarOk
"%MAVEN_JAVA_EXE%" %MAVEN_OPTS% -classpath "%APP_HOME%\.mvn\wrapper\maven-wrapper.jar" org.apache.maven.wrapper.MavenWrapperMain %MAVEN_CONFIG% %*
:end
ENDLOCAL