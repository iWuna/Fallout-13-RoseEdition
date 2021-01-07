/obj/item/clothing/glasses/hud
	name = "HUD"
	desc = "Надеваемый на голову дисплей обеспечивает вас важной информацией в (почти) реальном времени."
	flags_1 = null //doesn't protect eyes because it's a monocle, duh
	var/hud_type = null

/obj/item/clothing/glasses/hud/equipped(mob/living/carbon/human/user, slot)
	..()
	if(hud_type && slot == SLOT_GLASSES)
		var/datum/atom_hud/H = GLOB.huds[hud_type]
		H.add_hud_to(user)

/obj/item/clothing/glasses/hud/dropped(mob/living/carbon/human/user)
	..()
	if(hud_type && istype(user) && user.glasses == src)
		var/datum/atom_hud/H = GLOB.huds[hud_type]
		H.remove_hud_from(user)

/obj/item/clothing/glasses/hud/emp_act(severity)
	. = ..()
	if(obj_flags & EMAGGED || . & EMP_PROTECT_SELF)
		return
	obj_flags |= EMAGGED
	desc = "[desc] дисплей слегка мерцает."

/obj/item/clothing/glasses/hud/emag_act(mob/user)
	if(obj_flags & EMAGGED)
		return
	obj_flags |= EMAGGED
	to_chat(user, "<span class='warning'>PZZTTPFFFT</span>")
	desc = "[desc] дисплей слегка мерцает."

/obj/item/clothing/glasses/hud/health
	name = "HUD сканер здоровья"
	desc = "Дисплей, который сканирует людей в поле зрения и предоставляет точные данные об их состоянии здоровья."
	icon_state = "healthhud"
	hud_type = DATA_HUD_MEDICAL_ADVANCED
	glass_colour_type = /datum/client_colour/glass_colour/lightblue

/obj/item/clothing/glasses/hud/health/night
	name = "HUD сканер здоровья ночного видения"
	desc = "Усовершенствованный медицинский дисплей, который позволяет врачам находить пациентов в полной темноте."
	icon_state = "healthhudnight"
	item_state = "glasses"
	darkness_view = 128
	lighting_alpha = LIGHTING_PLANE_ALPHA_LOWLIGHT_VISION
	glass_colour_type = /datum/client_colour/glass_colour/green

/obj/item/clothing/glasses/hud/health/sunglasses
	name = "Медицинские HUD солнечные очки"
	desc = "Солнцезащитные очки с медицинским дисплеем."
	icon_state = "sunhudmed"
	darkness_view = 1
	flash_protect = 1
	tint = 1
	glass_colour_type = /datum/client_colour/glass_colour/blue

/obj/item/clothing/glasses/hud/diagnostic
	name = "Диагностический HUD"
	desc = "Дисплей, способный анализировать целостность и состояние робототехники и экзоскелетов."
	icon_state = "diagnostichud"
	hud_type = DATA_HUD_DIAGNOSTIC_BASIC
	glass_colour_type = /datum/client_colour/glass_colour/lightorange

/obj/item/clothing/glasses/hud/diagnostic/night
	name = "Диагностический HUD ночного виденя"
	desc = "HUD для диагностики роботехники, снабжённый усилителем света."
	icon_state = "diagnostichudnight"
	item_state = "glasses"
	darkness_view = 128
	lighting_alpha = LIGHTING_PLANE_ALPHA_LOWLIGHT_VISION
	glass_colour_type = /datum/client_colour/glass_colour/green

/obj/item/clothing/glasses/hud/security
	name = "Охранный HUD"
	desc = "Дисплей, который сканирует людей в поле зрения и предоставляет точные данные об их идентификационном статусе и записях безопасности."
	icon_state = "securityhud"
	hud_type = DATA_HUD_SECURITY_ADVANCED
	glass_colour_type = /datum/client_colour/glass_colour/red

/obj/item/clothing/glasses/hud/security/chameleon
	name = "Хамелеонный охранный HUD"
	desc = "Украденный охранный HUD, интегрированный с хамелион технологией синдиката. Обеспечивает защиту от вспышки."
	flash_protect = 1

	// Yes this code is the same as normal chameleon glasses, but we don't
	// have multiple inheritance, okay?
	var/datum/action/item_action/chameleon/change/chameleon_action

