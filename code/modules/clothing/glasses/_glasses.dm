//Glasses
/obj/item/clothing/glasses
	name = "glasses"
	icon = 'icons/obj/clothing/glasses.dmi'
	w_class = WEIGHT_CLASS_SMALL
	flags_cover = GLASSESCOVERSEYES
	slot_flags = ITEM_SLOT_EYES
	strip_delay = 20
	equip_delay_other = 25
	resistance_flags = NONE
	materials = list(MAT_GLASS = 250)
	darkness_view = 2//Base human is 2
	var/vision_flags = 0
	var/invis_view = SEE_INVISIBLE_LIVING	//admin only for now
	var/invis_override = 0 //Override to allow glasses to set higher than normal see_invis
	var/list/icon/current = list() //the current hud icons
	var/vision_correction = 0 //does wearing these glasses correct some of our vision defects?

/obj/item/clothing/glasses/suicide_act(mob/living/carbon/user)
	user.visible_message("<span class='suicide'>[user] is stabbing \the [src] into [user.p_their()] eyes! It looks like [user.p_theyre()] trying to commit suicide!</span>")
	return BRUTELOSS

/obj/item/clothing/examine(mob/user)
	..()
	if(glass_colour_type && ishuman(user))
		to_chat(user, "<span class='notice'>Alt-click to toggle its colors.</span>")

/obj/item/clothing/glasses/visor_toggling()
	..()
	if(visor_vars_to_toggle & VISOR_VISIONFLAGS)
		vision_flags ^= initial(vision_flags)
	if(visor_vars_to_toggle & VISOR_DARKNESSVIEW)
		darkness_view ^= initial(darkness_view)
	if(visor_vars_to_toggle & VISOR_INVISVIEW)
		invis_view ^= initial(invis_view)

/obj/item/clothing/glasses/weldingvisortoggle(mob/user)
	. = ..()
	if(. && user)
		user.update_sight()

//called when thermal glasses are emped.
/obj/item/clothing/glasses/proc/thermal_overload()
	if(ishuman(src.loc))
		var/mob/living/carbon/human/H = src.loc
		if(!(H.has_trait(TRAIT_BLIND)))
			if(H.glasses == src)
				to_chat(H, "<span class='danger'>[src] overloads and blinds you!</span>")
				H.flash_act(visual = 1)
				H.blind_eyes(3)
				H.blur_eyes(5)
				H.adjust_eye_damage(5)

/obj/item/clothing/glasses/meson
	name = "Оптический мезонный сканер"
	desc = "Используется инженерным и шахтерским персоналом для просмотра основных структур и рельефа местности через стены, независимо от условий освещения."
	icon_state = "meson"
	item_state = "meson"
	darkness_view = 2
	vision_flags = SEE_TURFS
	lighting_alpha = LIGHTING_PLANE_ALPHA_MOSTLY_VISIBLE
	glass_colour_type = /datum/client_colour/glass_colour/lightgreen

/obj/item/clothing/glasses/meson/suicide_act(mob/living/carbon/user)
	user.visible_message("<span class='suicide'>[user] is putting \the [src] to [user.p_their()] eyes and overloading the brightness! It looks like [user.p_theyre()] trying to commit suicide!</span>")
	return BRUTELOSS

/obj/item/clothing/glasses/meson/night
	name = "Мезонный сканер ночного видения"
	desc = "Оптический мезонный сканер, оснащенный усиленным наложением спектра видимого света, обеспечивающим большую визуальную четкость в темноте."
	icon_state = "nvgmeson"
	item_state = "nvgmeson"
	darkness_view = 128
	lighting_alpha = LIGHTING_PLANE_ALPHA_LOWLIGHT_VISION
	glass_colour_type = /datum/client_colour/glass_colour/green

