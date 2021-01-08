// FOR DEBUG PURPOSES //

/obj/item/storage/box/projectile_components
	name = "Projectile componetns"
	desc = "Shitspawn!! REEEEEEE!!"

/obj/item/storage/box/projectile_components/Initialize(mapload)
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.display_numerical_stacking = TRUE
	STR.click_gather = TRUE
	STR.max_items = 1000
	STR.max_w_class = WEIGHT_CLASS_GIGANTIC

/obj/item/storage/box/projectile_components/PopulateContents()
	..()
	for(var/P in subtypesof(/obj/item/prefabs/complex))
		for(var/i in 1 to 10)
			var/obj/item/prefabs/complex/PR = P
			new PR(src)
	for(var/P in subtypesof(/obj/item/advanced_crafting_components))
		for(var/i in 1 to 10)
			var/obj/item/prefabs/complex/PR = P
			new PR(src)