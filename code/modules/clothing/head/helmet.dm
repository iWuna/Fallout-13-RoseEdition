/obj/item/clothing/head/helmet
	name = "Шлем"
	desc = "Стандартное защитное снаряжение. Защищает голову от ударов."
	icon_state = "helmet"
	item_state = "helmet"
	armor = list("melee" = 25, "bullet" = 25, "laser" = 16,"energy" = 16, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 50)
	flags_inv = HIDEEARS
	cold_protection = HEAD
	min_cold_protection_temperature = HELMET_MIN_TEMP_PROTECT
	heat_protection = HEAD
	max_heat_protection_temperature = HELMET_MAX_TEMP_PROTECT
	strip_delay = 60
	resistance_flags = NONE
	flags_cover = HEADCOVERSEYES
	flags_inv = HIDEHAIR

	dog_fashion = /datum/dog_fashion/head/helmet

/obj/item/clothing/head/helmet/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/wearertargeting/earprotection, list(SLOT_HEAD))

/obj/item/clothing/head/helmet/sec
	can_flashlight = 1

/obj/item/clothing/head/helmet/sec/attackby(obj/item/I, mob/user, params)
	if(issignaler(I))
		var/obj/item/assembly/signaler/S = I
		if(F) //Has a flashlight. Player must remove it, else it will be lost forever.
			to_chat(user, "<span class='warning'>The mounted flashlight is in the way, remove it first!</span>")
			return

		if(S.secured)
			qdel(S)
			var/obj/item/bot_assembly/secbot/A = new
			user.put_in_hands(A)
			to_chat(user, "<span class='notice'>You add the signaler to the helmet.</span>")
			qdel(src)
			return
	return ..()

/obj/item/clothing/head/helmet/alt
	name = "Пулнепробиваемый шлем"
	desc = "Пуленепробиваемый боевой шлем, который в незначительной степени защищает владельца от традиционного метательного оружия и взрывчатых веществ."
	icon_state = "helmetalt"
	item_state = "helmetalt"
	armor = list("melee" = 35, "bullet" = 55, "laser" = 35, "energy" = 35, "bomb" = 55, "bio" = 0, "rad" = 0, "fire" = 55, "acid" = 55)
	can_flashlight = 1
	dog_fashion = null

/obj/item/clothing/head/helmet/old
	name = "Устаревший шлем"
	desc = "Стандартный защитный шлем. Из-за ухудшения качества козырек шлема препятствует возможности пользователя видеть на большие расстояния."
	tint = 2

/obj/item/clothing/head/helmet/blueshirt
	icon_state = "blueshift"
	item_state = "blueshift"

/obj/item/clothing/head/helmet/riot
	name = "Противоударный шлем"
	desc = "Это шлем, специально разработанный для защиты от атак с близкого расстояния."
	icon_state = "riot"
	item_state = "helmet"
	toggle_message = "Вы опустили забрало"
	alt_toggle_message = "Вы подняли забрало"
	can_toggle = 1
	armor = list("melee" = 60, "bullet" = 25, "laser" = 25,"energy" = 25, "bomb" = 25, "bio" = 2, "rad" = 0, "fire" = 50, "acid" = 50)
	flags_inv = HIDEEARS|HIDEFACE
	strip_delay = 80
	actions_types = list(/datum/action/item_action/toggle)
	toggle_cooldown = 0
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	visor_flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	dog_fashion = null

/obj/item/clothing/head/helmet/attack_self(mob/user)
	if(can_toggle && !user.incapacitated())
		if(world.time > cooldown + toggle_cooldown)
			cooldown = world.time
			up = !up
			flags_1 ^= visor_flags
			flags_inv ^= visor_flags_inv
			flags_cover ^= visor_flags_cover
			icon_state = "[initial(icon_state)][up ? "up" : ""]"
			to_chat(user, "[up ? alt_toggle_message : toggle_message] \the [src]")

			user.update_inv_head()
			if(iscarbon(user))
				var/mob/living/carbon/C = user
				C.head_update(src, forced = 1)

			if(active_sound)
				while(up)
					playsound(src.loc, "[active_sound]", 100, 0, 4)
					sleep(15)

/obj/item/clothing/head/helmet/justice
	name = "Шлем правосудтя"
	desc = "ВИИИУУУ. ВИИИИУУУ. ВИИИИУУУУ."
	icon_state = "justice"
	toggle_message = "Вы выключаете мигалки"
	alt_toggle_message = "Вы включаете мигалки"
	actions_types = list(/datum/action/item_action/toggle_helmet_light)
	can_toggle = 1
	toggle_cooldown = 20
	active_sound = 'sound/items/weeoo1.ogg'
	dog_fashion = null

/obj/item/clothing/head/helmet/justice/escape
	name = "Шлем с сигнализацией"
	desc = "ВИИИУУУ. ВИИИИИУУУ. ЗАДЕРЖИТЕ ЭТУ МАРТШЫШКУ. ВИИИУУУ."
	icon_state = "justice2"
	toggle_message = "Вы выключаете мигалки"
	alt_toggle_message = "Вы включаете мигалки"

/obj/item/clothing/head/helmet/swat
	name = "\improper SWAT helmet"
	desc = "A robust and strong SWAT helmet, particularly good at defending against melee weapons."
	icon_state = "swatsyndie"
	item_state = "swatsyndie"
	armor = list("melee" = 60, "bullet" = 40, "laser" = 25,"energy" = 25, "bomb" = 30, "bio" = 0, "rad" = 0, "fire" = 55, "acid" = 55)
	cold_protection = HEAD
	min_cold_protection_temperature = SPACE_HELM_MIN_TEMP_PROTECT
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_HELM_MAX_TEMP_PROTECT
	clothing_flags = STOPSPRESSUREDAMAGE
	strip_delay = 80
	dog_fashion = null

/obj/item/clothing/head/helmet/swat/nanotrasen
	name = "\improper SWAT helmet"
	desc = "An extremely robust, space-worthy helmet with the Nanotrasen logo emblazoned on the top."
	icon_state = "swat"
	item_state = "swat"

/obj/item/clothing/head/helmet/thunderdome
	name = "\improper Thunderdome helmet"
	desc = "<i>'Let the battle commence!'</i>"
	flags_inv = HIDEEARS|HIDEHAIR
	icon_state = "thunderdome"
	item_state = "thunderdome"
	armor = list("melee" = 40, "bullet" = 30, "laser" = 25,"energy" = 10, "bomb" = 25, "bio" = 10, "rad" = 0, "fire" = 50, "acid" = 50)
	cold_protection = HEAD
	min_cold_protection_temperature = SPACE_HELM_MIN_TEMP_PROTECT
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_HELM_MAX_TEMP_PROTECT
	strip_delay = 80
	dog_fashion = null

/obj/item/clothing/head/helmet/roman
	name = "Римский шлем"
	desc = "Древний шлем, сделанный из бронзы и кожи."
	flags_inv = HIDEEARS|HIDEHAIR
	flags_cover = HEADCOVERSEYES
	armor = list("melee" = 25, "bullet" = 10, "laser" = 25, "energy" = 10, "bomb" = 10, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 50)
	resistance_flags = FIRE_PROOF
	icon_state = "roman"
	item_state = "roman"
	strip_delay = 100
	dog_fashion = null

/obj/item/clothing/head/helmet/roman/fake
	desc = "Не совсем древний шлем, сделанный из пластика и кожи."
	armor = list("melee" = 15, "bullet" = 10, "laser" = 15, "energy" = 0, "bomb" = 0, "bio" = 10, "rad" = 0, "fire" = 10, "acid" = 0)

/obj/item/clothing/head/helmet/roman/legionaire
	name = "roman legionaire helmet"
	desc = "Древний шлем, сделанный из бронзы и кожи. На верхней части нарисован крест."
	icon_state = "roman_c"
	item_state = "roman_c"

/obj/item/clothing/head/helmet/roman/legionaire/fake
	desc = "Не совсем древний шлем, сделанный из пластика и кожи. На верхней части нарисован крест."
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)

/obj/item/clothing/head/helmet/gladiator
	name = "Шлем гладиатора"
	desc = "Ave, Imperator, morituri te salutant."
	icon_state = "gladiator"
	item_state = "gladiator"
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR
	flags_cover = HEADCOVERSEYES
	dog_fashion = null

