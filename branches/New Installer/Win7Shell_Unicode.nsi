;###########################################################################################
;
; Windows 7 Taskbar Information Installer         
; Copyright (c) 2009-2010 by Magyari Attila
; Copyright (c) 2009-2010 by Darren Owen aka DrO
; Installer script: Copyright (c) 2009-2010 by Paweł Porwisz aka Pepe                                   
;
;###########################################################################################

; Definitions
	!define W7S_VERSION "1.14"
	!define W7S_ALT_VERSION "1_14"
	!define W7S_REVISION "0"
	!define W7S_BUILD "0"
	!define W7S_PLUGIN "Win7 Taskbar"
	!define W7S_PLUGIN_DESC "Windows 7 Taskbar Integration"
	!define W7S_PLUGIN_NAME "gen_win7shell"	
	!define W7S_UNINSTALLER "Uninst_Win7Shell"
	
;	!define W7S_PAYPAL_LINK ""	
	!define W7S_WEB_PAGE "http://code.google.com/p/win7shell/"
	!define W7S_HELP_LINK "http://code.google.com/p/win7shell/w/list"
	!define W7S_COMPANY "Magyari Attila"
	!define W7S_AUTHOR "Magyari Attila"	
	!define /Date W7S_COPYRIGHT "Copyright (c) %Y"	
	

	
;###########################################################################################
; CONFIGURATION
;###########################################################################################

	Name "${W7S_PLUGIN_DESC} v${W7S_VERSION}"
	OutFile "${W7S_PLUGIN}_v${W7S_ALT_VERSION}.exe"		
	SetCompressor /SOLID lzma
	Caption $(W7S_Caption)
	BrandingText $(W7S_Branding)

	InstType $(W7S_Full)
	InstType $(W7S_Minimal)
	
;###########################################################################################
; DESTINATION FOLDER
;###########################################################################################

	InstallDir "$PROGRAMFILES\Winamp"
	InstallDirRegKey "HKLM" "Software\Microsoft\Windows\CurrentVersion\Uninstall\Winamp" "UninstallString"
	RequestExecutionLevel "admin"
	XPStyle "on"

;###########################################################################################
; HEADER FILES
;###########################################################################################

	!include "MUI2.nsh"
	!include "Sections.nsh"
	!include "nsDialogs.nsh"
	!include "WinVer.nsh"
	
;###########################################################################################
; INTERFACE SETTINGS 
;###########################################################################################

	!define MUI_LANGDLL_WINDOWTITLE $LANG_TITLE
	!define MUI_LANGDLL_INFO $(W7S_Language_Text)
	!define MUI_FINISHPAGE_TITLE_3LINES
	!define MUI_WELCOMEPAGE_TITLE_3LINES
	!define MUI_WELCOMEPAGE_TITLE $(W7S_Welcome_Title)
	!define MUI_WELCOMEPAGE_TEXT $(W7S_Welcome_Text)

	!define MUI_HEADERIMAGE_LEFT
	!define MUI_HEADERIMAGE
	!define MUI_HEADERIMAGE_BITMAP "Images\header.bmp"
	
	!define MUI_ABORTWARNING
	!define MUI_COMPONENTSPAGE_SMALLDESC
	!define MUI_ICON "Images\install.ico"
	!define MUI_COMPONENTSPAGE_CHECKBITMAP "${NSISDIR}\Contrib\Graphics\Checks\modern.bmp"
	!define MUI_WELCOMEFINISHPAGE_BITMAP "Images\welcome_finish.bmp"
	!define MUI_UNICON "Images\uninstall.ico"
	!define MUI_UNCOMPONENTSPAGE_CHECKBITMAP "${NSISDIR}\Contrib\Graphics\Checks\modern.bmp"
	!define MUI_UNWELCOMEFINISHPAGE_BITMAP "Images\welcome_finish.bmp"
	
; Installer pages	
	!insertmacro MUI_PAGE_WELCOME
	!insertmacro MUI_PAGE_LICENSE "Files\License\License.rtf"	
	!insertmacro MUI_PAGE_COMPONENTS
	!insertmacro MUI_PAGE_DIRECTORY
	!insertmacro MUI_PAGE_INSTFILES
	Page custom CreateFinishPage CheckFinishPage ""

; Uninstaller pages
	!define MUI_WELCOMEPAGE_TITLE_3LINES
	!define MUI_WELCOMEPAGE_TITLE $(W7S_Un_Welcome_Title)
	!define MUI_WELCOMEPAGE_TEXT $(W7S_Un_Welcome_Text)
	!insertmacro MUI_UNPAGE_WELCOME
	!insertmacro MUI_UNPAGE_CONFIRM	
	!insertmacro MUI_UNPAGE_INSTFILES
	!insertmacro MUI_UNPAGE_FINISH
	!define MUI_UNHEADERIMAGE
	!define MUI_UNHEADERIMAGE_BITMAP "Images\header.bmp"
	!define MUI_UNABORTWARNING
	!define MUI_UNCOMPONENTSPAGE_SMALLDESC	
	
;###########################################################################################
; INSTALLER  LANGUAGE
;###########################################################################################

	!define MUI_LANGDLL_ALLLANGUAGES
	!insertmacro MUI_RESERVEFILE_LANGDLL
	
; Language: English (1033) DEFAULT
	!insertmacro MUI_LANGUAGE "English" 		
	!include "Languages\Win7shell-en-us.nsh"
	
; Language: Czech (1029)
	!insertmacro MUI_LANGUAGE "Czech"			
	!include "Languages\Win7shell-cs-cz.nsh"
	
; Language: French (1036)	
	!insertmacro MUI_LANGUAGE "French"			
	!include "Languages\Win7shell-fr-fr.nsh"

; Language: German (1031)	
	!insertmacro MUI_LANGUAGE "German"			
	!include "Languages\Win7shell-de-de.nsh"

; Language: Polish (1045)
	!insertmacro MUI_LANGUAGE "Polish"			
	!include "Languages\Win7shell-pl-pl.nsh"	

; Language: Brazilian Portuguese (1046)
	!insertmacro MUI_LANGUAGE "PortugueseBR"		
	!include "Languages\Win7shell-pt-br.nsh"

; Language: Romanian (1048)	
	!insertmacro MUI_LANGUAGE "Romanian"		
	!include "Languages\Win7shell-ro-ro.nsh"

; Language: Russian (1049)	
	!insertmacro MUI_LANGUAGE "Russian"			
	!include "Languages\Win7shell-ru-ru.nsh"

; Language: Slovak (1051)	
	!insertmacro MUI_LANGUAGE "Slovak"			
	!include "Languages\Win7shell-sk-sk.nsh"

; Language: Slovenian (1060)
	!insertmacro MUI_LANGUAGE "Slovenian"			
	!include "Languages\Win7shell-sl-sl.nsh"
	
; Language: Spanish (1034)
	!insertmacro MUI_LANGUAGE "Spanish"			
	!include "Languages\Win7shell-es-us.nsh"

; Language: Swedish (1053)	
	!insertmacro MUI_LANGUAGE "Swedish"			
	!include "Languages\Win7shell-sv-se.nsh"

; Language: Turkish (1055)	
	!insertmacro MUI_LANGUAGE "Turkish"			
	!include "Languages\Win7shell-tr-tr.nsh"

; Language: Dutch (1043)	
	!insertmacro MUI_LANGUAGE "Dutch"			
	!include "Languages\Win7shell-nl-nl.nsh"
	
; Language: Italian (1040)	
	!insertmacro MUI_LANGUAGE "Italian"			
	!include "Languages\Win7shell-it-it.nsh"	
	
; Language: Greek (1032)	
	!insertmacro MUI_LANGUAGE "Greek"			
	!include "Languages\Win7shell-gr-gr.nsh"		

; Language: Ukrainian (1058)	
	!insertmacro MUI_LANGUAGE "Ukrainian"			
	!include "Languages\Win7shell-ua-ua.nsh"

; Language: Chinese Traditional (1028)	
	!insertmacro MUI_LANGUAGE "TradChinese"			
	!include "Languages\Win7shell-zh-HanT.nsh"

; Language: Chinese Simplified (2052)	
	!insertmacro MUI_LANGUAGE "SimpChinese"			
	!include "Languages\Win7shell-zh-HanS.nsh"	
	
