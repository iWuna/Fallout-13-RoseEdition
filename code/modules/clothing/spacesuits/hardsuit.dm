	//Baseline hardsuits
/obj/item/clothing/head/helmet/space/hardsuit
	name = "Шлем скафандра"
	desc = "Специальный шлем, предназначенный для работы в опасных условиях низкого давления. Имеет радиационную защиту."
	icon_state = "hardsuit0-engineering"
	item_state = "eng_helm"
	max_integrity = 300
	armor = list("melee" = 10, "bullet" = 5, "laser" = 10, "energy" = 5, "bomb" = 10, "bio" = 100, "rad" = 75, "fire" = 50, "acid" = 75)
	var/basestate = "hardsuit"
	var/on = FALSE
	var/obj/item/clothing/suit/space/hardsuit/suit
	item_color = "engineering" //Determines used sprites: hardsuit[on]-[color] and hardsuit[on]-[color]2 (lying down sprite)
	actions_types = list(/datum/action/item_action/toggle_helmet_light)

	var/offlinetint //For powerarmor

	var/rad_count = 0
	var/rad_record = 0
	var/grace_count = 0
	var/datum/looping_sound/geiger/soundloop

/obj/item/clothing/head/helmet/space/hardsuit/Initialize()
	. = ..()
	soundloop = new(list(), FALSE, TRUE)
	soundloop.volume = 5
	START_PROCESSING(SSobj, src)

/obj/item/clothing/head/helmet/space/hardsuit/Destroy()
	. = ..()
	STOP_PROCESSING(SSobj, src)

/obj/item/clothing/head/helmet/space/hardsuit/attack_self(mob/user)
	on = !on
	icon_state = "[basestate][on]-[item_color]"
	user.update_inv_head()	//so our mob-overlays update

	set_light_on(on)
	for(var/X in actions)
		var/datum/action/A = X
		A.UpdateButtonIcon()

/obj/item/clothing/head/helmet/space/hardsuit/dropped(mob/user)
	..()
	if(suit)
		suit.RemoveHelmet()
		soundloop.stop(user)

/obj/item/clothing/head/helmet/space/hardsuit/item_action_slot_check(slot)
	if(slot == SLOT_HEAD)
		return 1

/obj/item/clothing/head/helmet/space/hardsuit/equipped(mob/user, slot)
	..()
	if(slot != SLOT_HEAD)
		if(suit)
			suit.RemoveHelmet()
			soundloop.stop(user)
		else
			qdel(src)
	else
		soundloop.start(user)

/obj/item/clothing/head/helmet/space/hardsuit/proc/display_visor_message(var/msg)
	var/mob/wearer = loc
	if(msg && ishuman(wearer))
		wearer.show_message("[icon2html(src, wearer)]<b><span class='robot'>[msg]</span></b>", 1)

/obj/item/clothing/head/helmet/space/hardsuit/rad_act(severity)
	. = ..()
	rad_count += severity

/obj/item/clothing/head/helmet/space/hardsuit/process()
	if(!rad_count)
		grace_count++
		if(grace_count == 2)
			soundloop.last_radiation = 0
		return

	grace_count = 0
	rad_record -= rad_record/5
	rad_record += rad_count/5
	rad_count = 0

	soundloop.last_radiation = rad_record

/obj/item/clothing/head/helmet/space/hardsuit/emp_act(severity)
	. = ..()
	display_visor_message("[severity > 1 ? "Light" : "Strong"] electromagnetic pulse detected!")


/obj/item/clothing/suit/space/hardsuit
	name = "Скафандр"
	desc = "Специальный костюм, который защищает от опасных сред низкого давления. Имеет радиационную защиту."
	icon_state = "hardsuit-engineering"
	item_state = "eng_hardsuit"
	max_integrity = 300
	armor = list("melee" = 10, "bullet" = 5, "laser" = 10, "energy" = 5, "bomb" = 10, "bio" = 100, "rad" = 75, "fire" = 50, "acid" = 75)
	allowed = list(/obj/item/flashlight, /obj/item/tank/internals, /obj/item/t_scanner, /obj/item/construction/rcd, /obj/item/pipe_dispenser)
	siemens_coefficient = 0
	var/obj/item/clothing/head/helmet/space/hardsuit/helmet
	actions_types = list(/datum/action/item_action/toggle_helmet)
	var/helmettype = /obj/item/clothing/head/helmet/space/hardsuit
	var/obj/item/tank/jetpack/suit/jetpack = null


/obj/item/clothing/suit/space/hardsuit/Initialize()
	if(jetpack && ispath(jetpack))
		jetpack = new jetpack(src)
	. = ..()

/obj/item/clothing/suit/space/hardsuit/attack_self(mob/user)
	user.changeNext_move(CLICK_CD_MELEE)
	..()

/obj/item/clothing/suit/space/hardsuit/attackby(obj/item/I, mob/user, params)
	if(istype(I, /obj/item/tank/jetpack/suit))
		if(jetpack)
			to_chat(user, "<span class='warning'>[src] already has a jetpack installed.</span>")
			return
		if(src == user.get_item_by_slot(SLOT_WEAR_SUIT)) //Make sure the player is not wearing the suit before applying the upgrade.
			to_chat(user, "<span class='warning'>You cannot install the upgrade to [src] while wearing it.</span>")
			return

		if(user.transferItemToLoc(I, src))
			jetpack = I
			to_chat(user, "<span class='notice'>You successfully install the jetpack into [src].</span>")
			return
	else if(istype(I, /obj/item/screwdriver))
		if(!jetpack)
			to_chat(user, "<span class='warning'>[src] has no jetpack installed.</span>")
			return
		if(src == user.get_item_by_slot(SLOT_WEAR_SUIT))
			to_chat(user, "<span class='warning'>You cannot remove the jetpack from [src] while wearing it.</span>")
			return

		jetpack.turn_off()
		jetpack.forceMove(drop_location())
		jetpack = null
		to_chat(user, "<span class='notice'>You successfully remove the jetpack from [src].</span>")
		return
	return ..()


/obj/item/clothing/suit/space/hardsuit/equipped(mob/user, slot)
	..()
	if(jetpack)
		if(slot == SLOT_WEAR_SUIT)
			for(var/X in jetpack.actions)
				var/datum/action/A = X
				A.Grant(user)

/obj/item/clothing/suit/space/hardsuit/dropped(mob/user)
	..()
	if(jetpack)
		for(var/X in jetpack.actions)
			var/datum/action/A = X
			A.Remove(user)

/obj/item/clothing/suit/space/hardsuit/item_action_slot_check(slot)
	if(slot == SLOT_WEAR_SUIT) //we only give the mob the ability to toggle the helmet if he's wearing the hardsuit.
		return 1

	//Engineering
/obj/item/clothing/head/helmet/space/hardsuit/engine
	name = "Шлем инженерного скафандра"
	desc = "Специальный костюм, который защищает от опасных сред низкого давления. Имеет радиационную защиту."
	icon_state = "hardsuit0-engineering"
	item_state = "eng_helm"
	armor = list("melee" = 30, "bullet" = 5, "laser" = 10, "energy" = 5, "bomb" = 10, "bio" = 100, "rad" = 75, "fire" = 100, "acid" = 75)
	item_color = "engineering"
	resistance_flags = FIRE_PROOF
	light_system = MOVABLE_LIGHT_DIRECTIONAL
	light_range = 4
	light_power = 1
	light_on = FALSE

/obj/item/clothing/suit/space/hardsuit/engine
	name = "Инженерный скафандр"
	desc = "Специальный костюм, который защищает от опасных сред низкого давления. Имеет радиационную защиту."
	icon_state = "hardsuit-engineering"
	item_state = "eng_hardsuit"
	armor = list("melee" = 30, "bullet" = 5, "laser" = 10, "energy" = 5, "bomb" = 10, "bio" = 100, "rad" = 75, "fire" = 100, "acid" = 75)
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/engine
	resistance_flags = FIRE_PROOF

	//Atmospherics