/obj/item/clothing/head/helmet/redtaghelm
	name = "Красный шлем для лазертага"
	desc = "Они выбрали смерть."
	icon_state = "redtaghelm"
	flags_cover = HEADCOVERSEYES
	item_state = "redtaghelm"
	armor = list("melee" = 10, "bullet" = 16, "laser" = 25,"energy" = 25, "bomb" = 16, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 50)
	// Offer about the same protection as a hardhat.
	dog_fashion = null

/obj/item/clothing/head/helmet/bluetaghelm
	name = "Синий шлем для лазертага"
	desc = "Им нужно больше людей."
	icon_state = "bluetaghelm"
	flags_cover = HEADCOVERSEYES
	item_state = "bluetaghelm"
	armor = list("melee" = 10, "bullet" = 16, "laser" = 25,"energy" = 25, "bomb" = 16, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 50)
	// Offer about the same protection as a hardhat.
	dog_fashion = null

/obj/item/clothing/head/helmet/knight
	name = "Средневековый шлем"
	desc = "Классический средневековый шлем."
	icon_state = "knight_green"
	item_state = "knight_green"
	armor = list("melee" = 60, "bullet" = 25, "laser" = 25,"energy" = 25, "bomb" = 25, "bio" = 2, "rad" = 0, "fire" = 0, "acid" = 50)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	strip_delay = 80
	dog_fashion = null


/obj/item/clothing/head/helmet/knight/Initialize(mapload)
	. = ..()
	var/datum/component = GetComponent(/datum/component/wearertargeting/earprotection)
	qdel(component)

/obj/item/clothing/head/helmet/knight/blue
	icon_state = "knight_blue"
	item_state = "knight_blue"

/obj/item/clothing/head/helmet/knight/yellow
	icon_state = "knight_yellow"
	item_state = "knight_yellow"

/obj/item/clothing/head/helmet/knight/red
	icon_state = "knight_red"
	item_state = "knight_red"

/obj/item/clothing/head/helmet/skull
	name = "Шлем из черепа"
	desc = "Устрашающий племенной шлем, он выглядит не очень удобным."
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE
	flags_cover = HEADCOVERSEYES
	armor = list("melee" = 40, "bullet" = 15, "laser" = 10, "energy" = 10, "bomb" = 25, "bio" = 5, "rad" = 20, "fire" = 40, "acid" = 20)
	icon_state = "skull"
	item_state = "skull"
	strip_delay = 100

/obj/item/clothing/head/helmet/durathread//F13: Needs numbers tuned and perhaps icon.
	name = "Самодельный шлем"
	desc = "Жесткий шлем с полосками кожи и резины для дополнительной защиты от тупых предметов."
	icon_state = "durathread"
	item_state = "durathread"
	armor = list("melee" = 25, "bullet" = 10, "laser" = 20,"energy" = 10, "bomb" = 30, "bio" = 15, "rad" = 20, "fire" = 50, "acid" = 50)
	strip_delay = 60

//Fallout 13
/obj/item/clothing/head/helmet/knight/fluff/metal
	name = "Металлический шлем"
	desc = "Железный шлем, выкованный племенными воинами, с уникальным дизайном, защищающим лицо от стрел и топоров."
	icon_state = "metalhelmet"
	item_state = "metalhelmet"
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	armor = list("melee" = 40, "bullet" = 25, "laser" = 25, "energy" = 20, "bomb" = 16, "bio" = 0, "rad" = 0)

/obj/item/clothing/head/helmet/knight/fluff/metal/reinforced
	name = "Усиленный металлический шлем"
	icon_state = "metalhelmet_r"
	item_state = "metalhelmet_r"
	armor = list("melee" = 45, "bullet" = 35, "laser" = 40, "energy" = 25, "bomb" = 16, "bio" = 0, "rad" = 0)

/obj/item/clothing/head/helmet/knight/fluff/metal/strange
	name = "Странный металлический шлем"
	desc = "Стальной шлем, выкованный племенными воинами, с дополнительной обшивкой для защиты от снарядов и лазерного огня."
	armor = list("melee" = 40, "bullet" = 40, "laser" = 40, "energy" = 25, "bomb" = 16, "bio" = 0, "rad" = 0)

/obj/item/clothing/head/helmet/knight/fluff/rider
	name = "Шлем гонщика" //Not raider. Rider.
	desc = "Это причудливый шлем из темного металла с оранжевыми брызгами, окрашенными пламенем."
	icon_state = "rider"
	item_state = "rider"
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR

/obj/item/clothing/head/helmet/riot/vaultsec
	name = "Шлем охранника"
	desc = "Стандартный защитный шлем, довольно прочный."

//Remnants
/obj/item/clothing/head/donor/enclave
	name = "Фуражка солдата анклава"
	desc = "Стойкая черная фуражка, выдаваемая солдатам анклава."
	icon_state = "enclave_cap"
	item_state = "enclave_cap"
	armor = list("melee" = 10, "bullet" = 15, "laser" = 20, "energy" = 20, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 20, "acid" = 0)

//Raider
/obj/item/clothing/head/helmet/f13/raider
	name = "Базовый шлем рейдера"
	desc = "Для тестов"
	icon_state = "supafly"
	item_state = "supafly"
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	armor = list("melee" = 35, "bullet" = 25, "laser" = 25, "energy" = 25, "bomb" = 30, "bio" = 20, "rad" = 0, "fire" = 50, "acid" = 0)
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR

/obj/item/clothing/head/helmet/f13/raider/supafly
	name = "Шлем рейдера супа-флай"
	desc = "Это импровизированный шлем рейдера, сделанный из кожи. Он сильно пахнет химией и потом."
	icon_state = "supafly"
	item_state = "supafly"

/obj/item/clothing/head/helmet/f13/raider/supafly/Initialize() //HQ parts reinforcement
	. = ..()
	AddComponent(/datum/component/armor_plate)

/obj/item/clothing/head/helmet/f13/raider/arclight
	name = "raider arclight helmet"
	desc = "This will protect you against flashes."
	icon_state = "arclight"
	item_state = "arclight"
	dynamic_hair_suffix = ""
	flash_protect = 2
	tint = 1
	visor_flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE|HIDEFACIALHAIR

/obj/item/clothing/head/helmet/f13/raider/arclight/attack_self(mob/user)
	weldingvisortoggle(user)

/obj/item/clothing/head/helmet/f13/raider/arclight/Initialize()
	. = ..()
	AddComponent(/datum/component/armor_plate)

/obj/item/clothing/head/helmet/f13/raider/blastmaster
	name = "raider blastmaster helmet"
	icon_state = "blastmaster"
	item_state = "blastmaster"
	dynamic_hair_suffix = ""
	dynamic_fhair_suffix = ""

/obj/item/clothing/head/helmet/f13/raider/blastmaster/Initialize()
	. = ..()
	AddComponent(/datum/component/armor_plate)

/obj/item/clothing/head/helmet/f13/raider/yankee
	name = "Шлем рейдера Янки"
	desc = "Давным-давно он принадлежал футболисту, а теперь принадлежит пустоши."
	icon_state = "yankee"
	item_state = "yankee"
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE

/obj/item/clothing/head/helmet/f13/raider/yankee/Initialize()
	. = ..()
	AddComponent(/datum/component/armor_plate)

/obj/item/clothing/head/helmet/f13/raider/eyebot
	name = "Шлем из робоглаза"
	desc = "Это разобранный робоглаз, выдолбленный для размещения головы гуманоида."
	icon_state = "eyebot"
	item_state = "eyebot"
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	strip_delay = 50
	resistance_flags = LAVA_PROOF | FIRE_PROOF
	dynamic_hair_suffix = ""
	dynamic_fhair_suffix = ""

/obj/item/clothing/head/helmet/f13/raider/eyebot/Initialize()
	. = ..()
	AddComponent(/datum/component/armor_plate)

/obj/item/clothing/head/helmet/f13/raider/psychotic
	name = "Шлем рейдера-психопата"
	desc = "Кожаная тюбетейка с торчащими по бокам пучками волос."
	icon_state = "psychotic"
	item_state = "psychotic"
	flags_cover = HEADCOVERSEYES
	flags_inv = HIDEEARS|HIDEEYES|HIDEHAIR