; Language: Hungarian (1038)	
	!insertmacro MUI_LANGUAGE "Hungarian"			
	!include "Languages\Win7shell-hu-hu.nsh"	
	
; Language: Danish (1030)	
	!insertmacro MUI_LANGUAGE "Danish"			
	!include "Languages\Win7shell-da-dk.nsh"		
	
; Language: Bulgarian (1026)	
	!insertmacro MUI_LANGUAGE "Bulgarian"			
	!include "Languages\Win7shell-bg-bg.nsh"			
	
;###########################################################################################
; VERSION INFORMATION
;###########################################################################################

	VIProductVersion "${W7S_VERSION}.${W7S_REVISION}.${W7S_BUILD}"
	VIAddVersionKey "ProductName" "${W7S_PLUGIN}"
	VIAddVersionKey "ProductVersion" "${W7S_VERSION}"		
	VIAddVersionKey "Comments" "${W7S_PLUGIN} v${W7S_VERSION}, ${W7S_WEB_PAGE}"
	VIAddVersionKey "CompanyName" "${W7S_COMPANY}"
	VIAddVersionKey "LegalCopyright" "${W7S_COPYRIGHT}, ${W7S_AUTHOR}"
	VIAddVersionKey "FileDescription" "${W7S_PLUGIN_DESC} v${W7S_VERSION}"
	VIAddVersionKey "FileVersion" "${W7S_VERSION}"		

	
;###########################################################################################
; WINAMP INI PATH DETECTION
;###########################################################################################
	
	Var /Global WINAMP_INI_DIR
	
!macro SharedPath un
  
	Function ${un}GetWinampIniPath

		StrCpy $WINAMP_INI_DIR $INSTDIR
		
		IfFileExists "$INSTDIR\paths.ini" 0 Paths.ini_Not_Found
		
			ReadINIStr $0 "$INSTDIR\paths.ini" "Winamp" "inidir"
			StrCmp $0 "" Paths.ini_Empty
		
			StrCpy $2 $0 1
			IntOp $1 0 - 0
			StrCmp $2 "{"+1 No_Replace
			
			LoopBack:
				IntOp $1 $1 + 1
				StrCpy $2 $0 1 $1
				StrCmp $2 "}" CSID_Found LoopBack
				IntCmp $1 3 CSID_Found LoopBack No_Replace
					CSID_Found:
						StrCpy $3 $0 $1 1
						IntOp $1 $1 + 1
						StrCpy $2 $0 "" $1
						System::Call 'shell32::SHGetSpecialFolderPath(i $HWNDPARENT, t .r1, i $3, b 'false') i r0' ;Unicode
						;System::Call 'shell32::SHGetSpecialFolderPathA(i $HWNDPARENT, t .r1, i $3, b 'false') i r0' ;ANSI						
						StrCpy $0 "$1$2"
			No_Replace:
			StrCpy $WINAMP_INI_DIR $0
			DetailPrint "$(W7S_Account): $WINAMP_INI_DIR"
			Goto done
			
			Paths.ini_Empty:
				DetailPrint "$(W7S_No_Account): $WINAMP_INI_DIR"
				Goto done
		Paths.ini_Not_Found:
			DetailPrint "$(W7S_No_Account): $WINAMP_INI_DIR"
			Goto done
		done:
	
	FunctionEnd

!macroend

; Insert function as an installer and uninstaller function
	!insertmacro SharedPath ""
	!insertmacro SharedPath "un."

	
;###########################################################################################
; CLOSING ALL WINAMP INSTANCES
;###########################################################################################
	
!macro SharedWinamp un
	
	Function ${un}CloseWinamp

		Push $5
 
		FindWindow $5 "Winamp v1.x"
		IntCmp $5 0 NoWinamp
		DetailPrint "$(W7S_Running_Winamp)"
		MessageBox MB_YESNO|MB_ICONEXCLAMATION "$(W7S_Close_Winamp)" IDYES KillWinamp IDNO Running_NoKill
	
		KillWinamp:
			FindWindow $5 "Winamp v1.x"
			IntCmp $5 0 NoMoreWinampToKill
			DetailPrint "$(W7S_Closing_Winamp)"
			SendMessage $5 16 0 0
			Sleep 100
			Goto KillWinamp
	
		NoMoreWinampToKill:
			DetailPrint "$(W7S_No_More_Winamp)"
			Goto Running_NoKill
	
		NoWinamp:	
			DetailPrint "$(W7S_No_Winamp)"	
	
		Running_NoKill:	
  
		Pop $5
 
	FunctionEnd

!macroend

; Insert function as an installer and uninstaller function.
	!insertmacro SharedWinamp ""
	!insertmacro SharedWinamp "un."	
	
Function .onVerifyInstDir

	IfFileExists $INSTDIR\Winamp.exe Good
		Abort
	Good:

FunctionEnd


	ShowInstDetails "show"

;###########################################################################################
; INSTALLER  SECTIONS 
;###########################################################################################

Section "-Pre"

	DetailPrint "$(W7S_Winamp_Path)"
		Call GetWinampIniPath
		
	DetailPrint "$(W7S_Check_Winamp)"
		Call CloseWinamp
		Sleep 500	
	
SectionEnd

Section "!$(W7S_PluginFile)" "W7S_Sec_PluginFile"

	SectionIn 1 2 RO
	
	SetOutPath $INSTDIR\Plugins
		File "Files\Plugin\${W7S_PLUGIN_NAME}.dll"
 
SectionEnd


; Czech	
Section "$(W7S_Language)" "W7S_Sec_Language_Czech"

	${If} $Language == "1029"

		SectionIn 1
		SetOutPath $WINAMP_INI_DIR\Plugins
			File "Files\Languages\Czech\gen_win7shell.lng"
		
	${EndIf}			
	
SectionEnd
	
; French
Section "$(W7S_Language)" "W7S_Sec_Language_French"

	${If} $Language == "1036"

		SectionIn 1
		SetOutPath $WINAMP_INI_DIR\Plugins
			File "Files\Languages\French\gen_win7shell.lng"
			
	${EndIf}			
	
SectionEnd
	
; German
Section "$(W7S_Language)" "W7S_Sec_Language_German"

	${If} $Language == "1031"

		SectionIn 1
		SetOutPath $WINAMP_INI_DIR\Plugins
			File "Files\Languages\German\gen_win7shell.lng"
			
	${EndIf}			
	
SectionEnd
	
;Polish 
Section "$(W7S_Language)" "W7S_Sec_Language_Polish"

	${If} $Language == "1045"

		SectionIn 1
		SetOutPath $WINAMP_INI_DIR\Plugins
			File "Files\Languages\Polish\gen_win7shell.lng"
		
	${EndIf}			
	
SectionEnd
	
; Portuguese-BR
Section "$(W7S_Language)" "W7S_Sec_Language_PortugueseBR"

	${If} $Language == "1046"

		SectionIn 1
		SetOutPath $WINAMP_INI_DIR\Plugins
			File "Files\Languages\PortugueseBR\gen_win7shell.lng"
			
	${EndIf}			
	
SectionEnd
	
; Romanian
Section "$(W7S_Language)" "W7S_Sec_Language_Romanian"

	${If} $Language == "1048"

		SectionIn 1
		SetOutPath $WINAMP_INI_DIR\Plugins
			File "Files\Languages\Romanian\gen_win7shell.lng"
		
	${EndIf}			
	
SectionEnd
	
; Russian
Section "$(W7S_Language)" "W7S_Sec_Language_Russian"

	${If} $Language == "1049"

		SectionIn 1
		SetOutPath $WINAMP_INI_DIR\Plugins
			File "Files\Languages\Russian\gen_win7shell.lng"
			
	${EndIf}			
	
SectionEnd
	
; Slovak
Section "$(W7S_Language)" "W7S_Sec_Language_Slovak"

	${If} $Language == "1051"

		SectionIn 1
		SetOutPath $WINAMP_INI_DIR\Plugins
			File "Files\Languages\Slovak\gen_win7shell.lng"
			
	${EndIf}			
	
SectionEnd
	
; Slovenian
Section "$(W7S_Language)" "W7S_Sec_Language_Slovenian"

	${If} $Language == "1060"

		SectionIn 1
		SetOutPath $WINAMP_INI_DIR\Plugins
			File "Files\Languages\Slovenian\gen_win7shell.lng"
			
	${EndIf}			
	
