NUM_ODD_EGGS EQU 5
ODD_EGG_LENGTH EQU 10

prob: MACRO
prob_total += \1
	dw prob_total * $ffff / 100
ENDM

OddEggProbabilities:
	table_width 2, OddEggProbabilities
prob_total = 0
; Pichu
	prob 0
; Magby
	prob 0
; Elekid
	prob 0
; Tyrogue
	prob 0
; Munchlax
	prob 100
	assert_table_length NUM_ODD_EGGS

OddEggs:
	table_width ODD_EGG_LENGTH, OddEggs
	db PICHU
	db THUNDERSHOCK, CHARM, DIZZY_PUNCH, NO_MOVE
	db $BB, $BB, $BB ; DVs
	db SHINY_MASK | HIDDEN_ABILITY | QUIRKY, IS_EGG_MASK | PLAIN_FORM ; Personality

	db MAGBY
	db HAZE, LEER, DIZZY_PUNCH, NO_MOVE
	db $BB, $BB, $BB ; DVs
	db SHINY_MASK | HIDDEN_ABILITY | QUIRKY, IS_EGG_MASK ; Personality

	db ELEKID
	db QUICK_ATTACK, LEER, DIZZY_PUNCH, NO_MOVE
	db $BB, $BB, $BB ; DVs
	db SHINY_MASK | HIDDEN_ABILITY | QUIRKY, IS_EGG_MASK ; Personality

	db TYROGUE
	db TACKLE, RAGE, FORESIGHT, DIZZY_PUNCH
	db $BB, $BB, $BB ; DVs
	db SHINY_MASK | HIDDEN_ABILITY | QUIRKY, IS_EGG_MASK ; Personality

	db MUNCHLAX
	db SWEET_KISS, METRONOME, TACKLE, DIZZY_PUNCH
	db $BB, $BB, $BB ; DVs
	db SHINY_MASK | HIDDEN_ABILITY | QUIRKY, IS_EGG_MASK ; Personality

	assert_table_length NUM_ODD_EGGS

MystriEgg:
	db TOGEPI
	db GROWL, CHARM, MOONBLAST, AEROBLAST
	db $FF, $FF, $FF ; DVs
	db SHINY_MASK | HIDDEN_ABILITY | QUIRKY, FEMALE | IS_EGG_MASK ; Personality