/obj/item/clothing/glasses/meson/gar
	name = "Газовые мезоны"
	icon_state = "garm"
	item_state = "garm"
	desc = "Сделай невозможное, увидь невидимое!"
	force = 10
	throwforce = 10
	throw_speed = 4
	attack_verb = list("sliced")
	hitsound = 'sound/weapons/bladeslice.ogg'
	sharpness = IS_SHARP

/obj/item/clothing/glasses/science
	name = "Научные очки"
	desc = "Шикарные защитные очки, используемые для защиты от химических разливов. Оснащены анализатором для сканирования предметов и реагентов."
	icon_state = "purple"
	item_state = "glasses"
	scan_reagents = 1 //You can see reagents while wearing science goggles
	actions_types = list(/datum/action/item_action/toggle_research_scanner)
	glass_colour_type = /datum/client_colour/glass_colour/purple
	resistance_flags = ACID_PROOF
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 80, "acid" = 100)

/obj/item/clothing/glasses/science/item_action_slot_check(slot)
	if(slot == SLOT_GLASSES)
		return 1

/obj/item/clothing/glasses/night
	name = "Очки ночного видения"
	desc = "Теперь вы можете видеть в темноте!"
	icon_state = "night"
	item_state = "glasses"
	darkness_view = 128
	lighting_alpha = LIGHTING_PLANE_ALPHA_LOWLIGHT_VISION
	glass_colour_type = /datum/client_colour/glass_colour/green

/obj/item/clothing/glasses/science/suicide_act(mob/living/carbon/user)
	user.visible_message("<span class='suicide'>[user] is tightening \the [src]'s straps around [user.p_their()] neck! It looks like [user.p_theyre()] trying to commit suicide!</span>")
	return OXYLOSS

/obj/item/clothing/glasses/optisight
	name = "Оптиглаз X-26"
	desc = "Обычно человеческие глаза и лазеры не смешиваются. Кроме этого прототипа глаза, изобретенного и изготовленного компанией RobCo. Их было произведено крайне мало, в результате чего основная функция этого протеза глаза - встроенный лазерный огонь - не функционирует. Операция - невероятно болезненная процедура, включающая лазерное удаление глаз и инвазивную операцию на головном мозге, что означает низкую выживаемость. Если бы кто-то прошел через этот процесс, они действительно могли бы однажды активировать функцию лазера. Даже тогда это, пожалуй, самый продвинутый протез глаза в мире, способный к ночному видению и диагностике цели."
	icon_state = "optisight"
	item_state = "optisight"

/obj/item/clothing/glasses/eyepatch
	name = "Повязка на глаз"
	desc = "Р-р-р!."
	icon_state = "eyepatch"
	item_state = "eyepatch"

/obj/item/clothing/glasses/monocle
	name = "Монокль"
	desc = "Какой элегантный окуляр!"
	icon_state = "monocle"
	item_state = "headset" // lol

/obj/item/clothing/glasses/material
	name = "Оптический сканер материалов"
	desc = "Очень странные очки."
	icon_state = "material"
	item_state = "glasses"
	vision_flags = SEE_OBJS
	glass_colour_type = /datum/client_colour/glass_colour/lightblue

/obj/item/clothing/glasses/material/mining
	name = "Оптический сканер материалов"
	desc = "Используется шахтерами для обнаружения руды глубоко в скале."
	icon_state = "material"
	item_state = "glasses"
	darkness_view = 0

/obj/item/clothing/glasses/material/mining/gar
	name = "Сканер газа"
	icon_state = "garm"
	item_state = "garm"
	desc = "Сделай невозможное, увидь невидимое!"
	force = 10
	throwforce = 20
	throw_speed = 4
	attack_verb = list("sliced")
	hitsound = 'sound/weapons/bladeslice.ogg'
	sharpness = IS_SHARP
	glass_colour_type = /datum/client_colour/glass_colour/lightgreen

/obj/item/clothing/glasses/regular
	name = "Очки по рецепту"
	desc = "Выпущены Nerd. Co."
	icon_state = "glasses"
	item_state = "glasses"
	vision_correction = 1 //corrects nearsightedness