SectionEnd
	
; Spanish
Section "$(W7S_Language)" "W7S_Sec_Language_Spanish"

	${If} $Language == "1034"

		SectionIn 1
		SetOutPath $WINAMP_INI_DIR\Plugins
			File "Files\Languages\Spanish\gen_win7shell.lng"
			
	${EndIf}			
	
SectionEnd
	
; Swedish	
Section "$(W7S_Language)" "W7S_Sec_Language_Swedish"

	${If} $Language == "1053"

		SectionIn 1
		SetOutPath $WINAMP_INI_DIR\Plugins
			File "Files\Languages\Swedish\gen_win7shell.lng"
			
	${EndIf}			
	
SectionEnd
	
; Turkish
Section "$(W7S_Language)" "W7S_Sec_Language_Turkish"

	${If} $Language == "1055"

		SectionIn 1
		SetOutPath $WINAMP_INI_DIR\Plugins
			File "Files\Languages\Turkish\gen_win7shell.lng"
			
	${EndIf}			
	
SectionEnd	

; Dutch
Section "$(W7S_Language)" "W7S_Sec_Language_Dutch"

	${If} $Language == "1043"

		SectionIn 1
		SetOutPath $WINAMP_INI_DIR\Plugins
			File "Files\Languages\Dutch\gen_win7shell.lng"
			
	${EndIf}			
	
SectionEnd	

; Italian
Section "$(W7S_Language)" "W7S_Sec_Language_Italian"

	${If} $Language == "1040"

		SectionIn 1
		SetOutPath $WINAMP_INI_DIR\Plugins
			File "Files\Languages\Italian\gen_win7shell.lng"
			
	${EndIf}			
	
SectionEnd	

; Greek
Section "$(W7S_Language)" "W7S_Sec_Language_Greek"

	${If} $Language == "1032"

		SectionIn 1
		SetOutPath $WINAMP_INI_DIR\Plugins
			File "Files\Languages\Greek\gen_win7shell.lng"
			
	${EndIf}			
	
SectionEnd	

; Ukrainian
Section "$(W7S_Language)" "W7S_Sec_Language_Ukrainian"

	${If} $Language == "1058"

		SectionIn 1
		SetOutPath $WINAMP_INI_DIR\Plugins
			File "Files\Languages\Ukrainian\gen_win7shell.lng"
			
	${EndIf}			
	
SectionEnd	

; Chinese Traditional
Section "$(W7S_Language)" "W7S_Sec_Language_TradChinese"

	${If} $Language == "1028"

		SectionIn 1
		SetOutPath $WINAMP_INI_DIR\Plugins
			File "Files\Languages\TradChinese\gen_win7shell.lng"
			
	${EndIf}			
	
SectionEnd	

; Chinese Simplified
Section "$(W7S_Language)" "W7S_Sec_Language_SimpChinese"

	${If} $Language == "2052"

		SectionIn 1
		SetOutPath $WINAMP_INI_DIR\Plugins
			File "Files\Languages\SimpChinese\gen_win7shell.lng"
			
	${EndIf}			
	
SectionEnd	

; Hungarian
Section "$(W7S_Language)" "W7S_Sec_Language_Hungarian"

	${If} $Language == "1038"

		SectionIn 1
		SetOutPath $WINAMP_INI_DIR\Plugins
			File "Files\Languages\Hungarian\gen_win7shell.lng"
			
	${EndIf}			
	
SectionEnd	

; Danish
Section "$(W7S_Language)" "W7S_Sec_Language_Danish"

	${If} $Language == "1030"

		SectionIn 1
		SetOutPath $WINAMP_INI_DIR\Plugins
			File "Files\Languages\Danish\gen_win7shell.lng"
			
	${EndIf}			
	
SectionEnd	

; Bulgarian
Section "$(W7S_Language)" "W7S_Sec_Language_Bulgarian"

	${If} $Language == "1026"

		SectionIn 1
		SetOutPath $WINAMP_INI_DIR\Plugins
			File "Files\Languages\Bulgarian\gen_win7shell.lng"
			
	${EndIf}			
	
SectionEnd	

Section "-Leave"

; Registry entries
	WriteRegStr "HKLM" "Software\Microsoft\Windows\CurrentVersion\Uninstall\${W7S_PLUGIN}" "UninstallString" '"$INSTDIR\${W7S_UNINSTALLER}.exe"'
	WriteRegStr "HKLM" "Software\Microsoft\Windows\CurrentVersion\Uninstall\${W7S_PLUGIN}" "InstallLocation" "$INSTDIR"
	WriteRegStr "HKLM" "Software\Microsoft\Windows\CurrentVersion\Uninstall\${W7S_PLUGIN}" "DisplayName" "${W7S_PLUGIN} v${W7S_VERSION}"
	WriteRegStr "HKLM" "Software\Microsoft\Windows\CurrentVersion\Uninstall\${W7S_PLUGIN}" "DisplayIcon" "$INSTDIR\Winamp.exe,0"
	WriteRegStr "HKLM" "Software\Microsoft\Windows\CurrentVersion\Uninstall\${W7S_PLUGIN}" "DisplayVersion" "${W7S_VERSION}"
	WriteRegStr "HKLM" "Software\Microsoft\Windows\CurrentVersion\Uninstall\${W7S_PLUGIN}" "URLInfoAbout" "${W7S_WEB_PAGE}"
	WriteRegStr "HKLM" "Software\Microsoft\Windows\CurrentVersion\Uninstall\${W7S_PLUGIN}" "HelpLink" "${W7S_HELP_LINK}" 
	WriteRegStr "HKLM" "Software\Microsoft\Windows\CurrentVersion\Uninstall\${W7S_PLUGIN}" "Publisher" "${W7S_COMPANY}"
	WriteRegDWORD "HKLM" "Software\Microsoft\Windows\CurrentVersion\Uninstall\${W7S_PLUGIN}" "NoModify" "1"
	WriteRegDWORD "HKLM" "Software\Microsoft\Windows\CurrentVersion\Uninstall\${W7S_PLUGIN}" "NoRepair" "1"

; Create uninstaller
	WriteUninstaller "$INSTDIR\${W7S_UNINSTALLER}.exe"

	SetAutoClose false
	
SectionEnd

Function .onInit

; Language
	Var /GLOBAL LANG_TITLE
		StrCpy $LANG_TITLE  $(W7S_Language_Title)
	!insertmacro MUI_LANGDLL_DISPLAY
	
	InitPluginsDir
	
	Var /Global Dialog
	
; Finish Page Variables
	Var /Global Label1
	Var /Global Label1_Font
	Var /Global Label2
	Var /Global Label4	
;	Var /Global CheckBox1
	Var /Global CheckBox2	
	Var /Global Control_State	
	Var /GLOBAL Img_Left		
	Var /GLOBAL Img_Handle_Left
	File /oname=$PLUGINSDIR\Img_Left.bmp "Images\welcome_finish.bmp"

; Variables for PayPal button	
;	Var /Global Label3
;	Var /GLOBAL Button	
;	File /oname=$PLUGINSDIR\PayPal.bmp "Images\donate.bmp"

	
	
	${If} ${IsWin7} ;${AtLeastWin7}
		; OK, Windows 7
	${Else}

		MessageBox MB_YESNO $(W7S_Win7_Warning) IDYES YES IDNO NO ; other system - ask what to do...
			NO:
			  Abort ; Abort installation
			YES:
			  ; Continue installation
	${EndIf}	
	
