//miscellaneous spacesuits
/*
Contains:
 - Captain's spacesuit
 - Death squad's hardsuit
 - SWAT suit
 - Officer's beret/spacesuit
 - NASA Voidsuit
 - Father Christmas' magical clothes
 - Pirate's spacesuit
 - ERT hardsuit: command, sec, engi, med
 - EVA spacesuit
 - Freedom's spacesuit (freedom from vacuum's oppression)
 - Carp hardsuit
*/

	//Death squad armored space suits, not hardsuits!
/obj/item/clothing/head/helmet/space/hardsuit/deathsquad
	name = "Шлем спецназа третьей модели"
	desc = "Улучшенный тактический шлем скафандра."
	icon_state = "deathsquad"
	item_state = "deathsquad"
	armor = list("melee" = 80, "bullet" = 80, "laser" = 50, "energy" = 50, "bomb" = 100, "bio" = 100, "rad" = 100, "fire" = 100, "acid" = 100)
	strip_delay = 130
	max_heat_protection_temperature = FIRE_IMMUNITY_HELM_MAX_TEMP_PROTECT
	resistance_flags = FIRE_PROOF | ACID_PROOF
	actions_types = list()

/obj/item/clothing/head/helmet/space/hardsuit/deathsquad/attack_self(mob/user)
	return

/obj/item/clothing/suit/space/hardsuit/deathsquad
	name = "Скафандр спецназа третьей модели"
	desc = "Прототип, предназначенный для замены стареющего скафандра спецназа второй модели. На базе обтекаемой модели второй версии, традиционная керамическая и графеновая пластинчатая конструкция была заменена пласталевой, что позволило получить превосходную броню против большинства угроз. На задней стенке есть место для какого-то энергетического проектора."
	icon_state = "deathsquad"
	item_state = "swat_suit"
	allowed = list(/obj/item/gun, /obj/item/ammo_box, /obj/item/ammo_casing, /obj/item/melee/baton, /obj/item/restraints/handcuffs, /obj/item/tank/internals, /obj/item/kitchen/knife/combat)
	armor = list("melee" = 80, "bullet" = 80, "laser" = 50, "energy" = 50, "bomb" = 100, "bio" = 100, "rad" = 100, "fire" = 100, "acid" = 100)
	strip_delay = 130
	max_heat_protection_temperature = FIRE_IMMUNITY_SUIT_MAX_TEMP_PROTECT
	resistance_flags = FIRE_PROOF | ACID_PROOF
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/deathsquad
	dog_fashion = /datum/dog_fashion/back/deathsquad

	//NEW SWAT suit
/obj/item/clothing/suit/space/swat
	name = "Костюм спецназа первой модели"
	desc = "Тактический скафандр, впервые разработанный в 20ХХ году для военных космических операций. Испытанная и верная рабочая лошадка, в нем трудно двигаться, но обеспечивает надежную защиту от всех угроз!"
	icon_state = "heavy"
	item_state = "swat_suit"
	allowed = list(/obj/item/gun, /obj/item/ammo_box, /obj/item/ammo_casing, /obj/item/melee/baton, /obj/item/restraints/handcuffs, /obj/item/tank/internals, /obj/item/kitchen/knife/combat)
	armor = list("melee" = 40, "bullet" = 30, "laser" = 30,"energy" = 30, "bomb" = 50, "bio" = 90, "rad" = 20, "fire" = 100, "acid" = 100)
	strip_delay = 120
	resistance_flags = FIRE_PROOF | ACID_PROOF

/obj/item/clothing/head/helmet/space/beret
	name = "Берет офицера"
	desc = "Бронированный берет, обычно используемый офицерами специальных подразделений. Использует передовую технологию силового поля для защиты головы от космоса."
	icon_state = "beret_badge"
	dynamic_hair_suffix = "+generic"
	dynamic_fhair_suffix = "+generic"
	flags_inv = 0
	armor = list("melee" = 80, "bullet" = 80, "laser" = 50, "energy" = 50, "bomb" = 100, "bio" = 100, "rad" = 100, "fire" = 100, "acid" = 100)
	strip_delay = 130
	max_heat_protection_temperature = FIRE_IMMUNITY_HELM_MAX_TEMP_PROTECT
	resistance_flags = FIRE_PROOF | ACID_PROOF

/obj/item/clothing/suit/space/officer
	name = "Оффицерская куртка"
	desc = "Бронированная, защищенная от космоса куртка, используемая в специальных операциях."
	icon_state = "detective"
	item_state = "det_suit"
	blood_overlay_type = "coat"
	slowdown = 0
	flags_inv = 0
	w_class = WEIGHT_CLASS_NORMAL
	allowed = list(/obj/item/gun, /obj/item/ammo_box, /obj/item/ammo_casing, /obj/item/melee/baton, /obj/item/restraints/handcuffs, /obj/item/tank/internals)
	armor = list("melee" = 80, "bullet" = 80, "laser" = 50, "energy" = 50, "bomb" = 100, "bio" = 100, "rad" = 100, "fire" = 100, "acid" = 100)
	strip_delay = 130
	max_heat_protection_temperature = FIRE_IMMUNITY_HELM_MAX_TEMP_PROTECT
	resistance_flags = FIRE_PROOF | ACID_PROOF

	//NASA Voidsuit
