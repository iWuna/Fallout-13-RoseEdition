/obj/item/prefabs/complex/WeaponFrame/makeshift
	name = "Makeshift weapon frame"
	max_complexity = 100
	destroy_chance = 30
	tags = list("makeshift_quality")
	incompatible_tags = list("masterwork_quality")
	quality = "makeshift" //This just adds a suffix at the end of the gun name

/obj/item/prefabs/complex/WeaponFrame/standard
	max_complexity = 140
	destroy_chance = 10
	tags = list("standard_quality")
	quality = "standard"

/obj/item/prefabs/complex/WeaponFrame/improved
	name = "Improved Weapon Frame"
	max_complexity = 170
	destroy_chance = 25
	tags = list("improved_quality")
	quality = "improved"

/obj/item/prefabs/complex/WeaponFrame/masterwork
	name = "Masterwork Weapon Frame"
	max_complexity = 270
	destroy_chance = 0
	tags = list("masterwork_quality")
	incompatible_tags = "makeshift_quality"
	quality = "masterwork"


/obj/item/prefabs/complex/simpleWeaponFrame/low
	name = "Simple Weapon Frame (standard)"
	desc = ""
	icon_state = "gunframe"

/obj/item/prefabs/complex/complexWeaponFrame/low
	name = "Complex Weapon Frame (standard)"
	desc = ""
	icon_state = "gunframe"

/obj/item/prefabs/complex/simpleWeaponFrame/mid
	name = "Simple Weapon Frame (improved)"
	desc = ""
	//icon_state = ""

/obj/item/prefabs/complex/complexWeaponFrame/mid
	name = "Complex Weapon Frame (improved)"
	desc = ""
	//icon_state = ""

/obj/item/prefabs/complex/simpleWeaponFrame/high
	name = "Simple Weapon Frame (masterwork)"
	desc = ""
	//icon_state = ""

/obj/item/prefabs/complex/complexWeaponFrame/high
	name = "Complex Weapon Frame (masterwork)"
	desc = ""
	//icon_state = ""