; Language selection on Components Page (Show one language file,
; with ID that user choose to install - and hide the rest
; This is simple method and do what we want...
	${Select} $Language
			
		${Case} "1029" ; Czech (1029)
			SectionSetText ${W7S_Sec_Language_French} ""
			SectionSetText ${W7S_Sec_Language_German} ""
			SectionSetText ${W7S_Sec_Language_Polish} ""
			SectionSetText ${W7S_Sec_Language_German} ""
			SectionSetText ${W7S_Sec_Language_PortugueseBR} ""
			SectionSetText ${W7S_Sec_Language_Romanian} ""
			SectionSetText ${W7S_Sec_Language_Russian} ""
			SectionSetText ${W7S_Sec_Language_Slovak} ""
			SectionSetText ${W7S_Sec_Language_Slovenian} ""
			SectionSetText ${W7S_Sec_Language_Spanish} ""
			SectionSetText ${W7S_Sec_Language_Swedish} ""
			SectionSetText ${W7S_Sec_Language_Turkish} ""
			SectionSetText ${W7S_Sec_Language_Dutch} ""		
			SectionSetText ${W7S_Sec_Language_Italian} ""
			SectionSetText ${W7S_Sec_Language_Greek} ""	
			SectionSetText ${W7S_Sec_Language_Ukrainian} ""
			SectionSetText ${W7S_Sec_Language_TradChinese} ""	
			SectionSetText ${W7S_Sec_Language_SimpChinese} ""
			SectionSetText ${W7S_Sec_Language_Hungarian} ""
			SectionSetText ${W7S_Sec_Language_Danish} ""
			SectionSetText ${W7S_Sec_Language_Bulgarian} ""
			
			
		${Case} "1036" ; French (1036)
			SectionSetText ${W7S_Sec_Language_Czech} "" 
			SectionSetText ${W7S_Sec_Language_German} ""
			SectionSetText ${W7S_Sec_Language_Polish} ""
			SectionSetText ${W7S_Sec_Language_German} ""
			SectionSetText ${W7S_Sec_Language_PortugueseBR} ""
			SectionSetText ${W7S_Sec_Language_Romanian} ""
			SectionSetText ${W7S_Sec_Language_Russian} ""
			SectionSetText ${W7S_Sec_Language_Slovak} ""
			SectionSetText ${W7S_Sec_Language_Slovenian} ""
			SectionSetText ${W7S_Sec_Language_Spanish} ""
			SectionSetText ${W7S_Sec_Language_Swedish} ""
			SectionSetText ${W7S_Sec_Language_Turkish} ""	
			SectionSetText ${W7S_Sec_Language_Dutch} ""
			SectionSetText ${W7S_Sec_Language_Italian} ""
			SectionSetText ${W7S_Sec_Language_Greek} ""	
			SectionSetText ${W7S_Sec_Language_Ukrainian} ""		
			SectionSetText ${W7S_Sec_Language_TradChinese} ""	
			SectionSetText ${W7S_Sec_Language_SimpChinese} ""
			SectionSetText ${W7S_Sec_Language_Hungarian} ""
			SectionSetText ${W7S_Sec_Language_Danish} ""
			SectionSetText ${W7S_Sec_Language_Bulgarian} ""
			
		${Case} "1031" ; German (1031)
			SectionSetText ${W7S_Sec_Language_Czech} "" 
			SectionSetText ${W7S_Sec_Language_French} ""
			SectionSetText ${W7S_Sec_Language_Polish} ""
			SectionSetText ${W7S_Sec_Language_PortugueseBR} ""
			SectionSetText ${W7S_Sec_Language_Romanian} ""
			SectionSetText ${W7S_Sec_Language_Russian} ""
			SectionSetText ${W7S_Sec_Language_Slovak} ""
			SectionSetText ${W7S_Sec_Language_Slovenian} ""
			SectionSetText ${W7S_Sec_Language_Spanish} ""
			SectionSetText ${W7S_Sec_Language_Swedish} ""
			SectionSetText ${W7S_Sec_Language_Turkish} ""
			SectionSetText ${W7S_Sec_Language_Dutch} ""
			SectionSetText ${W7S_Sec_Language_Italian} ""
			SectionSetText ${W7S_Sec_Language_Greek} ""	
			SectionSetText ${W7S_Sec_Language_Ukrainian} ""		
			SectionSetText ${W7S_Sec_Language_TradChinese} ""	
			SectionSetText ${W7S_Sec_Language_SimpChinese} ""
			SectionSetText ${W7S_Sec_Language_Hungarian} ""
			SectionSetText ${W7S_Sec_Language_Danish} ""
			SectionSetText ${W7S_Sec_Language_Bulgarian} ""
			
		${Case} "1045" ; Polish (1045) 
			SectionSetText ${W7S_Sec_Language_Czech} "" 
			SectionSetText ${W7S_Sec_Language_French} ""
			SectionSetText ${W7S_Sec_Language_German} ""
			SectionSetText ${W7S_Sec_Language_PortugueseBR} ""
			SectionSetText ${W7S_Sec_Language_Romanian} ""
			SectionSetText ${W7S_Sec_Language_Russian} ""
			SectionSetText ${W7S_Sec_Language_Slovak} ""
			SectionSetText ${W7S_Sec_Language_Slovenian} ""
			SectionSetText ${W7S_Sec_Language_Spanish} ""
			SectionSetText ${W7S_Sec_Language_Swedish} ""
			SectionSetText ${W7S_Sec_Language_Turkish} ""			
			SectionSetText ${W7S_Sec_Language_Dutch} ""
			SectionSetText ${W7S_Sec_Language_Italian} ""
			SectionSetText ${W7S_Sec_Language_Greek} ""	
			SectionSetText ${W7S_Sec_Language_Ukrainian} ""		
			SectionSetText ${W7S_Sec_Language_TradChinese} ""	
			SectionSetText ${W7S_Sec_Language_SimpChinese} ""
			SectionSetText ${W7S_Sec_Language_Hungarian} ""
			SectionSetText ${W7S_Sec_Language_Danish} ""
			SectionSetText ${W7S_Sec_Language_Bulgarian} ""
			
		${Case} "1046" ; Brazilian Portuguese (1046)
			SectionSetText ${W7S_Sec_Language_Czech} "" 
			SectionSetText ${W7S_Sec_Language_French} ""
			SectionSetText ${W7S_Sec_Language_German} ""
			SectionSetText ${W7S_Sec_Language_Polish} ""
			SectionSetText ${W7S_Sec_Language_German} ""
			SectionSetText ${W7S_Sec_Language_Romanian} ""
			SectionSetText ${W7S_Sec_Language_Russian} ""
			SectionSetText ${W7S_Sec_Language_Slovak} ""
			SectionSetText ${W7S_Sec_Language_Slovenian} ""
			SectionSetText ${W7S_Sec_Language_Spanish} ""
			SectionSetText ${W7S_Sec_Language_Swedish} ""
			SectionSetText ${W7S_Sec_Language_Turkish} ""	
			SectionSetText ${W7S_Sec_Language_Dutch} ""
			SectionSetText ${W7S_Sec_Language_Italian} ""
			SectionSetText ${W7S_Sec_Language_Greek} ""	
			SectionSetText ${W7S_Sec_Language_Ukrainian} ""		
			SectionSetText ${W7S_Sec_Language_TradChinese} ""	
			SectionSetText ${W7S_Sec_Language_SimpChinese} ""
			SectionSetText ${W7S_Sec_Language_Hungarian} ""
			SectionSetText ${W7S_Sec_Language_Danish} ""
			SectionSetText ${W7S_Sec_Language_Bulgarian} ""
			
		${Case} "1048" ; Romanian (1048)
			SectionSetText ${W7S_Sec_Language_Czech} "" 
			SectionSetText ${W7S_Sec_Language_French} ""
			SectionSetText ${W7S_Sec_Language_German} ""
			SectionSetText ${W7S_Sec_Language_Polish} ""
			SectionSetText ${W7S_Sec_Language_German} ""
			SectionSetText ${W7S_Sec_Language_PortugueseBR} ""
			SectionSetText ${W7S_Sec_Language_Russian} ""
			SectionSetText ${W7S_Sec_Language_Slovak} ""
			SectionSetText ${W7S_Sec_Language_Slovenian} ""
			SectionSetText ${W7S_Sec_Language_Spanish} ""
			SectionSetText ${W7S_Sec_Language_Swedish} ""
			SectionSetText ${W7S_Sec_Language_Turkish} ""	
			SectionSetText ${W7S_Sec_Language_Dutch} ""
			SectionSetText ${W7S_Sec_Language_Italian} ""
			SectionSetText ${W7S_Sec_Language_Greek} ""	
			SectionSetText ${W7S_Sec_Language_Ukrainian} ""	
			SectionSetText ${W7S_Sec_Language_TradChinese} ""	
			SectionSetText ${W7S_Sec_Language_SimpChinese} ""	
			SectionSetText ${W7S_Sec_Language_Hungarian} ""	
			SectionSetText ${W7S_Sec_Language_Danish} ""		
			SectionSetText ${W7S_Sec_Language_Bulgarian} ""			
			
		${Case} "1049" ; Russian (1049)
			SectionSetText ${W7S_Sec_Language_Czech} "" 
			SectionSetText ${W7S_Sec_Language_French} ""
			SectionSetText ${W7S_Sec_Language_German} ""
			SectionSetText ${W7S_Sec_Language_Polish} ""
			SectionSetText ${W7S_Sec_Language_German} ""
			SectionSetText ${W7S_Sec_Language_PortugueseBR} ""
			SectionSetText ${W7S_Sec_Language_Romanian} ""
			SectionSetText ${W7S_Sec_Language_Slovak} ""
			SectionSetText ${W7S_Sec_Language_Slovenian} ""
			SectionSetText ${W7S_Sec_Language_Spanish} ""
			SectionSetText ${W7S_Sec_Language_Swedish} ""
			SectionSetText ${W7S_Sec_Language_Turkish} ""	
			SectionSetText ${W7S_Sec_Language_Dutch} ""
			SectionSetText ${W7S_Sec_Language_Italian} ""
			SectionSetText ${W7S_Sec_Language_Greek} ""	
			SectionSetText ${W7S_Sec_Language_Ukrainian} ""		
			SectionSetText ${W7S_Sec_Language_TradChinese} ""	
			SectionSetText ${W7S_Sec_Language_SimpChinese} ""
			SectionSetText ${W7S_Sec_Language_Hungarian} ""
			SectionSetText ${W7S_Sec_Language_Danish} ""
			SectionSetText ${W7S_Sec_Language_Bulgarian} ""
			
		${Case} "1051" ; Slovak (1051)
			SectionSetText ${W7S_Sec_Language_Czech} "" 
			SectionSetText ${W7S_Sec_Language_French} ""
			SectionSetText ${W7S_Sec_Language_German} ""
			SectionSetText ${W7S_Sec_Language_Polish} ""
			SectionSetText ${W7S_Sec_Language_German} ""
			SectionSetText ${W7S_Sec_Language_PortugueseBR} ""
			SectionSetText ${W7S_Sec_Language_Romanian} ""
			SectionSetText ${W7S_Sec_Language_Russian} ""
			SectionSetText ${W7S_Sec_Language_Slovenian} ""
			SectionSetText ${W7S_Sec_Language_Spanish} ""
			SectionSetText ${W7S_Sec_Language_Swedish} ""
			SectionSetText ${W7S_Sec_Language_Turkish} ""	
			SectionSetText ${W7S_Sec_Language_Dutch} ""
			SectionSetText ${W7S_Sec_Language_Italian} ""
			SectionSetText ${W7S_Sec_Language_Greek} ""	
			SectionSetText ${W7S_Sec_Language_Ukrainian} ""		
			SectionSetText ${W7S_Sec_Language_TradChinese} ""	
			SectionSetText ${W7S_Sec_Language_SimpChinese} ""
			SectionSetText ${W7S_Sec_Language_Hungarian} ""
			SectionSetText ${W7S_Sec_Language_Danish} ""
			SectionSetText ${W7S_Sec_Language_Bulgarian} ""
			
		${Case} "1060" ; Slovenian (1060)
			SectionSetText ${W7S_Sec_Language_Czech} "" 
			SectionSetText ${W7S_Sec_Language_French} ""
			SectionSetText ${W7S_Sec_Language_German} ""
			SectionSetText ${W7S_Sec_Language_Polish} ""
			SectionSetText ${W7S_Sec_Language_German} ""
			SectionSetText ${W7S_Sec_Language_PortugueseBR} ""
			SectionSetText ${W7S_Sec_Language_Romanian} ""
			SectionSetText ${W7S_Sec_Language_Russian} ""
			SectionSetText ${W7S_Sec_Language_Slovak} ""
			SectionSetText ${W7S_Sec_Language_Spanish} ""
			SectionSetText ${W7S_Sec_Language_Swedish} ""
			SectionSetText ${W7S_Sec_Language_Turkish} ""	
			SectionSetText ${W7S_Sec_Language_Dutch} ""
			SectionSetText ${W7S_Sec_Language_Italian} ""
			SectionSetText ${W7S_Sec_Language_Greek} ""	
			SectionSetText ${W7S_Sec_Language_Ukrainian} ""	
			SectionSetText ${W7S_Sec_Language_TradChinese} ""	
			SectionSetText ${W7S_Sec_Language_SimpChinese} ""	
			SectionSetText ${W7S_Sec_Language_Hungarian} ""		
			SectionSetText ${W7S_Sec_Language_Danish} ""
			SectionSetText ${W7S_Sec_Language_Bulgarian} ""			
			
		${Case} "1034" ; Spanish (1034)
			SectionSetText ${W7S_Sec_Language_Czech} "" 
			SectionSetText ${W7S_Sec_Language_French} ""
			SectionSetText ${W7S_Sec_Language_German} ""
			SectionSetText ${W7S_Sec_Language_Polish} ""
			SectionSetText ${W7S_Sec_Language_German} ""
			SectionSetText ${W7S_Sec_Language_PortugueseBR} ""
			SectionSetText ${W7S_Sec_Language_Romanian} ""
			SectionSetText ${W7S_Sec_Language_Russian} ""
			SectionSetText ${W7S_Sec_Language_Slovak} ""
			SectionSetText ${W7S_Sec_Language_Slovenian} ""
			SectionSetText ${W7S_Sec_Language_Swedish} ""
			SectionSetText ${W7S_Sec_Language_Turkish} ""	
			SectionSetText ${W7S_Sec_Language_Dutch} ""
			SectionSetText ${W7S_Sec_Language_Italian} ""
			SectionSetText ${W7S_Sec_Language_Greek} ""	
			SectionSetText ${W7S_Sec_Language_Ukrainian} ""		
			SectionSetText ${W7S_Sec_Language_TradChinese} ""	
			SectionSetText ${W7S_Sec_Language_SimpChinese} ""
			SectionSetText ${W7S_Sec_Language_Hungarian} ""
			SectionSetText ${W7S_Sec_Language_Danish} ""
			SectionSetText ${W7S_Sec_Language_Bulgarian} ""
			
		${Case} "1053" ; Swedish (1053)
			SectionSetText ${W7S_Sec_Language_Czech} "" 
			SectionSetText ${W7S_Sec_Language_French} ""
			SectionSetText ${W7S_Sec_Language_German} ""
			SectionSetText ${W7S_Sec_Language_Polish} ""
			SectionSetText ${W7S_Sec_Language_German} ""
			SectionSetText ${W7S_Sec_Language_PortugueseBR} ""
			SectionSetText ${W7S_Sec_Language_Romanian} ""
			SectionSetText ${W7S_Sec_Language_Russian} ""
			SectionSetText ${W7S_Sec_Language_Slovak} ""
			SectionSetText ${W7S_Sec_Language_Slovenian} ""
			SectionSetText ${W7S_Sec_Language_Spanish} ""
			SectionSetText ${W7S_Sec_Language_Turkish} ""
			SectionSetText ${W7S_Sec_Language_Dutch} ""
			SectionSetText ${W7S_Sec_Language_Italian} ""
			SectionSetText ${W7S_Sec_Language_Greek} ""	
			SectionSetText ${W7S_Sec_Language_Ukrainian} ""		
			SectionSetText ${W7S_Sec_Language_TradChinese} ""	
			SectionSetText ${W7S_Sec_Language_SimpChinese} ""
			SectionSetText ${W7S_Sec_Language_Hungarian} ""
			SectionSetText ${W7S_Sec_Language_Danish} ""
			SectionSetText ${W7S_Sec_Language_Bulgarian} ""
			
		${Case} "1055" ; Turkish (1055)
			SectionSetText ${W7S_Sec_Language_Czech} "" 
			SectionSetText ${W7S_Sec_Language_French} ""
			SectionSetText ${W7S_Sec_Language_German} ""
			SectionSetText ${W7S_Sec_Language_Polish} ""
			SectionSetText ${W7S_Sec_Language_German} ""
			SectionSetText ${W7S_Sec_Language_PortugueseBR} ""
			SectionSetText ${W7S_Sec_Language_Romanian} ""
			SectionSetText ${W7S_Sec_Language_Russian} ""
			SectionSetText ${W7S_Sec_Language_Slovak} ""
			SectionSetText ${W7S_Sec_Language_Slovenian} ""
			SectionSetText ${W7S_Sec_Language_Spanish} ""
			SectionSetText ${W7S_Sec_Language_Swedish} ""
			SectionSetText ${W7S_Sec_Language_Dutch} ""
			SectionSetText ${W7S_Sec_Language_Italian} ""
			SectionSetText ${W7S_Sec_Language_Greek} ""	
			SectionSetText ${W7S_Sec_Language_Ukrainian} ""		
			SectionSetText ${W7S_Sec_Language_TradChinese} ""	
			SectionSetText ${W7S_Sec_Language_SimpChinese} ""
			SectionSetText ${W7S_Sec_Language_Hungarian} ""
			SectionSetText ${W7S_Sec_Language_Danish} ""
			SectionSetText ${W7S_Sec_Language_Bulgarian} ""
			
		${Case} "1043" ; Dutch (1043)
			SectionSetText ${W7S_Sec_Language_Czech} "" 
			SectionSetText ${W7S_Sec_Language_French} ""
			SectionSetText ${W7S_Sec_Language_German} ""
			SectionSetText ${W7S_Sec_Language_Polish} ""
			SectionSetText ${W7S_Sec_Language_German} ""
			SectionSetText ${W7S_Sec_Language_PortugueseBR} ""
			SectionSetText ${W7S_Sec_Language_Romanian} ""
			SectionSetText ${W7S_Sec_Language_Russian} ""
			SectionSetText ${W7S_Sec_Language_Slovak} ""
			SectionSetText ${W7S_Sec_Language_Slovenian} ""
			SectionSetText ${W7S_Sec_Language_Spanish} ""
			SectionSetText ${W7S_Sec_Language_Swedish} ""
			SectionSetText ${W7S_Sec_Language_Turkish} ""
			SectionSetText ${W7S_Sec_Language_Italian} ""
			SectionSetText ${W7S_Sec_Language_Greek} ""	
			SectionSetText ${W7S_Sec_Language_Ukrainian} ""		
			SectionSetText ${W7S_Sec_Language_TradChinese} ""	
			SectionSetText ${W7S_Sec_Language_SimpChinese} ""
			SectionSetText ${W7S_Sec_Language_Hungarian} ""
			SectionSetText ${W7S_Sec_Language_Danish} ""
			SectionSetText ${W7S_Sec_Language_Bulgarian} ""
			
		${Case} "1040" ; Italian (1040)
			SectionSetText ${W7S_Sec_Language_Czech} "" 
			SectionSetText ${W7S_Sec_Language_French} ""
			SectionSetText ${W7S_Sec_Language_German} ""
			SectionSetText ${W7S_Sec_Language_Polish} ""
			SectionSetText ${W7S_Sec_Language_German} ""
			SectionSetText ${W7S_Sec_Language_PortugueseBR} ""
			SectionSetText ${W7S_Sec_Language_Romanian} ""
			SectionSetText ${W7S_Sec_Language_Russian} ""
			SectionSetText ${W7S_Sec_Language_Slovak} ""
			SectionSetText ${W7S_Sec_Language_Slovenian} ""
			SectionSetText ${W7S_Sec_Language_Spanish} ""
			SectionSetText ${W7S_Sec_Language_Swedish} ""
			SectionSetText ${W7S_Sec_Language_Turkish} ""
			SectionSetText ${W7S_Sec_Language_Dutch} ""
			SectionSetText ${W7S_Sec_Language_Greek} ""	
			SectionSetText ${W7S_Sec_Language_Ukrainian} ""		
			SectionSetText ${W7S_Sec_Language_TradChinese} ""	
			SectionSetText ${W7S_Sec_Language_SimpChinese} ""
			SectionSetText ${W7S_Sec_Language_Hungarian} ""
			SectionSetText ${W7S_Sec_Language_Danish} ""
			SectionSetText ${W7S_Sec_Language_Bulgarian} ""
			
		${Case} "1032" ; Greek (1032)
			SectionSetText ${W7S_Sec_Language_Czech} "" 
			SectionSetText ${W7S_Sec_Language_French} ""
			SectionSetText ${W7S_Sec_Language_German} ""
			SectionSetText ${W7S_Sec_Language_Polish} ""
			SectionSetText ${W7S_Sec_Language_German} ""
			SectionSetText ${W7S_Sec_Language_PortugueseBR} ""
			SectionSetText ${W7S_Sec_Language_Romanian} ""
			SectionSetText ${W7S_Sec_Language_Russian} ""
			SectionSetText ${W7S_Sec_Language_Slovak} ""
			SectionSetText ${W7S_Sec_Language_Slovenian} ""
			SectionSetText ${W7S_Sec_Language_Spanish} ""
			SectionSetText ${W7S_Sec_Language_Swedish} ""
			SectionSetText ${W7S_Sec_Language_Turkish} ""
			SectionSetText ${W7S_Sec_Language_Italian} ""
			SectionSetText ${W7S_Sec_Language_Dutch} ""				
			SectionSetText ${W7S_Sec_Language_Ukrainian} ""		
			SectionSetText ${W7S_Sec_Language_TradChinese} ""	
			SectionSetText ${W7S_Sec_Language_SimpChinese} ""
			SectionSetText ${W7S_Sec_Language_Hungarian} ""
			SectionSetText ${W7S_Sec_Language_Danish} ""
			SectionSetText ${W7S_Sec_Language_Bulgarian} ""
			
		${Case} "1058" ; Ukrainian (1058)
			SectionSetText ${W7S_Sec_Language_Czech} "" 
			SectionSetText ${W7S_Sec_Language_French} ""
			SectionSetText ${W7S_Sec_Language_German} ""
			SectionSetText ${W7S_Sec_Language_Polish} ""
			SectionSetText ${W7S_Sec_Language_German} ""
			SectionSetText ${W7S_Sec_Language_PortugueseBR} ""
			SectionSetText ${W7S_Sec_Language_Romanian} ""
			SectionSetText ${W7S_Sec_Language_Russian} ""
			SectionSetText ${W7S_Sec_Language_Slovak} ""
			SectionSetText ${W7S_Sec_Language_Slovenian} ""
			SectionSetText ${W7S_Sec_Language_Spanish} ""
			SectionSetText ${W7S_Sec_Language_Swedish} ""
			SectionSetText ${W7S_Sec_Language_Turkish} ""
			SectionSetText ${W7S_Sec_Language_Italian} ""
			SectionSetText ${W7S_Sec_Language_Dutch} ""		
			SectionSetText ${W7S_Sec_Language_Greek} ""		
			SectionSetText ${W7S_Sec_Language_TradChinese} ""	
			SectionSetText ${W7S_Sec_Language_SimpChinese} ""
			SectionSetText ${W7S_Sec_Language_Hungarian} ""
			SectionSetText ${W7S_Sec_Language_Danish} ""
			SectionSetText ${W7S_Sec_Language_Bulgarian} ""
			
		${Case} "1028" ; Chinese Traditional (1028)
			SectionSetText ${W7S_Sec_Language_Czech} "" 
			SectionSetText ${W7S_Sec_Language_French} ""
			SectionSetText ${W7S_Sec_Language_German} ""
			SectionSetText ${W7S_Sec_Language_Polish} ""
			SectionSetText ${W7S_Sec_Language_German} ""
			SectionSetText ${W7S_Sec_Language_PortugueseBR} ""
			SectionSetText ${W7S_Sec_Language_Romanian} ""
			SectionSetText ${W7S_Sec_Language_Russian} ""
			SectionSetText ${W7S_Sec_Language_Slovak} ""
			SectionSetText ${W7S_Sec_Language_Slovenian} ""
			SectionSetText ${W7S_Sec_Language_Spanish} ""
			SectionSetText ${W7S_Sec_Language_Swedish} ""
			SectionSetText ${W7S_Sec_Language_Turkish} ""
			SectionSetText ${W7S_Sec_Language_Italian} ""
			SectionSetText ${W7S_Sec_Language_Dutch} ""		
			SectionSetText ${W7S_Sec_Language_Greek} ""		
			SectionSetText ${W7S_Sec_Language_Ukrainian} ""				
			SectionSetText ${W7S_Sec_Language_SimpChinese} ""
			SectionSetText ${W7S_Sec_Language_Hungarian} ""
			SectionSetText ${W7S_Sec_Language_Danish} ""
			SectionSetText ${W7S_Sec_Language_Bulgarian} ""

		${Case} "2052" ; Chinese Simplified (2052)
			SectionSetText ${W7S_Sec_Language_Czech} "" 
			SectionSetText ${W7S_Sec_Language_French} ""
			SectionSetText ${W7S_Sec_Language_German} ""
			SectionSetText ${W7S_Sec_Language_Polish} ""
			SectionSetText ${W7S_Sec_Language_German} ""
			SectionSetText ${W7S_Sec_Language_PortugueseBR} ""
			SectionSetText ${W7S_Sec_Language_Romanian} ""
			SectionSetText ${W7S_Sec_Language_Russian} ""
			SectionSetText ${W7S_Sec_Language_Slovak} ""
			SectionSetText ${W7S_Sec_Language_Slovenian} ""
			SectionSetText ${W7S_Sec_Language_Spanish} ""
			SectionSetText ${W7S_Sec_Language_Swedish} ""
			SectionSetText ${W7S_Sec_Language_Turkish} ""
			SectionSetText ${W7S_Sec_Language_Italian} ""
			SectionSetText ${W7S_Sec_Language_Dutch} ""		
			SectionSetText ${W7S_Sec_Language_Greek} ""		
			SectionSetText ${W7S_Sec_Language_Ukrainian} ""	
			SectionSetText ${W7S_Sec_Language_TradChinese} ""	
			SectionSetText ${W7S_Sec_Language_Hungarian} ""			
			SectionSetText ${W7S_Sec_Language_Danish} ""
			SectionSetText ${W7S_Sec_Language_Bulgarian} ""
			
		${Case} "1038" ; Hungarian (1038)
			SectionSetText ${W7S_Sec_Language_Czech} "" 
			SectionSetText ${W7S_Sec_Language_French} ""
			SectionSetText ${W7S_Sec_Language_German} ""
			SectionSetText ${W7S_Sec_Language_Polish} ""
			SectionSetText ${W7S_Sec_Language_German} ""
			SectionSetText ${W7S_Sec_Language_PortugueseBR} ""
			SectionSetText ${W7S_Sec_Language_Romanian} ""
			SectionSetText ${W7S_Sec_Language_Russian} ""
			SectionSetText ${W7S_Sec_Language_Slovak} ""
			SectionSetText ${W7S_Sec_Language_Slovenian} ""
			SectionSetText ${W7S_Sec_Language_Spanish} ""
			SectionSetText ${W7S_Sec_Language_Swedish} ""
			SectionSetText ${W7S_Sec_Language_Turkish} ""	
			SectionSetText ${W7S_Sec_Language_Dutch} ""
			SectionSetText ${W7S_Sec_Language_Italian} ""
			SectionSetText ${W7S_Sec_Language_Greek} ""	
			SectionSetText ${W7S_Sec_Language_Ukrainian} ""		
			SectionSetText ${W7S_Sec_Language_TradChinese} ""	
			SectionSetText ${W7S_Sec_Language_SimpChinese} ""	
			SectionSetText ${W7S_Sec_Language_Danish} ""
			SectionSetText ${W7S_Sec_Language_Bulgarian} ""
			
		${Case} "1030" ; Danish (1030)
			SectionSetText ${W7S_Sec_Language_Czech} "" 
			SectionSetText ${W7S_Sec_Language_French} ""
			SectionSetText ${W7S_Sec_Language_German} ""
			SectionSetText ${W7S_Sec_Language_Polish} ""
			SectionSetText ${W7S_Sec_Language_German} ""
			SectionSetText ${W7S_Sec_Language_PortugueseBR} ""
			SectionSetText ${W7S_Sec_Language_Romanian} ""
			SectionSetText ${W7S_Sec_Language_Russian} ""
			SectionSetText ${W7S_Sec_Language_Slovak} ""
			SectionSetText ${W7S_Sec_Language_Slovenian} ""
			SectionSetText ${W7S_Sec_Language_Spanish} ""
			SectionSetText ${W7S_Sec_Language_Swedish} ""
			SectionSetText ${W7S_Sec_Language_Turkish} ""	
			SectionSetText ${W7S_Sec_Language_Dutch} ""
			SectionSetText ${W7S_Sec_Language_Italian} ""
			SectionSetText ${W7S_Sec_Language_Greek} ""	
			SectionSetText ${W7S_Sec_Language_Ukrainian} ""		
			SectionSetText ${W7S_Sec_Language_TradChinese} ""	
			SectionSetText ${W7S_Sec_Language_SimpChinese} ""	
			SectionSetText ${W7S_Sec_Language_Hungarian} ""	
			SectionSetText ${W7S_Sec_Language_Bulgarian} ""
			
		${Case} "1026" ; Bulgarian (1026)
			SectionSetText ${W7S_Sec_Language_Czech} "" 
			SectionSetText ${W7S_Sec_Language_French} ""
			SectionSetText ${W7S_Sec_Language_German} ""
			SectionSetText ${W7S_Sec_Language_Polish} ""
			SectionSetText ${W7S_Sec_Language_German} ""
			SectionSetText ${W7S_Sec_Language_PortugueseBR} ""
			SectionSetText ${W7S_Sec_Language_Romanian} ""
			SectionSetText ${W7S_Sec_Language_Russian} ""
			SectionSetText ${W7S_Sec_Language_Slovak} ""
			SectionSetText ${W7S_Sec_Language_Slovenian} ""
			SectionSetText ${W7S_Sec_Language_Spanish} ""
			SectionSetText ${W7S_Sec_Language_Swedish} ""
			SectionSetText ${W7S_Sec_Language_Turkish} ""	
			SectionSetText ${W7S_Sec_Language_Dutch} ""
			SectionSetText ${W7S_Sec_Language_Italian} ""
			SectionSetText ${W7S_Sec_Language_Greek} ""	
			SectionSetText ${W7S_Sec_Language_Ukrainian} ""		
			SectionSetText ${W7S_Sec_Language_TradChinese} ""	
			SectionSetText ${W7S_Sec_Language_SimpChinese} ""	
			SectionSetText ${W7S_Sec_Language_Hungarian} ""	
			SectionSetText ${W7S_Sec_Language_Danish} ""			
			
		${CaseElse} ;  if you choose other language (english) disable all
			SectionSetText ${W7S_Sec_Language_Czech} "" 
			SectionSetText ${W7S_Sec_Language_French} ""
			SectionSetText ${W7S_Sec_Language_German} ""
			SectionSetText ${W7S_Sec_Language_Polish} ""
			SectionSetText ${W7S_Sec_Language_German} ""
			SectionSetText ${W7S_Sec_Language_PortugueseBR} ""
			SectionSetText ${W7S_Sec_Language_Romanian} ""
			SectionSetText ${W7S_Sec_Language_Russian} ""
			SectionSetText ${W7S_Sec_Language_Slovak} ""
			SectionSetText ${W7S_Sec_Language_Slovenian} ""
			SectionSetText ${W7S_Sec_Language_Spanish} ""
			SectionSetText ${W7S_Sec_Language_Swedish} ""
			SectionSetText ${W7S_Sec_Language_Turkish} ""
			SectionSetText ${W7S_Sec_Language_Dutch} ""		
			SectionSetText ${W7S_Sec_Language_Italian} ""
			SectionSetText ${W7S_Sec_Language_Greek} ""				
			SectionSetText ${W7S_Sec_Language_Ukrainian} ""	
			SectionSetText ${W7S_Sec_Language_SimpChinese} ""	
			SectionSetText ${W7S_Sec_Language_TradChinese} ""	
			SectionSetText ${W7S_Sec_Language_Hungarian} ""
			SectionSetText ${W7S_Sec_Language_Danish} ""		
			SectionSetText ${W7S_Sec_Language_Bulgarian} ""
							
	${EndSelect}		

FunctionEnd


Function CreateFinishPage

    LockWindow on
    GetDlgItem $0 $HWNDPARENT 1028
    ShowWindow $0 ${SW_HIDE}
    GetDlgItem $0 $HWNDPARENT 1256
    ShowWindow $0 ${SW_HIDE}
    GetDlgItem $0 $HWNDPARENT 1045
    ShowWindow $0 ${SW_NORMAL}
    LockWindow off

    nsDialogs::Create /NOUNLOAD 1044
	Pop $Dialog
	
	${If} $Dialog == error
		Abort
	${EndIf}
	
    SetCtlColors $Dialog "" "0xFFFFFF"

	${NSD_CreateBitmap} 0u 0u 109u 193u ""
	Pop $Img_Left
	${NSD_SetImage} $Img_Left $PLUGINSDIR\Img_Left.bmp $Img_Handle_Left
	
	${NSD_CreateLabel} 115u 20u 63% 30u "$(W7S_FinishPage_1)"
	Pop $Label1
	${NSD_AddStyle} $Label1 ${WS_VISIBLE}|${WS_CHILD}|${WS_CLIPSIBLINGS}
	CreateFont $Label1_Font "TAHOMA" "13" "700"
	SendMessage $Label1 ${WM_SETFONT} $Label1_Font 0	
    SetCtlColors $Label1 "0x000000" "TRANSPARENT"
	
	${NSD_CreateLabel} 115u 60u 63% 30u "$(W7S_FinishPage_2)"
	Pop $Label2
	${NSD_AddStyle} $Label2 ${WS_VISIBLE}|${WS_CHILD}|${WS_CLIPSIBLINGS}
    SetCtlColors $Label2 "0x000000" "TRANSPARENT"	

/*	
	${NSD_CreateButton} 115u 95u 58 35 ""
	Pop $Button
	${NSD_AddStyle} $Button "${BS_BITMAP}" 
	System::Call 'user32::LoadImage(i 0, t "$PLUGINSDIR\PayPal.bmp", i ${IMAGE_BITMAP}, i 0, i 0, i ${LR_CREATEDIBSECTION}|${LR_LOADFROMFILE}) i.s' 
	Pop $1 
	SendMessage $Button ${BM_SETIMAGE} ${IMAGE_BITMAP} $1
	${NSD_OnClick} $Button Button_Click		

	${NSD_CreateLabel} 160u 95u 50% 30u "$(W7S_FinishPage_3)"
	Pop $Label3
	${NSD_AddStyle} $Label3 ${WS_VISIBLE}|${WS_CHILD}|${WS_CLIPSIBLINGS}
    SetCtlColors $Label3 "0x000000" "TRANSPARENT"
*/
	${NSD_CreateLabel} 120u 148u 63% 10u "$(W7S_FinishPage_4)"
	Pop $Label4
	${NSD_AddStyle} $Label4 ${WS_VISIBLE}|${WS_CHILD}|${WS_CLIPSIBLINGS}
    SetCtlColors $Label4 "0x000000" "TRANSPARENT"	
/*
	${NSD_CreateCheckBox} 125u 143u 63% 16u "$(W7S_FinishPage_6)"
	Pop $CheckBox1
	;${NSD_Check} $CheckBox1
	SetCtlColors $CheckBox1 "0x000000" "0xFFFFFF"
*/	
	${NSD_CreateCheckBox} 125u 159u 63% 16u "$(W7S_FinishPage_5)"
	Pop $CheckBox2	
	${NSD_Check} $CheckBox2		
    SetCtlColors $CheckBox2 "0x000000" "0xFFFFFF"	


	GetDlgItem $R0 $HWNDPARENT 1
	SendMessage $R0 ${WM_SETTEXT} 0 "STR:$(W7S_FinishPage_7)"
	
	nsDialogs::Show
	${NSD_FreeImage} $Img_Handle_Left

FunctionEnd

/*
Function Button_Click

	Pop $0
	ExecShell "open" "${W7S_PayPal_Link}"

FunctionEnd
*/

Function CheckFinishPage
/*
; Run Winamp	
	${NSD_GetState} $CheckBox1 $Control_State
	${If} $Control_State = ${BST_CHECKED}
		ExecShell "open" "$INSTDIR\winamp.exe"
	${EndIf}
*/
	${NSD_GetState} $CheckBox2 $Control_State
	${If} $Control_State = ${BST_CHECKED}
		ExecShell "open" "${W7S_WEB_PAGE}"
	${EndIf}
	
FunctionEnd


;###########################################################################################
; INSTALLER DESCRIPTIONS SECTION 
;###########################################################################################

	!insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
		!insertmacro MUI_DESCRIPTION_TEXT ${W7S_Sec_PluginFile} $(W7S_Desc_PluginFile)
		!insertmacro MUI_DESCRIPTION_TEXT ${W7S_Sec_Language_Czech} $(W7S_Desc_Language)
		!insertmacro MUI_DESCRIPTION_TEXT ${W7S_Sec_Language_French} $(W7S_Desc_Language)
		!insertmacro MUI_DESCRIPTION_TEXT ${W7S_Sec_Language_German} $(W7S_Desc_Language)
		!insertmacro MUI_DESCRIPTION_TEXT ${W7S_Sec_Language_Polish} $(W7S_Desc_Language)		
		!insertmacro MUI_DESCRIPTION_TEXT ${W7S_Sec_Language_PortugueseBR} $(W7S_Desc_Language)		
		!insertmacro MUI_DESCRIPTION_TEXT ${W7S_Sec_Language_Romanian} $(W7S_Desc_Language)
		!insertmacro MUI_DESCRIPTION_TEXT ${W7S_Sec_Language_Russian} $(W7S_Desc_Language)			
		!insertmacro MUI_DESCRIPTION_TEXT ${W7S_Sec_Language_Slovak} $(W7S_Desc_Language)
		!insertmacro MUI_DESCRIPTION_TEXT ${W7S_Sec_Language_Slovenian} $(W7S_Desc_Language)
		!insertmacro MUI_DESCRIPTION_TEXT ${W7S_Sec_Language_Spanish} $(W7S_Desc_Language)			
		!insertmacro MUI_DESCRIPTION_TEXT ${W7S_Sec_Language_Swedish} $(W7S_Desc_Language)			
		!insertmacro MUI_DESCRIPTION_TEXT ${W7S_Sec_Language_Turkish} $(W7S_Desc_Language)
		!insertmacro MUI_DESCRIPTION_TEXT ${W7S_Sec_Language_Dutch} $(W7S_Desc_Language)		
		!insertmacro MUI_DESCRIPTION_TEXT ${W7S_Sec_Language_Italian} $(W7S_Desc_Language)		
		!insertmacro MUI_DESCRIPTION_TEXT ${W7S_Sec_Language_Greek} $(W7S_Desc_Language)		
		!insertmacro MUI_DESCRIPTION_TEXT ${W7S_Sec_Language_Ukrainian} $(W7S_Desc_Language)	
		!insertmacro MUI_DESCRIPTION_TEXT ${W7S_Sec_Language_TradChinese} $(W7S_Desc_Language)		
		!insertmacro MUI_DESCRIPTION_TEXT ${W7S_Sec_Language_SimpChinese} $(W7S_Desc_Language)	
		!insertmacro MUI_DESCRIPTION_TEXT ${W7S_Sec_Language_Hungarian} $(W7S_Desc_Language)
		!insertmacro MUI_DESCRIPTION_TEXT ${W7S_Sec_Language_Danish} $(W7S_Desc_Language)
		!insertmacro MUI_DESCRIPTION_TEXT ${W7S_Sec_Language_Bulgarian} $(W7S_Desc_Language)
	!insertmacro MUI_FUNCTION_DESCRIPTION_END
	
	
;###########################################################################################
; UNINSTALLER
;###########################################################################################

	ShowUninstDetails "show"

Function un.onInit

; Language
	StrCpy $LANG_TITLE $(W7S_Un_Language_Title)
	!insertmacro MUI_UNGETLANGUAGE
	InitPluginsDir

FunctionEnd


Section "-Un.Pre"

	DetailPrint "$(W7S_Winamp_Path)"
		Call un.GetWinampIniPath
		
	DetailPrint "$(W7S_Check_Winamp)"
		Call un.CloseWinamp
		Sleep 500
		
SectionEnd


Section "-Un.Uninstall"

	Delete "$INSTDIR\Plugins\${W7S_PLUGIN_NAME}.dll"
	
	DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${W7S_PLUGIN}"	
	Delete /REBOOTOK "$INSTDIR\${W7S_UNINSTALLER}.exe"
	SetAutoClose false
	
SectionEnd


;###########################################################################################
; THE END
;###########################################################################################