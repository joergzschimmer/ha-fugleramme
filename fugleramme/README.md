# Fugleramme – Home Assistant Test-App

Experimentelles Home-Assistant-OS-App-Paket für Fugleramme **0.29.0** auf Raspberry Pi 5 (ARM64).

- Läuft als separater Container; ändert **weder Home Assistant Core noch ESPHome/E1002**.
- Stellt den Webdienst lokal auf **Port 8188** bereit.
- Nutzt für den ersten Test eine öffentliche BirdWeather-Station; eigene Mikrofone sind nicht nötig.
- Ziel der späteren Installation ist die lokale Vogelbestimmung mit BirdNET-Go.
- Einstellungen und Cache bleiben im persistenten App-Verzeichnis `/data`.

**Status:** Nicht auf dem Ziel-Raspberry getestet. Vor Installation Home-Assistant-Backup anfertigen.

Siehe [DOCS.md](DOCS.md).
