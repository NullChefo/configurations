# GaalVM CE

## Download the jdk

https://github.com/graalvm/graalvm-ce-builds/releases/


## set the path

https://www.graalvm.org/jdk23/getting-started/windows/



 setx /M JAVA_HOME "C:\Progra~1\Java\<graalvm>"
 setx /M PATH "C:\Progra~1\Java\<graalvm>\bin;%PATH%"


 OR

 setx /M JAVA_HOME "C:\Users\nullchefo\SDK-Windows\java\graalvm\23_0_1"
 setx /M PATH "C:\Users\nullchefo\SDK-Windows\java\graalvm\23_0_1\bin;%PATH%"

## Cheak if ok

 echo %PATH%
 echo %JAVA_HOME%