/obj/item/clothing/head/helmet/space/hardsuit/engine/atmos
	name = "Шлем атмосферного скафандра"
	desc = "Специальный костюм, который защищает от опасных сред низкого давления. Имеет термическую защиту."
	icon_state = "hardsuit0-atmospherics"
	item_state = "atmo_helm"
	item_color = "atmospherics"
	armor = list("melee" = 30, "bullet" = 5, "laser" = 10, "energy" = 5, "bomb" = 10, "bio" = 100, "rad" = 25, "fire" = 100, "acid" = 75)
	heat_protection = HEAD												//Uncomment to enable firesuit protection
	max_heat_protection_temperature = FIRE_IMMUNITY_HELM_MAX_TEMP_PROTECT

/obj/item/clothing/suit/space/hardsuit/engine/atmos
	name = "Атмосферный скафандр"
	desc = "Специальный костюм, который защищает от опасных сред низкого давления. Имеет термическую защиту."
	icon_state = "hardsuit-atmospherics"
	item_state = "atmo_hardsuit"
	armor = list("melee" = 30, "bullet" = 5, "laser" = 10, "energy" = 5, "bomb" = 10, "bio" = 100, "rad" = 25, "fire" = 100, "acid" = 75)
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS					//Uncomment to enable firesuit protection
	max_heat_protection_temperature = FIRE_IMMUNITY_SUIT_MAX_TEMP_PROTECT
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/engine/atmos


	//Chief Engineer's hardsuit
/obj/item/clothing/head/helmet/space/hardsuit/engine/elite
	name = "Улучшенный шлем скафандра"
	desc = "Усовершенствованный шлем, предназначенный для работы в опасных условиях низкого давления. Отполирован до блеска."
	icon_state = "hardsuit0-white"
	item_state = "ce_helm"
	item_color = "white"
	armor = list("melee" = 40, "bullet" = 5, "laser" = 10, "energy" = 5, "bomb" = 50, "bio" = 100, "rad" = 90, "fire" = 100, "acid" = 90)
	heat_protection = HEAD
	max_heat_protection_temperature = FIRE_IMMUNITY_HELM_MAX_TEMP_PROTECT

/obj/item/clothing/suit/space/hardsuit/engine/elite
	icon_state = "hardsuit-white"
	name = "Улучшенный скафандр"
	desc = "Усовершенствованный скафандр, предназначенный для работы в опасных условиях низкого давления. Отполирован до блеска."
	item_state = "ce_hardsuit"
	armor = list("melee" = 40, "bullet" = 5, "laser" = 10, "energy" = 5, "bomb" = 50, "bio" = 100, "rad" = 90, "fire" = 100, "acid" = 90)
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_IMMUNITY_SUIT_MAX_TEMP_PROTECT
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/engine/elite
	jetpack = /obj/item/tank/jetpack/suit

	//Mining hardsuit
/obj/item/clothing/head/helmet/space/hardsuit/mining
	name = "Шлем шахтерского скафандра"
	desc = "Специальный шлем, предназначенный для работы в опасных условиях низкого давления. Имеет усиленную обшивку для встреч с дикой природой и двойные прожекторы."
	icon_state = "hardsuit0-mining"
	item_state = "mining_helm"
	item_color = "mining"
	max_heat_protection_temperature = FIRE_SUIT_MAX_TEMP_PROTECT
	resistance_flags = FIRE_PROOF
	heat_protection = HEAD
	armor = list("melee" = 30, "bullet" = 5, "laser" = 10, "energy" = 5, "bomb" = 50, "bio" = 100, "rad" = 50, "fire" = 50, "acid" = 75)
	light_range = 7
	allowed = list(/obj/item/flashlight, /obj/item/tank/internals, /obj/item/resonator, /obj/item/mining_scanner, /obj/item/t_scanner/adv_mining_scanner, /obj/item/gun/energy/kinetic_accelerator)

/obj/item/clothing/head/helmet/space/hardsuit/mining/Initialize()
	. = ..()
	AddComponent(/datum/component/armor_plate)

/obj/item/clothing/suit/space/hardsuit/mining
	icon_state = "hardsuit-mining"
	name = "Шахтерский скафандр"
	desc = "Специальный скафандр, предназначенный для работы в опасных условиях низкого давления. Имеет усиленную обшивку для встреч с дикой природой."
	item_state = "mining_hardsuit"
	max_heat_protection_temperature = FIRE_SUIT_MAX_TEMP_PROTECT
	resistance_flags = FIRE_PROOF
	armor = list("melee" = 30, "bullet" = 5, "laser" = 10, "energy" = 5, "bomb" = 50, "bio" = 100, "rad" = 50, "fire" = 50, "acid" = 75)
	allowed = list(/obj/item/flashlight, /obj/item/tank/internals, /obj/item/storage/bag/ore, /obj/item/pickaxe)
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/mining
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS

/obj/item/clothing/suit/space/hardsuit/mining/Initialize()
	. = ..()
	AddComponent(/datum/component/armor_plate)

	//Syndicate hardsuit
/obj/item/clothing/head/helmet/space/hardsuit/syndi
	name = "Кроваво-красный шлем скафандр"
	desc = "Двухрежимный усовершенствованный шлем, предназначенный для работы в специальных операциях. Он находится в режиме EVA."
	alt_desc = "Двухрежимный усовершенствованный шлем, предназначенный для работы в специальных операциях. Он находится в боевом режиме."
	icon_state = "hardsuit1-syndi"
	item_state = "syndie_helm"
	item_color = "syndi"
	armor = list("melee" = 40, "bullet" = 50, "laser" = 30, "energy" = 15, "bomb" = 35, "bio" = 100, "rad" = 50, "fire" = 50, "acid" = 90)
	on = TRUE
	var/obj/item/clothing/suit/space/hardsuit/syndi/linkedsuit = null
	actions_types = list(/datum/action/item_action/toggle_helmet_mode)
	visor_flags_inv = HIDEMASK|HIDEEYES|HIDEFACE|HIDEFACIALHAIR
	visor_flags = STOPSPRESSUREDAMAGE

/obj/item/clothing/head/helmet/space/hardsuit/syndi/update_icon()
	icon_state = "hardsuit[on]-[item_color]"

/obj/item/clothing/head/helmet/space/hardsuit/syndi/Initialize()
	. = ..()
	if(istype(loc, /obj/item/clothing/suit/space/hardsuit/syndi))
		linkedsuit = loc

/obj/item/clothing/head/helmet/space/hardsuit/syndi/attack_self(mob/user) //Toggle Helmet
	if(!isturf(user.loc))
		to_chat(user, "<span class='warning'>Вы не можете активировать шлем, находясь в [user.loc]!</span>" )
		return
	on = !on
	if(on || force)
		to_chat(user, "<span class='notice'>Вы переключаете свой скафандр в режим EVA, жертвуя скоростью для защиты от космоса.</span>")
		name = initial(name)
		desc = initial(desc)
		set_light_on(TRUE)
		clothing_flags |= visor_flags
		flags_cover |= HEADCOVERSEYES | HEADCOVERSMOUTH
		flags_inv |= visor_flags_inv
		cold_protection |= HEAD
	else
		to_chat(user, "<span class='notice'>Вы переключаете свой жесткий костюм в боевой режим и теперь можете бежать на полной скорости.</span>")
		name += " (combat)"
		desc = alt_desc
		set_light_on(FALSE)
		clothing_flags &= ~visor_flags
		flags_cover &= ~(HEADCOVERSEYES | HEADCOVERSMOUTH)
		flags_inv &= ~visor_flags_inv
		cold_protection &= ~HEAD
	update_icon()
	playsound(src.loc, 'sound/mecha/mechmove03.ogg', 50, 1)
	toggle_hardsuit_mode(user)
	user.update_inv_head()
	if(iscarbon(user))
		var/mob/living/carbon/C = user
		C.head_update(src, forced = 1)
	for(var/X in actions)
		var/datum/action/A = X
		A.UpdateButtonIcon()

