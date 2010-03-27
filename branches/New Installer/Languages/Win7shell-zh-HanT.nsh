;###########################################################################################

; Lang:					English
; LangID				1033
; Last udpdated:	26.09.2009
; Author:				Magyari Attila			
; Email:					atti86@gmail.com

; Lang:					正體中文
; LangID				1028
; Last udpdated:	8.10.2009
; Author:				HCC
; Email:					hcclandrover@gmail.com

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
	LangString W7S_Language_Title ${LANG_TRADCHINESE} "安裝程式的語言"
	LangString W7S_Un_Language_Title ${LANG_TRADCHINESE} "移除程式的語言"	
	LangString W7S_Language_Text ${LANG_TRADCHINESE} "請選擇一種語言"

; First Page of Installer
	LangString W7S_Welcome_Title ${LANG_TRADCHINESE} "歡迎使用 $(^NameDA) 外掛程式安裝"
	LangString W7S_Welcome_Text ${LANG_TRADCHINESE} "這個安裝步驟可指引您完成 $(^NameDA) 外掛程式的安裝。$\r$\n$\r$\n建議您先關閉 Winamp 再開始安裝步驟，以便安裝步驟更新相關的 Winamp 檔案。$\n$\n此外掛程式只支援 Windows 7。$\r$\n$\r$\n$_CLICK"

; Installer Header	
	LangString W7S_Caption ${LANG_TRADCHINESE} "${W7S_PLUGIN_DESC} v${W7S_VERSION} 外掛程式安裝"		
	LangString W7S_Branding ${LANG_TRADCHINESE} "${W7S_PLUGIN_DESC} v${W7S_VERSION}"			
	
; Installation type	
	LangString W7S_Full ${LANG_TRADCHINESE} "完整"
	LangString W7S_Minimal ${LANG_TRADCHINESE} "精簡"
	
; Installer sections
	LangString W7S_PluginFile ${LANG_TRADCHINESE} "${W7S_PLUGIN_DESC} 外掛程式"
	LangString W7S_Language ${LANG_TRADCHINESE} "正體中文"	

	
; Installer sections descriptions	
	LangString W7S_Desc_PluginFile ${LANG_TRADCHINESE} "這個選項會安裝英文版 ${W7S_PLUGIN_DESC} 外掛程式。"
	LangString W7S_Desc_Language ${LANG_TRADCHINESE} "這個選項會安裝正體中文版 ${W7S_PLUGIN_DESC} 外掛程式。"

	
; Finish Page	
	LangString W7S_FinishPage_1 ${LANG_TRADCHINESE} "${W7S_PLUGIN_DESC} v${W7S_VERSION} 外掛程式安裝完成"
	LangString W7S_FinishPage_2 ${LANG_TRADCHINESE} "安裝步驟已經將 ${W7S_PLUGIN_DESC} v${W7S_VERSION} 安裝完成。您現在可以在 Winamp 啟用 ${W7S_PLUGIN_DESC} 外掛程式。"
;	LangString W7S_FinishPage_3 ${LANG_TRADCHINESE} "如果您喜歡 ${W7S_PLUGIN_DESC} 並且願意幫助此程式未來的開發，敬請踴躍捐款！"
	LangString W7S_FinishPage_4 ${LANG_TRADCHINESE} "請問您現在想要："
	LangString W7S_FinishPage_5 ${LANG_TRADCHINESE} "瀏覽此外掛程式的網頁"
	LangString W7S_FinishPage_6 ${LANG_TRADCHINESE} "啟動 Winamp"
	LangString W7S_FinishPage_7 ${LANG_TRADCHINESE} "結束"
	
; First Page of Uninstaller
	LangString W7S_Un_Welcome_Title ${LANG_TRADCHINESE} "歡迎使用 $(^NameDA) 外掛程式移除"
	LangString W7S_Un_Welcome_Text ${LANG_TRADCHINESE} "這個移除步驟可指引您移除 $(^NameDA) 外掛程式。$\r$\n$\r$\n請先關閉 Winamp 再開始移除步驟。$\r$\n$\r$\n$_CLICK"

; Installation
	LangString W7S_Account ${LANG_TRADCHINESE} "多使用者設定"
	LangString W7S_No_Account ${LANG_TRADCHINESE} "非多使用者設定"
	LangString W7S_Winamp_Path ${LANG_TRADCHINESE} "請指定 Winamp 設定檔的位置..."
	LangString W7S_Win7_Warning ${LANG_TRADCHINESE} "您的作業系統不是 Windows 7。此外掛程式只支援 Windows 7。$\r$\n請問您仍然要安裝嗎？"
	
; Close all instances of Winamp
	LangString W7S_Running_Winamp ${LANG_TRADCHINESE} "Winamp 仍在執行！"
	LangString W7S_Closing_Winamp ${LANG_TRADCHINESE} "        正在關閉 Winamp (winamp.exe)..."
	LangString W7S_No_Winamp ${LANG_TRADCHINESE} "完成。Winamp 並未執行。"
	LangString W7S_No_More_Winamp ${LANG_TRADCHINESE} "        完成。Winamp 已被關閉..."  
	LangString W7S_Check_Winamp ${LANG_TRADCHINESE} "正在檢查 Winamp 是否仍在執行..."
	LangString W7S_Close_Winamp  ${LANG_TRADCHINESE} "您必須關閉 Winamp 才能繼續步驟。$\r$\n是否立即關閉 Winamp (建議)？"	