/obj/item/clothing/head/helmet/f13/raider/psychotic/Initialize()
	. = ..()
	AddComponent(/datum/component/armor_plate)

/obj/item/clothing/head/helmet/f13/raider/ant
	name = "Капюшон антагониста"
	desc = "Самодельный капюшон из хитина огромных муравьев. Серьезно, похоже на что-то из комикса. Возможно, его можно было бы усилить, если вам так хочется."
	icon_state = "anthelm"
	item_state = "anthelm"

/obj/item/clothing/head/helmet/f13/raider/ant/Initialize()
	. = ..()
	AddComponent(/datum/component/armor_plate)

/*
/obj/item/clothing/head/helmet/f13/raider/r
	name = "reinforced base raider helmet"
	armor = list("melee" = 40, "bullet" = 35, "laser" = 35, "energy" = 35, "bomb" = 40, "bio" = 20, "rad" = 0, "fire" = 50, "acid" = 0)

/obj/item/clothing/head/helmet/f13/raider/r/supafly
	name = "reinforced supa-fly raider helmet"

/obj/item/clothing/head/helmet/f13/raider/r/arclight
	name = "reinforced raider arclight helmet"

/obj/item/clothing/head/helmet/f13/raider/r/blastmaster
	name = "reinforced raider blastmaster helmet"

/obj/item/clothing/head/helmet/f13/raider/r/yankee
	name = "reinforced yankee raider helmet"

/obj/item/clothing/head/helmet/f13/raider/r/eyebot
	name = "reinforced eyebot helmet"

/obj/item/clothing/head/helmet/f13/raider/r/psychotic/
	name = "reinforced psycho-tic raider helmet"
	desc = "A leather skullcap with tufts of Yaoguai hair sticking from each side."
*/

//Combat armor

/obj/item/clothing/head/helmet/f13/combat
	name = "Боевой шлем"
	desc = "Старый довоенный боевой шлем."
	desc = "Довоенный керамический и кевларовый шлем, предназначенный для поглощения кинетических ударов и предотвращения попадания снарядов в череп пользователя. Снаружи мелом написаны слова \"Рожденный убивать\"."
	icon_state = "combat_helmet"
	item_state = "combat_helmet"
	armor = list("melee" = 40, "bullet" = 45, "laser" = 40, "energy" = 40, "bomb" = 50, "bio" = 60, "rad" = 10, "fire" = 60, "acid" = 20)
	strip_delay = 50
	flags_inv = HIDEEARS|HIDEHAIR
	resistance_flags = LAVA_PROOF | FIRE_PROOF
	dynamic_hair_suffix = ""
	dynamic_fhair_suffix = ""

/obj/item/clothing/head/helmet/f13/combat/dark
	name = "Боевой шлем"
	desc = "Старый довоенный боевой шлем."
	color = "#302E2E" // Dark Grey

/obj/item/clothing/head/helmet/f13/combat/Initialize()
	. = ..()
	AddComponent(/datum/component/spraycan_paintable)
	START_PROCESSING(SSobj, src)

/obj/item/clothing/head/helmet/f13/combat/Destroy()
	STOP_PROCESSING(SSobj, src)
	return ..()

/obj/item/clothing/head/helmet/f13/combat/mk2
	name = "Улучшенный боевой шлем"
	desc = "Усовершенствованный довоенный шлем с титановым покрытием, керамическим покрытием, кевларовым покрытием, предназначенный для того, чтобы выдерживать экстремальные условия всех типов"
	icon_state = "combat_helmet_mk2"
	item_state = "combat_helmet_mk2"
	armor = list("melee" = 45, "bullet" = 50, "laser" = 45, "energy" = 40, "bomb" = 39, "bio" = 70, "rad" = 70, "fire" = 70, "acid" = 0)

/obj/item/clothing/head/helmet/f13/combat/remnant
    desc = "Темный шлем с желтыми линзами, обычно используемый в шпионаже или теневых операциях. Носится членами CAG или OS."
    icon_state = "remnant_helmet"
    item_state = "remnant_helmet"

/obj/item/clothing/head/helmet/f13/combat/mk2/dark
	name = "Улучшенный боевой шлем"
	color = "#302E2E" // Dark Grey

/obj/item/clothing/head/helmet/f13/combat/brotherhood
	name = "Боевой шлем братства"
	desc = "Усовершенствованный боевой шлем с символом рыцарей."
	icon_state = "brotherhood_helmet"
	item_state = "brotherhood_helmet"
	armor = list("melee" = 40, "bullet" = 45, "laser" = 40, "energy" = 45, "bomb" = 55, "bio" = 60, "rad" = 15, "fire" = 60, "acid" = 30)

/obj/item/clothing/head/helmet/f13/combat/brotherhood/senior
	name = "Бевой шлем старшего рыцаря братства"
	desc = "Усовершенствованный боевой шлем с серебрянным символом рыцарей."
	icon_state = "brotherhood_helmet_senior"
	item_state = "brotherhood_helmet_senior"

/obj/item/clothing/head/helmet/f13/combat/environmental
	name = "Шлем для защиты от окружающей среды"
	desc = "Шлем, покрывающий всю голову и противогаз, разработанный для использования в сильно загрязненных средах."
	icon_state = "env_helmet"
	item_state = "env_helmet"
	flags_inv = HIDEMASK|HIDEEARS|HIDEFACE|HIDEEYES|HIDEHAIR|HIDEFACIALHAIR
	armor = list("melee" = 40, "bullet" = 45, "laser" = 40, "energy" = 45, "bomb" = 55, "bio" = 70, "rad" = 100, "fire" = 60, "acid" = 50)
	strip_delay = 60
	equip_delay_other = 60
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH

/obj/item/clothing/head/helmet/f13/combat/environmental/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/rad_insulation, RAD_NO_INSULATION, TRUE, FALSE)

/obj/item/clothing/head/helmet/f13/atomzealot
	name = "Шлем фанатика"
	desc = "Шлем агента единства."
	icon_state = "atomzealot"
	item_state = "atomzealot"
	armor = list("melee" = 30, "bullet" = 35, "laser" = 30, "energy" = 30, "bomb" = 30, "bio" = 70, "rad" = 100, "fire" = 65, "acid" = 30)

/obj/item/clothing/head/helmet/f13/shamanhead
	name = "Ритуальный головной убор"
	desc = "Ручной резной головной убор из черепа, уникально подходящий для духовного вождя племени путников."
	icon_state = "shamanhead"
	item_state = "shamanhead"
	armor = list("melee" = 10, "bullet" = 15, "laser" = 5, "energy" = 5, "bomb" = 20, "bio" = 70, "rad" = 10, "fire" = 20, "acid" = 0)

/obj/item/clothing/head/helmet/f13/atombeliever
	name = "Головной убор верующего"
	desc = "Головной убор истинно верующего"
	icon_state = "atombeliever"
	item_state = "atombeliever"
	armor = list("melee" = 10, "bullet" = 15, "laser" = 5, "energy" = 5, "bomb" = 20, "bio" = 70, "rad" = 100, "fire" = 20, "acid" = 0)

/obj/item/clothing/head/helmet/f13/deathskull
	name = "Жуткий шлем"
	desc = "Шлем, сделанный из черепа оленя. Что-то с ним не так."
	icon_state = "shamskull"
	item_state = "shamskull"
	armor = list("melee" = 15, "bullet" = 20, "laser" = 15, "energy" = 20, "bomb" = 30, "bio" = 20, "rad" = 10, "fire" = 10, "acid" = 0)

/obj/item/clothing/head/helmet/f13/hoodedmask
	name = "Маска с капюшоном"
	desc = "Противогаз с капюшоном."
	icon_state = "Hooded_Gas_Mask"
	item_state = "Hooded_Gas_Mask"
	armor = list("melee" = 20, "bullet" = 20, "laser" = 20, "energy" = 20, "bomb" = 70, "bio" = 70, "rad" = 70, "fire" = 65, "acid" = 30)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR

/obj/item/clothing/head/helmet/f13/jasonmask
	name = "Маска Джейсона"
	desc = "Металлическая маска, сделанная специально для Джейсона."
	icon_state = "jasonmask"
	item_state = "jasonmask"
	armor = list("melee" = 20, "bullet" = 20, "laser" = 20, "energy" = 20, "bomb" = 70, "bio" = 70, "rad" = 70, "fire" = 65, "acid" = 30)

