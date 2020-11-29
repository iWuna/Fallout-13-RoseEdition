
/datum/crafting_recipe/hulkcrude
	name = "hulky armor"
	result = /obj/item/clothing/suit/armor/hulk/hulk_armor
	reqs = list(/obj/item/clothing/suit/armor/f13/leather_jacket/combat,
				/obj/item/stack/sheet/leather = 4,
				/obj/item/stack/sheet/hay = 1,
				/obj/item/stack/crafting/metalparts = 2
				)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_HULKY

/datum/crafting_recipe/nightarmor
	name = "nightkin armor"
	result = /obj/item/clothing/suit/armor/hulk/night_armor
	reqs = list(/obj/item/clothing/suit/armor/f13/leather_jacket/combat,
				/obj/item/stack/sheet/leather = 6,
				/obj/item/stack/sheet/hay = 2,
				/obj/item/stack/crafting/goodparts = 2
				)
	time = 60
	tools = list(TOOL_WORKBENCH)
	category = CAT_CLOTHING
	subcategory = CAT_HULKY

/datum/crafting_recipe/hulkmetalarmor
	name = "hulky metal armor"
	result = /obj/item/clothing/suit/armor/hulk/metal_armor
	reqs = list(/obj/item/clothing/suit/armor/f13/metalarmor = 1,
				/obj/item/stack/sheet/leather = 6,
				/obj/item/stack/sheet/hay = 2,
				/obj/item/stack/crafting/metalparts = 1,
				/obj/item/stack/crafting/goodparts = 2
				)
	time = 60
	tools = list(TOOL_WORKBENCH)
	category = CAT_CLOTHING
	subcategory = CAT_HULKY

/datum/crafting_recipe/horriganarmor
	name = "reinforced hulky armor"
	result = /obj/item/clothing/suit/armor/hulk/horrigan_armor
	reqs = list(/obj/item/clothing/suit/armor/f13/metalarmor = 1,
				/obj/item/stack/sheet/leather = 6,
				/obj/item/stack/sheet/hay = 2,
				/obj/item/stack/crafting/metalparts = 2,
				/obj/item/stack/crafting/goodparts = 4
				)
	time = 60
	tools = list(TOOL_AWORKBENCH)
	category = CAT_CLOTHING
	subcategory = CAT_HULKY

/datum/crafting_recipe/hulkt45
	name = "T-45d power armor"
	result = /obj/item/clothing/suit/armor/f13/power_armor/hulk/t45d
	reqs = list(/obj/item/clothing/suit/armor/f13/power_armor/t45d = 1,
				/obj/item/stack/crafting/metalparts = 1,
				/obj/item/stack/crafting/goodparts = 2
				)
	time = 60
	tools = list(TOOL_AWORKBENCH)
	category = CAT_CLOTHING
	subcategory = CAT_HULKY

/datum/crafting_recipe/hulkt45
	name = "salvaged T-45b power armor"
	result = /obj/item/clothing/suit/armor/f13/power_armor/hulk/t45salvage
	reqs = list(/obj/item/clothing/suit/armor/f13/power_armor/t45b = 1,
				/obj/item/stack/crafting/metalparts = 1,
				/obj/item/stack/crafting/goodparts = 2
				)
	time = 60
	tools = list(TOOL_WORKBENCH)
	category = CAT_CLOTHING
	subcategory = CAT_HULKY

/datum/crafting_recipe/hulkt45ncr
	name = "salvaged NCR power armor"
	result = /obj/item/clothing/suit/armor/f13/power_armor/hulk/t45salvage_ncr
	reqs = list(/obj/item/clothing/suit/armor/f13/power_armor/t45b = 1,
				/obj/item/stack/crafting/metalparts = 1,
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/sheet/cloth = 2
				)
	time = 60
	tools = list(TOOL_WORKBENCH)
	category = CAT_CLOTHING
	subcategory = CAT_HULKY

/datum/crafting_recipe/hulkt45raider
	name = "raider T-45b power armor"
	result = /obj/item/clothing/suit/armor/f13/power_armor/hulk/t45raider
	reqs = list(/obj/item/clothing/suit/armor/f13/power_armor/t45b = 1,
				/obj/item/stack/crafting/metalparts = 1,
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/sheet/cloth = 1
				)
	time = 60
	tools = list(TOOL_WORKBENCH)
	category = CAT_CLOTHING
	subcategory = CAT_HULKY

