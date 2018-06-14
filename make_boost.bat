pushd boost

if not exist b2.exe (
call bootstrap.bat
)

b2 -q --with-system --toolset=msvc-14.1 address-model=64 variant=release link=shared runtime-link=shared include="..\install_msvc64\base\include" library-path="..\install_msvc64\base\lib" --prefix="..\install_msvc64\base" cxxflags="-O1 -Gy -Gw -GL" linkflags="/NOLOGO /DYNAMICBASE /NXCOMPAT /LTCG /OPT:REF /OPT:ICF /MANIFEST:EMBED /INCREMENTAL:NO" --hash -j %NUMBER_OF_PROCESSORS%
b2 -q --with-system --toolset=msvc-14.1 address-model=64 variant=release link=shared runtime-link=shared include="..\install_msvc64\base\include" library-path="..\install_msvc64\base\lib" --prefix="..\install_msvc64\base" cxxflags="-O1 -Gy -Gw -GL" linkflags="/NOLOGO /DYNAMICBASE /NXCOMPAT /LTCG /OPT:REF /OPT:ICF /MANIFEST:EMBED /INCREMENTAL:NO" --hash -j %NUMBER_OF_PROCESSORS% install

popd

pause