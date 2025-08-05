@echo off
REM Dieses Skript lädt die aktuelle Kamera-Konfigurationsdatei vom Server
REM und speichert sie lokal im OpenSpace-Asset-Verzeichnis.

echo 🌐 Lade Videos von allskykamera.space ...

REM Videos herunterladen
curl -s -o data\assets\ask001.mp4 https://allskykamera.space/imageProxy.php?cam=ASK001&type=video&file=last.mp4
curl -s -o data\assets\ask002.mp4 https://allskykamera.space/imageProxy.php?cam=ASK002&type=video&file=last.mp4
curl -s -o data\assets\ask005.mp4 https://allskykamera.space/imageProxy.php?cam=ASK005&type=video&file=last.mp4

IF EXIST data\assets\ask001.mp4 (
    echo ✅ Download erfolgreich: data\assets\ask001.mp4 wurde aktualisiert.
) ELSE (
    echo ❌ Fehler: Datei konnte nicht heruntergeladen werden.
)
IF EXIST data\assets\ask002.mp4 (
    echo ✅ Download erfolgreich: data\assets\ask002.mp4 wurde aktualisiert.
) ELSE (
    echo ❌ Fehler: Datei konnte nicht heruntergeladen werden.
)
IF EXIST data\assets\ask005.mp4 (
    echo ✅ Download erfolgreich: data\assets\ask005.mp4 wurde aktualisiert.
) ELSE (
    echo ❌ Fehler: Datei konnte nicht heruntergeladen werden.
)

pause