/obj/item/clothing/head/helmet/space/hardsuit/syndi/proc/toggle_hardsuit_mode(mob/user) //Helmet Toggles Suit Mode
	if(linkedsuit)
		if(on)
			linkedsuit.name = initial(linkedsuit.name)
			linkedsuit.desc = initial(linkedsuit.desc)
			linkedsuit.slowdown = 1
			linkedsuit.clothing_flags |= STOPSPRESSUREDAMAGE
			linkedsuit.cold_protection |= CHEST | GROIN | LEGS | FEET | ARMS | HANDS
		else
			linkedsuit.name += " (combat)"
			linkedsuit.desc = linkedsuit.alt_desc
			linkedsuit.slowdown = 0
			linkedsuit.clothing_flags &= ~STOPSPRESSUREDAMAGE
			linkedsuit.cold_protection &= ~(CHEST | GROIN | LEGS | FEET | ARMS | HANDS)

		linkedsuit.icon_state = "hardsuit[on]-[item_color]"
		linkedsuit.update_icon()
		user.update_inv_wear_suit()
		user.update_inv_w_uniform()


/obj/item/clothing/suit/space/hardsuit/syndi
	name = "Кроваво-красный скафандр"
	desc = "Двухрежимный усовершенствованный жесткий костюм, предназначенный для работы в специальных операциях. Он находится в режиме EVA."
	alt_desc = "Двухрежимный усовершенствованный жесткий костюм, предназначенный для работы в специальных операциях. Он находится в боевом режиме."
	icon_state = "hardsuit1-syndi"
	item_state = "syndie_hardsuit"
	item_color = "syndi"
	w_class = WEIGHT_CLASS_NORMAL
	armor = list("melee" = 40, "bullet" = 50, "laser" = 30, "energy" = 15, "bomb" = 35, "bio" = 100, "rad" = 50, "fire" = 50, "acid" = 90)
	allowed = list(/obj/item/gun, /obj/item/ammo_box,/obj/item/ammo_casing, /obj/item/melee/baton, /obj/item/melee/transforming/energy/sword/saber, /obj/item/restraints/handcuffs, /obj/item/tank/internals)
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/syndi
	jetpack = /obj/item/tank/jetpack/suit

//Elite Syndie suit
/obj/item/clothing/head/helmet/space/hardsuit/syndi/elite
	name = "Шлем элитного китайского скафандра"
	desc = "Элитная версия китайского шлема, с улучшенной броней и огнеупорностью. Он находится в режиме EVA."
	alt_desc = "Элитная версия китайского шлема, с улучшенной броней и огнеупорностью. Он находится в боевом режиме."
	icon_state = "hardsuit0-syndielite"
	item_color = "syndielite"
	armor = list("melee" = 60, "bullet" = 60, "laser" = 50, "energy" = 25, "bomb" = 55, "bio" = 100, "rad" = 70, "fire" = 100, "acid" = 100)
	heat_protection = HEAD
	max_heat_protection_temperature = FIRE_IMMUNITY_SUIT_MAX_TEMP_PROTECT
	visor_flags_inv = 0
	visor_flags = 0
	on = FALSE
	resistance_flags = FIRE_PROOF | ACID_PROOF


/obj/item/clothing/suit/space/hardsuit/syndi/elite
	name = "Элитный китайский скафандр"
	desc = "Элитная версия китайского скафандра, с улучшенной броней и огнеупорностью. Он находится в режиме путешествия."
	alt_desc = "Элитная версия китайского скафандра, с улучшенной броней и огнеупорностью. Он находится в боевом режиме."
	icon_state = "hardsuit0-syndielite"
	item_color = "syndielite"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/syndi/elite
	armor = list("melee" = 60, "bullet" = 60, "laser" = 50, "energy" = 25, "bomb" = 55, "bio" = 100, "rad" = 70, "fire" = 100, "acid" = 100)
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_IMMUNITY_SUIT_MAX_TEMP_PROTECT
	resistance_flags = FIRE_PROOF | ACID_PROOF

//The Owl Hardsuit
/obj/item/clothing/head/helmet/space/hardsuit/syndi/owl
	name = "Шлем скафандра совы"
	desc = "Двухрежимный усовершенствованный шлем, предназначенный для любой борьбы с преступностью. Он находится в режиме путешествия."
	alt_desc = "Двухрежимный усовершенствованный шлем, предназначенный для любой борьбы с преступностью. Он находится в боевом режиме."
	icon_state = "hardsuit1-owl"
	item_state = "s_helmet"
	item_color = "owl"
	visor_flags_inv = 0
	visor_flags = 0
	on = FALSE

/obj/item/clothing/suit/space/hardsuit/syndi/owl
	name = "Скафандр совы"
	desc = "Двухрежимный усовершенствованный скафандр, предназначенный для любой борьбы с преступностью. Он находится в режиме путешествия."
	alt_desc = "Двухрежимный усовершенствованный скафандр, предназначенный для любой борьбы с преступностью. Он находится в боевом режиме."
	icon_state = "hardsuit1-owl"
	item_state = "s_suit"
	item_color = "owl"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/syndi/owl


	//Wizard hardsuit
/obj/item/clothing/head/helmet/space/hardsuit/wizard
	name = "Шлем скафандра с драгоценными камнями"
	desc = "Странный, инкрустированный драгоценными камнями шлем, излучающий магическую энергию."
	icon_state = "hardsuit0-wiz"
	item_state = "wiz_helm"
	item_color = "wiz"
	resistance_flags = FIRE_PROOF | ACID_PROOF //No longer shall our kind be foiled by lone chemists with spray bottles!
	armor = list("melee" = 40, "bullet" = 40, "laser" = 40, "energy" = 20, "bomb" = 35, "bio" = 100, "rad" = 50, "fire" = 100, "acid" = 100)
	heat_protection = HEAD												//Uncomment to enable firesuit protection
	max_heat_protection_temperature = FIRE_IMMUNITY_HELM_MAX_TEMP_PROTECT

/obj/item/clothing/suit/space/hardsuit/wizard
	icon_state = "hardsuit-wiz"
	name = "Скафандр с драгоценными камнями"
	desc = "Странный, инкрустированный драгоценными камнями скафандр, излучающий магическую энергию."
	item_state = "wiz_hardsuit"
	w_class = WEIGHT_CLASS_NORMAL
	resistance_flags = FIRE_PROOF | ACID_PROOF
	armor = list("melee" = 40, "bullet" = 40, "laser" = 40, "energy" = 20, "bomb" = 35, "bio" = 100, "rad" = 50, "fire" = 100, "acid" = 100)
	allowed = list(/obj/item/teleportation_scroll, /obj/item/tank/internals)
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS					//Uncomment to enable firesuit protection
	max_heat_protection_temperature = FIRE_IMMUNITY_SUIT_MAX_TEMP_PROTECT
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/wizard

/obj/item/clothing/suit/space/hardsuit/wizard/Initialize()
	. = ..()
	AddComponent(/datum/component/anti_magic, TRUE, FALSE)


	//Medical hardsuit
/obj/item/clothing/head/helmet/space/hardsuit/medical
	name = "Шлем медицинского скафандра"
	desc = "Специальный шлем, предназначенный для работы в опасных условиях низкого давления. Построен из легких материалов для дополнительного комфорта, но не защищает глаза от интенсивного света."
	icon_state = "hardsuit0-medical"
	item_state = "medical_helm"
	item_color = "medical"
	flash_protect = 0
	armor = list("melee" = 30, "bullet" = 5, "laser" = 10, "energy" = 5, "bomb" = 10, "bio" = 100, "rad" = 60, "fire" = 60, "acid" = 75)
	scan_reagents = 1

