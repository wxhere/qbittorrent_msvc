xcopy /y build-qbittorrent-qt5_9_6-Release\src\release\qbittorrent.exe install_msvc64\app\
xcopy /y install_msvc64\base\lib\torrent.dll install_msvc64\app\
xcopy /y install_msvc64\base\lib\boost_system-vc141-mt-x64-1_67.dll install_msvc64\app\
xcopy /y install_msvc64\qt5\bin\Qt5Widgets.dll install_msvc64\app\
xcopy /y install_msvc64\qt5\bin\Qt5WinExtras.dll install_msvc64\app\
xcopy /y install_msvc64\qt5\bin\Qt5Gui.dll install_msvc64\app\
xcopy /y install_msvc64\qt5\bin\Qt5Network.dll install_msvc64\app\
xcopy /y install_msvc64\qt5\bin\Qt5Xml.dll install_msvc64\app\
xcopy /y install_msvc64\qt5\bin\Qt5Core.dll install_msvc64\app\

pause