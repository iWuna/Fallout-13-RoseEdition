/obj/item/clothing/under/hulk
	species_exception = list(/datum/species/supermutant)
	species_exclusively = list(/datum/species/supermutant)

/obj/item/clothing/under/hulk/lili_clothes
	name = "hulky farmer suit"
	icon_state = "lili_clothes"


/obj/item/clothing/under/hulk/pants
	name = "hulky pants"
	icon_state = "hulk_clothes"


/obj/item/clothing/under/hulk/hulk_vault
	name = "hulky vault suit"
	icon_state = "hulk_vault"


/obj/item/clothing/under/hulk/hulk_vault13
	name = "hulky vault 13 suit"
	icon_state = "hulk_vault13"


/obj/item/clothing/under/hulk/hulk_vault113
	name = "hulky vault 113 suit"
	icon_state = "hulk_vault113"

/obj/item/clothing/under/hulk/suit
	name = "black suit"
	icon_state = "hulk_suit"

/obj/item/clothing/under/hulk/suit/pink
	name = "pink suit"
	icon_state = "hulk_suit_pink"

/obj/item/clothing/under/hulk/leather
	name = "leather suit"
	icon_state = "hulk_leather"

/obj/item/clothing/under/hulk/stripped
	name = "stripped suit"
	icon_state = "hulk_stripped"

/obj/item/clothing/under/hulk/robe
	name = "robe"
	icon_state = "hulk_robe"

/obj/item/clothing/under/hulk/robe/hood
	name = "hooded robe"
	icon_state = "hulk_robe_hood"

/obj/item/clothing/suit/armor/hulk
	species_exception = list(/datum/species/supermutant)
	species_exclusively = list(/datum/species/supermutant)


/obj/item/clothing/suit/armor/hulk/hulk_armor
	name = "hulky armor"
	icon_state = "hulk_armor"
	armor = list("melee" = 35, "bullet" = 35, "laser" = 25, "energy" = 15, "bomb" = 15, "bio" = 10, "rad" = 5, "fire" = 20, "acid" = 15)


/obj/item/clothing/suit/armor/hulk/night_armor
	name = "nightkin armor"
	icon_state = "night_armor"
	armor = list("melee" = 40, "bullet" = 40, "laser" = 30, "energy" = 20, "bomb" = 30, "bio" = 0, "rad" = 0, "fire" = 45, "acid" = 35)


/obj/item/clothing/suit/armor/hulk/metal_armor
	name = "metal armor"
	icon_state = "marcus_armor"
	armor = list("melee" = 45, "bullet" = 45, "laser" = 40, "energy" = 25, "bomb" = 30, "bio" = 0, "rad" = 0, "fire" = 45, "acid" = 35)


/obj/item/clothing/suit/armor/hulk/horrigan_armor
	name = "reinforced hulky armor"
	icon_state = "horrigan_armor"
	armor = list("melee" = 50, "bullet" = 50, "laser" = 55, "energy" = 45, "bomb" = 55, "bio" = 60, "rad" = 15, "fire" = 60, "acid" = 40)


/obj/item/clothing/suit/armor/f13/power_armor/hulk
	species_exception = list(/datum/species/supermutant)
	species_exclusively = list(/datum/species/supermutant)


/obj/item/clothing/suit/armor/f13/power_armor/hulk/t45salvage
	name = "salvaged T-45b power armor"
	desc = "It's a set of early-model T-45 power armor with a custom air conditioning module and stripped out servomotors. Bulky and slow, but almost as good as the real thing. This one is extra big."
	icon_state = "hulk_salvage"
	item_state = "hulk_salvage"
	armor = list("melee" = 75, "bullet" = 60, "laser" = 35, "energy" = 50, "bomb" = 48, "bio" = 60, "rad" = 50, "fire" = 80, "acid" = 0)
	requires_training = FALSE
	slowdown = 1.40
	cold_protection = 2547