/obj/item/clothing/glasses/regular/jamjar
	name = "jamjar glasses"
	desc = "Также известны как защитники девственности."
	icon_state = "jamjar_glasses"
	item_state = "jamjar_glasses"

/obj/item/clothing/glasses/regular/hipster
	name = "Очки по рецепту"
	desc = "Выпущены Uncool. Co."
	icon_state = "hipster_glasses"
	item_state = "hipster_glasses"

//Here lies green glasses, so ugly they died. RIP

/obj/item/clothing/glasses/sunglasses
	name = "Солнечные очки"
	desc = "Странная древняя технология, используемая для обеспечения рудиментарного прикрытия глаз. Усиленные защитные блоки мигают."
	icon_state = "sun"
	item_state = "sunglasses"
	darkness_view = 1
	flash_protect = 1
	tint = 1
	glass_colour_type = /datum/client_colour/glass_colour/gray
	dog_fashion = /datum/dog_fashion/head

/obj/item/clothing/glasses/sunglasses/fakeblindfold
	name = "Повязка на глаз жрицы"
	desc = "Повязка, используемая для того, чтобы перестать видеть этот мир и увидеть Марса."
	icon_state = "blindfold"
	item_state = "blindfold"

/obj/item/clothing/glasses/sunglasses/fakeblindfold/equipped(mob/living/user, slot)
	..()
	if(ishuman(user))
		var/mob/living/carbon/human/U = user
		if(U.job in list("Priestess of Mars"))
		else
			to_chat(user, "<span class='userdanger'>\"Ты действительно хочешь ослепнуть?\"</span>")
			user.dropItemToGround(src, TRUE)
			user.Dizzy(30)
			user.Knockdown(100)
			user.blind_eyes(30)
		return

/obj/item/clothing/glasses/sunglasses/reagent
	name = "Пивные очки"
	desc = "Пара солнечных очков, снабженных аппаратурой для сканирования реактивов."
	scan_reagents = 1

/obj/item/clothing/glasses/sunglasses/garb
	name = "Чёрные крутые очки"
	desc = "Выйдите за пределы невозможного и вышвырните разум на обочину!"
	icon_state = "garb"
	item_state = "garb"
	force = 10
	throwforce = 10
	throw_speed = 4
	attack_verb = list("sliced")
	hitsound = 'sound/weapons/bladeslice.ogg'
	sharpness = IS_SHARP

/obj/item/clothing/glasses/sunglasses/garb/supergarb
	name = "Чёрные супер крутые очки"
	desc = "Верьте в нас, люди."
	icon_state = "supergarb"
	item_state = "garb"
	force = 12
	throwforce = 12

/obj/item/clothing/glasses/sunglasses/gar
	name = "Крутые очки"
	desc = "За кого, черт возьми, ты меня принимаешь?!"
	icon_state = "gar"
	item_state = "gar"
	force = 10
	throwforce = 10
	throw_speed = 4
	attack_verb = list("sliced")
	hitsound = 'sound/weapons/bladeslice.ogg'
	sharpness = IS_SHARP
	glass_colour_type = /datum/client_colour/glass_colour/orange

/obj/item/clothing/glasses/sunglasses/gar/supergar
	name = "Супер крутые очки"
	desc = "Мы эволюционируем вслед за человеком, которым были минуту назад. Мало-помалу мы продвигаемся вперед с каждым поворотом. Вот как работает дрель!"
	icon_state = "supergar"
	item_state = "gar"
	force = 12
	throwforce = 12
	glass_colour_type = /datum/client_colour/glass_colour/red

