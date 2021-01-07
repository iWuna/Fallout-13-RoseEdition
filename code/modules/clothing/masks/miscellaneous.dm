/obj/item/clothing/mask/muzzle
	name = "Беруши"
	desc = "Чтобы остановить этот мерзкий звук."
	icon_state = "muzzle"
	item_state = "blindfold"
	flags_cover = MASKCOVERSMOUTH
	w_class = WEIGHT_CLASS_SMALL
	gas_transfer_coefficient = 0.9
	equip_delay_other = 20

///obj/item/clothing/mask/muzzle/attack_paw(mob/user)
//	if(iscarbon(user))
//		var/mob/living/carbon/C = user
//		if(src == C.wear_mask)
//			to_chat(user, "<span class='warning'>You need help taking this off!</span>")
//			return
//	..()

/obj/item/clothing/mask/surgical
	name = "Стерильная маска"
	desc = "Стерильная маска, предназначенная для предотвращения распространения болезней."
	icon_state = "sterile"
	item_state = "sterile"
	w_class = WEIGHT_CLASS_TINY
	flags_inv = HIDEFACE
	flags_cover = MASKCOVERSMOUTH
	visor_flags_inv = HIDEFACE
	visor_flags_cover = MASKCOVERSMOUTH
	gas_transfer_coefficient = 0.9
	permeability_coefficient = 0.01
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 25, "rad" = 0, "fire" = 0, "acid" = 0)
	actions_types = list(/datum/action/item_action/adjust)

/obj/item/clothing/mask/surgical/attack_self(mob/user)
	adjustmask(user)

//NCR Facewrap

/obj/item/clothing/mask/ncr_facewrap
	name = "Пустынные повязки на лицо"
	desc = "Лицевая повязка, обычно используемая войсками НКР в Мохаве."
	icon_state = "ncr_facewrap"
	w_class = WEIGHT_CLASS_TINY
	flags_inv = HIDEFACE
	flags_cover = MASKCOVERSMOUTH
	visor_flags_cover = MASKCOVERSMOUTH
	gas_transfer_coefficient = 0.9
	permeability_coefficient = 0.01
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	actions_types = list(/datum/action/item_action/adjust)

/obj/item/clothing/mask/ncr_facewrap/attack_self(mob/user)
	adjustmask(user)

/obj/item/clothing/mask/fakemoustache
	name = "Усы"
	desc = "Осторожно: эти усы не настоящие."
	icon_state = "fake-moustache"
	flags_inv = HIDEFACE

/obj/item/clothing/mask/fakemoustache/italian
	name = "Итальянские усы"
	desc = "Изготовлены из настоящих итальянских усов. Дает владельцу непреодолимое желание дико жестикулировать."

/obj/item/clothing/mask/fakemoustache/italian/speechModification(M)
	if(copytext(M, 1, 2) != "*")
		M = " [M]"
		var/list/italian_words = strings("italian_replacement.json", "italian")

		for(var/key in italian_words)
			var/value = italian_words[key]
			if(islist(value))
				value = pick(value)

			M = replacetextEx(M, " [uppertext(key)]", " [uppertext(value)]")
			M = replacetextEx(M, " [capitalize(key)]", " [capitalize(value)]")
			M = replacetextEx(M, " [key]", " [value]")

		if(prob(3))
			M += pick(" Ravioli, ravioli, give me the formuoli!"," Mamma-mia!"," Mamma-mia! That's a spicy meat-ball!", " La la la la la funiculi funicula!")
	return trim(M)
/*
/obj/item/clothing/mask/joy
	name = "joy mask"
	desc = "Express your happiness or hide your sorrows with this laughing face with crying tears of joy cutout."
	icon_state = "joy"
*/

/obj/item/clothing/mask/pig
	name = "Маска свиньи"
	desc = "Это очень стильная маска свиньи, в которую, кажется, встроен голосовой модулятор."
	icon_state = "pig"
	item_state = "pig"
	flags_inv = HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	w_class = WEIGHT_CLASS_SMALL
	actions_types = list(/datum/action/item_action/toggle_voice_box)
	var/voicechange = 0

