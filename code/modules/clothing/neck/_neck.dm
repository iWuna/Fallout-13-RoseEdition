/obj/item/clothing/neck
	name = "Ошейник"
	icon = 'icons/obj/clothing/neck.dmi'
	body_parts_covered = NECK
	slot_flags = ITEM_SLOT_NECK
	strip_delay = 40
	equip_delay_other = 40

/obj/item/clothing/neck/worn_overlays(isinhands = FALSE)
	. = list()
	if(!isinhands)
		if(body_parts_covered & HEAD)
			if(damaged_clothes)
				. += mutable_appearance('icons/effects/item_damage.dmi', "damagedmask")
			IF_HAS_BLOOD_DNA(src)
				. += mutable_appearance('icons/effects/blood.dmi', "maskblood")

/obj/item/clothing/neck/tie
	name = "Галстук"
	desc = "Галстук-клипса из шёлка"
	icon = 'icons/obj/clothing/neck.dmi'
	icon_state = "bluetie"
	item_state = ""	//no inhands
	item_color = "bluetie"
	w_class = WEIGHT_CLASS_SMALL

/obj/item/clothing/neck/tie/blue
	name = "Синий галстук"
	icon_state = "bluetie"
	item_color = "bluetie"

/obj/item/clothing/neck/tie/red
	name = "Красный галстук"
	icon_state = "redtie"
	item_color = "redtie"

/obj/item/clothing/neck/tie/black
	name = "Черный галстук"
	icon_state = "blacktie"
	item_color = "blacktie"

/obj/item/clothing/neck/tie/horrible
	name = "Ужасный галстук"
	desc = "Галстук-клипса из шёлка. Этот выглядит ужасно."
	icon_state = "horribletie"
	item_color = "horribletie"

/obj/item/clothing/neck/stethoscope
	name = "Сетоскоп"
	desc = "Медицинский инструмент для прослушивания звуков человеческого тела. Он также заставляет вас выглядеть так, будто вы знаете, что делаете."
	icon_state = "stethoscope"
	item_color = "stethoscope"

/obj/item/clothing/neck/stethoscope/suicide_act(mob/living/carbon/user)
	user.visible_message("<span class='suicide'>[user] puts \the [src] to [user.p_their()] chest! It looks like [user.p_they()] wont hear much!</span>")
	return OXYLOSS

/obj/item/clothing/neck/stethoscope/attack(mob/living/carbon/human/M, mob/living/user)
	if(ishuman(M) && isliving(user))
		if(user.a_intent == INTENT_HELP)
			var/body_part = parse_zone(user.zone_selected)

			var/heart_strength = "<span class='danger'>no</span>"
			var/lung_strength = "<span class='danger'>no</span>"

			var/obj/item/organ/heart/heart = M.getorganslot(ORGAN_SLOT_HEART)
			var/obj/item/organ/lungs/lungs = M.getorganslot(ORGAN_SLOT_LUNGS)

			if(!(M.stat == DEAD || (M.has_trait(TRAIT_FAKEDEATH))))
				if(heart && istype(heart))
					heart_strength = "<span class='danger'>an unstable</span>"
					if(heart.beating)
						heart_strength = "a healthy"
				if(lungs && istype(lungs))
					lung_strength = "<span class='danger'>strained</span>"
					if(!(M.failed_last_breath || M.losebreath))
						lung_strength = "healthy"

			if(M.stat == DEAD && heart && world.time - M.timeofdeath < DEFIB_TIME_LIMIT * 10)
				heart_strength = "<span class='boldannounce'>a faint, fluttery</span>"

			var/diagnosis = (body_part == BODY_ZONE_CHEST ? "You hear [heart_strength] pulse and [lung_strength] respiration." : "You faintly hear [heart_strength] pulse.")
			user.visible_message("[user] places [src] against [M]'s [body_part] and listens attentively.", "<span class='notice'>You place [src] against [M]'s [body_part]. [diagnosis]</span>")
			return
	return ..(M,user)

///////////
//SCARVES//
///////////

/obj/item/clothing/neck/scarf //Default white color, same functionality as beanies.
	name = "Шарф"
	icon_state = "scarf"
	desc = "Стильный шарф. Идеальный зимний аксессуар для тех, кто обладает острым чувством моды, и тех, кто просто не может справиться с холодным ветерком на шее."
	item_color = "white"
	dog_fashion = /datum/dog_fashion/head

/obj/item/clothing/neck/scarf/Initialize()
	. = ..()
	AddComponent(/datum/component/spraycan_paintable)
	START_PROCESSING(SSobj, src)

/obj/item/clothing/neck/scarf/black
	name = "Черный шарф"
	icon_state = "scarf"
	item_color = "black"
	color = "#4A4A4B" //Grey but it looks black

/obj/item/clothing/neck/scarf/pink
	name = "Розовый шарф"
	icon_state = "scarf"
	item_color = "pink"
	color = "#F699CD" //Pink

/obj/item/clothing/neck/scarf/red
	name = "Красный шарф"
	icon_state = "scarf"
	item_color = "red"
	color = "#D91414" //Red

/obj/item/clothing/neck/scarf/green
	name = "Зелёный шарф"
	icon_state = "scarf"
	item_color = "green"
	color = "#5C9E54" //Green

/obj/item/clothing/neck/scarf/darkblue
	name = "Тёмно-синий шарф"
	icon_state = "scarf"
	item_color = "blue"
	color = "#1E85BC" //Blue

/obj/item/clothing/neck/scarf/purple
	name = "Фиолетовый шарф"
	icon_state = "scarf"
	item_color = "purple"
	color = "#9557C5" //Purple