/obj/item/clothing/head/helmet/space/nasavoid
	name = "Шлем скафандра NASA"
	desc = "Старый, разработанный NASA филиалом ЦентКом, темно-красный шлем космического скафандра."
	icon_state = "void"
	item_state = "void"

/obj/item/clothing/suit/space/nasavoid
	name = "Скафандр NASA"
	icon_state = "void"
	item_state = "void"
	desc = "Старый, разработанный NASA филиалом ЦентКом, темно-красный скафандр."
	allowed = list(/obj/item/flashlight, /obj/item/tank/internals, /obj/item/multitool)

/obj/item/clothing/head/helmet/space/nasavoid/old
	name = "Шлем инженерного скафандра"
	desc = "Темно-красный шлем скафандра инженеров ЦентКом. Хотя он старый и пыльный, он все равно выполняет свою работу."
	icon_state = "void"
	item_state = "void"

/obj/item/clothing/suit/space/nasavoid/old
	name = "Инженерный скафандр"
	icon_state = "void"
	item_state = "void"
	desc = "Темно-красный скафандр инженеров ЦентКом. Возраст испортил костюм, в котором теперь трудно передвигаться."
	slowdown = 4
	allowed = list(/obj/item/flashlight, /obj/item/tank/internals, /obj/item/multitool)

	//Space santa outfit suit
/obj/item/clothing/head/helmet/space/santahat
	name = "Шляпа Санты"
	desc = "Хо хо хо. Счастливого рождества!"
	icon_state = "santahat"
	flags_cover = HEADCOVERSEYES

	dog_fashion = /datum/dog_fashion/head/santa

/obj/item/clothing/suit/space/santa
	name = "Костюм санты"
	desc = "Праздничный!"
	icon_state = "santa"
	item_state = "santa"
	slowdown = 0
	allowed = list(/obj/item) //for stuffing exta special presents


	//Space pirate outfit
/obj/item/clothing/head/helmet/space/pirate
	name = "Шляпа пирата"
	desc = "Ррр!"
	icon_state = "pirate"
	item_state = "pirate"
	armor = list("melee" = 30, "bullet" = 50, "laser" = 30,"energy" = 15, "bomb" = 30, "bio" = 30, "rad" = 30, "fire" = 60, "acid" = 75)
	flags_inv = HIDEHAIR
	strip_delay = 40
	equip_delay_other = 20
	flags_cover = HEADCOVERSEYES

/obj/item/clothing/head/helmet/space/pirate/bandana
	name = "Бандана пирата"
	icon_state = "bandana"
	item_state = "bandana"

/obj/item/clothing/suit/space/pirate
	name = "Плащ пирата"
	desc = "Ррр!"
	icon_state = "pirate"
	item_state = "pirate"
	w_class = WEIGHT_CLASS_NORMAL
	flags_inv = 0
	allowed = list(/obj/item/gun, /obj/item/ammo_box, /obj/item/ammo_casing, /obj/item/melee/baton, /obj/item/restraints/handcuffs, /obj/item/tank/internals, /obj/item/melee/transforming/energy/sword/pirate, /obj/item/clothing/glasses/eyepatch, /obj/item/reagent_containers/food/drinks/bottle/rum)
	slowdown = 0
	armor = list("melee" = 30, "bullet" = 50, "laser" = 30,"energy" = 15, "bomb" = 30, "bio" = 30, "rad" = 30, "fire" = 60, "acid" = 75)
	strip_delay = 40
	equip_delay_other = 20

	//Emergency Response Team suits
/obj/item/clothing/head/helmet/space/hardsuit/ert
	name = "Шлем скафандра ОБР"
	desc = "Стандартный шлем коммандования ОБР."
	icon_state = "hardsuit0-ert_commander"
	item_state = "hardsuit0-ert_commander"
	item_color = "ert_commander"
	armor = list("melee" = 65, "bullet" = 50, "laser" = 50, "energy" = 50, "bomb" = 50, "bio" = 100, "rad" = 100, "fire" = 80, "acid" = 80)
	strip_delay = 130
	item_flags = NODROP
	light_range = 7