/obj/item/clothing/suit/space/hardsuit/medical
	icon_state = "hardsuit-medical"
	name = "Медицинский скафандр"
	desc = "Специальный костюм, который защищает от опасных сред низкого давления. Изготовлен из легких материалов для облегчения передвижения."
	item_state = "medical_hardsuit"
	allowed = list(/obj/item/flashlight, /obj/item/tank/internals, /obj/item/storage/firstaid, /obj/item/healthanalyzer, /obj/item/stack/medical)
	armor = list("melee" = 30, "bullet" = 5, "laser" = 10, "energy" = 5, "bomb" = 10, "bio" = 100, "rad" = 60, "fire" = 60, "acid" = 75)
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/medical

	//Research Director hardsuit
/obj/item/clothing/head/helmet/space/hardsuit/rd
	name = "Прототип шлема скафандра"
	desc = "Прототип шлема, предназначенный для исследований в опасных условиях низкого давления. На визоре вспыхивают научные данные."
	icon_state = "hardsuit0-rd"
	item_color = "rd"
	resistance_flags = ACID_PROOF | FIRE_PROOF
	max_heat_protection_temperature = FIRE_SUIT_MAX_TEMP_PROTECT
	armor = list("melee" = 30, "bullet" = 5, "laser" = 10, "energy" = 5, "bomb" = 100, "bio" = 100, "rad" = 60, "fire" = 60, "acid" = 80)
	var/obj/machinery/doppler_array/integrated/bomb_radar
	scan_reagents = 1
	actions_types = list(/datum/action/item_action/toggle_helmet_light, /datum/action/item_action/toggle_research_scanner)

/obj/item/clothing/head/helmet/space/hardsuit/rd/Initialize()
	. = ..()
	bomb_radar = new /obj/machinery/doppler_array/integrated(src)

/obj/item/clothing/head/helmet/space/hardsuit/rd/equipped(mob/living/carbon/human/user, slot)
	..()
	if (slot == SLOT_HEAD)
		var/datum/atom_hud/DHUD = GLOB.huds[DATA_HUD_DIAGNOSTIC_BASIC]
		DHUD.add_hud_to(user)

/obj/item/clothing/head/helmet/space/hardsuit/rd/dropped(mob/living/carbon/human/user)
	..()
	if (user.head == src)
		var/datum/atom_hud/DHUD = GLOB.huds[DATA_HUD_DIAGNOSTIC_BASIC]
		DHUD.remove_hud_from(user)

/obj/item/clothing/suit/space/hardsuit/rd
	icon_state = "hardsuit-rd"
	name = "Прототип скафандра"
	desc = "Прототип скафандра, защищающего от опасных сред низкого давления. Оснащен обширной обшивкой для работы со взрывчатыми веществами и опасными исследовательскими материалами."
	item_state = "hardsuit-rd"
	resistance_flags = ACID_PROOF | FIRE_PROOF
	max_heat_protection_temperature = FIRE_SUIT_MAX_TEMP_PROTECT //Same as an emergency firesuit. Not ideal for extended exposure.
	allowed = list(/obj/item/flashlight, /obj/item/tank/internals, /obj/item/gun/energy/wormhole_projector,
	/obj/item/hand_tele, /obj/item/aicard)
	armor = list("melee" = 30, "bullet" = 5, "laser" = 10, "energy" = 5, "bomb" = 100, "bio" = 100, "rad" = 60, "fire" = 60, "acid" = 80)
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/rd



	//Security hardsuit
/obj/item/clothing/head/helmet/space/hardsuit/security
	name = "Шлем охранного скафандра"
	desc = "Специальный шлем, предназначенный для работы в опасных условиях низкого давления. Имеет дополнительный слой брони."
	icon_state = "hardsuit0-sec"
	item_state = "sec_helm"
	item_color = "sec"
	armor = list("melee" = 35, "bullet" = 15, "laser" = 30,"energy" = 10, "bomb" = 10, "bio" = 100, "rad" = 50, "fire" = 75, "acid" = 75)


/obj/item/clothing/suit/space/hardsuit/security
	icon_state = "hardsuit-sec"
	name = "Скафандр охраны"
	desc = "Специальный скафандр, предназначенный для работы в опасных условиях низкого давления. Имеет дополнительный слой брони."
	item_state = "sec_hardsuit"
	armor = list("melee" = 35, "bullet" = 15, "laser" = 30, "energy" = 10, "bomb" = 10, "bio" = 100, "rad" = 50, "fire" = 75, "acid" = 75)
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/security

/obj/item/clothing/suit/space/hardsuit/security/Initialize()
	. = ..()
	allowed = GLOB.security_hardsuit_allowed

	//Head of Security hardsuit
/obj/item/clothing/head/helmet/space/hardsuit/security/hos
	name = "Шлем скафандра Главы Безопасности"
	desc = "Специальный громоздкий шлем, предназначенный для работы в опасных условиях низкого давления. Имеет дополнительный слой брони."
	icon_state = "hardsuit0-hos"
	item_color = "hos"
	armor = list("melee" = 45, "bullet" = 25, "laser" = 30, "energy" = 10, "bomb" = 25, "bio" = 100, "rad" = 50, "fire" = 95, "acid" = 95)


/obj/item/clothing/suit/space/hardsuit/security/hos
	icon_state = "hardsuit-hos"
	name = "Скафандр Главы Безопасности"
	desc = "Специальный громоздкий скафандр, предназначенный для работы в опасных условиях низкого давления. Имеет дополнительный слой брони."
	armor = list("melee" = 45, "bullet" = 25, "laser" = 30, "energy" = 10, "bomb" = 25, "bio" = 100, "rad" = 50, "fire" = 95, "acid" = 95)
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/security/hos
	jetpack = /obj/item/tank/jetpack/suit

	//Captain
/obj/item/clothing/head/helmet/space/hardsuit/captain
	name = "Шлем капитанского скафандра"
	icon_state = "capspace"
	item_state = "capspacehelmet"
	desc = "Тактический шлем спецназа второй модели может похвастаться лучшей защитой и ужасным чувством моды."
	armor = list("melee" = 40, "bullet" = 50, "laser" = 50, "energy" = 25, "bomb" = 50, "bio" = 100, "rad" = 50, "fire" = 100, "acid" = 100)
	resistance_flags = FIRE_PROOF | ACID_PROOF
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR //we want to see the mask
	heat_protection = HEAD
	max_heat_protection_temperature = FIRE_IMMUNITY_HELM_MAX_TEMP_PROTECT
	actions_types = list()

/obj/item/clothing/head/helmet/space/hardsuit/captain/attack_self()
	return //Sprites required for flashlight

/obj/item/clothing/suit/space/hardsuit/captain
	name = "Капитанский скафандр спецназа"
	desc = "Скафандр спецназа второй модели с обтекаемыми суставами и броней из превосходных материалов, изолированный от интенсивного тепла. Самая совершенная тактическая броня, предназначеная для обеспечения безопасности самых важных сотрудников корпорации, эта покрашена в цветах компании Vault-Tec. Лучше не позволять ассистентам завладеть им."
	icon_state = "caparmor"
	item_state = "capspacesuit"
	armor = list("melee" = 40, "bullet" = 50, "laser" = 50, "energy" = 25, "bomb" = 50, "bio" = 100, "rad" = 50, "fire" = 100, "acid" = 100)
	resistance_flags = FIRE_PROOF | ACID_PROOF
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_IMMUNITY_SUIT_MAX_TEMP_PROTECT //this needed to be added a long fucking time ago
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/captain

/obj/item/clothing/suit/space/hardsuit/captain/Initialize()
	. = ..()
	allowed = GLOB.security_hardsuit_allowed

	//Clown