/obj/item/clothing/glasses/hud/security/chameleon/New()
	..()
	chameleon_action = new(src)
	chameleon_action.chameleon_type = /obj/item/clothing/glasses
	chameleon_action.chameleon_name = "Glasses"
	chameleon_action.chameleon_blacklist = typecacheof(/obj/item/clothing/glasses/changeling, only_root_path = TRUE)
	chameleon_action.initialize_disguises()

/obj/item/clothing/glasses/hud/security/chameleon/emp_act(severity)
	. = ..()
	if(. & EMP_PROTECT_SELF)
		return
	chameleon_action.emp_randomise()


/obj/item/clothing/glasses/hud/security/sunglasses/eyepatch
	name = "HUD повязка на глаз"
	desc = "Дисплей, который подключается непосредственно к оптическому нерву пользователя, заменяя необходимость в этом бесполезном глазном яблоке."
	icon_state = "hudpatch"

/obj/item/clothing/glasses/hud/security/sunglasses
	name = "Охранные HUD солнечные очки"
	desc = "Солнечные очки с охранным HUD."
	icon_state = "sunhudsec"
	darkness_view = 1
	flash_protect = 1
	tint = 1
	glass_colour_type = /datum/client_colour/glass_colour/darkred

/obj/item/clothing/glasses/hud/security/night
	name = "Охранный HUD ночного видения"
	desc = "Улучшенный дисплей, обеспечивающий вас важной информацией и видимость в полной темноте."
	icon_state = "securityhudnight"
	darkness_view = 128
	lighting_alpha = LIGHTING_PLANE_ALPHA_LOWLIGHT_VISION
	glass_colour_type = /datum/client_colour/glass_colour/green

/obj/item/clothing/glasses/hud/security/sunglasses/gars
	name = "Крутые HUD очки"
	desc = "Крутые очки теперь с HUD."
	icon_state = "gars"
	item_state = "garb"
	force = 10
	throwforce = 10
	throw_speed = 4
	attack_verb = list("sliced")
	hitsound = 'sound/weapons/bladeslice.ogg'
	sharpness = IS_SHARP

/obj/item/clothing/glasses/hud/security/sunglasses/gars/supergars
	name = "Супер крутые HUD очки"
	desc = "Супер крутые очки теперь с HUD."
	icon_state = "supergars"
	item_state = "garb"
	force = 12
	throwforce = 12

/obj/item/clothing/glasses/hud/toggle
	name = "Переключить HUD"
	desc = "HUD с множеством функций."
	actions_types = list(/datum/action/item_action/switch_hud)

/obj/item/clothing/glasses/hud/toggle/attack_self(mob/user)
	if(!ishuman(user))
		return
	var/mob/living/carbon/human/wearer = user
	if (wearer.glasses != src)
		return

	if (hud_type)
		var/datum/atom_hud/H = GLOB.huds[hud_type]
		H.remove_hud_from(user)

	if (hud_type == DATA_HUD_MEDICAL_ADVANCED)
		hud_type = null
	else if (hud_type == DATA_HUD_SECURITY_ADVANCED)
		hud_type = DATA_HUD_MEDICAL_ADVANCED
	else
		hud_type = DATA_HUD_SECURITY_ADVANCED

	if (hud_type)
		var/datum/atom_hud/H = GLOB.huds[hud_type]
		H.add_hud_to(user)

/obj/item/clothing/glasses/hud/toggle/thermal
	name = "Термический HUD сканер"
	desc = "Теепловизорный дисплей в форме очков."
	icon_state = "thermal"
	hud_type = DATA_HUD_SECURITY_ADVANCED
	vision_flags = SEE_MOBS
	lighting_alpha = LIGHTING_PLANE_ALPHA_MOSTLY_VISIBLE
	glass_colour_type = /datum/client_colour/glass_colour/red

/obj/item/clothing/glasses/hud/toggle/thermal/attack_self(mob/user)
	..()
	switch (hud_type)
		if (DATA_HUD_MEDICAL_ADVANCED)
			icon_state = "meson"
			change_glass_color(user, /datum/client_colour/glass_colour/green)
		if (DATA_HUD_SECURITY_ADVANCED)
			icon_state = "thermal"
			change_glass_color(user, /datum/client_colour/glass_colour/red)
		else
			icon_state = "purple"
			change_glass_color(user, /datum/client_colour/glass_colour/purple)
	user.update_inv_glasses()

/obj/item/clothing/glasses/hud/toggle/thermal/emp_act(severity)
	. = ..()
	if(. & EMP_PROTECT_SELF)
		return
	thermal_overload()