/obj/item/clothing/suit/space/hardsuit/ert
	name = "Скафандр ОБР"
	desc = "Стандартный костюм коммандования ОБР."
	icon_state = "ert_command"
	item_state = "ert_command"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/ert
	allowed = list(/obj/item/gun, /obj/item/ammo_box, /obj/item/ammo_casing, /obj/item/melee/baton, /obj/item/restraints/handcuffs, /obj/item/tank/internals)
	armor = list("melee" = 65, "bullet" = 50, "laser" = 50, "energy" = 50, "bomb" = 50, "bio" = 100, "rad" = 100, "fire" = 80, "acid" = 80)
	slowdown = 0
	strip_delay = 130

	//ERT Security
/obj/item/clothing/head/helmet/space/hardsuit/ert/sec
	desc = "Стандартный охранный шлем ОБР."
	icon_state = "hardsuit0-ert_security"
	item_state = "hardsuit0-ert_security"
	item_color = "ert_security"

/obj/item/clothing/suit/space/hardsuit/ert/sec
	desc = "Стандартный охранный скафандр ОБР."
	icon_state = "ert_security"
	item_state = "ert_security"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/ert/sec

	//ERT Engineering
/obj/item/clothing/head/helmet/space/hardsuit/ert/engi
	desc = "Стандартный шлем инженера ОБР."
	icon_state = "hardsuit0-ert_engineer"
	item_state = "hardsuit0-ert_engineer"
	item_color = "ert_engineer"

/obj/item/clothing/suit/space/hardsuit/ert/engi
	desc = "Стандартный скафандр инженера ОБР."
	icon_state = "ert_engineer"
	item_state = "ert_engineer"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/ert/engi

	//ERT Medical
/obj/item/clothing/head/helmet/space/hardsuit/ert/med
	desc = "Стандартный шлем медика ОБР."
	icon_state = "hardsuit0-ert_medical"
	item_state = "hardsuit0-ert_medical"
	item_color = "ert_medical"

/obj/item/clothing/suit/space/hardsuit/ert/med
	desc = "Стандартный скафандр медика ОБР."
	icon_state = "ert_medical"
	item_state = "ert_medical"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/ert/med
	species_exception = list(/datum/species/angel)

/obj/item/clothing/suit/space/eva
	name = "Скафандр"
	icon_state = "space"
	item_state = "s_suit"
	desc = "Легкий скафандр, способный защищать владельца от вакуума космоса во время чрезвычайных ситуаций."
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 100, "rad" = 20, "fire" = 50, "acid" = 65)

/obj/item/clothing/head/helmet/space/eva
	name = "Шлем скафандра"
	icon_state = "space"
	item_state = "space"
	desc = "Легкий шлем, способный защищать владельца от вакуума космоса во время чрезвычайных ситуаций."
	flash_protect = 0
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 100, "rad" = 20, "fire" = 50, "acid" = 65)

/obj/item/clothing/head/helmet/space/freedom
	name = "Орлинный шлем"
	desc = "Усовершенствованный, защищенный от космоса шлем. Похоже, что он смоделирован по образцу Орла Старого Света."
	icon_state = "griffinhat"
	item_state = "griffinhat"
	armor = list("melee" = 20, "bullet" = 40, "laser" = 30, "energy" = 25, "bomb" = 100, "bio" = 100, "rad" = 100, "fire" = 80, "acid" = 80)
	strip_delay = 130
	max_heat_protection_temperature = FIRE_IMMUNITY_HELM_MAX_TEMP_PROTECT
	resistance_flags = ACID_PROOF | FIRE_PROOF

/obj/item/clothing/suit/space/freedom
	name = "Орлинный скафандр"
	desc = "Усовершенствованный, легкий скафандр, изготовленный из смеси синтетических перьев и космического материала. Кажется, в скафандр встроена кобура с пистолетом, а крылья застряли в режиме \"свобода\".."
	icon_state = "freedom"
	item_state = "freedom"
	allowed = list(/obj/item/gun, /obj/item/ammo_box, /obj/item/ammo_casing, /obj/item/melee/baton, /obj/item/restraints/handcuffs, /obj/item/tank/internals)
	armor = list("melee" = 20, "bullet" = 40, "laser" = 30,"energy" = 25, "bomb" = 100, "bio" = 100, "rad" = 100, "fire" = 80, "acid" = 80)
	strip_delay = 130
	max_heat_protection_temperature = FIRE_IMMUNITY_HELM_MAX_TEMP_PROTECT
	resistance_flags = ACID_PROOF | FIRE_PROOF
	slowdown = 0

//Carpsuit, bestsuit, lovesuit
/obj/item/clothing/head/helmet/space/hardsuit/carp
	name = "Шлем карпа"
	desc = "Выглядит, как голова космического карпа. Пахнет так же."
	icon_state = "carp_helm"
	item_state = "syndicate"
	armor = list("melee" = -20, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 100, "rad" = 75, "fire" = 60, "acid" = 75)	//As whimpy as a space carp
	light_range = 0 //luminosity when on
	actions_types = list()
	item_flags = NODROP