/obj/item/clothing/head/helmet/space/hardsuit/clown
	name = "Шлем космического хонка"
	desc = "Специальный шлем, предназначенный для работы в условиях низкого юмора. Также защищает от радиации."
	icon_state = "hardsuit0-clown"
	item_state = "hardsuit0-clown"
	armor = list("melee" = 30, "bullet" = 5, "laser" = 10, "energy" = 5, "bomb" = 10, "bio" = 100, "rad" = 75, "fire" = 60, "acid" = 30)
	item_color = "clown"

/obj/item/clothing/suit/space/hardsuit/clown
	name = "Скафандр космического хонка"
	desc = "Специальный скафандр, предназначенный для работы в условиях низкого юмора. Также защищает от радиации. Только истинный клоун может надеть."
	icon_state = "hardsuit-clown"
	item_state = "clown_hardsuit"
	armor = list("melee" = 30, "bullet" = 5, "laser" = 10, "energy" = 5, "bomb" = 10, "bio" = 100, "rad" = 75, "fire" = 60, "acid" = 30)
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/clown

/obj/item/clothing/suit/space/hardsuit/clown/mob_can_equip(mob/M, slot)
	if(!..() || !ishuman(M))
		return FALSE
	var/mob/living/carbon/human/H = M
	if(H.mind.assigned_role == "Clown")
		return TRUE
	else
		return FALSE

	//Old Prototype
/obj/item/clothing/head/helmet/space/hardsuit/ancient
	name = "Прототип шлема RIG скафандра"
	desc = "Ранний прототип шлема скафандра, предназначенного для быстрого перемещения головы пользователя. Конструктивные ограничения шлема означают, что он не имеет встроенных камер, что ограничивает видимость пользователей."
	icon_state = "hardsuit0-ancient"
	item_state = "anc_helm"
	armor = list("melee" = 30, "bullet" = 5, "laser" = 5, "energy" = 0, "bomb" = 50, "bio" = 100, "rad" = 100, "fire" = 100, "acid" = 75)
	item_color = "ancient"
	resistance_flags = FIRE_PROOF
	var/datum/component/mobhook

/obj/item/clothing/suit/space/hardsuit/ancient
	name = "Прототип RIG скафандра"
	desc = "Прототип силового RIG скафагжра. Обеспечивает превосходную защиту от элементов космической среды, будучи при этом комфортным для передвижения благодаря приводимым в действие локомотивам. Однако остается очень громоздким"
	icon_state = "hardsuit-ancient"
	item_state = "anc_hardsuit"
	armor = list("melee" = 30, "bullet" = 5, "laser" = 5, "energy" = 0, "bomb" = 50, "bio" = 100, "rad" = 100, "fire" = 100, "acid" = 75)
	slowdown = 3
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/ancient
	resistance_flags = FIRE_PROOF
	var/footstep = 1
	var/datum/component/mobhook

/obj/item/clothing/suit/space/hardsuit/ancient/proc/on_mob_move()
	var/mob/living/carbon/human/H = loc
	if(!istype(H) || H.wear_suit != src)
		return
	if(footstep > 1)
		playsound(src, 'sound/effects/servostep.ogg', 100, 1)
		footstep = 0
	else
		footstep++

/obj/item/clothing/suit/space/hardsuit/ancient/equipped(mob/user, slot)
	. = ..()
	if (slot == SLOT_WEAR_SUIT)
		if (mobhook && mobhook.parent != user)
			QDEL_NULL(mobhook)
		if (!mobhook)
			mobhook = user.AddComponent(/datum/component/redirect, list(COMSIG_MOVABLE_MOVED), CALLBACK(src, .proc/on_mob_move))
	else
		QDEL_NULL(mobhook)

/obj/item/clothing/suit/space/hardsuit/ancient/dropped()
	. = ..()
	QDEL_NULL(mobhook)

/obj/item/clothing/suit/space/hardsuit/ancient/Destroy()
	QDEL_NULL(mobhook) // mobhook is not our component
	return ..()

/////////////SHIELDED//////////////////////////////////

/obj/item/clothing/suit/space/hardsuit/shielded
	name = "Экранированный скафандр"
	desc = "Скафандр со встроенной энергетической защитой. Будет быстро перезаряжаться, когда не находится под огнем."
	icon_state = "hardsuit-hos"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/security/hos
	allowed = null
	armor = list("melee" = 30, "bullet" = 15, "laser" = 30, "energy" = 10, "bomb" = 10, "bio" = 100, "rad" = 50, "fire" = 100, "acid" = 100)
	resistance_flags = FIRE_PROOF | ACID_PROOF
	var/current_charges = 3
	var/max_charges = 3 //How many charges total the shielding has
	var/recharge_delay = 200 //How long after we've been shot before we can start recharging. 20 seconds here
	var/recharge_cooldown = 0 //Time since we've last been shot
	var/recharge_rate = 1 //How quickly the shield recharges once it starts charging
	var/shield_state = "shield-old"
	var/shield_on = "shield-old"

/obj/item/clothing/suit/space/hardsuit/shielded/Initialize()
	. = ..()
	if(!allowed)
		allowed = GLOB.advanced_hardsuit_allowed

/obj/item/clothing/suit/space/hardsuit/shielded/hit_reaction(mob/living/carbon/human/owner, atom/movable/hitby, attack_text = "the attack", final_block_chance = 0, damage = 0, attack_type = MELEE_ATTACK)
	recharge_cooldown = world.time + recharge_delay
	if(current_charges > 0)
		var/datum/effect_system/spark_spread/s = new
		s.set_up(2, 1, src)
		s.start()
		owner.visible_message("<span class='danger'> щит [owner] отражает [attack_text] в ливне искр!</span>")
		current_charges--
		if(recharge_rate)
			START_PROCESSING(SSobj, src)
		if(current_charges <= 0)
			owner.visible_message("щит [owner] перегружен!")
			shield_state = "broken"
			owner.update_inv_wear_suit()
		return 1
	return 0


/obj/item/clothing/suit/space/hardsuit/shielded/Destroy()
	STOP_PROCESSING(SSobj, src)
	return ..()

/obj/item/clothing/suit/space/hardsuit/shielded/process()
	if(world.time > recharge_cooldown && current_charges < max_charges)
		current_charges = CLAMP((current_charges + recharge_rate), 0, max_charges)
		playsound(loc, 'sound/magic/charge.ogg', 50, 1)
		if(current_charges == max_charges)
			playsound(loc, 'sound/machines/ding.ogg', 50, 1)
			STOP_PROCESSING(SSobj, src)
		shield_state = "[shield_on]"
		if(ishuman(loc))
			var/mob/living/carbon/human/C = loc
			C.update_inv_wear_suit()

/obj/item/clothing/suit/space/hardsuit/shielded/worn_overlays(isinhands)
	. = list()
	if(!isinhands)
		. += mutable_appearance('icons/effects/effects.dmi', shield_state, MOB_LAYER + 0.01)

/obj/item/clothing/head/helmet/space/hardsuit/shielded
	resistance_flags = FIRE_PROOF | ACID_PROOF

///////////////Capture the Flag////////////////////

/obj/item/clothing/suit/space/hardsuit/shielded/ctf
	name = "Белый экранированный скафандр"
	desc = "Стандартный скафандр для игры в захват флага."
	icon_state = "ert_medical"
	item_state = "ert_medical"
	item_color = "ert_medical"
	item_flags = NODROP //Dont want people changing into the other teams gear
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/shielded/ctf
	armor = list("melee" = 0, "bullet" = 30, "laser" = 30, "energy" = 30, "bomb" = 50, "bio" = 100, "rad" = 100, "fire" = 95, "acid" = 95)
	slowdown = 0
	max_charges = 5

