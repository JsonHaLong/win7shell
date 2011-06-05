;###########################################################################################
;
; Windows 7 Taskbar Information Plugin Installer         
; Copyright (c) 2009-2011 by Magyari Attila
; Copyright (c) 2009-2011 by Darren Owen aka DrO
;
; NSIS Installer script
; Copyright (c) 2009-2011 by Paweł Porwisz aka Pepe                                   
; All rights reserved.

; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
; OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES	OF MERCHANTABILITY,
; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF THIRD PARTY RIGHTS.
; IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
; DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
; OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE
; USE OR OTHER DEALINGS IN THE SOFTWARE.
	
;###########################################################################################



;###########################################################################################
; DEFINITIONS
;###########################################################################################

	!define W7S_VERSION "1.14"
	!define W7S_ALT_VERSION "1_14"
	!define W7S_REVISION "0"
	!define W7S_BUILD "0"
	!define W7S_PLUGIN "Win7 Taskbar"
	!define W7S_PLUGIN_DESC "Windows 7 Taskbar Integration"
	!define W7S_PLUGIN_NAME "gen_win7shell"	
	!define W7S_UNINSTALLER "Uninst_Win7Shell"
	!define W7S_PAYPAL_LINK "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=VWV4XNFR47K6N"	
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


;###########################################################################################
; DESTINATION FOLDER
;###########################################################################################

	InstallDir "$PROGRAMFILES\Winamp"
	InstallDirRegKey "HKLM" "Software\Microsoft\Windows\CurrentVersion\Uninstall\Winamp" "UninstallString"
	RequestExecutionLevel "admin"
	XPStyle "on"
	ShowInstDetails "show"

	
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
	;!insertmacro MUI_LANGUAGE "Czech"			
	;!include "Languages\Win7shell-cs-cz.nsh"
	
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
	;!insertmacro MUI_LANGUAGE "PortugueseBR"		
	;!include "Languages\Win7shell-pt-br.nsh"

; Language: Romanian (1048)	
	;!insertmacro MUI_LANGUAGE "Romanian"		
	;!include "Languages\Win7shell-ro-ro.nsh"

; Language: Russian (1049)	
	!insertmacro MUI_LANGUAGE "Russian"			
	!include "Languages\Win7shell-ru-ru.nsh"

; Language: Slovak (1051)	
	;!insertmacro MUI_LANGUAGE "Slovak"			
	;!include "Languages\Win7shell-sk-sk.nsh"

; Language: Slovenian (1060)
	!insertmacro MUI_LANGUAGE "Slovenian"			
	!include "Languages\Win7shell-sl-sl.nsh"
	
; Language: Spanish (1034)
	!insertmacro MUI_LANGUAGE "Spanish"			
	!include "Languages\Win7shell-es-us.nsh"

; Language: Swedish (1053)	
	;!insertmacro MUI_LANGUAGE "Swedish"			
	;!include "Languages\Win7shell-sv-se.nsh"

; Language: Turkish (1055)	
	!insertmacro MUI_LANGUAGE "Turkish"			
	!include "Languages\Win7shell-tr-tr.nsh"

; Language: Dutch (1043)	
	;!insertmacro MUI_LANGUAGE "Dutch"			
	;!include "Languages\Win7shell-nl-nl.nsh"
	
; Language: Italian (1040)	
	!insertmacro MUI_LANGUAGE "Italian"			
	!include "Languages\Win7shell-it-it.nsh"	
	
; Language: Greek (1032)	
	!insertmacro MUI_LANGUAGE "Greek"			
	!include "Languages\Win7shell-gr-gr.nsh"		

; Language: Ukrainian (1058)	
	;!insertmacro MUI_LANGUAGE "Ukrainian"			
	;!include "Languages\Win7shell-ua-ua.nsh"

; Language: Chinese Traditional (1028)	
	!insertmacro MUI_LANGUAGE "TradChinese"			
	!include "Languages\Win7shell-zh-HanT.nsh"

; Language: Chinese Simplified (2052)	
	!insertmacro MUI_LANGUAGE "SimpChinese"			
	!include "Languages\Win7shell-zh-HanS.nsh"	
	
; Language: Hungarian (1038)	
	;!insertmacro MUI_LANGUAGE "Hungarian"			
	;!include "Languages\Win7shell-hu-hu.nsh"	
	
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
; CLOSE WINAMP FUNCTION
;###########################################################################################
	