/obj/item/clothing/head/helmet/f13/brahmincowboyhat
	name = "Ковбойская шляпа из кожи брамина"
	desc = "Ковбойская шляпа из шкур браминов."
	icon_state = "brahmin_leather_cowboy_hat"
	item_state = "brahmin_leather_cowboy_hat"
	armor = list("melee" = 15, "bullet" = 15, "laser" = 15, "energy" = 15, "bomb" = 70, "bio" = 70, "rad" = 70, "fire" = 70, "acid" = 15)

/obj/item/clothing/head/helmet/f13/rustedcowboyhat
	name = "Ржавая ковбойская шляпа"
	desc = "Ковбойская шляпа из дубленой кожи."
	icon_state = "rusted_cowboy"
	item_state = "rusted_cowboy"
	armor = list("melee" = 15, "bullet" = 15, "laser" = 15, "energy" = 15, "bomb" = 70, "bio" = 70, "rad" = 70, "fire" = 70, "acid" = 15)

/obj/item/clothing/head/helmet/f13/raidercombathelmet
	name = "Боевой шлем рейдера"
	desc = "Боевой шлем модифицированный с металлическим покрытием."
	icon_state = "raider_combat_helmet"
	item_state = "raider_combat_helmet"
	armor = list("melee" = 40, "bullet" = 30, "laser" = 35, "energy" = 35, "bomb" = 70, "bio" = 70, "rad" = 70, "fire" = 65, "acid" = 30)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR


/obj/item/clothing/head/helmet/f13/raidercombathelmet/mk2
	name = "Усиленный боевой шлем рейдера"
	desc = "Боевой шлем, модифицированный высококачественным броневыми пластинами."
	armor = list("melee" = 45, "bullet" = 50, "laser" = 45, "energy" = 40, "bomb" = 39, "bio" = 70, "rad" = 70, "fire" = 70, "acid" = 0)

/obj/item/clothing/head/helmet/f13/combat/knightcap
	name = "Боевой шлем рыцаря-капитана"
	desc = "Специализированный боевой шлем рыцаря-капитана с золотым гребнем."
	icon_state = "knightcap"
	item_state = "knightcap"
	armor = list("melee" = 45, "bullet" = 50, "laser" = 45, "energy" = 45, "bomb" = 60, "bio" = 60, "rad" = 15, "fire" = 60, "acid" = 30)

/obj/item/clothing/head/helmet/f13/combat/enclave
	name = "Боевой шлем Анклава"
	desc = "Устрашающий шлем, который выдается вместе с соответствующим костюмом."
	icon_state = "enclave_helmet"
	item_state = "enclave_helmet"
	armor = list("melee" = 50, "bullet" = 39, "laser" = 25, "energy" = 25, "bomb" = 39, "bio" = 0, "rad" = 50, "fire" = 0, "acid" = 20)

/obj/item/clothing/head/helmet/f13/combat/swat
	name = "Боевой шлем спецназа"
	desc = "Довоенный боевой шлем, выданный сотрудникам спецназа"
	icon_state = "swatsyndie"
	item_state = "swatsyndie"

//Sulphite Helm

/obj/item/clothing/head/helmet/f13/sulphitehelm
	name = "Сульфитный Шлем"
	desc = "В сульфитной рейдерский шлем, прикреплённым поверх глаз пуленепробиваемым стеклом."
	icon_state = "sulphite_helm"
	item_state = "sulphite_helm"
	armor = list("melee" = 50, "bullet" = 45, "laser" = 35, "energy" = 25, "bomb" = 39, "bio" = 0, "rad" = 50, "fire" = 0, "acid" = 20)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH

//Strange Combat Helm

/obj/item/clothing/head/helmet/f13/rangerbroken
	name = "Сломанный противоударный шлем"
	icon_state = "ranger_broken"
	desc = "Старый полицейский шлем, вышедший из употребления во время войны."
	armor = list("melee" = 50, "bullet" = 50, "laser" = 40, "energy" = 50, "bomb" = 39, "bio" = 20, "rad" = 20, "fire" = 30, "acid" = 0)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR|HIDEFACIALHAIR|HIDEFACE
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	resistance_flags = LAVA_PROOF | FIRE_PROOF
	dynamic_hair_suffix = ""
	dynamic_fhair_suffix = ""
	flash_protect = 1

/obj/item/clothing/head/helmet/f13/rangercustomflicker
	name = "Сломанный противоударный шлем"
	icon_state = "rangercustom"
	item_state = "rangercustom"
	desc = "Разбитый старый полиейский шлем, вышедший из употребления во время войны. Козырек этого был окрашен в оранжевый цвет, а нижняя половина-в темно-красный."
	armor = list("melee" = 40, "bullet" = 30, "laser" = 20, "energy" = 30, "bomb" = 25, "bio" = 40, "rad" = 40, "fire" = 80, "acid" = 0)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR|HIDEFACIALHAIR|HIDEFACE
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	resistance_flags = LAVA_PROOF | FIRE_PROOF

//Legion
/obj/item/clothing/head/helmet/f13/legion
	name = "Шлем легиона"
	desc = "Шлем легиона без знаков отличия"
	icon_state = "legrecruit"
	item_state = "legrecruit"
	lefthand_file = ""
	righthand_file = ""
	armor = list("melee" = 40, "bullet" = 25, "laser" = 10, "energy" = 10, "bomb" = 16, "bio" = 30, "rad" = 20, "fire" = 50, "acid" = 0)
	flags_inv = HIDEEARS|HIDEHAIR
	strip_delay = 50
	dynamic_hair_suffix = ""
	dynamic_fhair_suffix = ""

/obj/item/clothing/head/helmet/f13/legion/recruit
	name = "Шлем рекрута легиона"
	desc = "Кожаный шлем рекрута легиона."
	icon_state = "legrecruit"
	item_state = "legrecruit"

/obj/item/clothing/head/helmet/f13/legion/recruit/scout
	name = "Капюшон легиона скаута"
	desc = "Это кожаный капюшон, который носят разведчики легиона."
	icon_state = "legscout"
	item_state = "legscout"

/obj/item/clothing/head/helmet/f13/legion/prime
	name = "Шлем преторианца легиона"
	desc = "Шлем, принадлежащий преторианцу Легиона, выглядит крепче, чем обычный шлем новобранца легиона."
	item_state = "legprime"
	icon_state = "legprime"
	armor = list("melee" = 50, "bullet" = 35, "laser" = 15, "energy" = 15, "bomb" = 25, "bio" = 40, "rad" = 20, "fire" = 60, "acid" = 0)

/obj/item/clothing/head/helmet/f13/legion/prime/alt
	name = "Шлем преторианца легиона"
	desc = "Шлем, принадлежащий преторианцу Легиона, выглядит крепче, чем обычный шлем новобранца легиона. Поставляется с парой защитных очков."
	item_state = "leglineman"
	icon_state = "leglineman"

/obj/item/clothing/head/helmet/f13/legion/prime/alt/attack_self(mob/user)
	if(can_toggle && !user.incapacitated())
		if(world.time > cooldown + toggle_cooldown)
			cooldown = world.time
			up = !up
			flags_1 ^= visor_flags
			flags_inv ^= visor_flags_inv
			flags_cover ^= visor_flags_cover
			icon_state = "[initial(icon_state)][up ? "up" : ""]"
			to_chat(user, "[up ? alt_toggle_message : toggle_message] \the [src]")

			user.update_inv_head()
			if(iscarbon(user))
				var/mob/living/carbon/C = user
				C.head_update(src, forced = 1)

			if(active_sound)
				while(up)
					playsound(src.loc, "[active_sound]", 100, 0, 4)
					sleep(15)

/obj/item/clothing/head/helmet/f13/legion/vet
	name = "Шлем ветерана легиона"
	desc = "Это металлический шлем ветерана легиона, выглядит довольно прочным."
	icon_state = "legvet"
	item_state = "legvet"
	armor = list("melee" = 60, "bullet" = 40, "laser" = 25, "energy" = 15, "bomb" = 25, "bio" = 50, "rad" = 20, "fire" = 70, "acid" = 0)