/obj/item/clothing/suit/space/hardsuit/shielded/ctf/red
	name = "Красный экранированный скафандр"
	icon_state = "ert_security"
	item_state = "ert_security"
	item_color = "ert_security"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/shielded/ctf/red
	shield_state = "shield-red"
	shield_on = "shield-red"

/obj/item/clothing/suit/space/hardsuit/shielded/ctf/blue
	name = "Синий экранированный скафандр"
	desc = "Стандартный скафандр для игры в захват флага."
	icon_state = "ert_command"
	item_state = "ert_command"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/shielded/ctf/blue



/obj/item/clothing/head/helmet/space/hardsuit/shielded/ctf
	name = "Экранированный шлем"
	desc = "Стандартный шлем для игры в захват флага."
	icon_state = "hardsuit0-ert_medical"
	item_state = "hardsuit0-ert_medical"
	item_color = "ert_medical"
	armor = list("melee" = 0, "bullet" = 30, "laser" = 30, "energy" = 30, "bomb" = 50, "bio" = 100, "rad" = 100, "fire" = 95, "acid" = 95)


/obj/item/clothing/head/helmet/space/hardsuit/shielded/ctf/red
	icon_state = "hardsuit0-ert_security"
	item_state = "hardsuit0-ert_security"
	item_color = "ert_security"

/obj/item/clothing/head/helmet/space/hardsuit/shielded/ctf/blue
	name = "Экранированный шлем"
	desc = "Стандартный шлем для игры в захват флага."
	icon_state = "hardsuit0-ert_commander"
	item_state = "hardsuit0-ert_commander"
	item_color = "ert_commander"





//////Syndicate Version

/obj/item/clothing/suit/space/hardsuit/shielded/syndi
	name = "blood-red hardsuit"
	desc = "An advanced hardsuit with built in energy shielding."
	icon_state = "hardsuit1-syndi"
	item_state = "syndie_hardsuit"
	item_color = "syndi"
	armor = list("melee" = 40, "bullet" = 50, "laser" = 30, "energy" = 15, "bomb" = 35, "bio" = 100, "rad" = 50, "fire" = 100, "acid" = 100)
	allowed = list(/obj/item/gun, /obj/item/ammo_box, /obj/item/ammo_casing, /obj/item/melee/baton, /obj/item/melee/transforming/energy/sword/saber, /obj/item/restraints/handcuffs, /obj/item/tank/internals)
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/shielded/syndi
	slowdown = 0


/obj/item/clothing/suit/space/hardsuit/shielded/syndi/Initialize()
	jetpack = new /obj/item/tank/jetpack/suit(src)
	. = ..()

/obj/item/clothing/head/helmet/space/hardsuit/shielded/syndi
	name = "Кроваво-красный шлем"
	desc = "Усовершенствованный шлем с встроенным генератором щита."
	icon_state = "hardsuit1-syndi"
	item_state = "syndie_helm"
	item_color = "syndi"
	armor = list("melee" = 40, "bullet" = 50, "laser" = 30, "energy" = 15, "bomb" = 35, "bio" = 100, "rad" = 50, "fire" = 100, "acid" = 100)

///SWAT version
/obj/item/clothing/suit/space/hardsuit/shielded/swat
	name = "Скафандр коммандо смерти"
	desc = "Улучшенный скафандр, используемый коммандос в специальных операциях."
	icon_state = "deathsquad"
	item_state = "swat_suit"
	item_color = "syndi"
	max_charges = 4
	current_charges = 4
	recharge_delay = 15
	armor = list("melee" = 80, "bullet" = 80, "laser" = 50, "energy" = 50, "bomb" = 100, "bio" = 100, "rad" = 100, "fire" = 100, "acid" = 100)
	strip_delay = 130
	max_heat_protection_temperature = FIRE_IMMUNITY_SUIT_MAX_TEMP_PROTECT
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/shielded/swat
	dog_fashion = /datum/dog_fashion/back/deathsquad

/obj/item/clothing/head/helmet/space/hardsuit/shielded/swat
	name = "Шлем коммандо смерти"
	desc = "Тактический шлем с встроенным генератором щита."
	icon_state = "deathsquad"
	item_state = "deathsquad"
	item_color = "syndi"
	armor = list("melee" = 80, "bullet" = 80, "laser" = 50, "energy" = 50, "bomb" = 100, "bio" = 100, "rad" = 100, "fire" = 100, "acid" = 100)
	strip_delay = 130
	max_heat_protection_temperature = FIRE_IMMUNITY_HELM_MAX_TEMP_PROTECT
	actions_types = list()


///////////////////////
//////POWER ARMOR//////
///////////////////////
//Power armor is a type of armor that takes power cells while possibly also allowing cool things like night vision
//Meant for fallout and to be more immersive as well as a replacement for mecha suits

//THE HELMET SHOULD NOT EXIST AS A STANDALONE ITEM
//IT'S MEANT TO BE ACTIVATED AND APPEAR VIA THE BASE SUIT

