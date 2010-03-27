;###########################################################################################

; Lang:				German
; LangID			1031
; Last udpdated:		04.10.2009
; Author:			keigel2001
; Email:			keigel2001@tv4user.de

; Notes:
; Use ';' or '#' for comments
; Strings must be in double quotes.
; Only edit the strings in quotes:
; Make sure there's no trailing spaces at ends of lines
; To use double quote inside string - '$\'
; To force new line  - '$\r$\n'
; To insert tabulation  - '$\t'

;###########################################################################################

; Language selection
	LangString W7S_Language_Title ${LANG_GERMAN} "Sprache des Installationsassistent"
	LangString W7S_Un_Language_Title ${LANG_GERMAN} "Sprache des Deinstallationsassistent"	
	LangString W7S_Language_Text ${LANG_GERMAN} "Bitte wählen Sie die Sprache aus:"

; First Page of Installer
	LangString W7S_Welcome_Title ${LANG_GERMAN} "Willkommen zum $(^NameDA) Plug-in Installationsassistent"
	LangString W7S_Welcome_Text ${LANG_GERMAN} "Dieser Installationsassistent wird sie durch die Installation von $(^NameDA) Plug-in führen.$\r$\n$\r$\nEs wird empfohlen, Winamp vor dem Installationsstart zu schließen, damit alle relevanten Winamp-Dateien aktualisiert werden können.$\n$\nSie benötigen Windows 7, damit das Plug-in funktioniert!$\r$\n$\r$\n$_CLICK"

; Installer Header	
	LangString W7S_Caption ${LANG_GERMAN} "${W7S_PLUGIN_DESC} v${W7S_VERSION} Plug-in Setup"		
	LangString W7S_Branding ${LANG_GERMAN} "${W7S_PLUGIN_DESC} v${W7S_VERSION}"			
	
; Installation type	
	LangString W7S_Full ${LANG_GERMAN} "Voll"
	LangString W7S_Minimal ${LANG_GERMAN} "Minimal"
	
; Installer sections
	LangString W7S_PluginFile ${LANG_GERMAN} "${W7S_PLUGIN_DESC} plugin"
	LangString W7S_Language ${LANG_GERMAN} "Deutsche Sprachdatei"
	
; Installer sections descriptions	
	LangString W7S_Desc_PluginFile ${LANG_GERMAN} "Dies wird die ${W7S_PLUGIN_DESC} Plug-in Datei installieren."
	LangString W7S_Desc_Language ${LANG_GERMAN} "Dies wird die Deutsche Sprachdatei für das ${W7S_PLUGIN_DESC} Plug-in installieren."
	
; Finish Page	
	LangString W7S_FinishPage_1 ${LANG_GERMAN} "${W7S_PLUGIN_DESC} v${W7S_VERSION} Plug-in Installation abgeschlossen"
	LangString W7S_FinishPage_2 ${LANG_GERMAN} "Der Installationsassistent hat die Installation des ${W7S_PLUGIN_DESC} v${W7S_VERSION} Plug-in erfolgreich abgeschlossen. Sie können jetzt das ${W7S_PLUGIN_DESC} Plug-in in Winamp verwenden."
;	LangString W7S_FinishPage_3 ${LANG_GERMAN} "Wenn Sie ${W7S_PLUGIN_DESC} mögen und bei zukünftigen Entwicklungen des Produkts helfen wollen, spenden Sie bitte."
	LangString W7S_FinishPage_4 ${LANG_GERMAN} "Was möchten sie jetzt tun?"
	LangString W7S_FinishPage_5 ${LANG_GERMAN} "Die Projekt-Homepage öffnen"
	LangString W7S_FinishPage_6 ${LANG_GERMAN} "Winamp öffnen"
	LangString W7S_FinishPage_7 ${LANG_GERMAN} "Beenden"
	
; First Page of Uninstaller
	LangString W7S_Un_Welcome_Title ${LANG_GERMAN} "Willkommen zum $(^NameDA) Plug-in Deinstallationsassistent"
	LangString W7S_Un_Welcome_Text ${LANG_GERMAN} "Dieser Deinstallationsassistent wird sie durch die Deinstallation von $(^NameDA) Plug-in führen.$\r$\n$\r$\nVergewissern Sie sich, dass Winamp nicht läuft, bevor sie die Deinstallation starten.$\r$\n$\r$\n$_CLICK"

; Installation
	LangString W7S_Account ${LANG_GERMAN} "Multi-User Einstellungen"
	LangString W7S_No_Account ${LANG_GERMAN} "Keine Multi-User Einstellungen"
	LangString W7S_Winamp_Path ${LANG_GERMAN} "Bestimme Dateipfad zur Winamp Konfigurationsdatei..."
	LangString W7S_Win7_Warning ${LANG_GERMAN} "Sie haben kein Windows 7. Dieses Plug-in benötigt Windows 7 einwandfrei zu funktionieren.$\r$\nMöchten Sie es trotzdem installieren?"
	
; Close all instances of Winamp
	LangString W7S_Running_Winamp ${LANG_GERMAN} "Winamp läuft gerade!"
	LangString W7S_Closing_Winamp ${LANG_GERMAN} "        Schließe Winamp (winamp.exe)..."
	LangString W7S_No_Winamp ${LANG_GERMAN} "OK. Winamp läuft gerade nicht..."
	LangString W7S_No_More_Winamp ${LANG_GERMAN} "        OK. Winamp ist geschlossen..."  
	LangString W7S_Check_Winamp ${LANG_GERMAN} "Prüfe, ob Winamp gerade läuft..."
	LangString W7S_Close_Winamp  ${LANG_GERMAN} "Vor dem Fortsetzen, schließen Sie bitte alle Instanzen von Winamp.$\r$\nSind sie sicher, dass sie Winamp schließen möchten (empfohlen)?"	