/obj/item/clothing/mask/pig/attack_self(mob/user)
	voicechange = !voicechange
	to_chat(user, "<span class='notice'>You turn the voice box [voicechange ? "on" : "off"]!</span>")

/obj/item/clothing/mask/pig/speechModification(message)
	if(voicechange)
		message = pick("Oink!","Squeeeeeeee!","Oink Oink!")
	return message

/obj/item/clothing/mask/spig //needs to be different otherwise you could turn the speedmodification off and on
	name = "Лицо свиньи"
	desc = "Это очень стильная маска свиньи, в которую, кажется, встроен голосовой модулятор."
	icon_state = "pig"
	item_state = "pig"
	flags_inv = HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	w_class = WEIGHT_CLASS_SMALL
	var/voicechange = FALSE

/obj/item/clothing/mask/spig/speechModification(message)
	if(voicechange)
		message = pick("Oink!","Squeeeeeeee!","Oink Oink!")
	return message

///frog mask - reeee!!
/obj/item/clothing/mask/frog
	name = "Маска лягушки"
	desc = "Древняя маска, вырезанная в форме лягушки.<br>Здравомыслие подобно гравитации, все, что ему нужно, - это толчок."
	icon_state = "frog"
	item_state = "frog"
	flags_inv = HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	w_class = WEIGHT_CLASS_SMALL
	var/voicechange = FALSE
/*
/obj/item/clothing/mask/frog/attack_self(mob/user)
	voicechange = !voicechange
	to_chat(user, "<span class='notice'>You turn the voice box [voicechange ? "on" : "off"]!</span>")


/obj/item/clothing/mask/frog/speechModification(message) //whenever you speak
	if(voicechange)
		if(prob(5)) //sometimes, the angry spirit finds others words to speak.
			message = pick("HUUUUU!!","SMOOOOOKIN'!!","Hello my baby, hello my honey, hello my rag-time gal.", "Feels bad, man.", "GIT DIS GUY OFF ME!!" ,"SOMEBODY STOP ME!!", "NORMIES, GET OUT!!")
		else
			message = pick("Ree!!", "Reee!!","REEE!!","REEEEE!!") //but its usually just angry gibberish,
	return message


/obj/item/clothing/mask/frog/cursed

/obj/item/clothing/mask/frog/cursed/attack_self(mob/user)
	return //no voicebox to alter.

/obj/item/clothing/mask/frog/cursed/equipped(mob/user, slot)
	var/mob/living/carbon/C = user
	if(C.wear_mask == src)
		to_chat(user, "<span class='warning'><B>[src] was cursed! Ree!!</B></span>")
	return ..()
*/

/obj/item/clothing/mask/cowmask
	name = "Лицо коровы"
	desc = "Это очень стильная маска коровы, в которую, кажется, встроен голосовой модулятор."
	icon = 'icons/mob/mask.dmi'
	icon_state = "cowmask"
	item_state = "cowmask"
	flags_inv = HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	w_class = WEIGHT_CLASS_SMALL
	var/voicechange = 0

/obj/item/clothing/mask/cowmask/speechModification(message)
	if(voicechange)
		message = pick("Moooooooo!","Moo!","Moooo!")
	return message

/obj/item/clothing/mask/horsehead
	name = "Маска лошади"
	desc = "Маска из мягкого винила и латекса, изображающая голову лошади."
	icon_state = "horsehead"
	item_state = "horsehead"
	flags_inv = HIDEFACE|HIDEHAIR|HIDEFACIALHAIR|HIDEEYES|HIDEEARS
	w_class = WEIGHT_CLASS_SMALL
	var/voicechange = 0

/obj/item/clothing/mask/horsehead/speechModification(message)
	if(voicechange)
		message = pick("NEEIIGGGHHHH!", "NEEEIIIIGHH!", "NEIIIGGHH!", "HAAWWWWW!", "HAAAWWW!")
	return message

/obj/item/clothing/mask/rat
	name = "Маска крысы"
	desc = "Маска из мягкого винила и латекса, изображающая голову крысы."
	icon_state = "rat"
	item_state = "rat"
	flags_inv = HIDEFACE
	flags_cover = MASKCOVERSMOUTH

/obj/item/clothing/mask/rat/stupid
	name = "Маска Рэта"
	desc = "Похоже, он наконец-то получил свою собственную гребаную маску."
	icon_state = "greenrat"
	item_state = "greenrat"

