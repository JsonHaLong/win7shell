;###########################################################################################

; Lang:					English
; LangID				1033
; Last udpdated:	26.09.2009
; Author:				Magyari Attila			
; Email:					atti86@gmail.com

; Lang:					简体中文
; LangID				2052 
; Last udpdated:	10.10.2009
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
	LangString W7S_Language_Title ${LANG_SIMPCHINESE} "安装程序的语言"
	LangString W7S_Un_Language_Title ${LANG_SIMPCHINESE} "移除程序的语言"	
	LangString W7S_Language_Text ${LANG_SIMPCHINESE} "请选择一种语言"

; First Page of Installer
	LangString W7S_Welcome_Title ${LANG_SIMPCHINESE} "欢迎使用 $(^NameDA) 插件安装"
	LangString W7S_Welcome_Text ${LANG_SIMPCHINESE} "这个安装步骤可指引您完成 $(^NameDA) 插件的安装。$\r$\n$\r$\n建议您先关闭 Winamp 再开始安装步骤，以便安装步骤更新相关的 Winamp 档案。$\n$\n此插件只支援 Windows 7。$\r$\n$\r$\n$_CLICK"

; Installer Header	
	LangString W7S_Caption ${LANG_SIMPCHINESE} "${W7S_PLUGIN_DESC} v${W7S_VERSION} 插件安装"		
	LangString W7S_Branding ${LANG_SIMPCHINESE} "${W7S_PLUGIN_DESC} v${W7S_VERSION}"			
	
; Installation type	
	LangString W7S_Full ${LANG_SIMPCHINESE} "完整"
	LangString W7S_Minimal ${LANG_SIMPCHINESE} "精简"
	
; Installer sections
	LangString W7S_PluginFile ${LANG_SIMPCHINESE} "${W7S_PLUGIN_DESC} 插件"
	LangString W7S_Language ${LANG_SIMPCHINESE} "简体中文"	

	
; Installer sections descriptions	
	LangString W7S_Desc_PluginFile ${LANG_SIMPCHINESE} "这个选项会安装英文版 ${W7S_PLUGIN_DESC} 插件。"
	LangString W7S_Desc_Language ${LANG_SIMPCHINESE} "这个选项会安装简体中文版 ${W7S_PLUGIN_DESC} 插件。"

	
; Finish Page	
	LangString W7S_FinishPage_1 ${LANG_SIMPCHINESE} "${W7S_PLUGIN_DESC} v${W7S_VERSION} 插件安装完成"
	LangString W7S_FinishPage_2 ${LANG_SIMPCHINESE} "安装步骤已经将 ${W7S_PLUGIN_DESC} v${W7S_VERSION} 安装完成。您现在可以在 Winamp 启用 ${W7S_PLUGIN_DESC} 插件。"
;	LangString W7S_FinishPage_3 ${LANG_SIMPCHINESE} "如果您喜欢 ${W7S_PLUGIN_DESC} 并且愿意帮助此程序未来的开发，敬请踊跃捐款！"
	LangString W7S_FinishPage_4 ${LANG_SIMPCHINESE} "请问您现在想要："
	LangString W7S_FinishPage_5 ${LANG_SIMPCHINESE} "浏览此插件的网页"
	LangString W7S_FinishPage_6 ${LANG_SIMPCHINESE} "启动 Winamp"
	LangString W7S_FinishPage_7 ${LANG_SIMPCHINESE} "结束"
	
; First Page of Uninstaller
	LangString W7S_Un_Welcome_Title ${LANG_SIMPCHINESE} "欢迎使用 $(^NameDA) 插件卸载"
	LangString W7S_Un_Welcome_Text ${LANG_SIMPCHINESE} "这个卸载步骤可指引您卸载 $(^NameDA) 插件。$\r$\n$\r$\n请先关闭 Winamp 再开始卸载步骤。$\r$\n$\r$\n$_CLICK"

; Installation
	LangString W7S_Account ${LANG_SIMPCHINESE} "多使用者设定"
	LangString W7S_No_Account ${LANG_SIMPCHINESE} "非多使用者设定"
	LangString W7S_Winamp_Path ${LANG_SIMPCHINESE} "请指定 Winamp 配置文件的位置..."
	LangString W7S_Win7_Warning ${LANG_SIMPCHINESE} "您的操作系统不是 Windows 7。此插件只支援 Windows 7。$\r$\n请问您仍然要安装吗？"
	
; Close all instances of Winamp
	LangString W7S_Running_Winamp ${LANG_SIMPCHINESE} "Winamp 仍在执行！"
	LangString W7S_Closing_Winamp ${LANG_SIMPCHINESE} "        正在关闭 Winamp (winamp.exe)..."
	LangString W7S_No_Winamp ${LANG_SIMPCHINESE} "完成。Winamp 并未执行。"
	LangString W7S_No_More_Winamp ${LANG_SIMPCHINESE} "        完成。Winamp 已被关闭..."  
	LangString W7S_Check_Winamp ${LANG_SIMPCHINESE} "正在检查 Winamp 是否仍在执行..."
	LangString W7S_Close_Winamp  ${LANG_SIMPCHINESE} "您必须关闭 Winamp 才能继续步骤。$\r$\n是否立即关闭 Winamp (建议)？"	
