/obj/item/mark
	icon = 'icons/obj/quest_items.dmi'
	name = "почтовая марка"
	desc = "Важная бумажка для курьера, если вы не курьер, отдайте её ему."
	icon_state = "marka1"

/obj/item/mark/New()
	..()
	icon_state = "marka[rand(1,3)]"

/obj/item/parcel
	name = "посылка"
	desc = "Посылка явно содержащая в себе что-то ценное, а может и не очень."
	icon = 'icons/obj/quest_items.dmi'
	icon_state = "bigbox"
	item_state = "bigbox"
	w_class = WEIGHT_CLASS_SMALL

	var/datum/mind/for_who = null

	var/fuckup_chance = 60
	var/prepared = FALSE

	var/list/possible_item = list(
	/obj/item/crafting/duct_tape
	)

	var/list/possible_item_screwup = list(
	/obj/item/crafting/duct_tape
	)

/obj/item/parcel/New()
	..()
	icon_state = pick("bigbox", "longbox", "smallbox")

	for(var/mob/living/L in GLOB.alive_mob_list)
		if((L in GLOB.player_list))
			for_who = L.mind

/obj/item/parcel/attackby(obj/item/I, mob/user, params)
	..()

	if(!prepared)
		if(istype(I, /obj/item/crafting/duct_tape))
			//icon_state = icon_state + "_prepare"
			flick("[icon_state]_prepare", src)
			if(do_after(user, 5, target = src))
				if(icon_state == "bigbox")
					icon_state = "bigbox1"
					item_state = "bigbox"
				if(icon_state == "longbox")
					icon_state = "longbox1"
					item_state = "longbox"
				if(icon_state == "smallbox")
					icon_state = "smallbox1"
					item_state = "smallbox"

				qdel(I)
				prepared = TRUE
				fuckup_chance = rand(50,70)
	else
		if(istype(I, /obj/item/kitchen/knife) || user.mind == for_who)
			if(do_after(user, 30, target = src))
				var/obj/item/booty = pick(possible_item)
				booty = new booty(loc)
				new /obj/item/mark(loc)
				to_chat(user, "<span class='notice'>Вы нашли [booty] внутри [src].</span>")
				qdel(src)
		if(istype(I, /obj/item/kitchen/knife) || !user.mind == for_who)
			if(do_after(user, 50, target = src))
				if(prob(fuckup_chance))
					to_chat(user, "<span class='notice'>Вы умудрились сломать содержимое посылки...</span>")
					new /obj/effect/gibspawner/robot(src.loc)
					qdel(src)
				else
					var/obj/item/booty = pick(possible_item_screwup)
					booty = new booty(loc)
					to_chat(user, "<span class='notice'>Вы нашли [booty] внутри [src].</span>")
					qdel(src)