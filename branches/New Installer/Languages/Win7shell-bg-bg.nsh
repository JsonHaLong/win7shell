;###########################################################################################

; Lang:				Bulgarian
; LangID			1026
; Last udpdated:	04.11.2009
; Author:			¦•••SHERIFA•••¦		
; Email:			Secret

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
	LangString W7S_Language_Title ${LANG_BULGARIAN} "Език на инсталатора"
	LangString W7S_Un_Language_Title ${LANG_BULGARIAN} "Език на деинсталатора"	
	LangString W7S_Language_Text ${LANG_BULGARIAN} "Моля, изберете език:"

; First Page of Installer
	LangString W7S_Welcome_Title ${LANG_BULGARIAN} "Добре дошли в съветника за инсталация на $(^NameDA) плъгина"
	LangString W7S_Welcome_Text ${LANG_BULGARIAN} "Съветникът ще Ви помогне при инсталирането на $(^NameDA) плъгина.$\r$\n$\r$\nПрепоръчително е да затворите Winamp преди стартирането на инсталатора. Това ще позволи да се обновят нужните Winamp файлове.$\n$\nТрябва Ви Windows 7, за да продължите напред!$\r$\n$\r$\n$_CLICK"

; Installer Header	
	LangString W7S_Caption ${LANG_BULGARIAN} "${W7S_PLUGIN_DESC} v${W7S_VERSION} инсталатор"		
	LangString W7S_Branding ${LANG_BULGARIAN} "${W7S_PLUGIN_DESC} v${W7S_VERSION}"			
	
; Installation type	
	LangString W7S_Full ${LANG_BULGARIAN} "Всичко"
	LangString W7S_Minimal ${LANG_BULGARIAN} "Минимум"
	
; Installer sections
	LangString W7S_PluginFile ${LANG_BULGARIAN} "${W7S_PLUGIN_DESC} плъгин"
	LangString W7S_Language ${LANG_BULGARIAN} "български езиков файл"	

	
; Installer sections descriptions	
	LangString W7S_Desc_PluginFile ${LANG_BULGARIAN} "Процес на инсталиране на ${W7S_PLUGIN_DESC} плъгин."
	LangString W7S_Desc_Language ${LANG_BULGARIAN} "Това ще инсталира български езиков файл за ${W7S_PLUGIN_DESC} плъгина."
	
; Finish Page	
	LangString W7S_FinishPage_1 ${LANG_BULGARIAN} "${W7S_PLUGIN_DESC} v${W7S_VERSION} инсталацията на плъгина приключи"
	LangString W7S_FinishPage_2 ${LANG_BULGARIAN} "Съветникът за инсталация приключи инсталирането на ${W7S_PLUGIN_DESC} v${W7S_VERSION} плъгина. Сега можете да започнете да боравите  с ${W7S_PLUGIN_DESC} плъгина след стартирането на Winamp."
;	LangString W7S_FinishPage_3 ${LANG_BULGARIAN} "If you like ${W7S_PLUGIN_DESC} and would like to help future development of the product please donate to the project."
	LangString W7S_FinishPage_4 ${LANG_BULGARIAN} "Какво искате да правите сега?"
	LangString W7S_FinishPage_5 ${LANG_BULGARIAN} "Иди на страницата на плъгина"
	LangString W7S_FinishPage_6 ${LANG_BULGARIAN} "Отвори Winamp"
	LangString W7S_FinishPage_7 ${LANG_BULGARIAN} "Край"
	
; First Page of Uninstaller
	LangString W7S_Un_Welcome_Title ${LANG_BULGARIAN} "Добре дошли в съветника за деинсталация на $(^NameDA) плъгина"
	LangString W7S_Un_Welcome_Text ${LANG_BULGARIAN} "Съветникът ще Ви помогне при деинсталирането на $(^NameDA) плъгина.$\r$\n$\r$\nПреди стартирането му се уверете, че се затворили Winamp.$\r$\n$\r$\n$_CLICK"

; Installation
	LangString W7S_Account ${LANG_BULGARIAN} "Мулти-потреб. настройки"
	LangString W7S_No_Account ${LANG_BULGARIAN} "Няма Мулти-потреб. настройки"
	LangString W7S_Winamp_Path ${LANG_BULGARIAN} "Въведете пътеката до конфигурационният Winamp файл..."
	LangString W7S_Win7_Warning ${LANG_BULGARIAN} "Вие не сте с Windows 7. Този плъгин изисква ЗАДЪЛЖИТЕЛНО Windows 7, за да работи коректно.$\r$\nИскате ли да го инсталирате независимо от това?"
	
; Close all instances of Winamp
	LangString W7S_Running_Winamp ${LANG_BULGARIAN} "Winamp е стартиран!"
	LangString W7S_Closing_Winamp ${LANG_BULGARIAN} "        Затваряне на Winamp (winamp.exe)..."
	LangString W7S_No_Winamp ${LANG_BULGARIAN} "Яко. Winamp не е стартира..."
	LangString W7S_No_More_Winamp ${LANG_BULGARIAN} "        Яко. Winamp е затворен..."  
	LangString W7S_Check_Winamp ${LANG_BULGARIAN} "Проверка дали Winamp е стартиран..."
	LangString W7S_Close_Winamp  ${LANG_BULGARIAN} "Преди да продължите, затворете всички инстанции на Winamp.$\r$\nСигурни ли сте, че искате да затворите Winamp (препоръчително)?"	