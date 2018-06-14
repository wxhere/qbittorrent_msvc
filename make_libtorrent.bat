pushd libtorrent

if not exist b2.exe (
copy ..\boost\b2.exe .
)

b2 -q --without-python --toolset=msvc-14.1 address-model=64 variant=release link=shared runtime-link=shared debug-symbols=on encryption=on logging=on resolve-countries=off dht=on character-set=unicode boost-link=shared -sBOOST_ROOT="..\boost" include="..\install_msvc64\base\include" library-path="..\install_msvc64\base\lib" --prefix="..\install_msvc64\base" cxxflags="-O1 -Gy -Gw -GL" define=BOOST_ASIO_DISABLE_CONNECTEX linkflags="/NOLOGO /DYNAMICBASE /NXCOMPAT /LTCG /OPT:REF /OPT:ICF /MANIFEST:EMBED /INCREMENTAL:NO" --hash -j %NUMBER_OF_PROCESSORS%
b2 -q --without-python --toolset=msvc-14.1 address-model=64 variant=release link=shared runtime-link=shared debug-symbols=on encryption=on logging=on resolve-countries=off dht=on character-set=unicode boost-link=shared -sBOOST_ROOT="..\boost" include="..\install_msvc64\base\include" library-path="..\install_msvc64\base\lib" --prefix="..\install_msvc64\base" cxxflags="-O1 -Gy -Gw -GL" define=BOOST_ASIO_DISABLE_CONNECTEX linkflags="/NOLOGO /DYNAMICBASE /NXCOMPAT /LTCG /OPT:REF /OPT:ICF /MANIFEST:EMBED /INCREMENTAL:NO" --hash -j %NUMBER_OF_PROCESSORS% install

popd

pause