/obj/item/clothing/head/helmet/f13/legion/vet/jonesarmorhelmet
	name= "Galea Articuli"
	desc = "Шлем ручной ковки, по-видимому, сделанный для ветерана-легионера, учитывая общую форму и сходство со стандартным шлемом. Он не только выглядит чертовски крепким, но и выглядит абсолютно красивым для среднего любителя гравировки. Узоры гравюр изящны, изгибаясь и извиваясь вокруг шлема с предельной грацией, чтобы не запятнать шлем такого высокого качества. Вместо стандартной красной полосы, идущей по середине шлема, вместо нее есть золотая. Он прекрасно сияет на свету и хорошо скрывает владельца в темноте. При ближайшем рассмотрении внутри шлема обнаруживается небольшое пространство. Он не грубый и не самодельный, на самом деле, он выглядит так, как будто был спроектирован с учетом этого пространства. В результате того, что он не является твердым металлом, область, в которой находится пространство, немного тоньше и обеспечивает меньшую защиту, чем обычный шлем. Пространство похоже по размеру на пространство фетровой шляпы, но без возможности хранения оружия или других крупных предметов из-за жесткости шлема. Впрочем, не волнуйся. Он был ослаблен вокруг шеи, так что вы все еще можете наклонить его."
	icon_state = "jonesarmorhelmet"
	item_state = "jonesarmorhelmet"
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/small/detective

/obj/item/clothing/head/helmet/f13/legion/vet/jonesarmorhelmet/decan
	name = "Galea Plumosus Articuli"
	desc = "Шлем ручной ковки, по-видимому, сделанный для ветерана-легионера, учитывая общую форму и сходство со стандартным шлемом. Он не только выглядит чертовски крепким, но и выглядит абсолютно красивым для среднего любителя гравировки. Узоры гравюр изящны, изгибаясь и извиваясь вокруг шлема с предельной грацией, чтобы не запятнать шлем такого высокого качества. Вместо стандартной красной полосы, идущей по середине шлема, вместо нее есть золотая. Он прекрасно сияет на свету и хорошо скрывает владельца в темноте. При ближайшем рассмотрении внутри шлема обнаруживается небольшое пространство. Он не грубый и не самодельный, на самом деле, он выглядит так, как будто был спроектирован с учетом этого пространства. В результате того, что он не является твердым металлом, область, в которой находится пространство, немного тоньше и обеспечивает меньшую защиту, чем обычный шлем. Пространство похоже по размеру на пространство фетровой шляпы, но без возможности хранения оружия или других крупных предметов из-за жесткости шлема. Впрочем, не волнуйся. Он был ослаблен вокруг шеи, так что вы все еще можете наклонить его. Кроме того, в шлем было добавлено большое количество перьев. Они не очень полезны, за исключением того, что они одновременно обозначают звание ветерана и декана из-за различных цветов перьев и служат для покрытия области тонкого металла вокруг места хранения шлема."
	icon_state = "jonesarmordecan"
	item_state = "jonesarmordecan"

/obj/item/clothing/head/helmet/f13/legion/heavy
	name = "Шлем декана-ветерана легиона"
	desc = "Это металлический шлем легиона с плюмажем, обозначающим статус ветерана декана."
	icon_state = "legheavy"
	item_state = "legheavy"
	armor = list("melee" = 65, "bullet" = 45, "laser" = 25, "energy" = 15, "bomb" = 25, "bio" = 50, "rad" = 20, "fire" = 70, "acid" = 0)

/obj/item/clothing/head/helmet/f13/legion/vet/explorer
	name = "Капюшон исследователя легиона"
	desc = "Это кожаный капюшон, который носят исследователи легиона. Он выглядит тщательно обработанным и усиленным."
	icon_state = "legexplorer"
	item_state = "legexplorer"

/obj/item/clothing/head/helmet/f13/legion/vet/vexil
	name = "Шлем вексилария легиона"
	desc = "Это кожаный шлем вексилария легиона."
	icon_state = "legvexil"
	item_state = "legvexil"

/obj/item/clothing/head/helmet/f13/legion/vet/combvexil
	name = "Медвежий шлем вексилария легиона"
	desc = "Это кожаный шлем вексилария легиона."
	icon_state = "legvexil_alt"
	item_state = "legvexil_alt"

/obj/item/clothing/head/helmet/f13/legion/venator
	name = "Шлем венатора легиона"
	desc = "Это кожаный капюшон, который носят венаторы легиона. Он выглядит тщательно обработанным и усиленным."
	icon_state = "legvenator"
	item_state = "legvenator"
	armor = list("melee" = 60, "bullet" = 50, "laser" = 30, "energy" = 15, "bomb" = 25, "bio" = 50, "rad" = 20, "fire" = 70, "acid" = 0)

/obj/item/clothing/head/helmet/f13/legion/venator/diohelmet
	name = "Шлем стилио окуларус"
	desc = "Выдолбленная голова смертоносного золотого геккона была аккуратно прикреплена поверх усиленного шлема легиона. Его жуткий вид служит устрашающим жестом для тех, кто еще не боится короля ящериц."
	icon_state = "diohelmet"
	item_state = "diohelmet"

/obj/item/clothing/head/helmet/f13/legion/libritor
	name = "Шлем легата легиона"
	desc = "Металлический шлем ветерана легиона с перевернутой цветовой схемой для легатов."
	icon_state = "legheavy"
	item_state = "legheavy"
	armor = list("melee" = 65, "bullet" = 50, "laser" = 30, "energy" = 15, "bomb" = 25, "bio" = 50, "rad" = 20, "fire" = 70, "acid" = 0)

/obj/item/clothing/head/helmet/f13/legion/recruit/decan
	name = "Шлем декана-рекрута легиона"
	desc = "Это кожаный шлем легиона, усиленный более прочными кожаными нашивками и украшенный множеством красных и темно-красных перьев."
	icon_state = "legdecan"
	item_state = "legdecan"

/obj/item/clothing/head/helmet/f13/legion/prime/decan
	name = "Шлем декана-преторианца легиона"
	desc = "Это кожаный шлем легиона, усиленный более прочными кожаными нашивками и украшенный множеством красных и темно-красных перьев. У этого тоже есть несколько маленьких белых перьев, вплетенных внутрь."
	item_state = "legdecanprim"
	icon_state = "legdecanprim"

/obj/item/clothing/head/helmet/f13/legion/vet/decan/alt
	name = "Шлем декана-ветерана легиона"
	desc = "Это металлический шлем, усиленный более прочными кожаными нашивками и украшенный множеством красных и темно-красных перьев. У этого есть несколько больших белых и черных перьев, пришитых вместе с остальными перьями. К шлему также прикреплен баллистический лицевой щиток, защищающий лицо от физических ударов и небольших пистолетных калибров."
	item_state = "vetdecalt"
	icon_state = "vetdecalt"

/obj/item/clothing/head/helmet/f13/legion/vet/decan/alt/attack_self(mob/user)
	if(can_toggle && !user.incapacitated())
		if(world.time > cooldown + toggle_cooldown)
			cooldown = world.time
			up = !up
			flags_1 ^= visor_flags
			flags_inv ^= visor_flags_inv
			flags_cover ^= visor_flags_cover
			icon_state = "[initial(icon_state)][up ? "up" : ""]"
			to_chat(user, "[up ? alt_toggle_message : toggle_message] \the [src]")

			user.update_inv_head()
			if(iscarbon(user))
				var/mob/living/carbon/C = user
				C.head_update(src, forced = 1)

			if(active_sound)
				while(up)
					playsound(src.loc, "[active_sound]", 100, 0, 4)
					sleep(15)

/obj/item/clothing/head/helmet/f13/legion/vet/decan
	name = "Шлем ветерана-декана легиона"
	desc = "Это кожаный шлем легиона, усиленный более прочными кожаными нашивками и украшенный множеством красных и темно-красных перьев. У этого есть несколько больших белых и черных перьев, пришитых вместе с остальными перьями."
	icon_state = "legdecanvet"
	item_state = "legdecanvet"

/obj/item/clothing/head/helmet/f13/legion/centurion
	name = "Шлем центуриона легиона"
	desc = "Это большой кованый и закаленный бронзовый шлем со стальной вставкой вокруг черепа и задней части шеи. У него есть большой плюмаж из красного конского волоса, идущий горизонтально, символизируя положение Центуриона."
	icon_state = "legcenturion"
	item_state = "legcenturion"
	armor = list("melee" = 60, "bullet" = 45, "laser" = 30, "energy" = 35, "bomb" = 39, "bio" = 60, "rad" = 20, "fire" = 80, "acid" = 0)
	resistance_flags = LAVA_PROOF | FIRE_PROOF