/datum/crafting_recipe/hulchelmetcrude
	name = "rusted hulky helmet"
	result = /obj/item/clothing/head/helmet/hulk/crude
	reqs = list(/obj/item/stack/sheet/leather = 3,
				/obj/item/stack/sheet/metal = 5,
				/obj/item/stack/crafting/metalparts = 2)
	tools = list(TOOL_WORKBENCH)
	time = 30
	category = CAT_CLOTHING
	subcategory = CAT_HULKY

/datum/crafting_recipe/hulkhelmetmetal
	name = "metal hulky helmet"
	result = /obj/item/clothing/head/helmet/hulk/metal
	reqs = list(/obj/item/stack/sheet/leather = 4,
				/obj/item/stack/sheet/metal = 15,
				/obj/item/stack/crafting/metalparts = 2,
				/obj/item/stack/crafting/goodparts = 4)
	tools = list(TOOL_WORKBENCH)
	time = 30
	category = CAT_CLOTHING
	subcategory = CAT_HULKY

/datum/crafting_recipe/hulkhelmetmetal
	name = "reinforced hulky helmet"
	result = /obj/item/clothing/head/helmet/hulk/advanced
	reqs = list(/obj/item/clothing/head/helmet/f13/metalmask= 1,
				/obj/item/stack/sheet/leather = 4,
				/obj/item/stack/sheet/metal = 15,
				/obj/item/stack/crafting/metalparts = 2,
				/obj/item/stack/crafting/goodparts = 4)
	tools = list(TOOL_AWORKBENCH)
	time = 60
	category = CAT_CLOTHING
	subcategory = CAT_HULKY

/datum/crafting_recipe/hulkt45d_helm
	name = "T-45d power helmet"
	result = /obj/item/clothing/head/helmet/f13/power_armor/t45d
	reqs = list(/obj/item/clothing/head/helmet/f13/power_armor/t45d = 1,
				/obj/item/stack/crafting/metalparts = 1,
				/obj/item/stack/crafting/goodparts = 2
				)
	time = 60
	tools = list(TOOL_AWORKBENCH)
	category = CAT_CLOTHING
	subcategory = CAT_HULKY

/datum/crafting_recipe/hulkt45b_helm
	name = "salvaged T-45b power helmet"
	result = /obj/item/clothing/head/helmet/f13/power_armor/hulk/t45b
	reqs = list(/obj/item/clothing/head/helmet/f13/power_armor/t45b = 1,
				/obj/item/stack/crafting/metalparts = 1,
				/obj/item/stack/crafting/goodparts = 2
				)
	time = 60
	tools = list(TOOL_WORKBENCH)
	category = CAT_CLOTHING
	subcategory = CAT_HULKY

/datum/crafting_recipe/hulkt45bncr_helm
	name = "salvaged NCR power helmet"
	result = /obj/item/clothing/head/helmet/f13/power_armor/hulk/t45bncr
	reqs = list(/obj/item/clothing/head/helmet/f13/power_armor/t45b = 1,
				/obj/item/stack/crafting/metalparts = 1,
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/sheet/cloth = 2
				)
	time = 60
	tools = list(TOOL_WORKBENCH)
	category = CAT_CLOTHING
	subcategory = CAT_HULKY

/datum/crafting_recipe/hulkt45braider_helm
	name = "raider T-45b power helmet"
	result = /obj/item/clothing/head/helmet/f13/power_armor/hulk/t45braider
	reqs = list(/obj/item/clothing/head/helmet/f13/power_armor/t45b = 1,
				/obj/item/stack/crafting/metalparts = 1,
				/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/sheet/cloth = 1
				)
	time = 60
	tools = list(TOOL_WORKBENCH)
	category = CAT_CLOTHING
	subcategory = CAT_HULKY

/datum/crafting_recipe/hulkfarmer
	name = "hulky farmer suit"
	result = /obj/item/clothing/under/hulk/lili_clothes
	reqs = list(/obj/item/stack/sheet/hay = 2,
				/obj/item/stack/sheet/cloth = 3)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_HULKY

/datum/crafting_recipe/hulkpants
	name = "hulky pants"
	result = /obj/item/clothing/under/hulk/pants
	reqs = list(/obj/item/stack/sheet/hay = 2,
				/obj/item/stack/sheet/cloth = 3)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_HULKY

/datum/crafting_recipe/hulkblack
	name = "black suit"
	result = /obj/item/clothing/under/hulk/suit
	reqs = list(/obj/item/stack/sheet/cloth = 4)
	time = 10
	category = CAT_CLOTHING
	subcategory = CAT_HULKY