/obj/item/clothing/suit/space/hardsuit/carp
	name = "Скафандр карпа"
	desc = "Прохудившийся кусок сомнительной технологии космического карпа, вы подозреваете, что он не выдержит рукопашных ударов."
	icon_state = "carp_suit"
	item_state = "space_suit_syndicate"
	slowdown = 0	//Space carp magic, never stop believing
	armor = list("melee" = -20, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 100, "rad" = 75, "fire" = 60, "acid" = 75) //As whimpy whimpy whoo
	allowed = list(/obj/item/tank/internals, /obj/item/gun/ballistic/automatic/speargun)	//I'm giving you a hint here
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/carp


/obj/item/clothing/head/helmet/space/hardsuit/ert/paranormal
	name = "Шлем паранормального ОБР"
	desc = "Шлем, который носят те, кто зарабатывает на жизнь борьбой с паранормальными угрозами."
	icon_state = "hardsuit0-prt"
	item_state = "hardsuit0-prt"
	item_color = "knight_grey"
	max_heat_protection_temperature = FIRE_IMMUNITY_HELM_MAX_TEMP_PROTECT
	actions_types = list()
	resistance_flags = FIRE_PROOF

/obj/item/clothing/suit/space/hardsuit/ert/paranormal
	name = "Скафандр паранормального ОБР"
	desc = "Мощные обереги встроены в этот костюм, защищая пользователя от всевозможных паранормальных угроз."
	icon_state = "knight_grey"
	item_state = "knight_grey"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/ert/paranormal
	max_heat_protection_temperature = FIRE_IMMUNITY_SUIT_MAX_TEMP_PROTECT
	resistance_flags = FIRE_PROOF

/obj/item/clothing/suit/space/hardsuit/ert/paranormal/Initialize()
	. = ..()
	AddComponent(/datum/component/anti_magic, TRUE, TRUE)

/obj/item/clothing/suit/space/hardsuit/ert/paranormal/inquisitor
	name = "Скафандр инквизитора"
	icon_state = "hardsuit-inq"
	item_state = "hardsuit-inq"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/ert/paranormal/inquisitor

/obj/item/clothing/head/helmet/space/hardsuit/ert/paranormal/inquisitor
	name = "Шлем инквизитора"
	icon_state = "hardsuit0-inq"
	item_state = "hardsuit0-inq"

/obj/item/clothing/suit/space/hardsuit/ert/paranormal/beserker
	name = "Скафандр чемпиона"
	desc = "Из костюма слышатся голоса, сводящие пользователя с ума."
	icon_state = "hardsuit-beserker"
	item_state = "hardsuit-beserker"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/ert/paranormal/beserker

/obj/item/clothing/head/helmet/space/hardsuit/ert/paranormal/beserker
	name = "Шлем чемпиона"
	desc = "Заглянуть в глаза шлема достаточно, чтобы навлечь на себя проклятие."
	icon_state = "hardsuit0-beserker"
	item_state = "hardsuit0-beserker"

/obj/item/clothing/head/helmet/space/fragile
	name = "Шлем аварийного скафандра"
	desc = "Громоздкий герметичный шлем, предназначенный для защиты пользователя в чрезвычайных ситуациях. Он не выглядит очень прочным."
	icon_state = "syndicate-helm-orange"
	item_state = "syndicate-helm-orange"
	armor = list("melee" = 5, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 10, "fire" = 0, "acid" = 0)
	strip_delay = 65

/obj/item/clothing/suit/space/fragile
	name = "Аварийный скафандр"
	desc = "Громоздкий герметичный скафандр, предназначенный для защиты пользователя в чрезвычайных ситуациях. Он не выглядит очень прочным."
	var/torn = FALSE
	icon_state = "syndicate-orange"
	item_state = "syndicate-orange"
	slowdown = 2
	armor = list("melee" = 5, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 10, "fire" = 0, "acid" = 0)
	strip_delay = 65

/obj/item/clothing/suit/space/fragile/hit_reaction(mob/living/carbon/human/owner, atom/movable/hitby, attack_text = "the attack", final_block_chance = 0, damage = 0, attack_type = MELEE_ATTACK)
	if(!torn && prob(50))
		to_chat(owner, "<span class='warning'>[src] tears from the damage, breaking the air-tight seal!</span>")
		clothing_flags &= ~STOPSPRESSUREDAMAGE
		name = "Порванный [src]."
		desc = "Громоздкий скафандр, предназначенный для защиты пользователя в чрезвычайных ситуациях, по крайней мере, до тех пор, пока что-то не пробило дыру в скафандре."
		torn = TRUE
		playsound(loc, 'sound/weapons/slashmiss.ogg', 50, 1)
		playsound(loc, 'sound/effects/refill.ogg', 50, 1)
