/datum/species/supermutant
	name = "Super mutant"
	id = "supermutant"
	say_mod = "yells"
	limbs_id = "hulky"
	damage_overlay_type = ""
	no_equip = list(SLOT_WEAR_MASK, SLOT_WEAR_SUIT, SLOT_GLOVES, SLOT_SHOES, SLOT_W_UNIFORM, SLOT_S_STORE)
	inherent_traits = list(TRAIT_RADIMMUNE)
	species_traits = list(NO_UNDERWEAR)
	inherent_biotypes = list(MOB_INORGANIC, MOB_HUMANOID)
	punchstunthreshold = 9
	use_skintones = 0
	sexes = 1
	disliked_food = GROSS
	liked_food = JUNKFOOD | FRIED | RAW


/datum/species/supermutant/nightkin
	name = "Nightkin"
	id = "nightkin"
	limbs_id = "night"