/datum/crafting_recipe/hulkpink
	name = "pink suit"
	result = /obj/item/clothing/under/hulk/suit/pink
	reqs = list(/obj/item/stack/sheet/cloth = 4)
	time = 10
	category = CAT_CLOTHING
	subcategory = CAT_HULKY

/datum/crafting_recipe/hulkleather
	name = "leather suit"
	result = /obj/item/clothing/under/hulk/leather
	reqs = list(/obj/item/stack/sheet/leather = 4)
	tools = list(TOOL_WORKBENCH)
	time = 10
	category = CAT_CLOTHING
	subcategory = CAT_HULKY

/datum/crafting_recipe/hulkstripped
	name = "stripped suit"
	result = /obj/item/clothing/under/hulk/stripped
	reqs = list(/obj/item/stack/sheet/cloth = 2)
	time = 10
	category = CAT_CLOTHING
	subcategory = CAT_HULKY


/datum/crafting_recipe/hulkrobe
	name = "robe"
	result = /obj/item/clothing/under/hulk/robe
	reqs = list(/obj/item/stack/sheet/cloth = 2)
	time = 10
	category = CAT_CLOTHING
	subcategory = CAT_HULKY

/datum/crafting_recipe/hulkrobe1
	name = "hooded robe"
	result = /obj/item/clothing/under/hulk/robe/hood
	reqs = list(/obj/item/stack/sheet/cloth = 2)
	time = 10
	category = CAT_CLOTHING
	subcategory = CAT_HULKY

/datum/crafting_recipe/hulkvault
	name = "hulky vault suit"
	result = /obj/item/clothing/under/hulk/hulk_vault
	reqs = list(/obj/item/stack/sheet/cloth = 2,
				/obj/item/clothing/under/f13/vault)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_HULKY

/datum/crafting_recipe/hulkwelding
	name = "large welding helmet"
	result = /obj/item/clothing/head/welding/hulk
	reqs = list(/obj/item/clothing/head/welding,
				/obj/item/stack/sheet/metal = 5)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_HULKY

/datum/crafting_recipe/hulkfarmerhat
	name = "farmer hat"
	result = /obj/item/clothing/head/helmet/hulk_lili
	reqs = list(/obj/item/stack/sheet/cloth = 2,
				/obj/item/stack/sheet/hay = 3)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_HULKY

/datum/crafting_recipe/hulkushanka
	name = "ushanka"
	result = /obj/item/clothing/head/helmet/hulk_ushanka
	reqs = list(/obj/item/stack/sheet/cloth = 2,
				)
	time = 10
	category = CAT_CLOTHING
	subcategory = CAT_HULKY

/datum/crafting_recipe/hulkupig
	name = "pig mask"
	result = /obj/item/clothing/head/helmet/hulk_pig
	reqs = list(/obj/item/stack/sheet/cloth = 3,
				)
	time = 10
	category = CAT_CLOTHING
	subcategory = CAT_HULKY

/datum/crafting_recipe/hulkglass
	name = "large glasses"
	result = /obj/item/clothing/glasses/sunglasses/hulk_lili
	reqs = list(/obj/item/stack/sheet/metal = 5,
				/obj/item/stack/sheet/glass = 2)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_HULKY

/datum/crafting_recipe/bootsboots
	name = "hulky boots"
	result = /obj/item/clothing/shoes/hulk_boots
	reqs = list(/obj/item/stack/sheet/leather = 2,
				/obj/item/stack/sheet/cloth = 2)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_HULKY

/datum/crafting_recipe/hulkgloves
	name = "large botanic gloves"
	result = /obj/item/clothing/gloves/hulk_botanic
	reqs = list(/obj/item/stack/sheet/leather = 2,
				/obj/item/stack/sheet/cloth = 2)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_HULKY

/datum/crafting_recipe/hulkbackpack
	name = "hulky backpack"
	result = /obj/item/storage/backpack/hulk
	reqs = list(/obj/item/stack/sheet/cloth = 4)
	tools = list(TOOL_WORKBENCH)
	time = 20
	category = CAT_CLOTHING
	subcategory = CAT_HULKY

/datum/crafting_recipe/hulkheadset
	name = "large radio headset"
	result = /obj/item/radio/headset/hulk
	reqs = list(/obj/item/stack/sheet/metal = 3,
				/obj/item/stack/crafting/electronicparts = 1)
	tools = list(TOOL_WORKBENCH)
	time = 15
	category = CAT_CLOTHING
	subcategory = CAT_HULKY
