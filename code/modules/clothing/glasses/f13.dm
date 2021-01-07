//Fallout 13 goggles directory

/obj/item/clothing/glasses/f13
	armor = list(melee = 10, bullet = 10, laser = 10, energy = 10, bomb = 10, bio = 10, rad = 10, fire = 10, acid = 10)

/obj/item/clothing/glasses/f13/biker
	name = "Байкерские очки"
	desc = "П-п--п-плохой,<br>п-п-п-плохой,<br>п-п-п-плохой,<br>п-п-п-плохой до мозга костей!"
	icon_state = "biker"
	item_state = "biker"

/obj/item/clothing/glasses/legiongoggles
	name = "Защитные очки"
	desc = "Послевоенные импровизированные очки, собираемые в лагерях легиона. Стандартное снаряжение большинства легионеров."
	icon_state = "legion"
	item_state = "legion"

//Fallout 13 sunglasses

/obj/item/clothing/glasses/sunglasses/f13
	icon = 'icons/fallout/clothing/glasses.dmi'
	armor = list(melee = 10, bullet = 10, laser = 10, energy = 10, bomb = 10, bio = 10, rad = 10, fire = 10, acid = 10)


//Fallout 13 thermals

/obj/item/clothing/glasses/thermal/f13
	icon = 'icons/fallout/clothing/glasses.dmi'
	armor = list(melee = 10, bullet = 10, laser = 10, energy = 10, bomb = 10, bio = 10, rad = 10, fire = 10, acid = 10)

/obj/item/clothing/glasses/thermal/f13/doctorwho
	name = "3D очки"
	desc = "<i>Люди предполагают, что время-это строгая последовательность причинно-следственных связей, но на самом деле, с нелинейной, несубъективной точки зрения, оно больше похоже на большой шар из вибли-вибли... Тайми-вайми... Наркоты.</i>"
	icon_state = "3d"
	item_state = "3d"
	armor = list(melee = 0, bullet = 0, laser = 0, energy = 0, bomb = 0, bio = 100, rad = 100, fire = 100, acid = 100)

/obj/item/clothing/glasses/thermal/f13/enclave
	name = "Очки пилота"
	desc = "Теплочувствительные очки, которые обычно носят пилоты винтокрылов Анклава."
	icon_state = "enclavegoggles"
	item_state = "enclavegoggles"

//Fallout 13 science goggles

/obj/item/clothing/glasses/science/f13
	icon = 'icons/fallout/clothing/glasses.dmi'
	armor = list(melee = 10, bullet = 10, laser = 10, energy = 10, bomb = 10, bio = 10, rad = 10, fire = 10, acid = 10)

/obj/item/clothing/glasses/science/f13/steampunk
	name = "Очки"
	desc = "Если легенды верны, эти очки принадлежали гениальном алхимику.<br>Ну или, может быть, это просто любимая игрушка фаната стимпанка"
	icon_state = "steampunk"
	item_state = "glasses"
	resistance_flags = ACID_PROOF
	armor = list(melee = 10, bullet = 10, laser = 10, energy = 10, bomb = 10, bio = 50, rad = 20, fire = 70, acid = 100)

//Augmented eye

/obj/item/clothing/glasses/hud/health/f13
	armor = list(melee = 10, bullet = 10, laser = 10, energy = 10, bomb = 10, bio = 10, rad = 10, fire = 10, acid = 10)

/obj/item/clothing/glasses/hud/health/f13/eye
	name = "Аугментированный глаз"
	desc = "Простая в использовании аугментация, которое улучшает зрение пользователя.<br>Воткните его прямо в глаз. Будет немного щипать..."
	icon_state = "aug"
	darkness_view = 4
	vision_flags = SEE_TURFS
	invis_view = SEE_INVISIBLE_MINIMUM
//	flags = NODROP
	glass_colour_type = /datum/client_colour/glass_colour/lightorange