/obj/item/clothing/suit/armor/f13/power_armor/hulk/t45salvage_ncr
	name = "salvaged NCR power armor"
	desc = "It's a set of T-45b power armor with a air conditioning module installed, it however lacks servomotors to enhance the users strength. This one has brown paint trimmed along the edge and a two headed bear painted onto the chestplate."
	icon_state = "hulk_salvage_ncr"
	item_state = "hulk_salvage_ncr"
	armor = list("melee" = 75, "bullet" = 60, "laser" = 35, "energy" = 50, "bomb" = 48, "bio" = 60, "rad" = 50, "fire" = 80, "acid" = 0)
	requires_training = FALSE
	cold_protection = 1046
	slowdown = 1.40

/obj/item/clothing/suit/armor/f13/power_armor/hulk/t45raider
	name = "raider T-45b power armor"
	desc = "It's a set of T-45b power armor with some of its plating heavily reconditioned. This set has seen better days, metal scrap has been spot welded to the chassis "
	icon_state = "hulk_pa_raider"
	item_state = "hulk_pa_raider"
	armor = list("melee" = 60, "bullet" = 60, "laser" = 35, "energy" = 50, "bomb" = 48, "bio" = 60, "rad" = 50, "fire" = 80, "acid" = 0)
	slowdown = 0.4
	cold_protection = 1046
	heat_protection = 1046
	requires_training = FALSE

/obj/item/clothing/suit/armor/f13/power_armor/hulk/t45d
	name = "T-45d power armor"
	desc = "Originally developed and manufactured for the United States Army by American defense contractor West Tek, the T-45d power armor was the first version of power armor to be successfully deployed in battle."
	icon_state = "hulk_pa"
	item_state = "hulk_pa"
	cold_protection = 2546
	armor = list("melee" = 65, "bullet" = 60, "laser" = 50, "energy" = 60, "bomb" = 62, "bio" = 100, "rad" = 90, "fire" = 90, "acid" = 0)


/obj/item/clothing/head/welding/hulk
	name = "hulky welding helmet"
	icon_state = "weldinghulk"
	item_state = "weldinghulk"
	species_exception = list(/datum/species/supermutant)
	species_exclusively = list(/datum/species/supermutant)
	armor = list("melee" = 10, "bullet" = 15, "laser" = 20, "energy" = 10, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 20, "acid" = 0)


/obj/item/clothing/head/helmet/hulk_lili
	name = "hulky farmer hat"
	desc = "Vintage farmer hat, made of straw"
	icon_state = "lili_hat"
	item_state = "lili_hat"
	armor = list("melee" = 5, "bullet" = 10, "laser" = 5, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 10, "fire" = 20, "acid" = 10)
	species_exception = list(/datum/species/supermutant)
	species_exclusively = list(/datum/species/supermutant)

/obj/item/clothing/head/helmet/hulk_pig
	name = "pig mask"
	desc = "Oink!"
	icon_state = "hulk_pig"
	item_state = "hulk_pig"
	species_exception = list(/datum/species/supermutant)
	species_exclusively = list(/datum/species/supermutant)


/obj/item/clothing/head/helmet/hulk_ushanka
	name = "ushanka"
	desc = "Perfect for winter in Siberia, da?"
	icon_state = "hulk_ushanka"
	item_state = "hulk_ushanka"
	species_exception = list(/datum/species/supermutant)
	species_exclusively = list(/datum/species/supermutant)


/obj/item/clothing/glasses/sunglasses/hulk_lili
	name = "large sunglasses"
	desc = "Old and large. Goes with tinted red glass"
	icon_state = "lili_glasses"
	item_state = "lili_glasses"
	species_exclusively = list(/datum/species/supermutant)


/obj/item/clothing/head/helmet/hulk
	species_exception = list(/datum/species/supermutant)
	species_exclusively = list(/datum/species/supermutant)

/obj/item/clothing/head/helmet/hulk/crude
	name = "rusted hulky helmet"
	desc = "A crudely formed large metal mask"
	icon_state = "hulk_helmet1"
	item_state = "hulk_helmet1"
	armor = list("melee" = 50, "bullet" = 15, "laser" = 15, "energy" = 10, "bomb" = 15, "bio" = 20, "rad" = 20, "fire" = 20, "acid" = 0)

/obj/item/clothing/head/helmet/hulk/metal
	name = "metal hulky helmet"
	desc = "Large metal hockey mask"
	icon_state = "hulk_helmet2"
	item_state = "hulk_helmet2"
	armor = list("melee" = 40, "bullet" = 35, "laser" = 30, "energy" = 20, "bomb" = 26, "bio" = 30, "rad" = 30, "fire" = 50, "acid" = 0)

