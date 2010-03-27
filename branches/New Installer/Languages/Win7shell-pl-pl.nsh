;###########################################################################################

; Lang:				Polish
; LangID			1045
; Last udpdated:	05.10.2009
; Author:			Paweł Porwisz
; Email:			pawelporwisz@gmail.com

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
	LangString W7S_Language_Title ${LANG_POLISH} "Język instalatora"
	LangString W7S_Un_Language_Title ${LANG_POLISH} "Język deinstalatora"	
	LangString W7S_Language_Text ${LANG_POLISH} "Proszę wybrać język:"
 
; First Page of Installer
	LangString W7S_Welcome_Title ${LANG_POLISH} "Witam w kreatorze instalacji wtyczki $(^NameDA)"
	LangString W7S_Welcome_Text ${LANG_POLISH} "Ten kreator pomoże Ci zainstalować wtyczkę $(^NameDA).$\r$\n$\r$\nPrzed rozpoczęciem instalacji zalecane jest zamknięcie Winampa. Pozwoli to na uaktualnienie niezbędnych plików programu Winamp.$\n$\nDo prawidłowej pracy tej wtyczki wymagany jest Windows 7!$\r$\n$\r$\n$_CLICK"

; Installer Header
	LangString W7S_Caption ${LANG_POLISH} "Instalacja wtyczki ${W7S_PLUGIN_DESC} v${W7S_VERSION}"		
	LangString W7S_Branding ${LANG_POLISH} "${W7S_PLUGIN_DESC} v${W7S_VERSION}"
	
; Installation type
	LangString W7S_Full ${LANG_POLISH} "Pełna"
	LangString W7S_Minimal ${LANG_POLISH} "Minimalna"
	
; Installer sections
	LangString W7S_PluginFile ${LANG_POLISH} "Wtyczka ${W7S_PLUGIN_DESC}"
	LangString W7S_Language ${LANG_POLISH} "Polski plik językowy"		
	
; Installer sections descriptions	
	LangString W7S_Desc_PluginFile ${LANG_POLISH} "Instalacja pliku wtyczki ${W7S_PLUGIN_DESC}."
	LangString W7S_Desc_Language ${LANG_POLISH} "Instalacja polskiego pliku językowego wtyczki ${W7S_PLUGIN_DESC}."
	
; Finish Page
	LangString W7S_FinishPage_1 ${LANG_POLISH} "Zakończono instalację wtyczki ${W7S_PLUGIN_DESC} v${W7S_VERSION}"
	LangString W7S_FinishPage_2 ${LANG_POLISH} "Kreator instalacji zakończył instalowanie wtyczki ${W7S_PLUGIN_DESC} v${W7S_VERSION}. Możesz zacząć używać wtyczki ${W7S_PLUGIN_DESC} w Winampie."
;	LangString W7S_FinishPage_3 ${LANG_POLISH} "Jeśli podoba ci się ${W7S_PLUGIN_DESC} i chcesz wspomóc dalszy rozwój projektu, wesprzyj nas dowolną kwotą."
	LangString W7S_FinishPage_4 ${LANG_POLISH} "Co chcesz teraz zrobić?"
	LangString W7S_FinishPage_5 ${LANG_POLISH} "Przejdź do strony domowej wtyczki"
	LangString W7S_FinishPage_6 ${LANG_POLISH} "Uruchom program Winamp"
	LangString W7S_FinishPage_7 ${LANG_POLISH} "Zakończ"

; First Page of Uninstaller
	LangString W7S_Un_Welcome_Title ${LANG_POLISH} "Witam w kreatorze dezinstalacji wtyczki $(^NameDA)"
	LangString W7S_Un_Welcome_Text ${LANG_POLISH} "Ten kreator pomoże Ci odinstalować wtyczkę $(^NameDA).$\r$\n$\r$\nPrzed rozpoczęciem dezinstalacji, upewnij się, że Winamp nie jest uruchomiony.$\r$\n$\r$\n$_CLICK"

; Installation
	LangString W7S_Account ${LANG_POLISH} "Konta wielu użytkowników"
	LangString W7S_No_Account ${LANG_POLISH} "Brak obsługi kont wielu użytkowników"
	LangString W7S_Winamp_Path ${LANG_POLISH} "Określanie ścieżki do pliku konfiguracyjnego Winampa..."
	LangString W7S_Win7_Warning ${LANG_POLISH} "Nie pracujesz w systemie Windows 7. Ta wtyczka do prawidłowej pracy wymaga systemu Windows 7.$\r$\nCzy chcesz ją zainstalować mimo to?"

; Close all instances of Winamp
	LangString W7S_Running_Winamp ${LANG_POLISH} "Winamp jest uruchomiony!"
	LangString W7S_Closing_Winamp ${LANG_POLISH} "        Zamykanie Winampa (winamp.exe)..."
	LangString W7S_No_Winamp ${LANG_POLISH} "OK. Winamp nie jest uruchomiony..."
	LangString W7S_No_More_Winamp ${LANG_POLISH} "        OK. Winamp został zamknięty..."  
	LangString W7S_Check_Winamp ${LANG_POLISH} "Sprawdzanie, czy Winamp jest uruchomiony..."
	LangString W7S_Close_Winamp  ${LANG_POLISH} "Przed kontynuacją, zamknij wszystkie instancje Winampa.$\r$\nCzy na pewno chcesz zamknąć Winampa (zalecane)?"	