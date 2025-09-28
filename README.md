# AutoIt-Scripts
Sammlung von nützlichen [AutoIt](https://www.autoitscript.com/site/)-Scripts

## [Expl-Dppl.au3](Expl-Dppl.au3)

### 🚀 Automatischer Split-Screen-Explorer (AutoIt-Skript)

Dieses Skript automatisiert das Starten und präzise Ausrichten von zwei Windows Datei-Explorer-Fenstern in einer Split-Screen-Ansicht (50/50). Es ist ein effizientes Werkzeug, um Ihre Arbeitsprozesse zu beschleunigen, insbesondere beim Verschieben, Kopieren oder Vergleichen von Dateien zwischen festen Quell- und Zielordnern.

### 💡 Vorteile dieser Lösung

- Zuverlässige Positionierung: Nutzt die Windows Snap Assist-Funktion über Tastenkombinationen für pixelgenaue Ausrichtung.
- Keine Timing-Probleme: Verwendet WinWait und WinActivate zur intelligenten Steuerung der Fenster, was manuelle Wartezeiten minimiert und die Zuverlässigkeit erhöht.
- Fokus auf spezifische Ordner: Startet beide Explorer-Fenster sofort in den von Ihnen definierten Zielpfaden.

### ⚙️ Skript-Analyse

Die Stärke des Skripts liegt in der expliziten Aktivierung und Steuerung der Fenster über ihre Fenstertitel, was kritische Timing-Probleme bei der GUI-Automatisierung eliminiert.

| Befehl | Beispiel | Zweck |
| --- | --- | --- |
| `Run("explorer.exe " & $pfad)` | `Run("explorer.exe C:\...Downloads")` | Startet den Explorer und öffnet den gewünschten Ordner. |
| `WinWait($titel, "", 5)` | `WinWait("Downloads", "", 5)` | Wartet bis das Fenster mit dem korrekten Titel vollständig geladen ist. |
| `WinActivate($titel)` | `WinActivate("Projekte")` | Setzt den Fokus auf das spezifische Fenster. |
| `Send("#{LEFT}")` | `(Windows-Taste + Pfeil Links)` | Richtet das aktive Fenster auf der linken Hälfte aus. |

### 🛠️ Anpassung und Nutzung

Um das Skript zu verwenden, passen Sie die Pfade und Fenstertitel im Code an Ihre Umgebung an und kompilieren Sie die Datei anschließend zu einer ausführbaren .exe:

```
; Beispiel für die funktionierende Konfiguration:
Local $ordner_links = "C:\Users\Chregu\Downloads"
Local $ordner_rechts = "E:\Work\Projekte\"
Local $titel_links = "Downloads"
Local $titel_rechts = "Projekte"

; Startet das linke Fenster und positioniert es
Run("explorer.exe " & $ordner_links)
WinWait($titel_links, "", 5)
WinActivate($titel_links)
Sleep(500)
Send("#{LEFT}")

; Startet das rechte Fenster und positioniert es
Run("explorer.exe " & $ordner_rechts)
WinWait($titel_rechts, "", 5)
WinActivate($titel_rechts)
Sleep(500)
Send("#{RIGHT}")
```
Nachdem Sie die .au3-Datei kompiliert haben, können Sie die resultierende .exe-Datei in die Taskleiste ziehen, um Ihren automatisierten Split-Screen-Workflow per Mausklick zu starten.
