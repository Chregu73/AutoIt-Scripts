; Pfade definieren (passen Sie diese Ordner an)
Local $ordner_links = "C:\Users\Chregu\Downloads"
Local $ordner_rechts = "E:\Work\Projekte\"
Local $titel_links = "Downloads" ; Muss dem tatsächlichen Ordnernamen entsprechen
Local $titel_rechts = "Projekte" ; Muss dem tatsächlichen Ordnernamen entsprechen

; Explorer-Fenster (Linke Seite) öffnen
; Der Explorer wird über Run gestartet, was besser ist als Send() für das Öffnen mit Pfad.

Run("explorer.exe " & $ordner_links)
WinWait($titel_links, "", 5)
WinActivate($titel_links)
Sleep(500)
Send("#{LEFT}")

Run("explorer.exe " & $ordner_rechts)
WinWait($titel_rechts, "", 5)
WinActivate($titel_rechts)
Sleep(500)
Send("#{RIGHT}")

