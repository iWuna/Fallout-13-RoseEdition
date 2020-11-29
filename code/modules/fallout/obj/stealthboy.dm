/obj/item/stealthboy
	name = "Stealth Boy MK1"
	desc = "Pre-war device that generates a modulating field that transmits the reflected light from one side of an object to another"
	icon = 'icons/fallout/objects/medicine/chemical.dmi'
	icon_state = "stealth_boy"
	slot_flags = ITEM_SLOT_BELT
	w_class = WEIGHT_CLASS_SMALL
	var/active = FALSE
	var/mob/living/target
	var/charge = 100
	var/charge_use = 1
	var/brain_loss = 1
	var/cooldown = 0
	actions_types = list(/datum/action/item_action/toggle_stealthboy)

/obj/item/stealthboy/examine(mob/user)
	..()
	to_chat(user, "The charge meter reads: [charge].")

/obj/item/stealthboy/Destroy()
	if(active)
		STOP_PROCESSING(SSobj,src)
	return ..()


/obj/item/stealthboy/attack_self(mob/user)
	target = user
	if (cooldown < world.time)
		cooldown = world.time + 20 // 3 seconds
		if(active)
			Deactivate()
		else if (charge != 0)
			Activate()
	for(var/X in actions)
		var/datum/action/A = X
		A.UpdateButtonIcon()

/obj/item/stealthboy/proc/Activate()
	active = TRUE
	new /obj/effect/temp_visual/dir_setting/ninja/cloak(get_turf(target), target.dir)
	target.alpha = 60 - target.special_a * 5
	do_sparks(2, FALSE, target)
	charge -= 10 * charge_use
	playsound(target, 'sound/effects/sparks4.ogg', 20, 1)
	START_PROCESSING(SSobj, src)


/obj/item/stealthboy/proc/Deactivate()
	active = FALSE
	new /obj/effect/temp_visual/dir_setting/ninja(get_turf(target), target.dir)
	target.alpha = 255
	do_sparks(2, FALSE, target)
	playsound(target, 'sound/effects/phasein.ogg', 15, 1)
	playsound(target, 'sound/effects/sparks2.ogg', 20, 1)
	STOP_PROCESSING(SSobj, src)


/obj/item/stealthboy/equipped(mob/user)
	. = ..()
	target = user
	if (istype(loc, /obj/item/storage))
		Deactivate()
		target = null

/obj/item/stealthboy/dropped(mob/user)
	. = ..()
	if(active && user != loc)
		Deactivate()
		target = null

/obj/item/stealthboy/process()
	if(active == TRUE)
		charge -= charge_use
		target.adjustBrainLoss(brain_loss)
		if(charge <= 0)
			Deactivate()
			icon_state = initial(icon_state) + "0"
			STOP_PROCESSING(SSobj,src)

/obj/item/stealthboy/makeshift
	name = "Makeshift Stealth Boy"
	icon_state = "makeshift_stealth"
	charge = 80
	brain_loss = 2

/obj/item/stealthboy/mk2
	name = "Stealth Boy MK2"
	icon_state = "stealth_woona"
	charge = 250
	brain_loss = 0.6