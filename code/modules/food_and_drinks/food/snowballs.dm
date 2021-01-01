/obj/item/reagent_containers/food/snacks/snowball
	icon = 'icons/obj/items_and_weapons.dmi'
	icon_state = "snowball"
	name = "snowball"
	w_class = WEIGHT_CLASS_SMALL
	slices_num = 4
	volume = 40
	list_reagents = list("nutriment" = 10, "water" = 25, "vitamin" = 5)
	tastes = list("water" = 1, "snow" = 1, "piss" = 1)
	foodtype = RAW

/obj/item/reagent_containers/food/snacks/snowball/Initialize(mapload)
	. = ..()
	var/matrix/starting = matrix()
	starting.Scale(0.75)
	transform = starting

/obj/item/reagent_containers/food/snacks/snowball/attackby(obj/item/I, mob/user)
	if(istype(I, /obj/item/shard))
		var/obj/item/shard/S = I
		playsound(loc, 'sound/effects/glass_step.ogg', 30, 1)
		to_chat(user, "You staff [S] into [src].")
		new/obj/item/reagent_containers/food/snacks/snowball/harmball(user.drop_location())
		S.Destroy()
		Destroy()
	else
		return ..()

/obj/item/reagent_containers/food/snacks/snowball/throw_impact(atom/target)
	if(..() || !iscarbon(target))
		return
	
	var/mob/living/carbon/C = target
	playsound(target, 'sound/effects/hit_punch.ogg', 50, 1)
	C.adjustStaminaLoss(rand(5,15))
	Destroy()

/obj/item/reagent_containers/food/snacks/snowball/harmball
	icon = 'icons/obj/items_and_weapons.dmi'
	icon_state = "harmball"
	name = "suspicious snowball"
	w_class = WEIGHT_CLASS_SMALL
	slices_num = 4
	volume = 40
	list_reagents = list("nutriment" = 5, "water" = 20, "glass_shreds" = 15)
	tastes = list("water" = 1, "snow" = 1, "glass" = 1)
	foodtype = TOXIC
	throwforce = 20

/obj/item/reagent_containers/food/snacks/snowball/harmball/throw_impact(atom/target)
	if(..() || !iscarbon(target))
		return

	var/mob/living/carbon/C = target
	playsound(target, 'sound/effects/hit_punch.ogg', 50, 1)
	C.adjustStaminaLoss(rand(10,25))
	if(prob(25))
		C.Knockdown(20)
		to_chat(C, "<span class='userdanger'>You are knocked down by [src]!</span>")
		visible_message("<span class='danger'>[C] is knocked down by [src]!</span>")
	Destroy()