/obj/item/clothing/head/helmet/hulk/advanced
	name = "reinforced hulky helmet"
	desc = "Reinforced metal mask, extended with extra plates for big bad boys. Based on power armor, strangely familiar"
	icon_state = "hulk_helmet_h"
	item_state = "hulk_helmet_h"
	armor = list("melee" = 55, "bullet" = 50, "laser" = 55, "energy" = 40, "bomb" = 39, "bio" = 70, "rad" = 70, "fire" = 70, "acid" = 0)


/obj/item/clothing/gloves/hulk_botanic
	name = "large garden gloves"
	desc = "These leather gloves protect against thorns, barbs, prickles, spikes and other harmful objects of floral origin.  They're also quite warm."
	icon_state = "lili_gloves"
	item_state = "lili_gloves"
	permeability_coefficient = 0.9
	cold_protection = HANDS
	min_cold_protection_temperature = GLOVES_MIN_TEMP_PROTECT
	heat_protection = HANDS
	max_heat_protection_temperature = GLOVES_MAX_TEMP_PROTECT
	resistance_flags = NONE
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 70, "acid" = 30)
	species_exception = list(/datum/species/supermutant)
	species_exclusively = list(/datum/species/supermutant)

/obj/item/clothing/shoes/hulk_boots
	name = "large leather boots"
	desc = "A pair of leather boots that appear to be mostly intact and lightly used"
	icon_state = "hulk_boots"
	item_state = "hulk_boots"
	species_exception = list(/datum/species/supermutant)
	species_exclusively = list(/datum/species/supermutant)


/obj/item/storage/backpack/hulk
	name = "hulky backpack"
	desc = "A robust backpack for stashing your loot."
	icon_state = "hulk_backpack"
	item_state = "hulk_backpack"
	species_exception = list(/datum/species/supermutant)
	species_exclusively = list(/datum/species/supermutant)


/obj/item/radio/headset/hulk
	name = "large headset"
	icon_state = "marcus"
	species_exception = list(/datum/species/supermutant)
	species_exclusively = list(/datum/species/supermutant)


/obj/item/clothing/head/helmet/f13/power_armor/hulk
	species_exception = list(/datum/species/supermutant)
	species_exclusively = list(/datum/species/supermutant)

/obj/item/clothing/head/helmet/f13/power_armor/hulk/t45b
	name = "salvaged T-45b helmet"
	desc = "It's a salvaged T-45b power armor helmet."
	icon_state = "hulk_salvage"
	item_state = "hulk_salvage"
	armor = list("melee" = 75, "bullet" = 60, "laser" = 30, "energy" = 50, "bomb" = 48, "bio" = 60, "rad" = 50, "fire" = 80, "acid" = 0)
	darkness_view = 0
	lighting_alpha = null
	requires_training = FALSE


/obj/item/clothing/head/helmet/f13/power_armor/hulk/t45braider
	name = "raider T-45b power helmet"
	desc = "This power armor helmet is so decrepit and battle-worn that it have lost most of its capability to protect the wearer from harm. This helmet seems to be heavily modified, heavy metal banding fused to the helmet"
	icon_state = "hulk_pa_raider"
	item_state = "hulk_pa_raider"
	armor = list("melee" = 50, "bullet" = 45, "laser" = 30, "energy" = 25, "bomb" = 39, "bio" = 0, "rad" = 50, "fire" = 0, "acid" = 0)
	lighting_alpha = null
	requires_training = FALSE


/obj/item/clothing/head/helmet/f13/power_armor/hulk/t45bncr
	name = "salvaged T-45b ncr helmet"
	desc = "It's a salvaged T-45b power armor helmet."
	icon_state = "hulk_salvage_ncr"
	item_state = "hulk_salvage_ncr"
	armor = list("melee" = 75, "bullet" = 60, "laser" = 30, "energy" = 50, "bomb" = 48, "bio" = 60, "rad" = 50, "fire" = 80, "acid" = 0)
	darkness_view = 0
	lighting_alpha = null
	requires_training = FALSE