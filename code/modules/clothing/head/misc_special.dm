/*
 * Contents:
 *		Welding mask
 *		Cakehat
 *		Ushanka
 *		Pumpkin head
 *		Kitty ears
 *		Cardborg disguise
 *		Wig
 *		Bronze hat
 */

/*
 * Welding mask
 */
/obj/item/clothing/head/welding
	name = "Сварочный шлем"
	desc = "Установленное на голове покрытие лица, предназначенное для полной защиты глаз владельца от сварочных искр."
	icon_state = "welding"
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	item_state = "welding"
	materials = list(MAT_METAL=1750, MAT_GLASS=400)
	flash_protect = 2
	tint = 2
	armor = list("melee" = 25, "bullet" = 16, "laser" = 0,"energy" = 0, "bomb" = 16, "bio" = 0, "rad" = 0, "fire" = 100, "acid" = 60)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE
	actions_types = list(/datum/action/item_action/toggle)
	visor_flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE
	visor_flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	resistance_flags = FIRE_PROOF

/obj/item/clothing/head/welding/attack_self(mob/user)
	weldingvisortoggle(user)


/obj/item/clothing/head/welding/weldingfire
	icon_state = "weldingfire"
	item_state = "weldingfire"

/obj/item/clothing/head/welding/weldingjapan
	icon_state = "weldingjapan"
	item_state = "weldingjapan"

/*
 * Cakehat
 */
/obj/item/clothing/head/hardhat/cakehat
	name = "Шляпа-торт"
	desc = "Вы надели торт на голову. Прекрасно!"
	icon_state = "hardhat0_cakehat"
	item_state = "hardhat0_cakehat"
	item_color = "cakehat"
	hitsound = 'sound/weapons/tap.ogg'
	flags_inv = HIDEEARS|HIDEHAIR
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	light_range = 2 //luminosity when on
	flags_cover = HEADCOVERSEYES
	heat = 1000

/obj/item/clothing/head/hardhat/cakehat/process()
	var/turf/location = src.loc
	if(ishuman(location))
		var/mob/living/carbon/human/M = location
		if(M.is_holding(src) || M.head == src)
			location = M.loc

	if(isturf(location))
		location.hotspot_expose(700, 1)

/obj/item/clothing/head/hardhat/cakehat/turn_on()
	..()
	force = 15
	throwforce = 15
	damtype = BURN
	hitsound = 'sound/items/welder.ogg'
	START_PROCESSING(SSobj, src)

/obj/item/clothing/head/hardhat/cakehat/turn_off()
	..()
	force = 0
	throwforce = 0
	damtype = BRUTE
	hitsound = 'sound/weapons/tap.ogg'
	STOP_PROCESSING(SSobj, src)

/obj/item/clothing/head/hardhat/cakehat/is_hot()
	return on * heat
/*
 * Ushanka
 */
/obj/item/clothing/head/ushanka
	name = "Ушанка"
	desc = "Прекрасно подходит для зимы в Сибири, da?"
	icon_state = "ushankadown"
	item_state = "ushankadown"
	flags_inv = HIDEEARS|HIDEHAIR
	var/earflaps = 1
	cold_protection = HEAD
	min_cold_protection_temperature = FIRE_HELM_MIN_TEMP_PROTECT

	dog_fashion = /datum/dog_fashion/head/ushanka

/obj/item/clothing/head/ushanka/attack_self(mob/user)
	if(earflaps)
		src.icon_state = "ushankaup"
		src.item_state = "ushankaup"
		earflaps = 0
		to_chat(user, "<span class='notice'>You raise the ear flaps on the ushanka.</span>")
	else
		src.icon_state = "ushankadown"
		src.item_state = "ushankadown"
		earflaps = 1
		to_chat(user, "<span class='notice'>You lower the ear flaps on the ushanka.</span>")

/*
 * Pumpkin head
 */
/obj/item/clothing/head/hardhat/pumpkinhead
	name = "Резаная тыква"
	desc = "Фонарь Джека! Считается, что он отгоняет злых духов."
	icon_state = "hardhat0_pumpkin"
	item_state = "hardhat0_pumpkin"
	item_color = "pumpkin"
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	light_range = 2 //luminosity when on
	flags_cover = HEADCOVERSEYES

/*
 * Kitty ears - ADMINSPAWNABLE ONLY
 */

/obj/item/clothing/head/kitty
	name = "Кошачьи ушка"
	desc = "Пара кошачьих ушек. Мяу!"
	icon_state = "kitty"
	color = "#999999"
	dynamic_hair_suffix = ""

	dog_fashion = /datum/dog_fashion/head/kitty

/obj/item/clothing/head/kitty/equipped(mob/living/carbon/human/user, slot)
	if(ishuman(user) && slot == SLOT_HEAD)
		update_icon(user)
		user.update_inv_head() //Color might have been changed by update_icon.
	..()

/obj/item/clothing/head/kitty/update_icon(mob/living/carbon/human/user)
	if(ishuman(user))
		add_atom_colour("#[user.hair_color]", FIXED_COLOUR_PRIORITY)