/obj/item/clothing/head/helmet/f13/legion/rangercent
	name = "Шлем центуриона охотника-рейнджера"
	desc = "Шлем рейнджера НКР, переделанный под нужды Центуриона охотника-Рейнджера. Он украшен большим плюмажем из крашеных рыжих ослиных волос, обозначающим ранг."
	icon_state = "rangercent"
	item_state = "rangercent"
	armor = list("melee" = 60, "bullet" = 45, "laser" = 30, "energy" = 35, "bomb" = 39, "bio" = 60, "rad" = 20, "fire" = 80, "acid" = 0)
	resistance_flags = LAVA_PROOF | FIRE_PROOF

/obj/item/clothing/head/helmet/f13/legion/palacent
	name = "Шлем центурион - убийцы паладинов"
	desc = "Некогда изумительный шлем силовой брони Т-45д, переделанный Легионом в символ своей мощи. У него есть большой плюмаж из красного конского волоса, идущий горизонтально, обозначающий звание Центуриона."
	icon_state = "palacent"
	item_state = "palacent"
	armor = list("melee" = 75, "bullet" = 50, "laser" = 35, "energy" = 35, "bomb" = 39, "bio" = 60, "rad" = 20, "fire" = 80, "acid" = 0)
	resistance_flags = LAVA_PROOF | FIRE_PROOF

/obj/item/clothing/head/helmet/f13/legion/palacent/custom_excess
	name = "Champion of Kanab's Helm"
	desc = "A custom forged steel full helmet made for the Conqueror and Champion of Kanab. It has a large plume of red horse hair across the top of it going horizontally, symbolizing the position of a Centurion."
	icon_state = "palacent_excess"
	item_state = "palacent_excess"

/obj/item/clothing/head/helmet/f13/legion/legate
	name = "Шлем легата легиона"
	desc = "Изготовленный на заказ полный шлем из кованой стали с абстрактными точками и арками. Лицо чрезвычайно устрашающее, как и должно было быть. Именно его приказал сделать Цезарь, отдав своему второму легату в обмен на его бессмертную преданность Цезарю."
	icon_state = "leglegat"
	item_state = "leglegat"
	armor = list("melee" = 85, "bullet" = 60, "laser" = 40, "energy" = 40, "bomb" = 45, "bio" = 60, "rad" = 60, "fire" = 80, "acid" = 0)
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	flags_inv = HIDEEARS|HIDEEYES|HIDEHAIR
	resistance_flags = LAVA_PROOF | FIRE_PROOF

/obj/item/clothing/head/helmet/f13/legion/marsheaddress
	name = "Головной убор жрицы"
	desc = "Головной убор из перьев, украшенный двумя золотыми кистями."
	icon_state = "mars_headdress"
	item_state = "mars_headdress"
	dynamic_hair_suffix = "+generic"

/obj/item/clothing/head/helmet/f13/roma
	name = "Шлем римского легионера"
	desc = "Хорошо выкованный металлический шлем, стандартный для всех римских легионеров и Ауксилий."
	icon_state = "roma_helmet"
	item_state = "roma_helmet"
	armor = list("melee" = 60, "bullet" = 40, "laser" = 25, "energy" = 15, "bomb" = 25, "bio" = 50, "rad" = 20, "fire" = 70, "acid" = 0)
	lefthand_file = ""
	righthand_file = ""
	flags_inv = HIDEHAIR
	strip_delay = 50
	dynamic_hair_suffix = ""
	dynamic_fhair_suffix = ""

//Ranger Armors
/obj/item/clothing/head/helmet/f13/ncr/rangercombat
	name = "ranger combat helmet"
	desc = "An old combat helmet, out of use around the time of the war."
	icon_state = "ranger"
	item_state = "ranger"
	armor = list("melee" = 60, "bullet" = 50, "laser" = 30, "energy" = 50, "bomb" = 39, "bio" = 60, "rad" = 60, "fire" = 90, "acid" = 0)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR|HIDEFACIALHAIR|HIDEFACE
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	resistance_flags = LAVA_PROOF | FIRE_PROOF
	dynamic_hair_suffix = ""
	dynamic_fhair_suffix = ""
	flash_protect = 1
	glass_colour_type = /datum/client_colour/glass_colour/red
	lighting_alpha = LIGHTING_PLANE_ALPHA_LOWLIGHT_VISION
	darkness_view = 128

/obj/item/clothing/head/helmet/f13/ncr/rangercombat/rigscustom
	name = "11-й бронированный кавалерийский шлемt"
	desc = "Усовершенствованный боевой шлем, используемый 11-м бронетанковым кавалерийским полком до войны. Чуть выше козырька-потертая и выцветшая эмблема 11-го бронетанкового кавалерийского полка. Сам шлем имеет несколько царапин и вмятин, полученных в бою."
	icon_state = "rigscustom_helmet"
	item_state = "rigscustom_helmet"
	icon = 'icons/fallout/clothing/hats.dmi'

/obj/item/clothing/head/helmet/f13/ncr/rangercombat/mosshelmet
	name = "Стенсон патрульного-ветерана"
	desc = "Потрепанная походная шляпа плотно облегает внутренности боевого шлема рейнджера. Старый стетсон выцвел от старости и интенсивного использования. Он повидал зеленые берега Калифорнии до белых вершин Скалистых гор."
	icon_state = "mosshelmet"
	item_state = "mosshelmet"
	flags_inv = HIDEEARS|HIDEEYES|HIDEHAIR|HIDEFACE
	flags_cover = HEADCOVERSEYES

/obj/item/clothing/head/helmet/f13/ncr/rangercombat/desert
	name = "Боевой шлем пустынного рейнджера"
	desc = "Шлем морской пехоты США, используемый легендарными рейнджерами пустыни."
	icon_state = "desert_ranger"
	item_state = "desert_ranger"
	armor = list("melee" = 60, "bullet" = 50, "laser" = 30, "energy" = 50, "bomb" = 39, "bio" = 60, "rad" = 60, "fire" = 40, "acid" = 0)

/obj/item/clothing/head/helmet/f13/ncr/rangercombat/eliteriot
	name = "Элитный противоударный шлем"
	desc = "Старый боевой шлем, замеченный в разделении, переделанный для рейнджеров более высокого ранга."
	icon_state = "elite_riot"
	item_state = "elite_riot"
	armor = list("melee" = 70, "bullet" = 60, "laser" = 40, "energy" = 60, "bomb" = 55, "bio" = 60, "rad" = 60, "fire" = 40, "acid" = 0)


/obj/item/clothing/head/helmet/f13/rangercombat/eliteriot/reclaimed
	name = "Восстановленное снаряжение пустынного рейнджера"
	desc = "Отремонтированный и персонализированный набор снаряжения пустынного рейнджера до объединения."
	icon_state = "desert_ranger"
	item_state = "desert_ranger"
	armor = list("melee" = 30, "bullet" = 30, "laser" = 30, "energy" = 30, "bomb" = 30, "bio" = 30, "rad" = 30, "fire" = 30, "acid" = 0)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR|HIDEFACIALHAIR|HIDEFACE
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
//Metal masks

/obj/item/clothing/head/helmet/f13/raidermetal
	name = "Металлический шлем рейдера"
	desc = "Металлический шлем, ржавый и ужасный."
	icon_state = "raidermetal"
	item_state = "raidermetal"
	can_toggle = TRUE
	armor = list("melee" = 50, "bullet" = 35, "laser" = 35, "energy" = 20, "bomb" = 25, "bio" = 30, "rad" = 30, "fire" = 20, "acid" = 0)
	flags_inv = HIDEMASK|HIDEEYES|HIDEFACE
	strip_delay = 80
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	visor_flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH

/obj/item/clothing/head/helmet/f13/metalmask
	name = "Металлическая маска"
	desc = "Грубая металлическая хоккейная маска."
	icon_state = "metal_mask"
	item_state = "metal_mask"
	toggle_message = "Вы опустили маску"
	alt_toggle_message = "Вы подняли маску"
	can_toggle = 1
	armor = list("melee" = 50, "bullet" = 35, "laser" = 35, "energy" = 20, "bomb" = 25, "bio" = 30, "rad" = 30, "fire" = 20, "acid" = 0)
	flags_inv = HIDEMASK|HIDEEYES|HIDEFACE
	strip_delay = 80
	actions_types = list(/datum/action/item_action/toggle)
	toggle_cooldown = 0
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	visor_flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH

/obj/item/clothing/head/helmet/f13/metalmask/Initialize()
	. = ..()
	AddComponent(/datum/component/spraycan_paintable)
	START_PROCESSING(SSobj, src)

/obj/item/clothing/head/helmet/f13/metalmask/Destroy()
	STOP_PROCESSING(SSobj, src)
	return ..()

/obj/item/clothing/head/helmet/f13/metalmask/mk2
	name = "Светоотражающая металлическая маска"
	desc = "Светоотражающая металлическая хоккейная маска."
	icon_state = "metal_mask2"
	item_state = "metal_mask2"
	armor = list("melee" = 50, "bullet" = 35, "laser" = 50, "energy" = 50, "bomb" = 25, "bio" = 30, "rad" = 30, "fire" = 30, "acid" = 0)

/obj/item/clothing/head/helmet/f13/tesla
	name = "Шлем тесла"
	desc = "Довоенная броня, разработанная Николой Теслой до того, как ее конфисковало правительство США. Обеспечивает высокую устойчивость против энергетического оружия."
	icon_state = "tesla_helmet"
	item_state = "tesla_helmet"
	armor = list("melee" = 35, "bullet" = 35, "laser" = 55, "energy" = 55, "bomb" = 35, "bio" = 0, "rad" = 10, "fire" = 30, "acid" = 80)
	var/hit_reflect_chance = 70
	strip_delay = 10

/obj/item/clothing/head/helmet/f13/tesla/IsReflect(def_zone)
	if(!(def_zone in list("head"))) //If not shot where ablative is covering you, you don't get the reflection bonus!
		return 0
	if (prob(hit_reflect_chance))
		return 1

//Power armor helmets

/obj/item/clothing/head/helmet/f13/power_armor/
	cold_protection = HEAD
	min_cold_protection_temperature = SPACE_HELM_MIN_TEMP_PROTECT
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_HELM_MAX_TEMP_PROTECT
	ispowerarmor = 1 //TRUE
	strip_delay = 200
	equip_delay_self = 20
	slowdown = 0.1
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR|HIDEMASK|HIDEJUMPSUIT
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	clothing_flags = THICKMATERIAL
	resistance_flags = LAVA_PROOF | FIRE_PROOF | ACID_PROOF
	item_flags = SLOWS_WHILE_IN_HAND
	flash_protect = 2
	dynamic_hair_suffix = ""
	dynamic_fhair_suffix = ""
	speechspan = SPAN_ROBOT //makes you sound like a robot
	darkness_view = 128 //Literally NV
	lighting_alpha = LIGHTING_PLANE_ALPHA_LOWLIGHT_VISION
	var/emped = 0
	var/requires_training = TRUE
	light_range = 4 //luminosity when the light is on
	light_on = FALSE
	var/on = FALSE
	light_color = LIGHT_COLOR_YELLOW
	light_system = MOVABLE_LIGHT_DIRECTIONAL
	actions_types = list(/datum/action/item_action/toggle_light)

/obj/item/clothing/head/helmet/f13/power_armor/attack_self(mob/user)
	on = !on
//	icon_state = "[initial(icon_state)][on]"
	user.update_inv_head()	//so our mob-overlays update

	set_light_on(on)
	for(var/X in actions)
		var/datum/action/A = X
		A.UpdateButtonIcon()

/obj/item/clothing/head/helmet/f13/power_armor/mob_can_equip(mob/user, mob/equipper, slot, disable_warning = 1)
	var/mob/living/carbon/human/H = user
	if(src == H.head) //Suit is already equipped
		return ..()
	if (!H.has_trait(TRAIT_PA_WEAR) && !istype(src, /obj/item/clothing/head/helmet/f13/power_armor/t45b) && slot == SLOT_HEAD && requires_training)
		to_chat(user, "<span class='warning'>You don't have the proper training to operate the power armor!</span>")
		return 0
	if(slot == SLOT_HEAD)
		return ..()
	return

/obj/item/clothing/head/helmet/f13/power_armor/emp_act(mob/living/carbon/human/owner, severity)
	. = ..()
	if(. & EMP_PROTECT_SELF)
		return
	if(emped == 0)
		if(ismob(loc))
			to_chat(loc, "<span class='warning'>Предупреждение: в шлеме обнаружен электромагнитный всплеск. Перенаправление энергии на аварийные системы.</span>")
			tint += 2
			if(istype(loc, /mob/living/carbon))
				var/mob/living/carbon/M = loc
				M.update_tint()
			armor = armor.modifyRating(melee = -20, bullet = -20, laser = -20)
			emped = 1
			spawn(50) //5 seconds of being blind and weak
				to_chat(loc, "<span class='warning'>Питание шлема перенаправлено успешно. Все системы в рабочем состоянии.</span>")
				tint -= 2
				if(istype(loc, /mob/living/carbon))
					var/mob/living/carbon/M = loc
					M.update_tint()
				armor = armor.modifyRating(melee = 20, bullet = 20, laser = 20)
				emped = 0

/obj/item/clothing/head/helmet/f13/power_armor/t45b
	name = "Трофейный шлем T-45b"
	desc = "Это трофейный шлем с силовой брони T-45b."
	icon_state = "t45bhelmet"
	item_state = "t45bhelmet"
	armor = list("melee" = 75, "bullet" = 60, "laser" = 30, "energy" = 50, "bomb" = 48, "bio" = 60, "rad" = 50, "fire" = 80, "acid" = 0)
	darkness_view = 0 //No NV
	slowdown = 0.2 //No servo
	lighting_alpha = null
	requires_training = FALSE

/obj/item/clothing/head/helmet/f13/power_armor/raiderpa_helm
	name = "Рейдерский силовой шлем T-45b"
	desc = "Этот шлем силовой брони настолько дряхлый и изношенный в боях, что он потерял большую часть своей способности защищать владельца от вреда. Этот шлем, похоже, сильно модифицирован, тяжелая металлическая привязка вплавлена в шлем."
	icon_state = "raiderpa_helm"
	item_state = "raiderpa_helm"
	armor = list("melee" = 50, "bullet" = 45, "laser" = 30, "energy" = 25, "bomb" = 39, "bio" = 0, "rad" = 50, "fire" = 0, "acid" = 0)
	darkness_view = 0 //No NV
	slowdown = 0.2 //No servo
	lighting_alpha = null
	requires_training = FALSE

/obj/item/clothing/head/helmet/f13/power_armor/raiderpa_helm/attack_self(mob/user)
	return FALSE

/obj/item/clothing/head/helmet/f13/power_armor/hotrod
	name = "Силовой шлем T-45b с подвеской"
	desc = "Этот шлем силовой брони настолько дряхлый и изношенный в боях, что он потерял большую часть своей способности защищать владельца от вреда."
	icon_state = "t45hotrod_helm"
	item_state = "t45hotrod_helm"
	armor = list("melee" = 50, "bullet" = 45, "laser" = 30, "energy" = 25, "bomb" = 39, "bio" = 0, "rad" = 50, "fire" = 0, "acid" = 0)
	darkness_view = 110 //Some worse NV
	light_color = COLOR_RED_LIGHT
	lighting_alpha = null
	requires_training = FALSE

/obj/item/clothing/head/helmet/f13/power_armor/advanced
	name = "Улучшенный силовой шлем"
	desc = "Это усовершенствованная силовая броня первой модели, обычно используемая анклавом. Выглядит несколько угрожающе."
	icon_state = "advhelmet1"
	item_state = "advhelmet1"
	darkness_view = 150 // Advanced NV
	armor = list("melee" = 80, "bullet" = 80, "laser" = 50, "energy" = 75, "bomb" = 72, "bio" = 100, "rad" = 100, "fire" = 90, "acid" = 0)

