@echo off
REM Dieses Skript lädt die aktuelle Kamera-Konfigurationsdatei vom Server
REM und speichert sie lokal im OpenSpace-Asset-Verzeichnis.

echo 🌐 Lade allsky_config.json von allskykamera.space ...

curl -s -o data\assets\allsky_config.json https://allskykamera.space/allsky_config.json

IF EXIST data\assets\allsky_config.json (
    echo ✅ Download erfolgreich: data\assets\allsky_config.json wurde aktualisiert.
) ELSE (
    echo ❌ Fehler: Datei konnte nicht heruntergeladen werden.
)

pause
