pushd openssl

if not exist ms\version32.rc (
perl Configure VC-WIN64A no-shared zlib zlib-dynamic threads --openssldir=C:\openssl --prefix=..\install_msvc64\base -I..\install_msvc64\base\include -L..\install_msvc64\base\lib
)

if not exist ms\nt.mak (
call ms\do_win64a.bat
)

nmake -f ms\ntdll.mak
nmake -f ms\ntdll.mak install

popd

pause