/obj/item/clothing/mask/rat/fox
	name = "Маска лицы"
	desc = "Маска из мягкого винила и латекса, изображающая голову лисы."
	icon_state = "fox"
	item_state = "fox"

/obj/item/clothing/mask/rat/bee
	name = "Маска пчелы"
	desc = "Маска из мягкого винила и латекса, изображающая голову пчелы."
	icon_state = "bee"
	item_state = "bee"

/obj/item/clothing/mask/rat/bear
	name = "Маска медведя"
	desc = "Маска из мягкого винила и латекса, изображающая голову медведя."
	icon_state = "bear"
	item_state = "bear"

/obj/item/clothing/mask/rat/bat
	name = "Маска ворона"
	desc = "Маска из мягкого винила и латекса, изображающая голову летучей мыши."
	icon_state = "bat"
	item_state = "bat"

/obj/item/clothing/mask/rat/raven
	name = "raven mask"
	desc = "Маска из мягкого винила и латекса, изображающая голову ворона."
	icon_state = "raven"
	item_state = "raven"

/obj/item/clothing/mask/rat/jackal
	name = "Маска шакала"
	desc = "Маска из мягкого винила и латекса, изображающая голову шакала."
	icon_state = "jackal"
	item_state = "jackal"

/obj/item/clothing/mask/rat/tribal
	name = "Племенная маска"
	desc = "Маска, вырезанная из дерева, тщательно детализированная вручную."
	icon_state = "bumba"
	item_state = "bumba"

/obj/item/clothing/mask/bandana
	name = "Бандана ботаника"
	desc = "Тонкая бандана с нанотехнологической подкладкой и рисунком гидропоники."
	w_class = WEIGHT_CLASS_TINY
	flags_cover = MASKCOVERSMOUTH
	flags_inv = HIDEFACE|HIDEFACIALHAIR
	visor_flags_inv = HIDEFACE|HIDEFACIALHAIR
	visor_flags_cover = MASKCOVERSMOUTH
	slot_flags = ITEM_SLOT_MASK
	adjusted_flags = ITEM_SLOT_HEAD
	icon_state = "bandbotany"

/obj/item/clothing/mask/bandana/attack_self(mob/user)
	adjustmask(user)

/obj/item/clothing/mask/bandana/attackby(obj/item/I, mob/user, params)
	if(istype(I, /obj/item/wirecutters) || I.is_sharp())
		var/obj/item/stack/sheet/cloth/C = new (get_turf(src), 2)
		transfer_fingerprints_to(C)
		C.add_fingerprint(user)
		qdel(src)
		to_chat(user, "<span class='notice'>You cut [src] up with [I].</span>")
	else
		return ..()

/obj/item/clothing/mask/bandana/red
	name = "Красная бандана"
	desc = "Тонкая красная бандана на льняной подкладке."
	icon_state = "bandred"

/obj/item/clothing/mask/bandana/blue
	name = "Синяя бандана"
	desc = "Тонкая синяя бандана на льняной подкладке."
	icon_state = "bandblue"

/obj/item/clothing/mask/bandana/green
	name = "Зелёная бандана"
	desc = "Тонкая зелёная бандана на льняной подкладке."
	icon_state = "bandgreen"

/obj/item/clothing/mask/bandana/gold
	name = "Золотая бандана"
	desc = "Тонкая золотая бандана на льняной подкладке."
	icon_state = "bandgold"

/obj/item/clothing/mask/bandana/brown
	name = "Коричневая бандана"
	desc = "Тонкая коричневая бандана на льняной подкладке."
	icon_state = "bandbrown"

/obj/item/clothing/mask/bandana/black
	name = "Черная бандана"
	desc = "Тонкая черная бандана на льняной подкладке."
	icon_state = "bandblack"

/obj/item/clothing/mask/bandana/white
	name = "Бандана"
	desc = "Тонкая бандана на льняной подкладке."
	icon_state = "bandwhite"

/obj/item/clothing/mask/bandana/skull
	name = "Бандана с черепом"
	desc = "Тонкая черная бандана с льняной подкладкой и эмблемой в виде черепа."
	icon_state = "bandskull"

