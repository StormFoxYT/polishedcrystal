	const_def
	const SCGB_BATTLE_GRAYSCALE
	const SCGB_BATTLE_COLORS
	const SCGB_POKEGEAR_PALS
	const SCGB_STATS_SCREEN_HP_PALS
	const SCGB_POKEDEX
	const SCGB_SLOT_MACHINE
	const SCGB_DIPLOMA
	const SCGB_MAPPALS
	const SCGB_PARTY_MENU
	const SCGB_EVOLUTION
	const SCGB_MOVE_LIST
	const SCGB_POKEDEX_SEARCH_OPTION
	const SCGB_BUYMENU_PALS
	const SCGB_PACKPALS
	const SCGB_TRAINER_CARD
	const SCGB_TRAINER_CARD_2
	const SCGB_POKEDEX_UNOWN_MODE
	const SCGB_BILLS_PC
	const SCGB_UNOWN_PUZZLE
	const SCGB_GAMEFREAK_LOGO
	const SCGB_TRADE_TUBE
	const SCGB_INTRO_PALS
	const SCGB_PLAYER_OR_MON_FRONTPIC_PALS
	const SCGB_TRAINER_OR_MON_FRONTPIC_PALS

SCGB_PARTY_MENU_HP_PALS  EQU -4
SCGB_RAM EQU -1


if DEF(MONOCHROME)

RGB_MONOCHROME_WHITE EQUS "RGB 31, 31, 31"
RGB_MONOCHROME_LIGHT EQUS "RGB 17, 24, 14"
RGB_MONOCHROME_DARK  EQUS "RGB 06, 13, 10"
RGB_MONOCHROME_BLACK EQUS "RGB 00, 00, 00"

MONOCHROME_RGB_FOUR: macro
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK
endm

MONOCHROME_RGB_TWO: macro
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_DARK
endm

endc
