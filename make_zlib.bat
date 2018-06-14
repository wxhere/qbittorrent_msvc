rem nmake -f win32/Makefile.msc AS=ml64 LOC="-DASMV -DASMINF -I." OBJA="inffasx64.obj gvmat64.obj inffas8664.obj"

pushd zlib\zlib-1.2.11
nmake -f win32\Makefile.msc
xcopy /y zlib.h ..\..\install_msvc64\base\include\
xcopy /y zconf.h ..\..\install_msvc64\base\include\
xcopy /y zlib1.dll ..\..\install_msvc64\base\bin\
xcopy /y zdll.lib ..\..\install_msvc64\base\lib\
move ..\..\install_msvc64\base\lib\zdll.lib ..\..\install_msvc64\base\lib\zlib1.lib
popd

pause