//Legion Bandanas - We make these as much like normal bandanas as possible without repathing them.

/obj/item/clothing/mask/bandana/legrecruit
	name = "Бандана рекрута"
	desc = "Тонкая бандана рекрута."
	icon_state = "legrecruit"
	flags_inv = HIDEFACE
	visor_flags_inv = HIDEFACE
	adjusted_flags = null
	actions_types = list(/datum/action/item_action/adjust)

/obj/item/clothing/mask/bandana/legdecan
	name = "Бандана декана"
	desc = "Тонкая бандана декана."
	icon_state = "legdecan"
	flags_inv = HIDEFACE
	visor_flags_inv = HIDEFACE
	adjusted_flags = null
	actions_types = list(/datum/action/item_action/adjust)

/obj/item/clothing/mask/bandana/jonesbandana
	name = "Богато украшенная ветеранская бандана"
	desc = "Затейливо украшенная бандана. Совершенно очевидно, что этот дизайн заимствован из стандартной банданы ветерана-легионера. Посередине банданы проходит золотая полоса, по-видимому, сделанная в соответствии с дизайном шлема. Между слоями ткани-маленькие металлические пластинки, как у разбойника, но на самом деле все пластины делают бандану приятной на ощупь, делают голос владельца металлическим и гулким и не дают пальцам проникнуть в горло."
	icon_state = "jonesbandana"
	item_state = "jonesbandana"
	flags_inv = HIDEFACE
	visor_flags_inv = HIDEFACE
	adjusted_flags = null
	actions_types = list(/datum/action/item_action/adjust)

/obj/item/clothing/mask/bandana/oldredbandana
	name = "Старая бандана"
	desc = "Тонкая бандана."
	icon_state = "legdecan"
	flags_inv = HIDEFACE
	visor_flags_inv = HIDEFACE
	adjusted_flags = null
	actions_types = list(/datum/action/item_action/adjust)

/obj/item/clothing/mask/bandana/legcenturion
	name = "Бандана центуриона"
	desc = "Тонкая бандана центуриона."
	icon_state = "legcenturion"
	flags_inv = HIDEFACE
	visor_flags_inv = HIDEFACE
	adjusted_flags = null
	actions_types = list(/datum/action/item_action/adjust)

/obj/item/clothing/mask/bandana/legvet
	name = "Бандана ветерана"
	desc = "Тонкая бандана ветерана."
	icon_state = "legvet"
	flags_inv = HIDEFACE
	visor_flags_inv = HIDEFACE
	adjusted_flags = null
	actions_types = list(/datum/action/item_action/adjust)

/obj/item/clothing/mask/bandana/legprime
	name = "Бандана преторианца"
	desc = "Тонкая бандана преторианца"
	icon_state = "legdecan"
	flags_inv = HIDEFACE
	visor_flags_inv = HIDEFACE
	adjusted_flags = null
	actions_types = list(/datum/action/item_action/adjust)

/obj/item/clothing/mask/mummy
	name = "Маска мумии"
	desc = "Древние бинты."
	icon_state = "mummy_mask"
	item_state = "mummy_mask"
	flags_inv = HIDEFACE|HIDEHAIR|HIDEFACIALHAIR

/obj/item/clothing/mask/scarecrow
	name = "Маска из мешка"
	desc = "Холщовый мешок с прорезями для глаз."
	icon_state = "scarecrow_sack"
	item_state = "scarecrow_sack"
	flags_inv = HIDEFACE|HIDEHAIR|HIDEFACIALHAIR

//Desert facewrap

/obj/item/clothing/mask/facewrap
	name = "Пустынные повязки на лицо"
	desc = "Повязка на голову, чтобы защитить лицо от песка и другой грязи."
	icon_state = "facewrap"
	item_state = "facewrap"
	flags_inv = HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	flags_cover = MASKCOVERSMOUTH
	visor_flags_inv = HIDEFACE
	visor_flags_cover = MASKCOVERSMOUTH

//Society Mask

/obj/item/clothing/mask/society
	name = "Золотая маска для лица"
	desc = "Холщовый мешок с прорезями для глаз."
	icon_state = "societymask"
	item_state = "societymask"
	flags_inv = HIDEFACE


