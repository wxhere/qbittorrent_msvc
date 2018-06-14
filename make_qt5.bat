rem removed qtwebengine, qt3d, qtlocation, qtvirtualkeyboard from source

pushd qt5

rem call configure -prefix ..\install_msvc64\qt5 -I ..\install_msvc64\base\include -L ..\install_msvc64\base\lib -platform win32-msvc -release -opensource -confirm-license -strip -no-shared -static -static-runtime -ltcg -make libs -make tools -nomake examples -no-compile-examples -no-dbus -no-qml-debug -no-icu -system-zlib -openssl-linked -no-gtk -no-opengl -no-opengles3 -no-angle -no-sql-sqlite -no-sql-odbc -no-sqlite -skip qt3d -skip qtactiveqt -skip qtandroidextras -skip qtcanvas3d -skip qtcharts -skip qtconnectivity -skip qtdatavis3d -skip qtdoc -skip qtgamepad -skip qtgraphicaleffects -skip qtimageformats -skip qtlocation -skip qtmacextras -skip qtmultimedia -skip qtnetworkauth -skip qtpurchasing -skip qtquickcontrols -skip qtquickcontrols2 -skip qtremoteobjects -skip qtscript -skip qtscxml -skip qtsensors -skip qtserialbus -skip qtserialport -skip qtspeech -skip qtvirtualkeyboard -skip qtwayland -skip qtwebchannel -skip qtwebengine -skip qtwebsockets -skip qtwebview -skip qtx11extras -skip qtxmlpatterns ZLIB_LIBS="-lzlib" OPENSSL_LIBS="-llibeay32 -lssleay32"

call configure -prefix ..\install_msvc64\qt5 -platform win32-msvc -release -opensource -confirm-license -strip -shared -ltcg -make libs -make tools -nomake tests -nomake examples -no-compile-examples -no-dbus -no-qml-debug -no-icu -no-gtk -no-opengl -no-opengles3 -no-angle -no-sql-sqlite -no-sql-odbc -no-sqlite -skip qt3d -skip qtactiveqt -skip qtandroidextras -skip qtcanvas3d -skip qtcharts -skip qtconnectivity -skip qtdatavis3d -skip qtdoc -skip qtgamepad -skip qtgraphicaleffects -skip qtimageformats -skip qtlocation -skip qtmacextras -skip qtmultimedia -skip qtnetworkauth -skip qtpurchasing -skip qtquickcontrols -skip qtquickcontrols2 -skip qtremoteobjects -skip qtscript -skip qtscxml -skip qtsensors -skip qtserialbus -skip qtserialport -skip qtspeech -skip qtvirtualkeyboard -skip qtwayland -skip qtwebchannel -skip qtwebengine -skip qtwebsockets -skip qtwebview -skip qtx11extras -skip qtxmlpatterns

jom -j %NUMBER_OF_PROCESSORS%

jom -j %NUMBER_OF_PROCESSORS% install

popd

pause