/*/obj/item/clothing/head/helmet/space/hardsuit/powerarmor
	name = "Стандартный селовой шлем"
	desc = "Стандартный силовой шлем, он ТОЧНО не должен существовать."
	clothing_flags = THICKMATERIAL //It better stop syringes
	cold_protection = HEAD
	min_cold_protection_temperature = SPACE_HELM_MIN_TEMP_PROTECT
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_HELM_MAX_TEMP_PROTECT
	strip_delay = 200
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR|HIDEMASK|HIDEJUMPSUIT
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	resistance_flags = LAVA_PROOF | FIRE_PROOF | ACID_PROOF
	flash_protect = 3
	tint = 0
	dynamic_hair_suffix = ""
	dynamic_fhair_suffix = ""
	ispowerarmor = 1
	offlinetint = 2 //Rip your eyes
	var/offline = 0 //If it's offline
	//actions_types = list(/datum/action/item_action/toggle_helmet_light)
	actions_types = list()

/obj/item/clothing/suit/space/hardsuit/powerarmor
	name = "Стандартная силовая броня"
	desc = "По умолчанию силовой бронекостюм, к сожалению, вообще не должен существовать. Alt click , чтобы получить ячейку питания, или примените на нём ячейку, чтобы поменять их местами. Вы можете применить на нём сварку для ремонта"
	w_class = WEIGHT_CLASS_GIGANTIC //No putting it anywhere
	slowdown = 1
	ispowerarmor = 1
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS
	flags_inv = HIDEJUMPSUIT
	strip_delay = 200
	resistance_flags = LAVA_PROOF | FIRE_PROOF | ACID_PROOF
	clothing_flags = THICKMATERIAL //It better stop syringes
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	obj/item/clothing/head/helmet/spacec/hardsuit/powerarmor/helmettype = /obj/item/clothing/head/helmet/space/hardsuit/powerarmor //Recast bois
	obj/item/clothing/head/helmet/spacec/hardsuit/powerarmor/helmet
	var/offlineslowdown = 4 //How slow you go when its powered off
	var/obj/item/stock_parts/cell/cell = new/obj/item/stock_parts/cell/upgraded/plus //Power source used to power said armor, 5000 charge default
	var/putondelay = 120 //To prevent lugging this armor and putting it on instantly when combat happens; gotta have it on you
	var/energydrain = 25 //default drain of energy per 2 seconds
	var/offline = 0 //If it's offline
	max_integrity = 400
	obj_integrity = 400
	var/health_buffer = 0 //New thing to make power armor scary; it can now absorb damage that is repairable by a welder

/obj/item/clothing/suit/space/hardsuit/powerarmor/Initialize()
	..()
	START_PROCESSING(SSobj, src)

/obj/item/clothing/suit/space/hardsuit/powerarmor/Destroy()
	STOP_PROCESSING(SSobj, src)
	..()

/obj/item/clothing/head/helmet/space/hardsuit/powerarmor/Initialize()
	..()
	START_PROCESSING(SSobj, src)

/obj/item/clothing/head/helmet/space/hardsuit/powerarmor/Destroy()
	STOP_PROCESSING(SSobj, src)
	..()

/obj/item/clothing/suit/space/hardsuit/powerarmor/proc/togglepower() //If it should be turned on or off
	if(offline)
		offline = FALSE
		slowdown = initial(slowdown)
		playsound(src, 'sound/weapons/saberon.ogg', 35, 1)
		visible_message("The [name] suddenly powers back up!", "The hardsuit gets back up and running, that's pretty good.")
	else
		offline = TRUE
		slowdown = offlineslowdown
		playsound(src, 'sound/weapons/saberoff.ogg', 35, 1)
		visible_message("The [name] suddenly runs out of power!", "The hardsuit runs out of power, that can't be good.")

/obj/item/clothing/head/helmet/space/hardsuit/powerarmor/process()
	var/obj/item/clothing/suit/space/hardsuit/powerarmor/armor = suit
	if(armor.offline)
		tint = offlinetint
		offline = TRUE
	else
		tint = initial(tint)
		offline = FALSE

/obj/item/clothing/suit/space/hardsuit/powerarmor/process()
	if(cell)
		if(!(cell.use(energydrain)))
			if(!offline)
				togglepower()
				return
		else
			if(offline) //It's offline and could use up power in the cell, turn it on and continue with the rest of the stuff
				togglepower()
		if(cell.charge == 1000)
			var/mob/living/carbon/human/M = loc
			to_chat(M, "<span class='warning'>WARNING: LOW BATTERYY CHARGE! [1000 / (energydrain / 2)] SECONDS LEFT OF OPERATION UNTIL SHUTDOWN!</span>")
			playsound(loc, 'sound/machines/ping.ogg', 30, 1)
			return
	else
		if(!offline)
			togglepower() //No energy cell and its on, turn it off
			return

/obj/item/clothing/suit/space/hardsuit/powerarmor/item_action_slot_check(slot, mob/user)
	if(cell)
		var/mob/living/carbon/human/H = user //If it isn't human then something went HORRIBLY wrong
		if(!offline && src == H.wear_suit) //Not offline and is on a person; you can use the abilities
			return TRUE
		else
			return FALSE
	else
		return FALSE //No cell, no runtimes, no power

/obj/item/clothing/head/helmet/space/hardsuit/powerarmor/item_action_slot_check(slot, mob/user)
	var/obj/item/clothing/suit/space/hardsuit/powerarmor/armor = suit
	if(armor.offline)
		return FALSE
	else
		return TRUE

/obj/item/clothing/suit/space/hardsuit/powerarmor/AltClick(mob/user)
	if(cell && user.canUseTopic(src, BE_CLOSE, ismonkey(user)))
		if(!(user.put_in_hands(cell)))
			to_chat(user, "Ваши руки заняты, вы не можете извлечь аккумулятор!")
			return
		else
			to_chat(user,"Вы вынимаете аккумулятор из силовой брони, отключая её")
			cell = null //Power cell no longer in the dang armor
			if(!offline)
				togglepower()
			return

/obj/item/clothing/suit/space/hardsuit/powerarmor/attackby(obj/item/I, mob/user)
	if(istype(I, /obj/item/weldingtool))
		if(I.use_tool(src, user, 100, volume=15))
			to_chat(user, "You repair part of the [src].")
			health_buffer = min(initial(health_buffer), health_buffer + (initial(health_buffer) / 5)) //Expensive on welding fuel, 200 seconds and 500 welding fuel to repair a just about destroyed power armor
			return 1
		else
			to_chat(user, "Ваш [I] требует больше топлива.")
	if(istype(I, /obj/item/stock_parts/cell))
		var/obj/item/stock_parts/cell/cell2 = I
		if(cell) //Swap
			cell2.forceMove(src)
			user.put_in_hands(cell)
			cell = cell2
			to_chat(user, "Вы меняете аккумуляторы в [name].")
		else //Put in if there's no cell
			cell2.forceMove(src)
			cell = cell2
			to_chat(user, "Вы вставляете аккумулятор в [name].")

/obj/item/clothing/suit/space/hardsuit/powerarmor/mob_can_equip(mob/living/carbon/human/user, mob/living/carbon/human/equipper, slot, disable_warning = 1)
	if(src == user.wear_suit) //Suit is already equipped; stops message spam
		return TRUE
	if (ishuman(user))
		var/mob/living/carbon/human/H = user
		if ((!H.mind.martial_art && H.mind.martial_art.name != "Power Armor Training") && ispowerarmor)
			to_chat(H, "<span class='warning'>You don't have the proper training to operate the power armor!</span>")
			return FALSE
		else
			if(slot == SLOT_WEAR_SUIT) //Anywhere else can be instantly moved
				to_chat(H, "<span class='notice'>You start to put on the [src.name]...</span>")
				if(do_after(user, putondelay, target = src))
					user.equip_to_slot(src, SLOT_WEAR_SUIT) //say it with me; hardcored slots
					to_chat(H, "<span class='notice'>You put on the [src.name]! Ready to rock and roll.</span>")
					return TRUE //Already equipped the armor; don't want the armor being equipped to another slot and returns silently
				else
					return FALSE //Moved while equiping
			if(slot == SLOT_HANDS) //Putting into hands work, anywhere else besides armor slot won't work
				return TRUE
	return

//Absorb the damage
/obj/item/clothing/suit/space/hardsuit/powerarmor/hit_reaction(mob/living/carbon/human/owner, atom/movable/hitby, attack_text = "the attack", final_block_chance = 0, damage = 0, attack_type = MELEE_ATTACK)
	if(cell && !offline) //Needs to be powered to make use of the built in shield
		if(health_buffer > 0)
			visible_message("The [src] easily deflects the [hitby]!", "<span class='notice'>Your [src] blocks the [hitby] with ease.</span>")
			health_buffer -= damage
			if(health_buffer <= 0)
				to_chat(owner, "<span class='danger'> Your [src] seems to shut off, it will no longer deflect projectiles until you repair it with a welder!</span>")
		else //No more health absorb, do stuff regulary
			..()
	else //No power to the suit, do stuff regulary
		..()

//Same for helmet but uses the suits health buffer
/obj/item/clothing/head/helmet/space/hardsuit/powerarmor/hit_reaction(mob/living/carbon/human/owner, atom/movable/hitby, attack_text = "the attack", final_block_chance = 0, damage = 0, attack_type = MELEE_ATTACK)
	var/obj/item/clothing/suit/space/hardsuit/powerarmor/armor = suit
	if(armor.cell && !offline) //Needs to be powered to make use of the built in shield
		if(armor.health_buffer > 0)
			visible_message("The [src] easily deflects the [hitby]!", "<span class='notice'>Your [src] blocks the [hitby] with ease.</span>")
			armor.health_buffer -= damage
			if(armor.health_buffer <= 0)
				to_chat(owner, "<span class='danger'> Your [src] seems to shut off, it will no longer deflect projectiles until you repair it with a welder!</span>")
			return TRUE
		else //No more health absorb, do stuff regulary
			return FALSE
	else //No power to the suit, do stuff regulary
		return FALSE

/obj/item/clothing/suit/space/hardsuit/powerarmor/examine(mob/user)
	..()
	if(cell)
		to_chat(user, "This [name] seems to have about [(cell.charge / cell.maxcharge) * 100] percentage battery left. It also seems to have a shielding to withstand about [health_buffer] of damage.")
	else
		to_chat(user, "This [name] doesn't seem to have a power cell in it, it will instead provide reduced mobility and no additional shielding.")
	to_chat(user, "You can alt click the suit to get the power cell out, or attack it with a power cell to swap it out.")

/obj/item/clothing/head/helmet/space/hardsuit/powerarmor/t45b
	name = "Salvaged T-45b helmet"
	desc = "It's a pre-War power armor helmet, recovered and maintained by NCR engineers."
	icon_state = "t45bhelmet"
	item_state = "t45bhelmet"
	armor = list("melee" = 50, "bullet" = 48, "laser" = 25, "energy" = 25, "bomb" = 48, "bio" = 100, "rad" = 50, "fire" = 50, "acid" = 0)

/obj/item/clothing/suit/space/hardsuit/powerarmor/t45b
	ispowerarmor = 0
	name = "Трофейная силовая броня T-45b"
	desc = "Это набор силовой брони Т-45b, восстановленной НКР во время войны НКР и Братства.<br>Специалисты НКР починили его, заменив установленные сзади цилиндры специальным модулем кондиционирования воздуха и сняв совместные сервомоторы."
	icon_state = "t45bpowerarmor"
	item_state = "t45bpowerarmor"
	armor = list("melee" = 50, "bullet" = 48, "laser" = 25, "energy" = 25, "bomb" = 48, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/powerarmor/t45b

/obj/item/clothing/head/helmet/space/hardsuit/powerarmor/t45d
	name = "Силовой шлем T-45b"
	desc = "Это старый довоенный силовой шлем. Внутри довольно горячо."
	icon_state = "t45dhelmet"
	item_state = "t45dhelmet"
	armor = list("melee" = 68, "bullet" = 62, "laser" = 39, "energy" = 39, "bomb" = 62, "bio" = 100, "rad" = 60, "fire" = 50, "acid" = 0)

/obj/item/clothing/suit/space/hardsuit/powerarmor/t45d
	name = "Силовая броня T-45b"
	desc = "Первоначально разработанный и изготовленный для армии Соединенных Штатов американским оборонным подрядчиком West Tek, силовая броня Т-45b была первой версией силовой брони, которая была успешно применена в бою."
	icon_state = "t45dpowerarmor"
	item_state = "t45dpowerarmor"
	armor = list("melee" = 68, "bullet" = 62, "laser" = 39, "energy" = 39, "bomb" = 62, "bio" = 100, "rad" = 60, "fire" = 0, "acid" = 0)
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/powerarmor/t45d
	health_buffer = 50

/obj/item/clothing/head/helmet/space/hardsuit/powerarmor/advanced
	name = "Улучшенный силовой шлем"
	desc = "Шлем от улучшенной силовой брони первой модели, обычно используемой Акнлавом. Выглядит пугающе."
	icon_state = "advhelmet1"
	item_state = "advhelmet1"
	armor = list("melee" = 72, "bullet" = 72, "laser" = 48,"energy" = 48, "bomb" = 72, "bio" = 100,"rad" = 100, "fire" = 50, "acid" = 0)

/obj/item/clothing/suit/space/hardsuit/powerarmor/advanced
	name = "Улучшенная силовая броня"
	desc = "Улучшенная силовая броня, обычно используемая Анклавом.<br>Она состоит из легких металлических сплавов, армированных керамическими отливками в ключевых точках напряжения.<br>Кроме того, как и силовая броня Т-51b, она включает в себя систему рециркуляции, которая может превращать человеческие отходы в питьевую воду, и систему кондиционирования воздуха для удобства пользователя."
	icon_state = "advpowerarmor1"
	item_state = "advpowerarmor1"
	armor = list("melee" = 72, "bullet" = 72, "laser" = 48, "energy" = 48, "bomb" = 72, "bio" = 100, "rad" = 100, "fire" = 0, "acid" = 0)
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/powerarmor/advanced
	health_buffer = 150

/obj/item/clothing/head/helmet/space/hardsuit/powerarmor/mk2
	name = "Улучшенный силовой шлем второй модели"
	desc = "Это усовершенствованная модель усовершенствованной силовой брони, используемой исключительно вооруженными силами анклава, разработанная после Великой войны.<br>Как и старший брат, стандартная усовершенствованная силовая броня, она матово-черная с угрожающим внешним видом, но с несколькими существенными отличиями - кажется, что она полностью состоит из легких керамических композитов, а не из обычной комбинации металлических и керамических пластин.<br>Кроме того, как и силовая броня Т-51b, она включает в себя систему рециркуляции, которая может превращать человеческие отходы в питьевую воду, и систему кондиционирования воздуха для удобства пользователя."
	icon_state = "advhelmet2"
	item_state = "advhelmet2"
	armor = list("melee" = 72, "bullet" = 72, "laser" = 48, "energy" = 48, "bomb" = 72, "bio" = 100, "rad" = 100, "fire" = 50, "acid" = 0)

/obj/item/clothing/suit/space/hardsuit/powerarmor/advanced/mk2
	name = "Улучшенная силовая броня второй модели"
	desc = "Это усовершенствованная модель усовершенствованной силовой брони, используемой исключительно вооруженными силами анклава, разработанная после Великой войны.<br>Как и старший брат, стандартная усовершенствованная силовая броня, она матово-черная с угрожающим внешним видом, но с несколькими существенными отличиями - кажется, что она полностью состоит из легких керамических композитов, а не из обычной комбинации металлических и керамических пластин.<br>Кроме того, как и силовая броня Т-51b, она включает в себя систему рециркуляции, которая может превращать человеческие отходы в питьевую воду, и систему кондиционирования воздуха для удобства пользователя."
	icon_state = "advpowerarmor2"
	item_state = "advpowerarmor2"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS
	armor = list("melee" = 72, "bullet" = 72, "laser" = 48, "energy" = 48, "bomb" = 72, "bio" = 100, "rad" = 100, "fire" = 0, "acid" = 0)
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/powerarmor/mk2
	health_buffer = 175

/obj/item/clothing/head/helmet/space/hardsuit/powerarmor/tesla
	name = "Силовой тесла шлем"
	desc = "Шлем, обычно используемый спецназом анклава.<br>Сбоку расположены три оранжевых энергетических конденсатора."
	icon_state = "tesla"
	item_state = "tesla"
	armor = list("melee" = 68, "bullet" = 62, "laser" = 80, "energy" = 80, "bomb" = 62, "bio" = 100, "rad" = 100, "fire" = 50, "acid" = 0)

/obj/item/clothing/suit/space/hardsuit/powerarmor/tesla
	name = "Силовая тесла броня"
	desc = "Вариант усовершенствованной силовой брони анклава первой модели, оснащенный устройством Тесла, способный рассеивать большой процент урона, наносимого направленными энергетическими атаками.<br>Поскольку он сделан из сложных композитных материалов, предназначенных для блокирования большей части энергетических повреждений, он заметно слабее против кинетических ударов."
	icon_state = "tesla"
	item_state = "tesla"
	armor = list("melee" = 68, "bullet" = 62, "laser" = 80, "energy" = 80, "bomb" = 62, "bio" = 100, "rad" = 100, "fire" = 0, "acid" = 0)
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/powerarmor/tesla

/obj/item/clothing/head/helmet/space/hardsuit/powerarmor/t51b
	name = "Силовой шлем T-45b"
	desc = "Это силовой шлем T-45b, обычно используемый Братством. Выглядит довольно очаровательно."
	icon_state = "t51bhelmet"
	item_state = "t51bhelmet"
	armor = list("melee" = 68, "bullet" = 62, "laser" = 39, "energy" = 39, "bomb" = 62, "bio" = 100, "rad" = 100, "fire" = 50, "acid" = 0)

/obj/item/clothing/suit/space/hardsuit/powerarmor/t51b
	name = "Силовая броня T-51b"
	desc = "Вершина довоенной техники. Эта силовая броня обеспечивает существенную защиту владельцу."
	icon_state = "t51bpowerarmor"
	item_state = "t51bpowerarmor"
	armor = list("melee" = 68, "bullet" = 62, "laser" = 39, "energy" = 39, "bomb" = 62, "bio" = 100, "rad" = 100, "fire" = 0, "acid" = 0)
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/powerarmor/t51b
	health_buffer = 100
	*/
