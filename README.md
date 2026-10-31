# Vogelbilder: Fugleramme auf Home Assistant OS

Experimentelles App-Repository für unser Vogelbilder-Projekt. Installiert Fugleramme **0.29.0** als lokale App auf einem Raspberry Pi 5 mit Home Assistant OS. Die E1002-Wetteranzeige bleibt unangetastet.

## In Home Assistant einbinden

**Einstellungen → Apps → App installieren → ⋮ → Repositories**:  
`https://github.com/joergzschimmer/ha-fugleramme` hinzufügen.

Dann **Fugleramme (Test)** installieren. Anschließend nach Start im lokalen Browser `http://<HA-IP>:8188/` aufrufen.

**Achtung:** Der Prototyp ist auf dem Zielgerät nicht getestet. Unbedingt vorher Backup anlegen. Der Admin-Zugriff ist im Test noch nicht passwortgeschützt – App nur im vertrauenswürdigen LAN betreiben.

Siehe [Installationsanleitung](fugleramme/DOCS.md) und [Projekt Fugleramme](https://arnegiacomo.dev/fugleramme/).