/obj/item/clothing/head/helmet/f13/power_armor/advanced/mk2
	name = "Улучшенный силовой шлем второй модели"
	desc = "Это усовершенствованная модель усовершенствованной силовой брони, используемой исключительно вооруженными силами анклава, разработанная после Великой войны.<br>Как и старший брат, стандартная усовершенствованная силовая броня, она матово-черная с угрожающим внешним видом, но с несколькими существенными отличиями - кажется, что она полностью состоит из легких керамических композитов, а не из обычной комбинации металлических и керамических пластин.<br>Кроме того, как и силовая броня Т-51b, она включает в себя систему рециркуляции, которая может превращать человеческие отходы в питьевую воду, и систему кондиционирования воздуха для удобства пользователя."
	icon_state = "advhelmet2"
	item_state = "advhelmet2"
	darkness_view = 170 // Advanced NV II
	armor = list("melee" = 90, "bullet" = 90, "laser" = 60, "energy" = 90, "bomb" = 72, "bio" = 100, "rad" = 100, "fire" = 90, "acid" = 0)

/obj/item/clothing/head/helmet/f13/power_armor/tesla
	name = "Силовой тесла шлем"
	desc = "Шлем, обычно используемый спецназом анклава.<br>Сбоку есть три оранжевых энергетических конденсатора."
	darkness_view = 160 // Advanced NV
	icon_state = "tesla"
	item_state = "tesla"
	armor = list("melee" = 90, "bullet" = 50, "laser" = 95, "energy" = 95, "bomb" = 62, "bio" = 100, "rad" = 100, "fire" = 90, "acid" = 0)
	light_color = COLOR_DARK_CYAN

/obj/item/clothing/head/helmet/f13/power_armor/t51b
	name = "Силовой шлем T-51b"
	desc = "Это силовой шлем Т-51и, обычно используемый Братством. Выглядит довольно очаровательно."
	icon_state = "t51bhelmet"
	item_state = "t51bhelmet"
	darkness_view = 135 // Advanced NV
	armor = list("melee" = 70, "bullet" = 65, "laser" = 55, "energy" = 65, "bomb" = 62, "bio" = 100, "rad" = 99, "fire" = 90, "acid" = 0)

/obj/item/clothing/head/helmet/f13/power_armor/t51b/ultra
	name = "Силовой шлем из ультрасайта"
	desc = "Это силовой шлем Т-51b, обычно используемый Братством. Это выглядит довольно очаровательно. Теперь с ультрасайтом."
	icon_state = "ultracitepa_helm"
	item_state = "ultracitepa_helm"
	slowdown = 0
	light_color = COLOR_DARK_CYAN

/obj/item/clothing/head/helmet/f13/power_armor/t60
	name = "Силовой шлем T-60a"
	desc = "Силовой шлем T-60, оснащенный целевым программным комплексом, идентификаторами \"свой-чужой\", динамическим HUD и внутренним музыкальным плеером."
	icon_state = "t60helmet"
	item_state = "t60helmet"
	darkness_view = 145 // Advanced NV
	armor = list("melee" = 75, "bullet" = 70, "laser" = 60, "energy" = 70, "bomb" = 82, "bio" = 100, "rad" = 100, "fire" = 95, "acid" = 0)

/obj/item/clothing/head/helmet/f13/power_armor/t45d
	name = "Силовой шлем T-45d"
	desc = "Это старый довоенный силовой бронированный шлем. Внутри довольно жарко."
	icon_state = "t45dhelmet"
	item_state = "t45dhelmet"
	armor = list("melee" = 65, "bullet" = 60, "laser" = 50, "energy" = 60, "bomb" = 62, "bio" = 100, "rad" = 90, "fire" = 90, "acid" = 0)

/obj/item/clothing/head/helmet/f13/power_armor/t45d/gunslinger
	name = "Шлем стрелка T-51b"
	desc = "Поскольку большая часть внешней обшивки снята, чтобы обеспечить работу внутренних ночных и тепловых сканеров, а также автоматизированную помощь в наведении через бортовые системы, этот шлем обеспечивает гораздо большую полезность, чем защита. Для поддержки этих систем в шлем были вмонтированы вторичные силовые элементы и накрыты стильной шляпой."
	icon_state = "t51bgs"
	item_state = "t51bgs"
	slowdown = 0
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE|HIDEFACIALHAIR

/obj/item/clothing/head/helmet/f13/power_armor/midwest
	name = "Силовой шлем Среднего Запада"
	desc = "Этот шлем когда-то принадлежал средне-западной ветви Братства Стали, ныне проживающей там, где он используется в настоящее время."
	icon_state = "midwestpa_helm"
	item_state = "midwestpa_helm"
	armor = list("melee" = 65, "bullet" = 60, "laser" = 50, "energy" = 60, "bomb" = 62, "bio" = 100, "rad" = 90, "fire" = 90, "acid" = 0)

/obj/item/clothing/head/helmet/f13/power_armor/midwest/hardened
	name = "Закалённый силовой шлем Среднего Запада"
	desc = "Этот шлем когда-то принадлежал средне-западной ветви Братства Стали, ныне проживающей там, где он используется в настоящее время. Этот конкретный прошел через процесс химического отверждения, увеличивая его броневые возможности."
	armor = list("melee" = 70, "bullet" = 65, "laser" = 55, "energy" = 65, "bomb" = 62, "bio" = 100, "rad" = 99, "fire" = 90, "acid" = 0)

/obj/item/clothing/head/helmet/f13/power_armor/excavator
	name = "Силовой шлем экскаватора"
	desc = "Шлем экскаваторного силового бронекостюма."
	icon_state = "excavator"
	item_state = "excavator"
	armor = list("melee" = 60, "bullet" = 55, "laser" = 45, "energy" = 60, "bomb" = 62, "bio" = 100, "rad" = 90, "fire" = 90, "acid" = 0)

//LightToggle

/obj/item/clothing/head/helmet/update_icon()
	var/state = "[initial(icon_state)]"
	if(F)
		if(F.on)
			state += "-flight-on" //"helmet-flight-on" // "helmet-cam-flight-on"
		else
			state += "-flight" //etc.

	icon_state = state

	if(ishuman(loc))
		var/mob/living/carbon/human/H = loc
		H.update_inv_head()

/obj/item/clothing/head/helmet/ui_action_click(mob/user, action)
	if(istype(action, /datum/action/item_action/toggle_helmet_flashlight))
		toggle_helmlight()
	else
		..()

/obj/item/clothing/head/helmet/attackby(obj/item/I, mob/user, params)
	if(istype(I, /obj/item/flashlight/seclite))
		var/obj/item/flashlight/seclite/S = I
		if(can_flashlight)
			if(!F)
				if(!user.transferItemToLoc(S, src))
					return
				to_chat(user, "<span class='notice'>You click [S] into place on [src].</span>")
				if(S.on)
					set_light_on(FALSE)
				F = S
				update_icon()
				update_helmlight(user)
				verbs += /obj/item/clothing/head/helmet/proc/toggle_helmlight
				var/datum/action/A = new /datum/action/item_action/toggle_helmet_flashlight(src)
				if(loc == user)
					A.Grant(user)
		return

	if(istype(I, /obj/item/screwdriver))
		if(F)
			for(var/obj/item/flashlight/seclite/S in src)
				to_chat(user, "<span class='notice'>You unscrew the seclite from [src].</span>")
				F = null
				S.forceMove(user.drop_location())
				update_helmlight(user)
				S.update_brightness(user)
				update_icon()
				usr.update_inv_head()
				verbs -= /obj/item/clothing/head/helmet/proc/toggle_helmlight
			for(var/datum/action/item_action/toggle_helmet_flashlight/THL in actions)
				qdel(THL)
			return

	return ..()

/obj/item/clothing/head/helmet/proc/toggle_helmlight()
	set name = "Toggle Helmet Light"
	set category = "Object"
	set desc = "Click to toggle your helmet's attached flashlight."

	if(!F)
		return

	var/mob/user = usr
	if(user.incapacitated())
		return
	F.on = !F.on
	to_chat(user, "<span class='notice'>You toggle the helmetlight [F.on ? "on":"off"].</span>")

	playsound(user, 'sound/weapons/empty.ogg', 100, 1)
	update_helmlight(user)

/obj/item/clothing/head/helmet/proc/update_helmlight(mob/user = null)
	if(F)
		if(F.on)
			set_light_on(TRUE)
		else
			set_light_on(FALSE)
		update_icon()

	else
		set_light_on(FALSE)
	for(var/X in actions)
		var/datum/action/A = X
		A.UpdateButtonIcon()