/obj/item/clothing/glasses/welding
	name = "Сварочные очки"
	desc = "Защищает глаза от сварочных ожогов"
	icon_state = "welding-g"
	item_state = "welding-g"
	actions_types = list(/datum/action/item_action/toggle)
	materials = list(MAT_METAL = 250)
	flash_protect = 2
	tint = 2
	visor_vars_to_toggle = VISOR_FLASHPROTECT | VISOR_TINT
	flags_cover = GLASSESCOVERSEYES
	visor_flags_inv = HIDEEYES
	glass_colour_type = /datum/client_colour/glass_colour/gray

/obj/item/clothing/glasses/welding/attack_self(mob/user)
	weldingvisortoggle(user)


/obj/item/clothing/glasses/sunglasses/blindfold
	name = "Повязка на глаз"
	desc = "Закрывает глаза, препятствуя зрению."
	icon_state = "blindfold"
	item_state = "blindfold"
	flash_protect = 2
	tint = 3			// to make them blind

/obj/item/clothing/glasses/sunglasses/blindfold/equipped(mob/living/carbon/human/user, slot)
	. = ..()
	if(slot == SLOT_GLASSES)
		user.become_blind("blindfold_[REF(src)]")

/obj/item/clothing/glasses/sunglasses/blindfold/dropped(mob/living/carbon/human/user)
	..()
	user.cure_blind("blindfold_[REF(src)]")

/obj/item/clothing/glasses/sunglasses/big
	desc = "Странно древняя технология, используемая для обеспечения рудиментарного прикрытия глаз. Усиленные защитные блоки, большего чем обычно размера, мигают."
	icon_state = "bigsunglasses"
	item_state = "bigsunglasses"

/obj/item/clothing/glasses/thermal
	name = "Оптические термальные очки"
	desc = "Термалы в линзах от очков"
	icon_state = "thermal"
	item_state = "glasses"
	vision_flags = SEE_MOBS
	lighting_alpha = LIGHTING_PLANE_ALPHA_MOSTLY_VISIBLE
	flash_protect = 0
	glass_colour_type = /datum/client_colour/glass_colour/red

/obj/item/clothing/glasses/thermal/emp_act(severity)
	. = ..()
	if(. & EMP_PROTECT_SELF)
		return
	thermal_overload()

/obj/item/clothing/glasses/thermal/syndi	//These are now a traitor item, concealed as mesons.	-Pete
	name = "Хамелеоновые термальные очки"
	desc = "Пара тепловизионных очков с встроенным генератором-хамелеоном."
	flash_protect = -1

	var/datum/action/item_action/chameleon/change/chameleon_action

/obj/item/clothing/glasses/thermal/syndi/New()
	..()
	chameleon_action = new(src)
	chameleon_action.chameleon_type = /obj/item/clothing/glasses
	chameleon_action.chameleon_name = "Очки"
	chameleon_action.chameleon_blacklist = typecacheof(/obj/item/clothing/glasses/changeling, only_root_path = TRUE)
	chameleon_action.initialize_disguises()

/obj/item/clothing/glasses/thermal/syndi/emp_act(severity)
	. = ..()
	if(. & EMP_PROTECT_SELF)
		return
	chameleon_action.emp_randomise()

/obj/item/clothing/glasses/thermal/monocle
	name = "Термальный монокль"
	desc = "Никогда ещё видеть сквозь стены не было настолько благородно."
	icon_state = "thermoncle"
	flags_1 = null //doesn't protect eyes because it's a monocle, duh

/obj/item/clothing/glasses/thermal/monocle/examine(mob/user) //Different examiners see a different description!
	var/desk = desc
	if(user.gender == MALE)
		desc = replacetext(desc, "person", "man")
	else if(user.gender == FEMALE)
		desc = replacetext(desc, "person", "woman")
	..()
	desc = desk

/obj/item/clothing/glasses/thermal/eyepatch
	name = "Оптическая термальная повязка на глаз"
	desc = "Повязка со встроенной термооптикой."
	icon_state = "eyepatch"
	item_state = "eyepatch"

