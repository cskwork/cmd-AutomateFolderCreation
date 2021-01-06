@ECHO ON

SET Letters=(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z)
SET Numbers=(0,1,2,3,4,5,6,7,8,9)
SET SourceDir=%cd%
SET DestLetterDir=%cd%
SET DestNumDir=%cd%\#
SET exclude=".bat"

echo "%SourceDir%"

FOR %%A IN %Letters%  DO ^
MOVE "%SourceDir%\%%~A*.*" "%DestLetterDir%\%%~A\"
FOR %%B IN %Numbers% DO ^
MOVE "%SourceDir%\%%~B*.*" "%DestNumDir%\"
GOTO EOF

pause

:: FORCE OVERWRITE IF SAME NAME
::@ECHO ON
::SET Letters=(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z)
::SET Numbers=(0,1,2,3,4,5,6,7,8,9)
::SET SourceDir=D:\documents
::SET DestLetterDir=D:\documents\catalog
::SET DestNumDir=D:\documents\catalog\#

::FOR %%A IN %Letters% DO ECHO Y | MOVE "%SourceDir%\%%~A*.*" "%DestLetterDir%\%%~A\"
::FOR %%B IN %Numbers% DO ECHO Y | MOVE "%SourceDir%\%%~B*.*" "%DestNumDir%\"
::GOTO EOF