/obj/item/clothing/neck/scarf/yellow
	name = "Желтый шарф"
	icon_state = "scarf"
	item_color = "yellow"
	color = "#E0C14F" //Yellow

/obj/item/clothing/neck/scarf/orange
	name = "Оранжевый шарф"
	icon_state = "scarf"
	item_color = "orange"
	color = "#C67A4B" //Orange

/obj/item/clothing/neck/scarf/cyan
	name = "Голубой шарф"
	icon_state = "scarf"
	item_color = "cyan"
	color = "#54A3CE" //Cyan


//Striped scarves get their own icons

/obj/item/clothing/neck/scarf/zebra
	name = "Шарф-зебра"
	icon_state = "zebrascarf"
	item_color = "zebrascarf"

/obj/item/clothing/neck/scarf/christmas
	name = "Рождественский шарф"
	icon_state = "christmasscarf"
	item_color = "christmasscarf"

//The three following scarves don't have the scarf subtype
//This is because Ian can equip anything from that subtype
//However, these 3 don't have corgi versions of their sprites
/obj/item/clothing/neck/stripedredscarf
	name = "Шарф в красную полоску"
	icon_state = "stripedredscarf"
	item_color = "stripedredscarf"

/obj/item/clothing/neck/stripedgreenscarf
	name = "Шарф в зелёную полоску"
	icon_state = "stripedgreenscarf"
	item_color = "stripedgreenscarf"

/obj/item/clothing/neck/stripedbluescarf
	name = "Шарф в синюю полоску"
	icon_state = "stripedbluescarf"
	item_color = "stripedbluescarf"

//////////////
////COLLARS///
//////////////

GLOBAL_VAR_INIT(collar_number, 0)

/obj/item/clothing/neck/petcollar
	name = "Ошейник питомца"
	desc = "Крепкий коричневый кожаный ошейник."
	icon_state = "petcollar"
	item_color = "petcollar"
	var/tagname = null

/obj/item/clothing/neck/petcollar/attack_self(mob/user)
	tagname = copytext(sanitize(input(user, "Would you like to change the name on the tag?", "Name your new pet", "Spot") as null|text),1,MAX_NAME_LEN)
	name = "[initial(name)] - [tagname]"

/obj/item/clothing/neck/petcollar/locked
	name = "Закрытый ошибник"
	desc = "Ошейник с маленьким замком, чтобы его не снимали."
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/small/collar/locked
	body_parts_covered = NECK
	var/lock = FALSE
	var/collarID = 0

/obj/item/clothing/neck/petcollar/locked/attackby(obj/item/K, mob/user, params)
	if(istype(K, /obj/item/key/collar))
		if(lock != FALSE)
			to_chat(user, "<span class='warning'>С щелчком замок на ошейнике открывается!</span>")
			lock = FALSE
			item_flags = null
		else
			to_chat(user, "<span class='warning'>С щелчком замок на ошейнике закрывается!</span>")
			lock = TRUE
			if(!ismob(src.loc))
				return
			var/mob/M = src.loc
			if(M.get_item_by_slot(SLOT_NECK) == src)
				item_flags = NODROP
	return

/obj/item/clothing/neck/petcollar/locked/attack_hand(mob/user)
	if(loc == user && user.get_item_by_slot(SLOT_NECK) && lock != FALSE)
		to_chat(user, "<span class='warning'>Ошейник заперт! Вам нужно будет открыть замок , прежде чем вы сможете его снять!</span>")
		return
	..()

/obj/item/key/collar
	name = "Ключ от ошейника"
	desc = "Ключ от небольшего замка, скорее всего от ошейника или чемодана."
//	var/keyID = 0 //USE FOR UNIQUE KEYING?

/obj/item/key/collar/Initialize()
	. = ..()
//	keyID = GLOB.collar_number

/obj/item/clothing/neck/petcollar/Initialize()
	. = ..()

/obj/item/clothing/neck/petcollar/locked/Initialize()
	. = ..()
	new /obj/item/key/collar(src)
//	collarID = GLOB.collar_number
//	GLOB.collar_number = collarID + 1 //USE FOR UNIQUE KEYING?



//////////////
//DOPE BLING//
//////////////

/obj/item/clothing/neck/necklace/dope
	name = "Золотая цепочка"
	desc = "Йоу, теперь ты чувствуешь себя крутым гангстером."
	icon = 'icons/obj/clothing/neck.dmi'
	icon_state = "bling"
	item_color = "bling"

///////////////////////////
//CptPatriot Donator Item//
///////////////////////////

/obj/item/clothing/neck/scarf/cptpatriot
	name = "Пустынный шарф"
	icon_state = "cptpatriotscarf"
	item_color = "cptpatriotscarf"
	desc = "Стильный шарф. Этот имеет камуфляжный рисунок, популяризированный во время Великой войны."

/obj/item/clothing/neck/corditeclamp
	name = "Кордитовый зажим Y-72"
	desc = "Люди говорят, что иметь стеклянную челюсть-это плохо, но когда эта челюсть представляет собой боевой лицевой протез из сплава RobCo, изготовленный для армии США и американской элиты, они склонны дважды подумать, прежде чем нанести удар. По крайней мере, голым кулаком."
	icon_state = "corditeclamps"
	item_color = "corditeclamps"
	item_state = "corditeclamps"

/obj/item/clothing/neck/jamrock
	name = "Старый галстук"
	desc = "Галстук украшен кричащим узором. Он тревожно яркий. Почему-то вы чувствуете, что было бы неправильно когда-либо снимать его. Теперь это твой друг. Ты предашь его, если поменяешь на какой-нибудь скучный шарф."
	icon_state = "eldritch_tie"
	item_color = "eldritch_tie"
	item_state = "eldritch_tie"
	w_class = WEIGHT_CLASS_SMALL