/obj/item/clothing/head/kitty/genuine
	desc = "Пара кошачьих ушей. Бирка на внутренней стороне гласит \"Сделано из реальных кошек.\""



/obj/item/clothing/head/hardhat/reindeer
	name = "Оленья шляпа"
	desc = "Несколько фальшивых рогов и очень фальшивый красный нос."
	icon_state = "hardhat0_reindeer"
	item_state = "hardhat0_reindeer"
	item_color = "reindeer"
	flags_inv = 0
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	light_range = 1 //luminosity when on
	dynamic_hair_suffix = ""

	dog_fashion = /datum/dog_fashion/head/reindeer

/obj/item/clothing/head/cardborg
	name = "Шлем из коробки"
	desc = "Шлем, сделанный из короюки"
	icon_state = "cardborg_h"
	item_state = "cardborg_h"
	flags_cover = HEADCOVERSEYES
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR

	dog_fashion = /datum/dog_fashion/head/cardborg

/obj/item/clothing/head/cardborg/equipped(mob/living/user, slot)
	..()
	if(ishuman(user) && slot == SLOT_HEAD)
		var/mob/living/carbon/human/H = user
		if(istype(H.wear_suit, /obj/item/clothing/suit/cardborg))
			var/obj/item/clothing/suit/cardborg/CB = H.wear_suit
			CB.disguise(user, src)

/obj/item/clothing/head/cardborg/dropped(mob/living/user)
	..()
	user.remove_alt_appearance("standard_borg_disguise")



/obj/item/clothing/head/wig
	name = "Парик"
	desc = "Пучок волос без головы"
	icon_state = ""
	item_state = "pwig"
	flags_inv = HIDEHAIR
	var/hair_style = "Very Long Hair"
	var/hair_color = "#000"

/obj/item/clothing/head/wig/Initialize(mapload)
	. = ..()
	update_icon()

/obj/item/clothing/head/wig/update_icon()
	cut_overlays()
	var/datum/sprite_accessory/S = GLOB.hair_styles_list[hair_style]
	if(!S)
		icon_state = "pwig"
	else
		var/mutable_appearance/M = mutable_appearance(S.icon,S.icon_state)
		M.appearance_flags |= RESET_COLOR
		M.color = hair_color
		add_overlay(M)

/obj/item/clothing/head/wig/worn_overlays(isinhands = FALSE, file2use)
	. = list()
	if(!isinhands)
		var/datum/sprite_accessory/S = GLOB.hair_styles_list[hair_style]
		if(!S)
			return
		var/mutable_appearance/M = mutable_appearance(S.icon, S.icon_state,layer = -HAIR_LAYER)
		M.appearance_flags |= RESET_COLOR
		M.color = hair_color
		. += M

/obj/item/clothing/head/wig/random/Initialize(mapload)
	hair_style = pick(GLOB.hair_styles_list - "Bald") //Don't want invisible wig
	hair_color = "#[random_short_color()]"
	. = ..()

/obj/item/clothing/head/bronze
	name = "Бронзовая шляпа"
	desc = "Грубый шлем из бронзовых пластин. Очень слабо защищает."
	icon = 'icons/obj/clothing/clockwork_garb.dmi'
	icon_state = "clockwork_helmet_old"
	flags_inv = HIDEEARS|HIDEHAIR
	armor = list("melee" = 5, "bullet" = 0, "laser" = -5, "energy" = 0, "bomb" = 10, "bio" = 0, "rad" = 0, "fire" = 20, "acid" = 20)

/obj/item/clothing/head/foilhat
	name = "Шапочка из фольги"
	desc = "Защищает от психотронного облучения."
	icon_state = "foilhat"
	item_state = "foilhat"
	armor = list("melee" = 0, "bullet" = 0, "laser" = -5,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = -5, "fire" = 0, "acid" = 0)
	equip_delay_other = 140
	var/datum/brain_trauma/mild/phobia/paranoia

/obj/item/clothing/head/foilhat/equipped(mob/living/carbon/human/user, slot)
	..()
	if(slot == SLOT_HEAD)
		if(paranoia)
			QDEL_NULL(paranoia)
		paranoia = new()
		user.gain_trauma(paranoia, TRAUMA_RESILIENCE_MAGIC, "conspiracies")
		to_chat(user, "<span class='warning'>Когда вы надеваете шляпу с фольгой, целый мир теорий заговора и, казалось бы, безумных идей внезапно врывается в ваш ум. То, что вы когда-то считали невероятным, вдруг кажется... очевидным. Все взаимосвязано, и ничто не происходит случайно. Ты слишком много знаешь, и теперь они охотятся за тобой. </span>")

/obj/item/clothing/head/foilhat/dropped(mob/user)
	..()
	if(paranoia)
		QDEL_NULL(paranoia)

/obj/item/clothing/head/foilhat/attack_hand(mob/user)
	if(iscarbon(user))
		var/mob/living/carbon/C = user
		if(src == C.head)
			to_chat(user, "<span class='userdanger'>Зачем тебе это снимать? Ты хочешь, чтобы они проникли в твой разум?!</span>")
			return
	..()
