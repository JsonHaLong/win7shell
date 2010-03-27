;###########################################################################################

; Lang:				English
; LangID			1058
; Last udpdated:	26.09.2009
; Author:			Magyari Attila			
; Email:			atti86@gmail.com

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
	LangString W7S_Language_Title ${LANG_UKRAINIAN} "Installer language"
	LangString W7S_Un_Language_Title ${LANG_UKRAINIAN} "Uninstaller language"	
	LangString W7S_Language_Text ${LANG_UKRAINIAN} "Please select a language:"

; First Page of Installer
	LangString W7S_Welcome_Title ${LANG_UKRAINIAN} "Welcome to the $(^NameDA) plugin setup wizard"
	LangString W7S_Welcome_Text ${LANG_UKRAINIAN} "This wizard will guide you through the installation of $(^NameDA) plugin.$\r$\n$\r$\nIt is recommended that you close Winamp before starting Setup. This will make it possible to update all relevant Winamp files.$\n$\nYou need Windows 7 to work!$\r$\n$\r$\n$_CLICK"

; Installer Header	
	LangString W7S_Caption ${LANG_UKRAINIAN} "${W7S_PLUGIN_DESC} v${W7S_VERSION} plugin setup"		
	LangString W7S_Branding ${LANG_UKRAINIAN} "${W7S_PLUGIN_DESC} v${W7S_VERSION}"			
	
; Installation type	
	LangString W7S_Full ${LANG_UKRAINIAN} "Full"
	LangString W7S_Minimal ${LANG_UKRAINIAN} "Minimal"
	
; Installer sections
	LangString W7S_PluginFile ${LANG_UKRAINIAN} "${W7S_PLUGIN_DESC} plugin"
	LangString W7S_Language ${LANG_UKRAINIAN} "Ukrainian language file"
	
; Installer sections descriptions	
	LangString W7S_Desc_PluginFile ${LANG_UKRAINIAN} "This will install the ${W7S_PLUGIN_DESC} plugin file."
	LangString W7S_Desc_Language ${LANG_UKRAINIAN} "This will install the Ukrainian language file for ${W7S_PLUGIN_DESC} plugin."
	
	
; Finish Page	
	LangString W7S_FinishPage_1 ${LANG_UKRAINIAN} "${W7S_PLUGIN_DESC} v${W7S_VERSION} plugin installation finished"
	LangString W7S_FinishPage_2 ${LANG_UKRAINIAN} "The setup wizard has finished installing ${W7S_PLUGIN_DESC} v${W7S_VERSION} plugin. You can now start using ${W7S_PLUGIN_DESC} plugin in Winamp."
;	LangString W7S_FinishPage_3 ${LANG_UKRAINIAN} "If you like ${W7S_PLUGIN_DESC} and would like to help future development of the product please donate to the project."
	LangString W7S_FinishPage_4 ${LANG_UKRAINIAN} "What do you want to do now?"
	LangString W7S_FinishPage_5 ${LANG_UKRAINIAN} "Go to the plugin homepage"
	LangString W7S_FinishPage_6 ${LANG_UKRAINIAN} "Open Winamp"
	LangString W7S_FinishPage_7 ${LANG_UKRAINIAN} "Finish"
	
; First Page of Uninstaller
	LangString W7S_Un_Welcome_Title ${LANG_UKRAINIAN} "Welcome to the $(^NameDA) plugin uninstall wizard"
	LangString W7S_Un_Welcome_Text ${LANG_UKRAINIAN} "This wizard will guide you through the uninstallation of $(^NameDA) plugin.$\r$\n$\r$\nBefore starting the uninstallation, make sure Winamp is not running.$\r$\n$\r$\n$_CLICK"

; Installation
	LangString W7S_Account ${LANG_UKRAINIAN} "Multi-user settings"
	LangString W7S_No_Account ${LANG_UKRAINIAN} "No Multi-user settings"
	LangString W7S_Winamp_Path ${LANG_UKRAINIAN} "Specifying path to Winamp configuration file..."
	LangString W7S_Win7_Warning ${LANG_UKRAINIAN} "You are not running Windows 7. This plugin need Windows 7 to run properly.$\r$\nWould you like to install it anyway?"
	
; Close all instances of Winamp
	LangString W7S_Running_Winamp ${LANG_UKRAINIAN} "Winamp is running!"
	LangString W7S_Closing_Winamp ${LANG_UKRAINIAN} "        Closing Winamp (winamp.exe)..."
	LangString W7S_No_Winamp ${LANG_UKRAINIAN} "OK. Winamp is not running..."
	LangString W7S_No_More_Winamp ${LANG_UKRAINIAN} "        OK. Winamp is closed..."  
	LangString W7S_Check_Winamp ${LANG_UKRAINIAN} "Checking if Winamp is running..."
	LangString W7S_Close_Winamp  ${LANG_UKRAINIAN} "Before continue, close all instances of Winamp.$\r$\nAre you sure you want to close Winamp (recommended)?"	