!macro SharedWinamp un
	
	Function ${un}CloseWinamp

		Push $0
 
		FindWindow $0 "Winamp v1.x"
		IntCmp $0 0 NoWinamp
		DetailPrint "$(W7S_Running_Winamp)"
		MessageBox MB_YESNO|MB_ICONEXCLAMATION "$(W7S_Close_Winamp)" IDYES KillWinamp IDNO Running_NoKill
	
		KillWinamp:
			FindWindow $0 "Winamp v1.x"
			IntCmp $0 0 NoMoreWinampToKill
			DetailPrint "$(W7S_Closing_Winamp)"
			SendMessage $0 16 0 0
			Sleep 100
			Goto KillWinamp
	
		NoMoreWinampToKill:
			DetailPrint "$(W7S_No_More_Winamp)"
			Goto Running_NoKill
	
		NoWinamp:	
			DetailPrint "$(W7S_No_Winamp)"	
	
		Running_NoKill:	
  
		Pop $0
 
	FunctionEnd

!macroend

; Insert function as an installer and uninstaller function.
	!insertmacro SharedWinamp ""
	!insertmacro SharedWinamp "un."	

	
Function .onVerifyInstDir

	${If} ${FileExists} "$INSTDIR\Winamp.exe"
		Return
	${Else}
		Abort
	${EndIf}

FunctionEnd


	
;###########################################################################################
; INSTALLER  SECTIONS 
;###########################################################################################

Section "-Pre"

	DetailPrint "$(W7S_Check_Winamp)"
	Call CloseWinamp
	Sleep 500	
	
SectionEnd


Section "W7S_PluginFile" "W7S_Sec_PluginFile"

	SetOutPath $INSTDIR\Plugins
	File "Files\Plugin\${W7S_PLUGIN_NAME}.dll"
	File "Files\Plugin\${W7S_PLUGIN_NAME}.lng"
 
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
	
; Finish Page Variables
	Var /Global FINISH_PAGE_DIALOG
	
	Var /GLOBAL FINISH_PAGE_IMG_LEFT		
	Var /GLOBAL FINISH_PAGE_IMG_H_LEFT
	File /oname=$PLUGINSDIR\Img_Left.bmp "Images\welcome_finish.bmp"

	Var /Global FINISH_PAGE_TITLE
	Var /Global FINISH_PAGE_TITLE_FONT
	Var /Global FINISH_PAGE_DESC
	
	Var /Global FINISH_PAGE_PAYPAL
	Var /GLOBAL FINISH_PAGE_PAYPAL_BUTTON
	Var /Global FINISH_PAGE_BITMAP
	File /oname=$PLUGINSDIR\PayPal.bmp "Images\donate.bmp"	
	
	Var /Global FINISH_PAGE_ACTION	
	Var /Global FINISH_PAGE_RUN
	Var /Global FINISH_PAGE_URL	
	Var /Global FINISH_PAGE_CHECK	
	
; Check Windows Version	
	${If} ${IsWin7} ;${AtLeastWin7}
		Return	; OK, Windows 7(+)
	${Else}
		MessageBox MB_YESNO $(W7S_Win7_Warning) IDYES YES IDNO NO ; other system - ask what to do...
		NO:
			Abort ; Abort installation
		YES:
			Return ; Continue installation
	${EndIf}

FunctionEnd


Function CreateFinishPage

; Hide unnecessary controls
    LockWindow on
    GetDlgItem $0 $HWNDPARENT 1028
    ShowWindow $0 ${SW_HIDE}
    GetDlgItem $0 $HWNDPARENT 1256
    ShowWindow $0 ${SW_HIDE}
    GetDlgItem $0 $HWNDPARENT 1045
    ShowWindow $0 ${SW_NORMAL}
    LockWindow off

