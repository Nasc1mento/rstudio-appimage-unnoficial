app_version="2026.01.1-403"
appimage_tool_version="1.9.1"
wget -O rstudio.deb "https://download1.rstudio.org/electron/jammy/amd64/rstudio-${app_version}-amd64.deb" 
ar x rstudio.deb
tar -xf data.tar.xz -C RStudio.AppDir
ln -s /usr/lib/rstudio/rstudio RStudio.AppDir

wget -O appimagetool "https://github.com/AppImage/appimagetool/releases/download/${appimage_tool_version}/appimagetool-x86_64.AppImage"
chmod +x appimagetool

ARCH=x86_64 ./appimagetool RStudio.AppDir