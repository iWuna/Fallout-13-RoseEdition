/obj/item/gun/energy/disabler/fluff/angelofmercy
	name = "Angel of Mercy"
	desc = "Этот прекрасный шокер некогда принадлежал таинственному работорговцу из пустошей. Легенды гласят, что с его помощью было поймано около тысячи рабов. В его деталях можно разглядеть следы крови, которые спустя многие года работают в качестве смазки."
	icon = 'icons/obj/betaadvanced.dmi'
	icon_state = "compliance_regulatorfluff"

/obj/item/clothing/head/beret/mixanoff
	name = "officer beret"
	desc = "A green beret, standard issue for all commissioned NCR Officers."
	icon_state = "ncr_officer_beret"
	item_state = "ncr_officer_beret"
	armor = list("melee" = 50, "bullet" = 50, "laser" = 30, "energy" = 30, "bomb" = 30, "bio" = 40, "rad" = 30, "fire" = 60, "acid" = 10)

/obj/item/storage/briefcase/mixanoff
	name = "коробочка говна нахуй"
	desc = "Удали блять."

/obj/item/storage/briefcase/mixanoff/PopulateContents()
	new /obj/item/clothing/suit/armor/f13/power_armor/t45d/sierra(src)
	new /obj/item/clothing/head/beret/mixanoff(src)
	new /obj/item/book/granter/trait/pa_wear(src)
	new /obj/item/gun/ballistic/automatic/marksman/servicerifle/r82(src)
	new /obj/item/ammo_box/magazine/m556/rifle/extended(src)
	new /obj/item/ammo_box/magazine/m556/rifle/extended(src)