; Create Dialog	
    nsDialogs::Create /NOUNLOAD 1044
	Pop $FINISH_PAGE_DIALOG
	
	${If} $FINISH_PAGE_DIALOG == error
		Abort
	${EndIf}
    SetCtlColors $FINISH_PAGE_DIALOG "" "0xFFFFFF"

	${NSD_CreateBitmap} 0u 0u 109u 193u ""
	Pop $FINISH_PAGE_IMG_LEFT
	${NSD_SetImage} $FINISH_PAGE_IMG_LEFT $PLUGINSDIR\Img_Left.bmp $FINISH_PAGE_IMG_H_LEFT
	
	${NSD_CreateLabel} 110u 20u 215u 40u "$(W7S_FinishPage_1)"
	Pop $FINISH_PAGE_TITLE
	${NSD_AddStyle} $FINISH_PAGE_TITLE ${WS_VISIBLE}|${WS_CHILD}|${WS_CLIPSIBLINGS}
	CreateFont $FINISH_PAGE_TITLE_FONT "TAHOMA" "13" "700"
	SendMessage $FINISH_PAGE_TITLE ${WM_SETFONT} $FINISH_PAGE_TITLE_FONT 0	
    SetCtlColors $FINISH_PAGE_TITLE "0x000000" "Transparent"
	
	${NSD_CreateLabel} 115u 60u 210u 30u "$(W7S_FinishPage_2)"
	Pop $FINISH_PAGE_DESC
	${NSD_AddStyle} $FINISH_PAGE_DESC ${WS_VISIBLE}|${WS_CHILD}|${WS_CLIPSIBLINGS}
    SetCtlColors $FINISH_PAGE_DESC "0x000000" "Transparent"	

	
	${NSD_CreateButton} 115u 96u 40u 23u ""
	Pop $FINISH_PAGE_PAYPAL_BUTTON
	${NSD_AddStyle} $FINISH_PAGE_PAYPAL_BUTTON "${BS_BITMAP}" 
	System::Call 'user32::LoadImage(i 0, t "$PLUGINSDIR\PayPal.bmp", i ${IMAGE_BITMAP}, i 0, i 0, i ${LR_CREATEDIBSECTION}|${LR_LOADFROMFILE}) i.s' 
	Pop $FINISH_PAGE_BITMAP 
	SendMessage $FINISH_PAGE_PAYPAL_BUTTON ${BM_SETIMAGE} ${IMAGE_BITMAP} $FINISH_PAGE_BITMAP
	${NSD_OnClick} $FINISH_PAGE_PAYPAL_BUTTON onPayPal_Button_Click		

	${NSD_CreateLabel} 160u 95u 165u 30u "$(W7S_FinishPage_3)"
	Pop $FINISH_PAGE_PAYPAL
	${NSD_AddStyle} $FINISH_PAGE_PAYPAL ${WS_VISIBLE}|${WS_CHILD}|${WS_CLIPSIBLINGS}
    SetCtlColors $FINISH_PAGE_PAYPAL "0x000000" "Transparent"

	
	${NSD_CreateLabel} 120u 135u 205u 10u "$(W7S_FinishPage_4)"
	Pop $FINISH_PAGE_ACTION
	${NSD_AddStyle} $FINISH_PAGE_ACTION ${WS_VISIBLE}|${WS_CHILD}|${WS_CLIPSIBLINGS}
    SetCtlColors $FINISH_PAGE_ACTION "0x000000" "Transparent"	

	${NSD_CreateCheckBox} 130u 148u 195u 16u "$(W7S_FinishPage_6)"
	Pop $FINISH_PAGE_RUN
	;${NSD_Check} $FINISH_PAGE_RUN
	SetCtlColors $FINISH_PAGE_RUN "0x000000" "0xffffff"
	
	${NSD_CreateCheckBox} 130u 162u 195u 16u "$(W7S_FinishPage_5)"
	Pop $FINISH_PAGE_URL	
	${NSD_Check} $FINISH_PAGE_URL		
    SetCtlColors $FINISH_PAGE_URL "0x000000" "0xffffff"


; Set Button Text	
	GetDlgItem $R0 $HWNDPARENT 1
	SendMessage $R0 ${WM_SETTEXT} 0 "STR:$(W7S_FinishPage_7)"
	
; Show Dialog	
	nsDialogs::Show
	
; Free memory	
	${NSD_FreeImage} $FINISH_PAGE_IMG_H_LEFT
	System::Call "gdi32::DeleteObject(i s)" $FINISH_PAGE_BITMAP
	
FunctionEnd


Function onPayPal_Button_Click

	ExecShell "open" "${W7S_PayPal_Link}"

FunctionEnd


Function CheckFinishPage

; Run Winamp	
	${NSD_GetState} $FINISH_PAGE_RUN $FINISH_PAGE_CHECK
	${If} $FINISH_PAGE_CHECK = ${BST_CHECKED}
		ExecShell "open" "$INSTDIR\winamp.exe"
	${EndIf}

; Open URL	
	${NSD_GetState} $FINISH_PAGE_URL $FINISH_PAGE_CHECK
	${If} $FINISH_PAGE_CHECK = ${BST_CHECKED}
		ExecShell "open" "${W7S_WEB_PAGE}"
	${EndIf}
	
FunctionEnd




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
		
	DetailPrint "$(W7S_Check_Winamp)"
		Call un.CloseWinamp
		Sleep 500
		
SectionEnd


Section "-Un.Uninstall"

	Delete "$INSTDIR\Plugins\${W7S_PLUGIN_NAME}.dll"
	Delete "$INSTDIR\Plugins\${W7S_PLUGIN_NAME}.lng"
	
	DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${W7S_PLUGIN}"	
	Delete /REBOOTOK "$INSTDIR\${W7S_UNINSTALLER}.exe"
	SetAutoClose false
	
SectionEnd


;###########################################################################################
; THE END
;###########################################################################################