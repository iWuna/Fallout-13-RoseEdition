/obj/item/ammo_box/magazine/m10mm
	name = "pistol magazine (10mm)"
	desc = "A gun magazine."
	icon_state = "9x19p"
	ammo_type = /obj/item/ammo_casing/c10mm
	caliber = "10mm"
	max_ammo = 8
	multiple_sprites = 2

/obj/item/ammo_box/magazine/m10mm/hp
	name = "pistol magazine (10mm hollowpoint)"
	icon_state = "9x19pH"
	desc= "A gun magazine. Loaded with hollow-point rounds, extremely effective against unarmored targets, but nearly useless against protective clothing."
	ammo_type = /obj/item/ammo_casing/c10mm/hp

/obj/item/ammo_box/magazine/m10mm/ap
	name = "pistol magazine (10mm armor piercing)"
	icon_state = "9x19pA"
	desc= "A gun magazine. Loaded with rounds which penetrate armour, but are less effective against normal targets."
	ammo_type = /obj/item/ammo_casing/c10mm/ap

/obj/item/ammo_box/magazine/m45
	name = "handgun magazine (.45)"
	icon_state = "45-8"
	ammo_type = /obj/item/ammo_casing/c45
	caliber = ".45"
	max_ammo = 8

/obj/item/ammo_box/magazine/m45/update_icon()
	..()
	if (ammo_count() >= 8)
		icon_state = "45-8"
	else
		icon_state = "45-[ammo_count()]"

/obj/item/ammo_box/magazine/m45/empty
	start_empty = 1

/obj/item/ammo_box/magazine/m45exp
	name = "socom magazine (.45)"
	icon_state = "45exp-12"
	ammo_type = /obj/item/ammo_casing/c45
	caliber = ".45"
	max_ammo = 12

/obj/item/ammo_box/magazine/m45exp/update_icon()
	..()
	if (ammo_count() >= 12)
		icon_state = "45exp-12"
	else
		icon_state = "45exp-[ammo_count()]"

/obj/item/ammo_box/magazine/m45exp/empty
	start_empty = 1

/obj/item/ammo_box/magazine/pistolm9mm
	name = "pistol magazine (9mm)"
	icon_state = "9x19p-8"
	ammo_type = /obj/item/ammo_casing/c9mm
	caliber = "9mm"
	max_ammo = 15

/obj/item/ammo_box/magazine/pistolm9mm/update_icon()
	..()
	icon_state = "9x19p-[ammo_count() ? "8" : "0"]"

/obj/item/ammo_box/magazine/m44
	name = "handgun magazine (.44 magnum)"
	icon_state = "50ae"
	ammo_type = /obj/item/ammo_casing/m44
	caliber = "44"
	max_ammo = 7
	multiple_sprites = 1

/obj/item/ammo_box/magazine/m44/empty
	start_empty = 1


/obj/item/ammo_box/magazine/a50
	name = "handgun magazine (.50 AE)"
	icon_state = "50ae"
	ammo_type = /obj/item/ammo_casing/a50AE
	caliber = "50AE"
	max_ammo = 7
	multiple_sprites = 1

/obj/item/ammo_box/magazine/a50/empty
	start_empty = 1


/*
---Fallout 13---
*/

/obj/item/ammo_box/magazine/m10mm_adv
	name = "10mm pistol magazine (10mm)"
	icon_state = "10mmadv"
	ammo_type = /obj/item/ammo_casing/c10mm
	caliber = "10mm"
	max_ammo = 12
	multiple_sprites = 2

/obj/item/ammo_box/magazine/m10mm_adv/empty
	start_empty = 1


/obj/item/ammo_box/magazine/m9mm
	name = "9mm pistol magazine (9mm)"
	icon_state = "9mmp"
	ammo_type = /obj/item/ammo_casing/c9mm
	caliber = "9mm"
	max_ammo = 10
	multiple_sprites = 2

/obj/item/ammo_box/magazine/m9mm/empty
	start_empty = 1


/obj/item/ammo_box/magazine/m9mmds
	name = "doublestack pistol magazine (9mm)"
	icon_state = "m9mmds"
	ammo_type = /obj/item/ammo_casing/c9mm
	caliber = "9mm"
	max_ammo = 15
	multiple_sprites = 2

/obj/item/ammo_box/magazine/m9mmds/empty
	start_empty = 1

