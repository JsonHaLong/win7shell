;###########################################################################################

; Lang:				Spanish
; LangID			1034
; Last udpdated:	26.09.2009
; Author:			
; Email:			

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
	LangString W7S_Language_Title ${LANG_SPANISH} "Idioma del Instalador"
	LangString W7S_Un_Language_Title ${LANG_SPANISH} "Idioma del desinstalador"	
	LangString W7S_Language_Text ${LANG_SPANISH} "Seleccione un Idioma:"

; First Page of Installer
	LangString W7S_Welcome_Title ${LANG_SPANISH} "Bienvenido a la instalacion de $(^NameDA) plugin"
	LangString W7S_Welcome_Text ${LANG_SPANISH} "El instalador le guiara a traves del proceso de instalacion de plugin $(^NameDA).$\r$\n$\r$\nSe recomienda cerrar Winamp antes de comenzar la Instalacion. Esto ayudara a actualizar los archivos de Winamp necesarios.$\n$\n¡Necesita Windows 7 para funcionar!$\r$\n$\r$\n$_CLICK"

; Installer Header	
	LangString W7S_Caption ${LANG_SPANISH} "${W7S_PLUGIN_DESC} v${W7S_VERSION} instalación"		
	LangString W7S_Branding ${LANG_SPANISH} "${W7S_PLUGIN_DESC} v${W7S_VERSION}"			
	
; Installation type	
	LangString W7S_Full ${LANG_SPANISH} "Completa"
	LangString W7S_Minimal ${LANG_SPANISH} "Minima"
	
; Installer sections
	LangString W7S_PluginFile ${LANG_SPANISH} "${W7S_PLUGIN_DESC} plugin"
	LangString W7S_Language ${LANG_SPANISH} "Archivo de idioma Español"		
	
; Installer sections descriptions	
	LangString W7S_Desc_PluginFile ${LANG_SPANISH} "Esto instalara los archivos de ${W7S_PLUGIN_DESC} plugin."
	LangString W7S_Desc_Language ${LANG_SPANISH} "Esto instalara el archivo de idioma del plugin ${W7S_PLUGIN_DESC}."
	
; Finish Page	
	LangString W7S_FinishPage_1 ${LANG_SPANISH} "Istalación de plugin ${W7S_PLUGIN_DESC} v${W7S_VERSION} completada"
	LangString W7S_FinishPage_2 ${LANG_SPANISH} "La inatalación de ${W7S_PLUGIN_DESC} v${W7S_VERSION} se ha completado. Ya puedes comenzar a usar ${W7S_PLUGIN_DESC} en Winamp."
;	LangString W7S_FinishPage_3 ${LANG_SPANISH} "Si te gusta ${W7S_PLUGIN_DESC} y deseas ayudar al futuro desarrollo del proyecto, por favor realiza una donació."
	LangString W7S_FinishPage_4 ${LANG_SPANISH} "¿Que deseas hacer ahora?"
	LangString W7S_FinishPage_5 ${LANG_SPANISH} "Ir a la pagina Web del plugin"
	LangString W7S_FinishPage_6 ${LANG_SPANISH} "Abrir Winamp"
	LangString W7S_FinishPage_7 ${LANG_SPANISH} "Finalizar"
	
; First Page of Uninstaller
	LangString W7S_Un_Welcome_Title ${LANG_SPANISH} "Bienvenido a la desinstalación de $(^NameDA) plugin"
	LangString W7S_Un_Welcome_Text ${LANG_SPANISH} "El desinstalador le guiara a traves del proceso de instalación de plugin $(^NameDA).$\r$\n$\r$\nAntes de comenzar la desinstalación, Asegurate de que Winamp no este abirto.$\r$\n$\r$\n$_CLICK"

; Installation
	LangString W7S_Account ${LANG_SPANISH} "Configuración Multi-Ususario"
	LangString W7S_No_Account ${LANG_SPANISH} "Configuración Mono-Ususario"
	LangString W7S_Winamp_Path ${LANG_SPANISH} "Buscando destino de los archivos de configuracion..."
	LangString W7S_Win7_Warning ${LANG_SPANISH} "No estas usando Windows 7. Este plugin necesita Windows 7 para funcionar correctamente.$\r$\n¿Deseas instalarlo de todos modos?"
	
; Close all instances of Winamp
	LangString W7S_Running_Winamp ${LANG_SPANISH} "¡Winamp esta abierto!"
	LangString W7S_Closing_Winamp ${LANG_SPANISH} "        Cerrando Winamp (winamp.exe)..."
	LangString W7S_No_Winamp ${LANG_SPANISH} "OK. Winamp no esta abierto..."
	LangString W7S_No_More_Winamp ${LANG_SPANISH} "        OK. Winamp esta cerrado..."  
	LangString W7S_Check_Winamp ${LANG_SPANISH} "Comprobando si Winamp esta abierto..."
	LangString W7S_Close_Winamp  ${LANG_SPANISH} "Antes de continuar, cierra todas las instancias de Winamp.$\r$\n¿Estas seguro de querer cerrar Winamp (recomendado)?"	