# Installation und erster Test

1. In Home Assistant ein Backup erstellen.
2. **Einstellungen → Apps → App installieren → ⋮ → Repositories**: `https://github.com/joergzschimmer/ha-fugleramme` hinzufügen.
3. **Fugleramme (Test)** auswählen und installieren. Home Assistant baut einen lokalen Container auf Basis von `ghcr.io/arnegiacomo/fugleramme:0.30.0`.
4. App manuell starten, dann unter **Protokoll** auf Fehler prüfen.
5. `http://<HA-IP>:8188/` im Browser öffnen; die Einstellungen sind unter `http://<HA-IP>:8188/admin`.
6. In der Administration **BirdWeather** wählen und eine **öffentliche Station-ID** auswählen; erst mit echten Test-Erkennungen entsteht eine Collage.

## Hinweise

- **Experimentell:** Installationsentwurf, noch nicht auf Raspberry Pi 5 / Home Assistant OS ausgeführt.
- Die App öffnet standardmäßig einen ungeschützten Admin-Endpunkt auf Port 8188. **Nur im vertrauenswürdigen LAN**, keine Internetfreigabe oder externe Portweiterleitung. Vor dauerhaftem Einsatz ein Admin-Passwort einrichten und Zugriff absichern.
- BirdWeather liefert ausschließlich **Testdaten** anderer Stationen. Später werden BirdNET-Go und zwei lokale Mikrofone genutzt.
- Der externe Port 8188 kann bei Bedarf in den Netzwerk-Einstellungen geändert werden.
- Die E1002-Wetterdisplay-Firmware bleibt unverändert.

## Ausgabe auf externe ePaper-Displays (ab 0.30.0)

Unter **Frame** die Option **External e-ink panel** aktivieren und unter **External panel size** den Wert **7.3\" (800 × 480)** wählen. Die auf sechs Spectra-6-Farben reduzierte Bilddatei ist danach unter `http://<HA-IP>:8188/frame.png` erreichbar. Der E1002 benötigt dafür später eine eigene ESPHome-Anbindung; Fugleramme alleine verändert das Display nicht.

## Rückbau

App stoppen und deinstallieren; danach gegebenenfalls das GitHub-Repository aus dem Home-Assistant-App-Store entfernen. Andere Apps und die E1002-Wetteranzeige werden nicht geändert.

Quellen:
- https://arnegiacomo.dev/fugleramme/container/
- https://contributors.home-assistant.io/apps/guides/repository/
- https://contributors.home-assistant.io/apps/reference/configuration/