/obj/item/clothing/glasses/cold
	name = "Холодные очки"
	desc = "Защитные очки., предназначенные для низких температур."
	icon_state = "cold"
	item_state = "cold"

/obj/item/clothing/glasses/heat
	name = "Температурные очки"
	desc = "Защитные очки, предназначенные для высоких температур."
	icon_state = "heat"
	item_state = "heat"

/obj/item/clothing/glasses/orange
	name = "Оранжевые очки"
	desc = "Милая пара оранжевых линз."
	icon_state = "orangeglasses"
	item_state = "orangeglasses"
	glass_colour_type = /datum/client_colour/glass_colour/lightorange

/obj/item/clothing/glasses/green
	name = "Зелёные очки"
	desc = "Милая пара зелёных линз."
	icon_state = "greenglasses"
	item_state = "greenglasses"
	glass_colour_type = /datum/client_colour/glass_colour/lightgreen

/obj/item/clothing/glasses/red
	name = "Красный"
	desc = "Эй, сенпай, ты выглядишь круто!"
	icon_state = "redglasses"
	item_state = "redglasses"
	glass_colour_type = /datum/client_colour/glass_colour/red

/obj/item/clothing/glasses/godeye
	name = "Глаз бога"
	desc = "Странный глаз, как говорят, был вырван у всеведущего существа, которое раньше бродило по пустошам."
	icon_state = "godeye"
	item_state = "godeye"
	vision_flags = SEE_TURFS|SEE_MOBS|SEE_OBJS
	darkness_view = 8
	scan_reagents = 1
	item_flags = NODROP
	lighting_alpha = LIGHTING_PLANE_ALPHA_MOSTLY_INVISIBLE
	resistance_flags = LAVA_PROOF | FIRE_PROOF

/obj/item/clothing/glasses/godeye/attackby(obj/item/W as obj, mob/user as mob, params)
	if(istype(W, src) && W != src && W.loc == user)
		if(W.icon_state == "godeye")
			W.icon_state = "doublegodeye"
			W.item_state = "doublegodeye"
			W.desc = "Пара странных глаз, оторванных, как говорят, от всеведущего существа, которое когда-то бродило по пустошам. Нет никакой реальной причины их подбирать, но это тебя не останавливает."
			if(iscarbon(user))
				var/mob/living/carbon/C = user
				C.update_inv_wear_mask()
		else
			to_chat(user, "<span class='notice'>Глаз подмигивает вам и исчезает в бездне, вы чувствуете себя действительно невезучим.</span>")
		qdel(src)
	..()

/obj/item/clothing/AltClick(mob/user)
	if(glass_colour_type && ishuman(user))
		var/mob/living/carbon/human/H = user
		if(H.client)
			if(H.client.prefs)
				if((src == H.glasses) || (src == H.head))
					H.client.prefs.uses_glasses_colour = !H.client.prefs.uses_glasses_colour
					if(H.client.prefs.uses_glasses_colour)
						to_chat(H, "You will now see overlay colors.")
					else
						to_chat(H, "You will no longer see overlay colors.")
					H.update_glasses_color(src, 1)
	else
		return ..()

/obj/item/clothing/proc/change_glass_color(mob/living/carbon/human/H, datum/client_colour/glass_colour/new_color_type)
	var/old_colour_type = glass_colour_type
	if(!new_color_type || ispath(new_color_type)) //the new glass colour type must be null or a path.
		glass_colour_type = new_color_type
		if(H && (H.glasses == src || H.head == src))
			if(old_colour_type)
				H.remove_client_colour(old_colour_type)
			if(glass_colour_type)
				H.update_glasses_color(src, 1)


/mob/living/carbon/human/proc/update_glasses_color(obj/item/clothing/G, glasses_equipped)
	if(client && client.prefs.uses_glasses_colour && glasses_equipped)
		add_client_colour(G.glass_colour_type)
	else
		remove_client_colour(G.glass_colour_type)
