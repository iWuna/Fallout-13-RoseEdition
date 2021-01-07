/obj/item/clothing/suit/armor
	allowed = null
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	cold_protection = CHEST|GROIN
	min_cold_protection_temperature = ARMOR_MIN_TEMP_PROTECT
	heat_protection = CHEST|GROIN
	max_heat_protection_temperature = ARMOR_MAX_TEMP_PROTECT
	strip_delay = 60
	equip_delay_other = 40
	max_integrity = 250
	resistance_flags = NONE
	armor = list("melee" = 25, "bullet" = 25, "laser" = 25, "energy" = 15, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 50)
	allowed = list(/obj/item/gun)

/obj/item/clothing/suit/armor/Initialize()
	. = ..()
	if(!allowed)
		allowed = GLOB.security_vest_allowed

/obj/item/clothing/suit/armor/vest
	name = "Бронежилет"
	desc = "Тонкий бронежилет типа I, который обеспечивает достойную защиту от большинства видов повреждений."
	icon_state = "vault_security"
	item_state = "vault_security"
	blood_overlay_type = "armor"
	dog_fashion = /datum/dog_fashion/back

/obj/item/clothing/suit/armor/vest/alt
	desc = "Бронежилет типа I, который обеспечивает достойную защиту от большинства видов повреждений."
	icon_state = "armor"
	item_state = "armor"

/obj/item/clothing/suit/armor/vest/old
	name = "Испортившийся бронежилет"
	desc = "Бронежилет старшего поколения Тип 1. Из-за изнашивания с течением времени жилет становится гораздо менее маневренным для перемещения."
	icon_state = "armor"
	item_state = "armor"

/obj/item/clothing/suit/armor/vest/blueshirt
	icon_state = "blueshift"
	item_state = "blueshift"

/obj/item/clothing/suit/armor/hos
	name = "Бронированная шинель"
	desc = "Шинель, усиленная специальным сплавом для дополнительной защиты и стиля для тех, кто обладает командным присутствием."
	icon_state = "hos"
	item_state = "greatcoat"
	body_parts_covered = CHEST|GROIN|ARMS|LEGS
	armor = list("melee" = 40, "bullet" = 25, "laser" = 20, "energy" = 20, "bomb" = 45, "bio" = 0, "rad" = 0, "fire" = 70, "acid" = 90)
	cold_protection = CHEST|GROIN|LEGS|ARMS
	heat_protection = CHEST|GROIN|LEGS|ARMS
	strip_delay = 80

/obj/item/clothing/suit/armor/hos/trenchcoat
	name = "Бронированный плащ"
	desc = "Плащ, зачарованный специальным легким кевларом. Воплощение тактического штатского."
	icon_state = "hostrench"
	item_state = "hostrench"
	flags_inv = 0
	strip_delay = 80

/obj/item/clothing/suit/armor/vest/warden
	name = "Куртка смотрителя"
	desc = "Темно-синяя бронежилет с синими надписями на плечах и надписью \"Надзиратель\", нашитой в одном из нагрудных карманов."
	icon_state = "warden_alt"
	item_state = "armor"
	body_parts_covered = CHEST|GROIN|ARMS
	cold_protection = CHEST|GROIN|ARMS|HANDS
	heat_protection = CHEST|GROIN|ARMS|HANDS
	strip_delay = 70
	resistance_flags = FLAMMABLE
	dog_fashion = null

/obj/item/clothing/suit/armor/vest/warden/alt
	name = "Бронированная куртка смотрителя"
	desc = "Красная куртка с серебряными козырьками и бронежилет, пристегнутый сверху."
	icon_state = "warden_jacket"

/obj/item/clothing/suit/armor/vest/leather
	name = "Защитная шинель"
	desc = "Легкобронированная кожаная шинель предназначалась как повседневная одежда для высокопоставленных офицеров. На ней изображён герб Службы безопасности Vault-Tec."
	icon_state = "leathercoat-sec"
	item_state = "hostrench"
	body_parts_covered = CHEST|GROIN|ARMS|LEGS
	cold_protection = CHEST|GROIN|LEGS|ARMS
	heat_protection = CHEST|GROIN|LEGS|ARMS
	dog_fashion = null

/obj/item/clothing/suit/armor/vest/capcarapace
	name = "Панцирь капитана"
	desc = "Огнеупорный бронированный нагрудник, усиленный керамическими пластинами и пластальными наплечниками, чтобы обеспечить дополнительную защиту, но при этом обеспечить максимальную мобильность и гибкость. Выпускается только для лучших сотрудников станции, хотя и натирает соски."
	icon_state = "capcarapace"
	item_state = "armor"
	body_parts_covered = CHEST|GROIN
	armor = list("melee" = 50, "bullet" = 39, "laser" = 25, "energy" = 25, "bomb" = 39, "bio" = 0, "rad" = 0, "fire" = 100, "acid" = 90)
	dog_fashion = null
	resistance_flags = FIRE_PROOF

/obj/item/clothing/suit/armor/vest/capcarapace/syndicate
	name = "Бронежилет капитана синдиката"
	desc = "Зловещего вида жилет из усовершенствованной брони, надетый поверх черно-красной огнеупорной куртки. Золотой воротник и плечи означают, что он принадлежит высокопоставленному офицеру синдиката."
	icon_state = "syndievest"

/obj/item/clothing/suit/armor/vest/capcarapace/alt
	name = "Парадная шинель капитана"
	desc = "Для тех случаев, когда бронежилет недостаточно моден."
	icon_state = "capformal"
	item_state = "capspacesuit"

/obj/item/clothing/suit/armor/riot
	name = "Противоударный костюм"
	desc = "Костюм из полужесткого поликарбонатного бронежилета с тяжелой подкладкой для защиты от атак ближнего боя."
	icon_state = "riot"
	item_state = "swat_suit"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	armor = list("melee" = 60, "bullet" = 35, "laser" = 16, "energy" = 16, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 80, "acid" = 80)
	strip_delay = 80
	equip_delay_other = 60

/obj/item/clothing/suit/armor/bone
	name = "Костяная броня"
	desc = "Племенная броневая пластина, изготовленная из кости животного"
	icon_state = "bonearmor"
	item_state = "bonearmor"
	blood_overlay_type = "armor"
	armor = list("melee" = 40, "bullet" = 25, "laser" = 15, "energy" = 10, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 50)
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS

/obj/item/clothing/suit/armor/bulletproof
	name = "Пуленепробиваемая броня"
	desc = "Тяжелый бронежилет типа III, который в незначительной степени защищает владельца от традиционного метательного оружия и взрывчатых веществ."
	icon_state = "bulletproof"
	item_state = "armor"
	blood_overlay_type = "armor"
	armor = list("melee" = 35, "bullet" = 55, "laser" = 35, "energy" = 35, "bomb" = 55, "bio" = 0, "rad" = 0, "fire" = 55, "acid" = 55)
	strip_delay = 70
	equip_delay_other = 50

/obj/item/clothing/suit/armor/locustjacket
	name = "Куртка саранчи"
	desc = "Армированная куртка, используемая в основном наемниками саранчи."
	icon_state = "locustjacket"
	item_state = "locustjacket"
	blood_overlay_type = "armor"
	armor = list("melee" = 35, "bullet" = 55, "laser" = 35, "energy" = 35, "bomb" = 55, "bio" = 0, "rad" = 0, "fire" = 55, "acid" = 55)
	strip_delay = 70
	equip_delay_other = 50

/obj/item/clothing/suit/armor/laserproof
	name = "Тесла броня"
	desc = "Довоенная броня, сделанная Николой Тесла до конфискации правительством США. Обеспечивает высокую защиту от энергетического оружия."
	icon_state = "tesla_armor"
	item_state = "tesla_armor"
	blood_overlay_type = "armor"
	armor = list("melee" = 50, "bullet" = 40, "laser" = 60, "energy" = 60, "bomb" = 40, "bio" = 30, "rad" = 20, "fire" = 60, "acid" = 0)
	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | ACID_PROOF
	body_parts_covered = CHEST|GROIN|ARMS
	var/hit_reflect_chance = 40

/obj/item/clothing/suit/armor/laserproof/IsReflect(def_zone)
	if(!(def_zone in list(BODY_ZONE_CHEST, BODY_ZONE_PRECISE_GROIN))) //If not shot where ablative is covering you, you don't get the reflection bonus!
		return 0
	if (prob(hit_reflect_chance))
		return 1

/obj/item/clothing/suit/armor/vest/det_suit
	name = "Бронежилет детектива"
	desc = "Бронежилет со значком детектива."
	icon_state = "detective-armor"
	resistance_flags = FLAMMABLE
	dog_fashion = null

/obj/item/clothing/suit/armor/vest/det_suit/Initialize()
	. = ..()
	allowed = GLOB.detective_vest_allowed

//All of the armor below is mostly unused

/obj/item/clothing/suit/armor/centcom
	name = "Броня ЦентКом"
	desc = "Костюм, защищающий от большинства видов урона"
	icon_state = "centcom"
	item_state = "centcom"
	w_class = WEIGHT_CLASS_BULKY
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	allowed = list(/obj/item/gun/energy, /obj/item/melee/baton, /obj/item/restraints/handcuffs, /obj/item/tank/internals/emergency_oxygen, /obj/item/tank/internals/plasmaman)
	clothing_flags = THICKMATERIAL
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
	cold_protection = CHEST | GROIN | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MAX_TEMP_PROTECT
	armor = list("melee" = 80, "bullet" = 80, "laser" = 50, "energy" = 50, "bomb" = 100, "bio" = 100, "rad" = 100, "fire" = 90, "acid" = 90)

/obj/item/clothing/suit/armor/heavy
	name = "Тяжелая броня"
	desc = "Тяжелая броня, защищающая от умеренных повреждений."
	icon_state = "heavy"
	item_state = "swat_suit"
	w_class = WEIGHT_CLASS_BULKY
	gas_transfer_coefficient = 0.9
	clothing_flags = THICKMATERIAL
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	slowdown = 3
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
	armor = list("melee" = 50, "bullet" = 39, "laser" = 25, "energy" = 25, "bomb" = 50, "bio" = 50, "rad" = 50, "fire" = 50, "acid" = 50)

/obj/item/clothing/suit/armor/tdome
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
	clothing_flags = THICKMATERIAL
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	armor = list("melee" = 80, "bullet" = 80, "laser" = 50, "energy" = 50, "bomb" = 100, "bio" = 100, "rad" = 100, "fire" = 90, "acid" = 90)

/obj/item/clothing/suit/armor/tdome/red
	name = "Костюм в клетку"
	desc = "Красноватая броня."
	icon_state = "tdred"
	item_state = "tdred"

/obj/item/clothing/suit/armor/tdome/green
	name = "Костюм в клетку"
	desc = "Блевотная броня."	//classy.
	icon_state = "tdgreen"
	item_state = "tdgreen"

/obj/item/clothing/suit/armor/riot/knight
	name = "Доспех"
	desc = "Классический доспех, с высокой эффективностью останавливающий атаки оружием ближнего боя."
	icon_state = "knight_green"
	item_state = "knight_green"

/obj/item/clothing/suit/armor/riot/knight/yellow
	icon_state = "knight_yellow"
	item_state = "knight_yellow"

/obj/item/clothing/suit/armor/riot/knight/blue
	icon_state = "knight_blue"
	item_state = "knight_blue"

/obj/item/clothing/suit/armor/riot/knight/red
	icon_state = "knight_red"
	item_state = "knight_red"

/obj/item/clothing/suit/armor/vest/durathread
	name = "Самодельный бронежилет"
	desc = "Жилет из дюратреда с полосками кожи, выполняющими роль травматических пластин."
	icon_state = "durathread"
	item_state = "durathread"
	strip_delay = 60
	equip_delay_other = 40
	max_integrity = 200
	resistance_flags = FLAMMABLE
	armor = list("melee" = 20, "bullet" = 10, "laser" = 30, "energy" = 5, "bomb" = 15, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 50)

//Fallout 13

/obj/item/clothing/suit/armor/f13/leather_jacket
	name = "Кожаная куртка"
	icon_state = "leather_jacket"
	item_state = "leather_jacket"
	desc = "Черная, тяжелая кожаная куртка.."
	body_parts_covered = CHEST|GROIN|ARMS
	armor = list("melee" = 20, "bullet" = 15, "laser" = 15, "energy" = 15, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 10, "acid" = 0)

/obj/item/clothing/suit/armor/f13/leather_jacket/combat
	name = "Боевая кожаная куртка."
	icon_state = "combat_jacket"
	item_state = "combat_jacket"
	desc = "Эта толстая кожаная куртка необычна тем, что имеет два рукава. Вы определенно будете самым модным, где бы вы ни были.."
	armor = list("melee" = 30, "bullet" = 30, "laser" = 20, "energy" = 20, "bomb" = 30, "bio" = 0, "rad" = 0, "fire" = 25, "acid" = 25)

/obj/item/clothing/suit/armor/f13/leather_jacket/combat/coat
	name = "Боевое кожаное пальто"
	icon_state = "combat_coat"
	item_state = "combat_coat"
	desc = "Боевая кожаная куртка, покрытая боевым кожаным пальтом."
	armor = list("melee" = 40, "bullet" = 43, "laser" = 40, "energy" = 35, "bomb" = 45, "bio" = 30, "rad" = 5, "fire" = 50, "acid" = 35)

/obj/item/clothing/suit/armor/f13/leather_jacket/combat/riotpolice
	name = "Боевая броня"
	icon_state = "combat_coat"
	item_state = "combat_coat"
	desc = "Тяжелая броня с баллистическими вставками, вшитыми в пальто спецназа."
	armor = list("melee" = 50, "bullet" = 50, "laser" = 40, "energy" = 25, "bomb" = 30, "bio" = 0, "rad" = 0, "fire" = 5, "acid" = 35)

/obj/item/clothing/suit/armor/f13/kit
	name = "Набор брони"
	desc = "Отдельные части брони вы можете носить поверх одежды, чтобы получить самую элементарную защиту от опасностей Пустоши.<br>Он не способен отражать лазерные лучи и, вероятно, не защитит вас от случайной пули, но это, конечно, лучше, чем идти в бой вообще без брони."
	icon_state = "armorkit"
	item_state = "armorkit"
	body_parts_covered = CHEST|GROIN
	armor = list("melee" = 20, "bullet" = 15, "laser" = 15, "energy" = 15, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 10, "acid" = 0)
	strip_delay = 30

/obj/item/clothing/suit/armor/f13/kit/Initialize()
	. = ..()
	AddComponent(/datum/component/armor_plate)

/obj/item/clothing/suit/armor/f13/leatherarmor
	name = "Кожаная броня"
	desc = "Полный кожаный костюм. Тонко выделана из дубленой шкуры брамина."
	icon_state = "leather_armor"
	item_state = "leather_armor"
	body_parts_covered = CHEST|GROIN
	armor = list("melee" = 40, "bullet" = 35, "laser" = 25, "energy" = 25, "bomb" = 32, "bio" = 0, "rad" = 10, "fire" = 30, "acid" = 35)
	strip_delay = 40

/obj/item/clothing/suit/armor/f13/leatherarmor/reinforced
	name = "Улучшенная кожаная броня"
	icon_state = "leather_armor_2"
	item_state = "leather_armor_2"
	desc = "Улучшенная версия базовой кожаной брони с дополнительными слоями защиты. Тонко выделана из дубленой шкуры брамина."
	armor = list("melee" = 40, "bullet" = 40, "laser" = 30, "energy" = 30, "bomb" = 35, "bio" = 0, "rad" = 15, "fire" = 40, "acid" = 35)

/obj/item/clothing/suit/armor/f13/metalarmor
	name = "Металлическая броня"
	desc = "Набор пластин, сложенных вместе и образовывающих грубый нагрудник."
	icon_state = "metal_chestplate"
	item_state = "metal_chestplate"
	body_parts_covered = CHEST|GROIN|ARMS
	armor = list("melee" = 45, "bullet" = 40, "laser" = 45, "energy" = 40, "bomb" = 40, "bio" = 30, "rad" = 15, "fire" = 60, "acid" = 0)
	slowdown = 0.25
	strip_delay = 10

/obj/item/clothing/suit/armor/f13/metalarmor/militia
	name = "Броня СОО"
	desc = "Костюм из металлических доспехов, выданный членам Сил Обороны Оазиса."
	item_color = "#5D4037"
	color = "#5D4037"

/obj/item/clothing/suit/armor/fluff/chestplate/Initialize()
	. = ..()
	AddComponent(/datum/component/spraycan_paintable)
	START_PROCESSING(SSobj, src)

/obj/item/clothing/suit/armor/fluff/chestplate/Destroy()
	STOP_PROCESSING(SSobj, src)
	return ..()

/obj/item/clothing/suit/armor/f13/metalarmor/reinforced
    name = "Металлическая броня модель 2"
    desc = "Набор отполированных пластин, сформированных вместе и формирующих отражающий нагрудник, особо эффективный против энергетического оружия."
    icon_state = "metal_chestplate2"
    item_state = "metal_chestplate2"
    body_parts_covered = CHEST|GROIN|ARMS|LEGS
    armor = list("melee" = 45, "bullet" = 45, "laser" = 55, "energy" = 50, "bomb" = 40, "bio" = 30, "rad" = 20, "fire" = 60, "acid" = 0)
    slowdown = 0
    strip_delay = 10

/obj/item/clothing/suit/armor/f13/metalarmor/strange
    name = "Странная металлическая броня"
    desc = "Набор металлических пластин, сложенных вместеи формирующих прочный нагрудник, предназначенный для сопротивления как огнестрельному, так и лазерному оружию."
    icon_state = "metal_chestplate2"
    item_state = "metal_chestplate2"
    body_parts_covered = CHEST|GROIN|ARMS|LEGS
    armor = list("melee" = 45, "bullet" = 50, "laser" = 50, "energy" = 40, "bomb" = 40, "bio" = 30, "rad" = 20, "fire" = 60, "acid" = 0)
    slowdown = 0
    strip_delay = 10

/obj/item/clothing/suit/armor/f13/raider
	name = "Базовая броня рейдера"
	desc = "Для тестов"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	armor = list("melee" = 35, "bullet" = 30, "laser" = 35, "energy" = 35, "bomb" = 30, "bio" = 0, "rad" = 0, "fire" = 25, "acid" = 25)
	strip_delay = 40

/obj/item/clothing/suit/armor/f13/raider/supafly
	name = "Броня рейдера супа-флай"
	desc = "Сказочные способности мутантов открылись мне в тот день, когда я поднял свой бамперный меч и сказал:..<br>КЛЯНУСЬ СИЛОЙ НУКА-КОЛЫ, Я ЧЕЛОВЕК-РЕЙДЕР!"
	icon_state = "supafly"
	item_state = "supafly"

/obj/item/clothing/suit/armor/f13/raider/supafly/Initialize() //HQ parts reinforcement
	. = ..()
	AddComponent(/datum/component/armor_plate)

/obj/item/clothing/suit/armor/f13/raider/sadist
	name = "Броня рейдера-садиста"
	desc = "Связка металлических чепцов, украшенных отрубленными руками на поясе и кожаной пластиной на левом плече. Очень пугающе."
	icon_state = "sadist"
	item_state = "sadist"

/obj/item/clothing/suit/armor/f13/raider/sadist/Initialize()
	. = ..()
	AddComponent(/datum/component/armor_plate)

/obj/item/clothing/suit/armor/f13/raider/blastmaster
	name = "Броня рейдера-подрывника"
	desc = "Костюм состоит в основном из антивзрывного покрытия, хотя там так много дыр, что трудно сказать, защитит ли он хоть от чего-то."
	icon_state = "blastmaster"
	item_state = "blastmaster"
	max_heat_protection_temperature = ARMOR_MAX_TEMP_PROTECT
	flash_protect = 2

/obj/item/clothing/suit/armor/f13/raider/blastmaster/Initialize()
	. = ..()
	AddComponent(/datum/component/armor_plate)

/obj/item/clothing/suit/armor/f13/raider/yankee
	name = "Броня рейдера янки"
	desc = "Комплект брони из громоздкого пластика и резины. В разных местах напечатан выцветший логотип спортивной команды. Вперед, Крысы Пустыни!"
	icon_state = "yankee"
	item_state = "yankee"

/obj/item/clothing/suit/armor/f13/raider/yankee/Initialize()
	. = ..()
	AddComponent(/datum/component/armor_plate)

/obj/item/clothing/suit/armor/f13/raider/badlands
	name = "Броня рейдера бесплодных земель"
	desc = "Кожаный топ с патронташем поверх него и ремешками, закрывающими руки."
	icon_state = "badlands"
	item_state = "badlands"

/obj/item/clothing/suit/armor/f13/raider/badlands/Initialize()
	. = ..()
	AddComponent(/datum/component/armor_plate)

/obj/item/clothing/suit/armor/f13/raider/painspike
	name = "Броня рейдера шипов боли"
	desc = "Особенно неподъемная броня, даже по меркам рейдеров. Чрезвычайно колючая."
	icon_state = "painspike"
	item_state = "painspike"

/obj/item/clothing/suit/armor/f13/raider/painspike/Initialize()
	. = ..()
	AddComponent(/datum/component/armor_plate)

/obj/item/clothing/suit/armor/f13/raider/localranger
	name = "Пыльник дезертира"
	desc = "Потертый пыльник НКР, выцветший от песка и времени. На спине большой красный крест."
	icon_state = "localranger"
	item_state = "localranger"

/obj/item/clothing/suit/armor/f13/raider/localranger/Initialize()
	. = ..()
	AddComponent(/datum/component/armor_plate)

/obj/item/clothing/suit/armor/f13/raider/combatduster
    name = "Боевой пыльник"
    desc = "Старая довоенная боевая броня под выветренным пыльником. Похоже, он оснащен металлическими пластинами, заменяющими крошащуюся керамику."
    icon_state = "combatduster"
    item_state = "combatduster"

/obj/item/clothing/suit/armor/f13/raider/combatduster/Initialize()
    . = ..()
    AddComponent(/datum/component/armor_plate)

/obj/item/clothing/suit/armor/f13/raider/iconoclast
	name = "Броня рейдера-иконоборца"
	desc = "Жесткий комплект брони, который, кажется, сделан из радиационного или шахтерского костюма."
	icon_state = "iconoclast"
	item_state = "iconoclast"

/obj/item/clothing/suit/armor/f13/raider/iconoclast/Initialize()
    . = ..()
    AddComponent(/datum/component/armor_plate)

/obj/item/clothing/suit/armor/f13/harbingermantle
	name = "Мантия предвестника"
	desc = "Жуткая шелковая ткань, с которой, кажется, капает густой туман. На самом деле это высокотехнологичное стелс-устройство, усиленное псионически. Конденсаторы и манипуляторы в нем используют квантовую технологию и обладают высокой летучестью."
	icon_state = "scloak"
	item_state = "scloak"
	body_parts_covered = CHEST|GROIN|ARMS|LEGS
	armor = list("melee" = 55, "bullet" = 55, "laser" = 55, "energy" = 55, "bomb" = 45, "bio" = 45, "rad" = 45, "fire" = 45, "acid" = 0)


/obj/item/clothing/suit/armor/f13/raider/iconoclast/Initialize()
	. = ..()
	AddComponent(/datum/component/armor_plate)

/obj/item/clothing/suit/armor/f13/raider/ant
	name = "Костюм антагониста"
	desc = "Точная копия доспехов, прямо из Грогнака Варвара. Сшитый вручную только из тончайшего хитина насекомых, он будет вдохновлять вздохи на следующей костюмированной вечеринке, гарантировано!"
	icon_state = "antsuit"
	item_state = "antsuit"

/obj/item/clothing/suit/armor/f13/raider/ant/Initialize()
	. = ..()
	AddComponent(/datum/component/armor_plate)

/*
/obj/item/clothing/suit/armor/f13/raider/r/
	name = "Усиленная броня рейдера"
	armor = list("melee" = 40, "bullet" = 45, "laser" = 45, "energy" = 45, "bomb" = 45, "bio" = 0, "rad" = 0, "fire" = 30, "acid" = 30)

/obj/item/clothing/suit/armor/f13/raider/r/supafly
	name = "Усиленная броня рейдера супа-флай"
	desc = "Сказочные способности мутантов открылись мне в тот день, когда я поднял свой бамперный меч и сказал:..<br>КЛЯНУСЬ СИЛОЙ НУКА-КОЛЫ, Я ЧЕЛОВЕК-РЕЙДЕР!""
	icon_state = "supafly"
	item_state = "supafly"

/obj/item/clothing/suit/armor/f13/raider/r/sadist
	name = "Усиленная броня рейдера-садиста"
	desc = "Связка металлических чепцов украшенных отрубленными руками на поясе и кожаной пластиной, надетой на левое плечо"
	icon_state = "sadist"
	item_state = "sadist"

/obj/item/clothing/suit/armor/f13/raider/r/blastmaster
	name = "Усиленная броня рейдера-подрывника"
	desc = "Связка кожи, обвязанная вокруг туловища, поддерживает шину, надетую на левое плечо."
	icon_state = "blastmaster"
	item_state = "blastmaster"
	max_heat_protection_temperature = ARMOR_MAX_TEMP_PROTECT
	flash_protect = 2

/obj/item/clothing/suit/armor/f13/raider/r/yankee
	name = "Броня рейдера янки"
	desc = "Комплект брони, изготовленный из защитной одежды футболиста. Вместе мы играем."
	icon_state = "yankee"
	item_state = "yankee"

/obj/item/clothing/suit/armor/f13/raider/r/badlands
	name = "Броня рейдера бесплодных земель"
	desc = "Кожаный топ с патронташем поверх него и ремешками, закрывающими руки"
	icon_state = "badlands"
	item_state = "badlands"

/obj/item/clothing/suit/armor/f13/raider/r/painspike
	name = "Броня рейдера болезненых шипов"
	desc = "Особенно неподъемная броня, даже по меркам рейдеров."
	icon_state = "painspike"
	item_state = "painspike"

/obj/item/clothing/suit/armor/f13/raider/r/iconoclast/
	name = "Броня рейдера-иконоборца"
	desc = "Жесткий комплект брони, который, кажется, сделан из радиационного костюма или шахтерского костюма."
	icon_state = "iconoclast"
	item_state = "iconoclast"
*/

/obj/item/clothing/suit/armor/f13/combat
	name = "Боевая броня"
	desc = "Довоенная военная боевая броня. ащитные пластины покрывают тело, руки и ноги"
	icon_state = "combat_armor"
	item_state = "combat_armor"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	armor = list("melee" = 40, "bullet" = 45, "laser" = 40, "energy" = 40, "bomb" = 50, "bio" = 60, "rad" = 10, "fire" = 60, "acid" = 20)

/obj/item/clothing/suit/armor/f13/brahmin_leather_duster
	name = "Пыльник из кожи брамина"
	desc = "Пыльник, сшитый из дубленой шкуры брамина. Он кажется более прочным, чем обычный пыльник. Кожа устойчива к лазерному излучению."
	icon_state = "brahmin_leather_duster"
	item_state = "brahmin_leather_duster"
	armor = list("melee" = 20, "bullet" = 25, "laser" = 45, "energy" = 35, "bomb" = 35, "bio" = 40, "rad" = 10, "fire" = 60, "acid" = 10)

/obj/item/clothing/suit/armor/f13/rustedcowboy
	name = "Высушенный ковбойский костюм"
	desc = "Ковбойский костюм из обработанной погодой кожи. Вуху, партнер!"
	icon_state = "rusted_cowboy"
	item_state = "rusted_cowboy"
	armor = list("melee" = 22, "bullet" = 24, "laser" = 45, "energy" = 35, "bomb" = 35, "bio" = 40, "rad" = 10, "fire" = 60, "acid" = 10)

/obj/item/clothing/suit/armor/f13/raider/raidercombat
	name = "Боевая броня рейдера"
	desc = "Старая военная довоенная боевая броня. Похоже, она оснащен металлическими пластинами, заменяющими крошащуюся керамику."
	icon_state = "raider_combat"
	item_state = "raider_combat"
	armor = list("melee" = 42, "bullet" = 40, "laser" = 35, "energy" = 30, "bomb" = 50, "bio" = 50, "rad" = 10, "fire" = 60, "acid" = 10)

/obj/item/clothing/suit/armor/f13/raider/raidermetal
	name = "Металлическая броня рейдера"
	desc = "Костюм из сварных, расплавленных металлических пластин. Выглядит громоздким, с отличной защитой."
	icon_state = "raider_metal"
	item_state = "raider_metal"
	armor = list("melee" = 40, "bullet" = 40, "laser" = 35, "energy" = 35, "bomb" = 50, "bio" = 50, "rad" = 10, "fire" = 60, "acid" = 10)
	resistance_flags = FIRE_PROOF

/obj/item/clothing/suit/armor/f13/combatrusted
	name = "Ржавая боевая броня"
	desc = "Старая военная довоенная боевая броня. Этот набор испортился от времени. Композитные пластины выглядят целыми и невредимыми до сих пор."
	icon_state = "rusted_combat_armor"
	item_state = "rusted_combat_armor"
	armor = list("melee" = 38, "bullet" = 43, "laser" = 38, "energy" = 38, "bomb" = 48, "bio" = 58, "rad" = 10, "fire" = 58, "acid" = 18)

/obj/item/clothing/suit/armor/f13/combatrusted/boneyard
	name = "Костяной Панцирь"
	desc = "Старый и пыльный комплект бронежилетов военного образца. На правом плече большая этикетка с надписью \"L. A\" и большими белыми цифрами \"17\""
	icon_state = "rusted_combat_armor"
	item_state = "rusted_combat_armor"
	armor = list("melee" = 40, "bullet" = 45, "laser" = 34, "energy" = 35, "bomb" = 45, "bio" = 58, "rad" = 12, "fire" = 58, "acid" = 18)

/obj/item/clothing/suit/armor/f13/reconarmor
	name = "Разведывательная броня"
	desc = "Старая военная довоенная боевая броня. Она хорошо приспособлен для хорошей всесторонней защиты."
	icon_state = "recon_armor"
	item_state = "recon_armor"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	armor = list("melee" = 40, "bullet" = 45, "laser" = 40, "energy" = 40, "bomb" = 50, "bio" = 60, "rad" = 10, "fire" = 60, "acid" = 20)
	icon = 'icons/fallout/clothing_w/suit.dmi'

/obj/item/clothing/suit/armor/f13/combatmk2
	name = "Боевая броня модель 2"
	desc = "Старая военная довоенная боевая броня, усиленная дополнительными пластинами вокруг рук и ног. Она плотно прилегает."
	icon_state = "combat_armor_mk2"
	item_state = "combat_armor_mk2"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	armor = list("melee" = 45, "bullet" = 55, "laser" = 45, "energy" = 45, "bomb" = 55, "bio" = 65, "rad" = 10, "fire" = 60, "acid" = 20)

/obj/item/clothing/suit/armor/f13/combatmk2ncr
	name = "Боевая броня модель 2"
	desc = "Старая военная броня, модифицированная под нужды НКР."
	icon_state = "combat_armor_mk2_ncr"
	item_state = "combat_armor_mk2_ncr"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	armor = list("melee" = 45, "bullet" = 55, "laser" = 45, "energy" = 45, "bomb" = 55, "bio" = 65, "rad" = 10, "fire" = 60, "acid" = 20)
	icon = 'icons/fallout/clothing_w/suit.dmi'

/obj/item/clothing/suit/armor/f13/gunnerplates
	name = "Броня стрелка"
	desc = "Старая военная довоенная боевая броня. Эта броня имеет череп, нарисованный на спине, символизирующий стрелка."
	icon_state = "GunnerPlates"
	item_state = "GunnerPlates"
	slowdown = 0
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	icon = 'icons/fallout/clothing_w/suit.dmi'
	armor = list("melee" = 45, "bullet" = 55, "laser" = 45, "energy" = 45, "bomb" = 55, "bio" = 65, "rad" = 10, "fire" = 60, "acid" = 20)

/obj/item/clothing/suit/armor/f13/combatmk2leg
	name = "Броня легата модель 2"
	desc = "Старая военная довоенная боевая броня, специально разработанная для легионера легата."
	icon_state = "combat_armor_mk2_leg"
	item_state = "combat_armor_mk2_leg"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	armor = list("melee" = 45, "bullet" = 55, "laser" = 45, "energy" = 45, "bomb" = 55, "bio" = 65, "rad" = 10, "fire" = 60, "acid" = 20)
	icon = 'icons/fallout/clothing_w/suit.dmi'

/obj/item/clothing/suit/armor/f13/combatbosrein
	name = "Укрепленная боевая броня братства"
	desc = "Усиленный боевой костюм довоенного образца, но послевоенного влияния. Он помечен глубоким черным знаком Братства Стали."
	icon_state = "combat_armor_reinforced_bos"
	item_state = "combat_armor_reinforced_bos"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	armor = list("melee" = 45, "bullet" = 55, "laser" = 45, "energy" = 45, "bomb" = 55, "bio" = 65, "rad" = 10, "fire" = 60, "acid" = 20)
	icon = 'icons/fallout/clothing_w/suit.dmi'

/obj/item/clothing/suit/armor/f13/combatrein
	name = "Усиленная боевая броня"
	desc = "Старый военный костюм довоенного образца. Этот был усилен дополнительной обшивкой и сварными металлическими прутьями."
	icon_state = "combat_armor_reinforced"
	item_state = "combat_armor_reinforced"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	armor = list("melee" = 45, "bullet" = 55, "laser" = 45, "energy" = 45, "bomb" = 55, "bio" = 65, "rad" = 10, "fire" = 60, "acid" = 20)
	icon = 'icons/fallout/clothing_w/suit.dmi'

/obj/item/clothing/suit/armor/f13/scoutarmor
	name = "Легкая броня скаута"
	desc = "Довоенный дизайн легкой, готовой к бою брони, предназначенной для легкого использования в полевых условиях или в разведывательных ситуациях, где требуется мобильность."
	icon_state = "scout_armor_lt"
	item_state = "scout_armor_lt"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	armor = list("melee" = 45, "bullet" = 55, "laser" = 45, "energy" = 45, "bomb" = 55, "bio" = 65, "rad" = 10, "fire" = 60, "acid" = 20)

/obj/item/clothing/suit/armor/f13/atomzealot
	name = "Броня фанатика"
	desc = "Броня тех, кто верит в единство."
	icon_state = "atomzealot"
	item_state = "atomzealot"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	armor = list("melee" = 30, "bullet" = 35, "laser" = 40, "energy" = 45, "bomb" = 55, "bio" = 65, "rad" = 100, "fire" = 60, "acid" = 20)

/obj/item/clothing/suit/armor/f13/atomwitch
	name = "Одеяние атомного провидца"
	desc = "Одеяния, которые носят женщины-провидцы единства."
	icon_state = "atomwitch"
	item_state = "atomwitch"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	armor = list("melee" = 10, "bullet" = 15, "laser" = 10, "energy" = 45, "bomb" = 55, "bio" = 65, "rad" = 100, "fire" = 60, "acid" = 20)

/obj/item/clothing/suit/armor/f13/caeserpelt
	name = "Шкура Цезаря"
	desc = "Шкура, достойная самого Цезаря. Аве!"
	icon = 'icons/fallout/clothing_w/suit.dmi'
	icon_state = "caesar_pelt"
	item_state = "caeser_pelt"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	armor = list("melee" = 45, "bullet" = 55, "laser" = 45, "energy" = 45, "bomb" = 55, "bio" = 65, "rad" = 10, "fire" = 60, "acid" = 20)

/obj/item/clothing/suit/armor/f13/combat/dark
	name = "Боевая броня"
	desc = "Старая военная довоенная боевая броня. Теперь темная и очень хрустящей!"
	color = "#514E4E"

/obj/item/clothing/suit/armor/f13/combat/Initialize()
	. = ..()
	AddComponent(/datum/component/spraycan_paintable)
	START_PROCESSING(SSobj, src)

/obj/item/clothing/suit/armor/f13/combat/Destroy()
	STOP_PROCESSING(SSobj, src)
	return ..()

/obj/item/clothing/suit/armor/f13/combat/mk2
	name = "Усиленная боевая броня"
	desc = "Усиленный комплект наручей, поножей и обшивки туловища довоенной конструкции. Этот оснащен дополнительными пластинами."
	icon = 'icons/obj/clothing/suits.dmi'
	icon_state = "combat_armor_mk2"
	item_state = "combat_armor_mk2"
	armor = list("melee" = 45, "bullet" = 50, "laser" = 45, "energy" = 45, "bomb" = 55, "bio" = 60, "rad" = 15, "fire" = 60, "acid" = 30)

/obj/item/clothing/suit/armor/f13/combat/mk2/dark
	name = "Усиленая боевая броня"
	desc = "Усиленная модель на основе довоенной боевой брони. Теперь в темноте, свете и дымном барбекю!"
	color = "#302E2E"

/obj/item/clothing/suit/armor/f13/combat/ncr
	name = "Броня патрульного рейнджера"
	desc = "Набор стандартной брони патрульного рейнджера, обеспечивающий защиту, похожую на костюм довоенной боевой брони. На нем есть маркировка НКР, позволяющая понять, кем он был сделан."
	icon_state = "ncr_patrol"
	item_state = "ncr_patrol"

/obj/item/clothing/suit/armor/f13/combat/brotherhood
	name = "Боевая броня братства"
	desc = "Превосходная боевая броня, изготовленная Братством стали, стандартная для всех рыцарей. На этой красная полоса."
	icon_state = "brotherhood_armor"
	item_state = "brotherhood_armor"
	armor = list("melee" = 40, "bullet" = 45, "laser" = 40, "energy" = 45, "bomb" = 55, "bio" = 60, "rad" = 15, "fire" = 60, "acid" = 30)

/obj/item/clothing/suit/armor/f13/combat/brotherhood/senior
	name = "Боевая броня старшего рыцаря братства"
	desc = "Превосходная боевая броня, изготовленная Братством стали, стандартная для всех старших рыцарей. На этой серебряная полоса и герб Братства Стали."
	icon_state = "brotherhood_armor_senior"
	item_state = "brotherhood_armor_senior"

/obj/item/clothing/suit/armor/f13/combat/knightcap
	name = "Боевая броня рыцаря-капитана"
	desc = "Индивидуальный комплект боевых доспехов, предназначенных для рыцаря-капитана, с золотой вышивкой."
	icon_state = "knightcap"
	item_state = "knightcap"
	armor = list("melee" = 45, "bullet" = 50, "laser" = 45, "energy" = 45, "bomb" = 60, "bio" = 60, "rad" = 15, "fire" = 60, "acid" = 30)

/obj/item/clothing/suit/armor/f13/combat/environmental
	name = "Экологическая броня"
	desc = "Довоенный скафандр, разработанный для использования в сильно загрязненных средах. Ценится в Пустошах за свою способность защищать от биологических угроз."
	icon_state = "environmental_armor"
	item_state = "environmental_armor"
	w_class = WEIGHT_CLASS_BULKY
	gas_transfer_coefficient = 0.9
	permeability_coefficient = 0.5
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	allowed = list(/obj/item/flashlight, /obj/item/tank/internals/emergency_oxygen, /obj/item/tank/internals/plasmaman, /obj/item/geiger_counter, /obj/item/gun)
	armor = list("melee" = 40, "bullet" = 45, "laser" = 45,"energy" = 45, "bomb" = 55, "bio" = 70, "rad" = 100, "fire" = 60, "acid" = 50)
	strip_delay = 60
	equip_delay_other = 60
	flags_inv = HIDEJUMPSUIT

/obj/item/clothing/suit/armor/f13/combat/environmental/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/rad_insulation, RAD_NO_INSULATION, TRUE, FALSE)

/obj/item/clothing/suit/armor/f13/combat/enclave
	name = "Боевая броня анклава"
	desc = "Старый набор боевой довоенной брони, окрашен в черный."
	icon_state = "enclave_armor"
	item_state = "enclave_armor"
	armor = list("melee" = 45, "bullet" = 50, "laser" = 45, "energy" = 75, "bomb" = 70, "bio" = 80, "rad" = 80, "fire" = 80, "acid" = 50)

/obj/item/clothing/suit/armor/f13/combat/remnant
	name = "Боевая броня"
	desc = "Темная броня, обычно используемая в шпионаже или теневых операциях. Носится членами CAG или OS."
	icon_state = "remnant"
	item_state = "remnant"
	armor = list("melee" = 45, "bullet" = 50, "laser" = 45, "energy" = 75, "bomb" = 70, "bio" = 80, "rad" = 80, "fire" = 80, "acid" = 50)

/obj/item/clothing/suit/armor/f13/combat/swat
	name = "Боевая броня спецназа"
	desc = "Изготовленная на заказ версия довоенной боевой брони, уменьшенная и минималистичная для отечественных команд спецназа. Дает отличную защиту, но только для груди."
	icon_state = "armoralt"
	item_state = "armoralt"
	body_parts_covered = CHEST|GROIN
	armor = list("melee" = 45, "bullet" = 50, "laser" = 45, "energy" = 45, "bomb" = 55, "bio" = 60, "rad" = 15, "fire" = 60, "acid" = 30)

/obj/item/clothing/suit/armor/f13/combat/chinese
	name = "Китайская боевая броня"
	desc = "Необычный костюм довоенной китайской боевой брони. Это очень простой и незамысловатый кусок брони, покрывающий переднюю часть пользователя."
	icon_state = "chicom_armor"
	item_state = "chicom_armor"
	armor = list("melee" = 24, "bullet" = 25, "laser" = 20, "energy" = 20, "bomb" = 30, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 10)

/obj/item/clothing/suit/armor/f13/rangercombat
	name = "Боевая броня рейнджера-ветерана"
	desc = "Боевая броня рейнджера-ветерана НКР, или черная броня, состоит из довоенного противоударного костюма L.A.P.D с родео-джинсами под пыльником. Считается одним из самых престижных доспехов, которые можно заработать и носить, находясь на службе у Рейнджеров НКР."
	icon_state = "ranger"
	item_state = "ranger"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS
	armor = list("melee" = 55, "bullet" = 55, "laser" = 55, "energy" = 40, "bomb" = 55, "bio" = 60, "rad" = 60, "fire" = 90, "acid" = 20)

/obj/item/clothing/suit/armor/f13/rangercombat/rigscustom
	name = "Бронированная броня 11-го Голгофского"
	desc = "Костюм из специального военного снаряжения для борьбы с беспорядками и пыльник, который носили члены 11-го бронетанкового полка Голгофы в разделении перед войной. Желтая маркировка нанесена на наплечники и предплечья."
	icon_state = "rigscustom_suit"
	item_state = "rigscustom_suit"
	icon = 'icons/fallout/clothing/suits.dmi'

/obj/item/clothing/suit/armor/f13/rangercombat/mossarmor
	name = "Броня ветерана-патриота"
	desc = "Полный комплект баллистической брони патрульного рейнджера, выветрившейся и выцветшей от времени. Этот набор был сильно модифицирован, с добавлением слоев на открытых или жизненно важных участках и с толстой сыромятной тряпкой, надетой поверх."
	icon_state = "mossarmor"
	item_state = "mossarmor"

/obj/item/clothing/suit/armor/f13/rangercombat/desert
	name = "Броня пустынного рейнджера"
	desc = "Это оригинальная броня, на которой была основана боевая броня рейнджеров НКР. Внушающий благоговейный трепет доспех, используемый легендарными пустынными рейнджерами."
	icon_state = "desert_ranger"
	item_state = "desert_ranger"

/obj/item/clothing/suit/armor/f13/rangercombat/eliteriot
	name = "Элитное противоударное снаряжение"
	desc = "Сильно усиленный комплект брони военного класса, обычно встречающийся в разделении. Переделан для главного Рейнджера."
	icon_state = "elite_riot"
	item_state = "elite_riot"
	armor = list("melee" = 65, "bullet" = 60, "laser" = 60, "energy" = 60, "bomb" = 70, "bio" = 60, "rad" = 60, "fire" = 90, "acid" = 50)
	icon = 'icons/fallout/clothing_w/suit.dmi'


/obj/item/clothing/suit/armor/f13/rangercombat/eliteriot/reclaimed
	name = "Трофейное пальто пустынного рейнджера"
	desc = "Отремонтированный и персонализированный набор снаряжения пустынного рейнджера до объединения."
	icon_state = "reclaimed_desert_ranger"
	item_state = "reclaimed_desert_ranger"
	armor = list("melee" = 30, "bullet" = 30, "laser" = 30, "energy" = 30, "bomb" = 30, "bio" = 30, "rad" = 30, "fire" = 30, "acid" = 30)
	icon = 'icons/fallout/clothing_w/suit.dmi'

/obj/item/clothing/suit/armor/f13/chitinarmor
	name = "Броня из хитина насекомого"
	desc = "Набор легких доспехов из хитина насекомых. Прочный и легкий, он обеспечивает умеренную защиту от травм, позволяя пользователю оставаться мобильным и защищенным от непогоды. Этот комплект, похоже, лишен большей части своего защитного кевлара и обшивки, в основном осталась оболочка."
	icon_state = "insect_armor"
	item_state = "insect_armor"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	armor = list("melee" = 55, "bullet" = 30, "laser" = 25, "energy" = 25, "bomb" = 25, "bio" = 70, "rad" = 65, "fire" = 80, "acid" = 100)
	flags_inv = HIDEJUMPSUIT
	strip_delay = 40
	allowed = list(/obj/item/gun, /obj/item/kitchen, /obj/item/twohanded, /obj/item/claymore, /obj/item/twohanded/spear)

/obj/item/clothing/suit/armor/f13/tribe_armor
	name = "Легкая племенная броня"
	desc = "Легкие доспехи из кожаных полосок и большого плоского куска бирюзы. Стандартная броня для племени Странников."
	icon_state = "tribal_armor"
	item_state = "tribal_armor"
	body_parts_covered = CHEST|GROIN|ARMS
	armor = list("melee" = 45, "bullet" = 30, "laser" = 35, "energy" = 25, "bomb" = 25, "bio" = 70, "rad" = 65, "fire" = 80, "acid" = 100)
	allowed = list(/obj/item/gun, /obj/item/kitchen, /obj/item/twohanded, /obj/item/claymore, /obj/item/twohanded/spear)

/obj/item/clothing/suit/armor/f13/tribe_heavy_armor
	name = "Тяжелая племенная броня"
	desc = "Тяжелая броня из прочной кожи и кусков костей. Такие носят бывалые ветераны племени Странников."
	icon_state = "heavy_tribal_armor"
	item_state = "heavy_tribal_armor"
	armor = list("melee" = 45, "bullet" = 50, "laser" = 45, "energy" = 45, "bomb" = 55, "bio" = 60, "rad" = 15, "fire" = 60, "acid" = 30)
	flags_inv = HIDEJUMPSUIT
	allowed = list(/obj/item/gun, /obj/item/kitchen, /obj/item/twohanded, /obj/item/claymore, /obj/item/twohanded/spear)

/obj/item/clothing/suit/armor/f13/sulphitearmor
	name = "Сульфитная броня"
	desc = "Сочетание того, что кажется металлической броней рейдера, с хорошо оснащенной системой выпуска пламени и керамическим покрытием."
	icon_state = "sulphitearmor"
	item_state = "sulphitearmor"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	armor = list("melee" = 40, "bullet" = 45, "laser" = 40, "energy" = 40, "bomb" = 50, "bio" = 60, "rad" = 10, "fire" = 60, "acid" = 20)

/*
/obj/item/clothing/suit/armor/f13/bmetalarmor
	name = "Металлическая броня"
	desc = "Набор прочных металлических доспехов, сделанных из различных кусков металлолома. Он выглядит тяжелым и затрудняет движение"
	icon_state = "bmetalarmor"
	item_state = "bmetalarmor"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	armor = list("melee" = 60, "bullet" = 40, "laser" = 40, "energy" = 30, "bomb" = 25, "bio" = 30, "rad" = 30, "fire" = 90, "acid" = 0)
	slowdown = 0.75

/obj/item/clothing/suit/armor/f13/kit/terrible
	name = "Обгоревший комплект брони"
	desc = "Несколько футбольных ковриков и ремень. Не поможет ни чем, кроме красивого вида."
	armor = list("melee" = 1, "bullet" = 1, "laser" = 0, "energy" = 0, "bomb" = 1, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)

/obj/item/clothing/suit/armor/f13/leatherarmor/terrible
	name = "Потрепанная кожаная броня"
	desc = "Набор сильно поношенной коженой брони из шкур браминов. Похоже, вот-вот развалится."
	armor = list("melee" = 3, "bullet" = 3, "laser" = 0, "energy" = 0, "bomb" = 3, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)

/obj/item/clothing/suit/armor/f13/bmetalarmor/terrible
	name = "Ржавещающая металлическая броня"
	desc = "Набор ржавых металлических доспехов, сделанных из различных кусков металлолома. Несколько пулевых отверстий ослабили его."
	armor = list("melee" = 5, "bullet" = 5, "laser" = 0, "energy" = 0, "bomb" = 5, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)

/obj/item/clothing/suit/armor/f13/ibmetalarmor
	name = "Отражающая металлическая броня"
	desc = "Набор отражающих металлических доспехов, сделанных из различных кусков металлолома.<br>Будет защищать от пуль и рассеивать лазеры намного лучше, но всё равно замедляет вас."
	icon_state = "bmetalarmor"
	item_state = "bmetalarmor"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	armor = list("melee" = 65, "bullet" = 40, "laser" = 50, "energy" = 60, "bomb" = 25, "bio" = 30, "rad" = 30, "fire" = 90, "acid" = 0)
	slowdown = 0.75
*/
// salvaged/broken power armor, does not require PA training



/obj/item/clothing/suit/armor/f13/power_armor
	w_class = WEIGHT_CLASS_HUGE
	slowdown = 0.4 //+0.1 from helmet = total 0.5
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	//flags_inv = HIDEJUMPSUIT
	item_flags = SLOWS_WHILE_IN_HAND
	clothing_flags = THICKMATERIAL
	equip_delay_self = 50
	equip_delay_other = 60
	strip_delay = 200
	resistance_flags = LAVA_PROOF | FIRE_PROOF | ACID_PROOF
	var/emped = 0
	var/requires_training = TRUE
	flags_inv = HIDEJUMPSUIT|HIDENECK|HIDEEYES|HIDEEARS|HIDEFACE|HIDEMASK|HIDEGLOVES|HIDESHOES
	var/traits = list(TRAIT_STUNIMMUNE, TRAIT_PUSHIMMUNE)

/obj/item/clothing/suit/armor/f13/power_armor/mob_can_equip(mob/user, mob/equipper, slot, disable_warning = 1)
    var/mob/living/carbon/human/H = user
    if(src == H.wear_suit) //Suit is already equipped
        return TRUE
    if (!H.has_trait(TRAIT_PA_WEAR) && slot == SLOT_WEAR_SUIT && requires_training)
        to_chat(user, "<span class='warning'>Вы не прошли специальных тренировок по управлению силовой броней!</span>")
        return 0
    if(slot == SLOT_WEAR_SUIT)
        for(var/trait in traits)
            H.add_trait(trait)
        return ..()

/obj/item/clothing/suit/armor/f13/power_armor/dropped(mob/user)
    var/mob/living/carbon/human/H = user
    for(var/trait in traits)
        H.remove_trait(trait)
    return ..()

/*/obj/item/clothing/suit/armor/f13/power_armor/mob_can_equip(mob/user, mob/equipper, slot, disable_warning = 1)
    var/mob/living/carbon/human/H = user
    if(src == H.wear_suit) //Suit is already equipped
        return TRUE
    if (!H.has_trait(TRAIT_PA_WEAR) && slot == SLOT_WEAR_SUIT && requires_training)
        to_chat(user, "<span class='warning'>Вы не прошли специальных тренировок по управлению силовой броней!</span>")
        return 0
    if(slot == SLOT_WEAR_SUIT)
        H.add_trait(TRAIT_STUNIMMUNE)
        H.add_trait(TRAIT_PUSHIMMUNE)
        H.add_trait(TRAIT_IRONFIST)
        return ..()

/obj/item/clothing/suit/armor/f13/power_armor/dropped(mob/user)
	var/mob/living/carbon/human/H = user
	H.remove_trait(TRAIT_STUNIMMUNE)
	H.remove_trait(TRAIT_PUSHIMMUNE)
	H.remove_trait(TRAIT_IRONFIST)

	return ..()
	*/ //Вернуть после теста

/obj/item/clothing/suit/armor/f13/power_armor/emp_act(mob/living/carbon/human/owner, severity)
	. = ..()
	if(. & EMP_PROTECT_SELF)
		return
	if(emped == 0)
		if(ismob(loc))
			to_chat(loc, "<span class='warning'>Предупреждение: в броне обнаружен электромагнитный всплеск. Перенаправление энергии на аварийные системы.</span>")
			slowdown += 15
			armor = armor.modifyRating(melee = -20, bullet = -20, laser = -20)
			emped = 1
			spawn(50) //5 seconds of being slow and weak
				to_chat(loc, "<span class='warning'>Перенаправление мощности брони прошла успешно. Все системы в рабочем состоянии.</span>")
				slowdown -= 15
				armor = armor.modifyRating(melee = 20, bullet = 20, laser = 20)
				emped = 0

/obj/item/clothing/suit/armor/f13/power_armor/t45b
	name = "Трофейная силовая броня T-45b"
	desc = "Этот комплект силовой брони ранней модели Т-45 с изготовленным на заказ модулем кондиционирования воздуха и снятыми сервомоторами. Громоздкий и медленный, но почти такой же хороший, как настоящий."
	icon_state = "t45bpowerarmor"
	item_state = "t45bpowerarmor"
	armor = list("melee" = 75, "bullet" = 65, "laser" = 35, "energy" = 50, "bomb" = 48, "bio" = 60, "rad" = 30, "fire" = 80, "acid" = 0)
	requires_training = FALSE
	slowdown = 1.35
	traits = list()
	cold_protection = 2547 //Why it here?

/obj/item/clothing/suit/armor/f13/power_armor/ncr
	name = "Трофейная силовая броня НКР"
	desc = "Это комплект силовой брони Т-45b с установленным модулем кондиционирования воздуха, однако ему не хватает сервомоторов для повышения силы пользователя. У этого по краю коричневая краска, а на нагруднике нарисован двухголовый медведь."
	icon_state = "ncrpowerarmor"
	item_state = "ncrpowerarmor"
	armor = list("melee" = 75, "bullet" = 65, "laser" = 35, "energy" = 50, "bomb" = 48, "bio" = 60, "rad" = 30, "fire" = 80, "acid" = 0)
	requires_training = FALSE
	cold_protection = 1046 //Why it here?
	slowdown = 1.35
	traits = list()

/obj/item/clothing/suit/armor/f13/power_armor/raiderpa
	name = "Рейдерская силовая броня T-45b"
	desc = "Это комплект силовой брони Т-45b с частично восстановленной обшивкой. Этот комплект знавал лучшие времена, металлический лом был точечно приварен к шасси."
	icon_state = "raiderpa"
	item_state = "raiderpa"
	armor = list("melee" = 65, "bullet" = 65, "laser" = 35, "energy" = 50, "bomb" = 48, "bio" = 60, "rad" = 30, "fire" = 80, "acid" = 0)
	slowdown = 1.35
	cold_protection = 1046
	heat_protection = 1046
	requires_training = FALSE
	traits = list()

/obj/item/clothing/suit/armor/f13/power_armor/hotrod
	name = "Силовая броня T-45b с подвеской"
	desc = "Это комплект силовой брони Т-45b с частично снятой обшивкой. К наплечникам подведены выхлопные трубы, из которых вырывается пламя."
	icon_state = "t45hotrod"
	item_state = "t45hotrod"
	armor = list("melee" = 60, "bullet" = 65, "laser" = 35, "energy" = 50, "bomb" = 48, "bio" = 60, "rad" = 30, "fire" = 80, "acid" = 0)
	slowdown = 0.65 // No servo, but faster.
	cold_protection = 2246
	heat_protection = 5046
	requires_training = FALSE
	traits = list()

/obj/item/clothing/suit/armor/f13/power_armor/excavator
	name = "Экскаваторная силовая броня"
	desc = "Разработанная компанией Garrahan Mining Co. в сотрудничестве с West Tek, силовая броня экскаваторного класса была разработана для защиты шахтеров от камнепадов и воздушных загрязнений, одновременно увеличивая скорость, с которой они могли работать."
	icon_state = "excavator"
	item_state = "excavator"
	slowdown = 0.5 //+0.1 from helmet
	cold_protection = 2646
	heat_protection = 5046
	traits = list(TRAIT_IRONFIST, TRAIT_STUNIMMUNE, TRAIT_PUSHIMMUNE)
	armor = list("melee" = 60, "bullet" = 55, "laser" = 45, "energy" = 60, "bomb" = 62, "bio" = 100, "rad" = 90, "fire" = 90, "acid" = 0)

/obj/item/clothing/suit/armor/f13/power_armor/t45d
	name = "Силовая броня T-45d"
	desc = "Первоначально разработанный и изготовленный для армии Соединенных Штатов американским оборонным подрядчиком West Tek, силовая броня Т-45d была первой версией силовой брони, которая была успешно применена в бою."
	icon_state = "t45dpowerarmor"
	item_state = "t45dpowerarmor"
	cold_protection = 2546
	traits = list(TRAIT_IRONFIST, TRAIT_STUNIMMUNE, TRAIT_PUSHIMMUNE)
	armor = list("melee" = 65, "bullet" = 60, "laser" = 50, "energy" = 60, "bomb" = 62, "bio" = 100, "rad" = 90, "fire" = 90, "acid" = 0)

/obj/item/clothing/suit/armor/f13/power_armor/t45d/gunslinger
	name = "T-51b стрелка"
	desc = "То, что когда-то было силовой броней Т-51, теперь почти неузнаваемое произведение искусства или мусор, в зависимости от того, кого вы спросите. Почти вся внешняя обшивка была либо удалена, либо снята, чтобы обеспечить максимальную мобильность, а перекрывающиеся нижние пластины защищают пользователя от огня стрелкового оружия. Кто бы это ни проектировал, он имел в виду совершенно конкретную цель: мобильность и эстетика превыше защиты."
	icon_state = "t51bgs"
	item_state = "t51bgs"
	slowdown = 0 //Okay??
	//flags_inv = HIDEJUMPSUIT|HIDENECK
	traits = list(TRAIT_IRONFIST, TRAIT_STUNIMMUNE, TRAIT_PUSHIMMUNE)

/obj/item/clothing/suit/armor/f13/power_armor/t45d/sierra
	name = "Силовая броня сиера"
	desc = "Трофейный комплект силовой брони Т-45d, введенный в эксплуатацию НКР, был сильно модифицирован и украшен головой медведя и замысловатой золотой отделкой. На нагруднике выжжен двухголовый медведь."
	icon_state = "sierra"
	item_state = "sierra"
	traits = list(TRAIT_IRONFIST, TRAIT_STUNIMMUNE, TRAIT_PUSHIMMUNE)

/obj/item/clothing/suit/armor/f13/power_armor/t45d/knightcaptain
	name = "Силовая броня рыцаря-капитана T-45d"
	desc = "Классический комплект силовой брони Т-45d, предназначенный только для использования в вооруженном бою, он символизирует рыцаря-капитана и его место в Братстве. Лидер и маяк структуры в месте, где царит хаос. Все должны сплотиться на его зов, ибо он - рыцарь-капитан, и ваша безопасность - его долг."
	icon_state = "t45dkc"
	item_state = "t45dkc"
	slowdown = 0.16
	traits = list(TRAIT_IRONFIST, TRAIT_STUNIMMUNE, TRAIT_PUSHIMMUNE)
	armor = list("melee" = 65, "bullet" = 60, "laser" = 50, "energy" = 60, "bomb" = 62, "bio" = 100, "rad" = 90, "fire" = 90, "acid" = 0)

/obj/item/clothing/suit/armor/f13/power_armor/t60
	name = "Силовая броня T-60a"
	desc = "Разработанная в начале 2077 года после восстановления Анкориджа, серия силовой брони Т-60 была разработана, чтобы в конечном итоге заменить Т-51б как вершину технологии силовой брони в военном арсенале США."
	icon_state = "t60powerarmor"
	item_state = "t60powerarmor"
	slowdown = 0.16
	cold_protection = 3046
	traits = list(TRAIT_IRONFIST, TRAIT_STUNIMMUNE, TRAIT_PUSHIMMUNE)
	armor = list("melee" = 75, "bullet" = 70, "laser" = 60, "energy" = 70, "bomb" = 82, "bio" = 100, "rad" = 100, "fire" = 95, "acid" = 0)

/obj/item/clothing/suit/armor/f13/power_armor/t51b
	name = "Силовая броня T-51b"
	desc = "Вершина довоенной техники. Этот костюм силовой брони обеспечивает существенную защиту владельцу."
	icon_state = "t51bpowerarmor"
	item_state = "t51bpowerarmor"
	slowdown = 0.15 //+0.1 from helmet = total 0.25
	cold_protection = 6046
	traits = list(TRAIT_IRONFIST, TRAIT_STUNIMMUNE, TRAIT_PUSHIMMUNE)
	armor = list("melee" = 70, "bullet" = 75, "laser" = 55, "energy" = 65, "bomb" = 62, "bio" = 100, "rad" = 99, "fire" = 90, "acid" = 0)

/obj/item/clothing/suit/armor/f13/power_armor/t51b/ultra
	name = "Силовая броня из ультрацита"
	desc = "Вершина довоенной техники. Этот костюм силовой брони обеспечивает существенную защиту владельцу. Теперь с ультрацитовым усилением."
	icon_state = "ultracitepa"
	item_state = "ultracitepa"
	traits = list(TRAIT_IRONFIST, TRAIT_STUNIMMUNE, TRAIT_PUSHIMMUNE)
	slowdown = 0

/obj/item/clothing/suit/armor/f13/power_armor/advanced
	name = "Улучшенная силовая броня"
	desc = "Улучшенная силовая броня, обычно используемая Анклавом.<br>Она состоит из легких металлических сплавов, армированных керамическими отливками в ключевых точках напряжения.<br>Кроме того, как и силовая броня Т-51b, она включает в себя систему рециркуляции, которая может превращать человеческие отходы в питьевую воду, и систему кондиционирования воздуха для удобства пользователя."
	icon_state = "advpowerarmor1"
	item_state = "advpowerarmor1"
	cold_protection = 4046
	traits = list(TRAIT_IRONFIST, TRAIT_STUNIMMUNE, TRAIT_PUSHIMMUNE)
	armor = list("melee" = 80, "bullet" = 80, "laser" = 50, "energy" = 75, "bomb" = 72, "bio" = 100, "rad" = 100, "fire" = 90, "acid" = 0)

/obj/item/clothing/suit/armor/f13/power_armor/advanced/mk2
	name = "Улучшенная силовая броня модель 2"
	desc = "Это усовершенствованная модель усовершенствованной силовой брони, используемая исключительно вооруженными силами анклава, разработанная после Великой войны.<br>Как и его старший брат, стандартная усовершенствованная силовая броня, она матово-черная с угрожающим внешним видом, но с несколькими существенными отличиями - кажется, что она полностью состоит из легких керамических композитов, а не из обычной комбинации металлических и керамических пластин.<br>Кроме того, как и силовая броня Т-51b, она включает в себя систему рециркуляции, которая может превращать человеческие отходы в питьевую воду, и систему кондиционирования воздуха для удобства пользователя."
	icon_state = "advpowerarmor2"
	item_state = "advpowerarmor2"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS
	cold_protection = 4046
	traits = list(TRAIT_IRONFIST, TRAIT_STUNIMMUNE, TRAIT_PUSHIMMUNE)
	armor = list("melee" = 90, "bullet" = 90, "laser" = 60, "energy" = 90, "bomb" = 72, "bio" = 100, "rad" = 100, "fire" = 90, "acid" = 0)

/obj/item/clothing/suit/armor/f13/power_armor/tesla
	name = "Силовая броня тесла"
	desc = "Вариант усовершенствованной силовой брони анклава модели 1, оснащенный устройством Тесла, способным рассеивать большой процент урона, наносимого направленными энергетическими атаками.<br>Поскольку он сделан из сложных композитных материалов, предназначенных для блокирования большей части энергетических повреждений, он заметно слабее против кинетических ударов."
	icon_state = "tesla"
	item_state = "tesla"
	cold_protection = 4046
	traits = list(TRAIT_IRONFIST, TRAIT_STUNIMMUNE, TRAIT_PUSHIMMUNE)
	armor = list("melee" = 35, "bullet" = 35, "laser" = 95, "energy" = 95, "bomb" = 62, "bio" = 100, "rad" = 100, "fire" = 90, "acid" = 0)

/obj/item/clothing/suit/armor/f13/power_armor/midwest
	name = "Силовая броня среднего запада"
	desc = "Этот набор силовой брони когда-то принадлежал средне-западной ветви Братства Стали, теперь проживающей там, где в настоящее время находится ее пользователь."
	icon_state = "midwestpa"
	item_state = "midwestpa"
	traits = list(TRAIT_IRONFIST, TRAIT_STUNIMMUNE, TRAIT_PUSHIMMUNE)
	armor = list("melee" = 65, "bullet" = 60, "laser" = 50, "energy" = 60, "bomb" = 62, "bio" = 100, "rad" = 90, "fire" = 90, "acid" = 0)

/obj/item/clothing/suit/armor/f13/power_armor/midwest/reinforced
	name = "Укреплённая силовая броня среднего запада"
	desc = "Этот набор силовой брони когда-то принадлежал средне-западной ветви Братства Стали, теперь проживающей там, где в настоящее время находится ее пользователь. Этот прошел через процесс химического отверждения, увеличивая его броневые возможности."
	slowdown = 0.15 //+0.1 from helmet = total 0.25
	traits = list(TRAIT_IRONFIST, TRAIT_STUNIMMUNE, TRAIT_PUSHIMMUNE)
	armor = list("melee" = 70, "bullet" = 65, "laser" = 55, "energy" = 65, "bomb" = 62, "bio" = 100, "rad" = 99, "fire" = 90, "acid" = 0)

/obj/item/clothing/suit/armor/f13/legion
	name = "Броня легиона"
	desc = "Броня легиона без опознавательных знаков."
	icon_state = "legrecruit"
	item_state = "legarmor"
	lefthand_file = 'icons/mob/inhands/clothing_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/clothing_righthand.dmi'
	body_parts_covered = CHEST|GROIN|ARMS|LEGS
	allowed = list(/obj/item/gun, /obj/item/claymore, /obj/item/throwing_star/spear, /obj/item/restraints/legcuffs/bola, /obj/item/twohanded)
	armor = list("melee" = 40, "bullet" = 25, "laser" = 10, "energy" = 10, "bomb" = 16, "bio" = 30, "rad" = 20, "fire" = 50, "acid" = 0)

/obj/item/clothing/suit/armor/f13/legion/recruit
	name = "Броня рекрута легиона"
	desc = "Доспехи рекрутов легиона - это обычные легкие доспехи, поставляемые для вербовки легионеров и деканов. Как и большинство доспехов Легиона, он сделан из перепрофилированного спортивного снаряжения, состоящего из защитных плечевых и нагрудных накладок футболиста, усиленных дополнительной кожаной подкладкой и надетых поверх жилета бейсболиста."
	icon_state = "legrecruit"
	slowdown = -0.15

/obj/item/clothing/suit/armor/f13/legion/recruit/scout
	name = "Броня скаута легиона"
	desc = "Модифицированный набор доспехов рекрута со снятым нагрудником, чтобы обеспечить большую маневренность и уменьшить вес."
	icon_state = "legscout"

/obj/item/clothing/suit/armor/f13/legion/prime
	name = "Броня преторианца легиона"
	desc = "Это броня преторианца легиона, поставляемая новобранцам, которые пережили несколько стычек и достойны более прочного снаряжения."
	icon_state = "legprime"
	slowdown = -0.13
	armor = list("melee" = 50, "bullet" = 35, "laser" = 15, "energy" = 15, "bomb" = 25, "bio" = 40, "rad" = 20, "fire" = 60, "acid" = 0)

/obj/item/clothing/suit/armor/f13/legion/vet
	name = "Броня ветерана легиона"
	desc = "Доспехи, которые носят ветераны-легионеры, доказавшие свое боевое мастерство. Этот доспех прочнее, чем у предыдущих рангов."
	icon_state = "legvet"
	slowdown = -0.1
	armor = list("melee" = 60, "bullet" = 40, "laser" = 25, "energy" = 15, "bomb" = 25, "bio" = 50, "rad" = 20, "fire" = 70, "acid" = 0)

/obj/item/clothing/suit/armor/f13/legion/vet/jonesarmormain
	name = "Lorica Articuli"
	desc = "Обновленный комплект изношенной ветеранской брони. Все еще сделанный из кожи и стали, он относительно прост, но без изменений. На металле выгравированы изысканные узоры и надписи, некоторые из которых настолько малы, что вам понадобится увеличительное стекло, чтобы хорошо рассмотреть. Тем не менее, он обеспечивает заметное улучшение эстетики, хотя гравюры не дают никакого тактического преимущества. Наплечники покрыты латунью и украшены гравировкой, что обеспечивает идеальное сочетание защиты и эстетики. Прямо под шеей на доспехе надежно закреплен абсолютно красивый драгоценный камень. Опытному глазу или осведомленному уму это кажется цирконием. Красный циркон. Стальной пояс с латунным покрытием проходит по средней части брони. \"Victoria Odds Contra Omnes\" выгравирована на поясе относительно крупными и причудливыми буквами, заметными без необходимости вставать на колени и нюхать промежность владельца, чтобы увидеть"
	icon_state = "jonesarmormain"
	item_state = "jonesarmormain"

/obj/item/clothing/suit/armor/f13/legion/heavy
	name = "Броня ветерана-декана легиона"
	desc = "Тяжелые металлические доспехи, которые носят деканы-ветераны легиона."
	icon_state = "legmetal"
	item_state = "legmetal"
	slowdown = -0.1
	armor = list("melee" = 65, "bullet" = 45, "laser" = 25, "energy" = 15, "bomb" = 25, "bio" = 50, "rad" = 20, "fire" = 70, "acid" = 0)

/obj/item/clothing/suit/armor/f13/legion/vet/explorer
	name = "Броня исследователя легиона"
	desc = "Модифицированный набор ветеранских доспехов, большая часть металла заменена полосками ламинированного льна и кожи."
	icon_state = "legexplorer"

/obj/item/clothing/suit/armor/f13/legion/vet/vexil
	name = "Броня вексилария легиона"
	slowdown = -0.12
	desc = "Броня, по-видимому, основанная на доспехах ветеранов легиона, с добавлением круглых металлических пластин, прикрепленных к туловищу, а также знамени с изображением флага Легиона, надетого на спине."
	icon_state = "legvexil"

/obj/item/clothing/suit/armor/f13/legion/venator
	name = "Броня венатора легиона"
	desc = "Доспехи, похоже, основанные на доспехах ветеранов легиона, с добавлением наручей и кольчужной юбки."
	icon_state = "legvenator"
	armor = list("melee" = 60, "bullet" = 50, "laser" = 30, "energy" = 15, "bomb" = 25, "bio" = 50, "rad" = 20, "fire" = 70, "acid" = 0)

/obj/item/clothing/suit/armor/f13/legion/vet/orator
	name = "Броня оратора легиона"
	desc = "The armor appears to be based off of a suit of Legion veteran armor, with the addition of bracers, a chainmail skirt, and large pauldrons.  A tabard emblazoned with the bull is loosely draped over the torso."
	icon_state = "legheavy"
	armor = list("melee" = 65, "bullet" = 50, "laser" = 30, "energy" = 15, "bomb" = 25, "bio" = 50, "rad" = 20, "fire" = 70, "acid" = 0)

/obj/item/clothing/suit/armor/f13/legion/centurion
	name = "Броня центуриона легиона"
	desc = "Доспехи центуриона Легиона - это, безусловно, самые прочные доспехи, доступные Легиону Цезаря. Доспехи состоят из других частей доспехов, взятых из доспехов поверженных противников владельца в бою."
	icon_state = "legcenturion"
	slowdown = -0.13
	armor = list("melee" = 60, "bullet" = 45, "laser" = 30, "energy" = 35, "bomb" = 39, "bio" = 60, "rad" = 20, "fire" = 80, "acid" = 0)

/obj/item/clothing/suit/armor/f13/legion/palacent
	name = "Доспех центуриона-убийцы паладинов"
	desc = "Доспехи Центуриона, который победил одного или нескольких паладинов Братства, добавив части своих трофеев к своей собственной защите. Символ легиона грубо нарисован на этом некогда великолепном доспехе."
	icon_state = "palacent"
	armor = list("melee" = 75, "bullet" = 50, "laser" = 35, "energy" = 35, "bomb" = 39, "bio" = 60, "rad" = 20, "fire" = 80, "acid" = 0)

/obj/item/clothing/suit/armor/f13/legion/palacent/custom_excess
	name = "Доспехи чемпиона Канаба"
	desc = "Доспехи чемпиона и завоевателя города в штате Юта по имени Канаб. Броня состоит из кусков силовой брони и довоенного снаряжения для спецназа, щитки голени окрашены в темно-малиновый цвет, а наплечник силовой брони имеет красную отделку. Символ Феоникса тщательно выгравирован и нарисован на нагруднике... Интересно, что это значит?"
	icon_state = "palacent_excess"
	item_state = "palacent_excess"

/obj/item/clothing/suit/armor/f13/legion/rangercent
	name = "Броня центуриона-охотника на рейнджеров"
	desc = "Доспехи, собранные за многие годы смертью бесчисленных рейнджеров НКР. Он жертвует защитой для скорости."
	icon_state = "rangercent"
	item_state = "rangercent"
	slowdown = -0.2
	armor = list("melee" = 55, "bullet" = 40, "laser" = 25, "energy" = 35, "bomb" = 39, "bio" = 60, "rad" = 20, "fire" = 80, "acid" = 0)

/obj/item/clothing/suit/armor/f13/legion/legate
	name = "Доспехи Легата Легиона"
	desc = "Броня, по-видимому, представляет собой полный костюм из стали тяжелого калибра и обеспечивает полную защиту тела. У него также есть плащ в отличном состоянии, но сама броня имеет многочисленные боевые шрамы, а у шлема отсутствует половина левого рога. Костюм легата выглядит оригинально изготовленным, в отличие от других доспехов Легиона, которые состоят из перепрофилированного довоенного спортивного снаряжения."
	icon_state = "leglegat"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS
	armor = list("melee" = 85, "bullet" = 60, "laser" = 40, "energy" = 40, "bomb" = 45, "bio" = 60, "rad" = 20, "fire" = 80, "acid" = 0)

/obj/item/clothing/suit/armor/f13/roma
	name = "Броня римского легионера"
	desc = "Хорошо выкованный костюм lorica segmentata, стандартный для всех легионеров и Ауксилий в римском легионе."
	icon_state = "roma_armor"
	item_state = "legarmor"
	lefthand_file = 'icons/mob/inhands/clothing_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/clothing_righthand.dmi'
	body_parts_covered = CHEST|GROIN
	allowed = list(/obj/item/gun, /obj/item/claymore, /obj/item/throwing_star/spear, /obj/item/restraints/legcuffs/bola, /obj/item/twohanded)
	armor = list("melee" = 60, "bullet" = 40, "laser" = 25, "energy" = 15, "bomb" = 25, "bio" = 50, "rad" = 20, "fire" = 70, "acid" = 0)
	slowdown = -0.1

/obj/item/clothing/suit/armor/f13/ncrarmor
	name = "Патрульный бронежилет НКР"
	desc = "Стандартный бронежилет войск НКР."
	icon_state = "ncr_infantry_vest"
	item_state = "ncr_infantry_vest"
	body_parts_covered = CHEST|GROIN|ARMS|LEGS
	armor = list("melee" = 40, "bullet" = 35, "laser" = 20, "energy" = 20, "bomb" = 25, "bio" = 30, "rad" = 20, "fire" = 60, "acid" = 0)

/obj/item/clothing/suit/armor/f13/ncrarmor/mantle
	name = "Бронежилет-мантия НКР"
	desc = "Стандартный бронежилет войск НКР с накидкой на плечах."
	icon_state = "ncr_standard_mantle"
	item_state = "ncr_standard_mantle"
	armor = list("melee" = 50, "bullet" = 40, "laser" = 30, "energy" = 20, "bomb" = 25, "bio" = 30, "rad" = 20, "fire" = 60, "acid" = 0)

/obj/item/clothing/suit/armor/f13/ncrarmor/reinforced
	name = "Усиленный патрульный бронежилет НКР"
	desc = "Стандартный бронежилет войск НКР, усиленный паховой накладкой."
	icon_state = "ncr_reinforced_vest"
	item_state = "ncr_reinforced_vest"
	armor = list("melee" = 50, "bullet" = 40, "laser" = 30, "energy" = 20, "bomb" = 25, "bio" = 30, "rad" = 20, "fire" = 60, "acid" = 0)

/obj/item/clothing/suit/armor/f13/ncrarmor/mantle/reinforced
	name = "Усиленный бронежилет-мантия НКР"
	desc = "Стандартный бронежилет войск НКР, усиленный паховой накладкой и мантией."
	icon_state = "ncr_reinforced_mantle"
	item_state = "ncr_reinforced_mantle"
	armor = list("melee" = 55, "bullet" = 45, "laser" = 35, "energy" = 20, "bomb" = 30, "bio" = 30, "rad" = 20, "fire" = 60, "acid" = 0)

/obj/item/clothing/suit/armor/f13/ncrarmor/labcoat
	name = "Медицинский лабораторный халат НКР"
	desc = "Бронированный лабораторный халат, выдаваемый медицинским офицерам НКР. Это стандартный белый лабораторный халат с вышитым на груди именем медика и двухголовым медведем на плече."
	icon_state = "ncr_labcoat"
	item_state = "ncr_labcoat"
	armor = list("melee" = 50, "bullet" = 40, "laser" = 30, "energy" = 20, "bomb" = 25, "bio" = 30, "rad" = 20, "fire" = 60, "acid" = 0)
	allowed = list(/obj/item/gun, /obj/item/analyzer, /obj/item/stack/medical, /obj/item/dnainjector, /obj/item/reagent_containers/dropper, /obj/item/reagent_containers/syringe, /obj/item/reagent_containers/hypospray, /obj/item/healthanalyzer, /obj/item/flashlight/pen, /obj/item/reagent_containers/glass/bottle, /obj/item/reagent_containers/glass/beaker, /obj/item/reagent_containers/pill, /obj/item/storage/pill_bottle, /obj/item/paper, /obj/item/melee/classic_baton/telescopic, /obj/item/soap, /obj/item/sensor_device, /obj/item/tank/internals/emergency_oxygen, /obj/item/tank/internals/plasmaman)

/obj/item/clothing/suit/armor/f13/ncrarmor/captain
	name = "Усиленный офицерский жилет НКР"
	desc = "Сильно усиленный комплект брони с мантией НКР, броня была сильно залатана и снабжена керамическими вставками в жизненно важных областях для защиты владельца. Судя по дизайну, он принадлежит высокопоставленному офицеру НКР."
	icon_state = "ncr_captain_armour"
	item_state = "ncr_captain_armour"
	armor = list("melee" = 60, "bullet" = 50, "laser" = 40, "energy" = 20, "bomb" = 50, "bio" = 30, "rad" = 20, "fire" = 60, "acid" = 0)

/obj/item/clothing/suit/armor/f13/ncrarmor/scout
	name = "Боевая броня 3-его скаутского батальона НКР"
	desc = "Специализированный вариант боевой брони, выдаваемый членам 3-го скаутского батальона."
	icon_state = "scoutarmor"
	item_state = "scoutarmor"
	armor = list("melee" = 50, "bullet" = 40, "laser" = 30, "energy" = 20, "bomb" = 25, "bio" = 30, "rad" = 30, "fire" = 60, "acid" = 0)

/obj/item/clothing/suit/armor/f13/ncrarmor/scout/veteran
	name = "Боевая броня ветерана 3-его скаутского батальона НКР"
	desc = "Специализированный вариант боевой брони, выдаваемый ветеранам 3-го скаутского батальона."
	armor = list("melee" = 55, "bullet" = 45, "laser" = 35, "energy" = 20, "bomb" = 25, "bio" = 30, "rad" = 30, "fire" = 60, "acid" = 0)

/obj/item/clothing/suit/armor/f13/ncrarmor/scout/officer
	name = "Боевая броня офицера 3-его скаутского батальона НКР"
	icon_state = "scout_armor_lt"
	item_state = "scout_armor_lt"
	desc = "Специализированный вариант боевой брони выдаваемый офицерам 3-го разведывательного батальона."
	armor = list("melee" = 60, "bullet" = 50, "laser" = 40, "energy" = 20, "bomb" = 25, "bio" = 30, "rad" = 30, "fire" = 60, "acid" = 0)

/obj/item/clothing/suit/armor/f13/ncrcfjacket
	name = "Куртка NCRCF"
	icon_state = "ncrcfjacket"
	item_state = "ncrcfjacket"
	desc = "Дешевая, стандартная брезентовая куртка бирюзового цвета, выдаваемая бедным сосункам, оказавшимся в заднице судебной системы НКР."
	armor = list("melee" = 10, "bullet" = 5, "laser" = 0, "energy" = 0, "bomb" = 15, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)

/obj/item/clothing/suit/armor/f13/ghostechoe
	name = "Драное пальто миротворца"
	desc = "Старое пальто, принадлежавшее когда-то пустынному Рейнджеру. Оно было лишено самой полезной защиты и видело лучшие дни. Грубый символ мира был нарисован на спине белым цветом."
	icon_state = "ghostechoe"
	item_state = "ghostechoe"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS
	armor = list("melee" = 10, "bullet" = 16, "laser" = 0, "energy" = 0, "bomb" = 16, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)

/obj/item/clothing/suit/armor/f13/headscribe
    name = "Роба старшего писца Братства"
    desc = "Красное суконное одеяние с золотой отделкой, которое носит главный писец ордена."
    icon_state = "headscribe"
    item_state = "headscribe"
    body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS
    armor = list("melee" = 15, "bullet" = 16, "laser" = 0, "energy" = 0, "bomb" = 16, "bio" = 0, "rad" = 0, "fire" = 10, "acid" = 0)

/obj/item/clothing/suit/armor/f13/battlecoat
	name = "Боевой плащ"
	desc = "Мягкое кожаное пальто с золотыми пуговицами. Для стиля, а не для защиты."
	icon_state = "maxson_battlecoat"
	item_state = "maxson_battlecoat"
	body_parts_covered = CHEST
	armor = list("melee" = 15, "bullet" = 10, "laser" = 15, "energy" = 0, "bomb" = 5, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	allowed = list(/obj/item/gun)

/obj/item/clothing/suit/toggle/armor
	allowed = null
	body_parts_covered = CHEST
	cold_protection = CHEST|GROIN
	min_cold_protection_temperature = ARMOR_MIN_TEMP_PROTECT
	heat_protection = CHEST|GROIN
	max_heat_protection_temperature = ARMOR_MAX_TEMP_PROTECT
	strip_delay = 60
	equip_delay_other = 40
	max_integrity = 250
	resistance_flags = NONE
	armor = list("melee" = 25, "bullet" = 25, "laser" = 16, "energy" = 16, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 50)
	allowed = list(/obj/item/gun)
	togglename = "collar"

/obj/item/clothing/suit/toggle/armor/f13/rangerrecon
	name = "Пыльник рейнджера-разведчика"
	desc = "Более толстый, чем обычно, пыльник, который носят разведчики НКР в полевых условиях. Он не сильно бронирован, но позволяет легко передвигается и обеспечивает отличную защиту от суровых условий пустыни."
	icon_state = "duster_recon"
	item_state = "duster_recon"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	armor = list("melee" = 35, "bullet" = 30, "laser" = 20, "energy" = 20, "bomb" = 25, "bio" = 30, "rad" = 20, "fire" = 60, "acid" = 0)
	slowdown = -0.1

/obj/item/clothing/suit/toggle/armor/f13/rangercustomdark
	name = "Потрепанный пыльник разведчика"
	desc = "Более толстый, чем обычно, пыльник, который носят рейнджеры на поле боя. Этот был выкрашен в черный цвет и, кажется, немного более тяжело бронирован."
	icon_state = "duster_recon_custom"
	item_state = "duster_recon_custom"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	armor = list("melee" = 35, "bullet" = 30, "laser" = 20, "energy" = 20, "bomb" = 25, "bio" = 30, "rad" = 20, "fire" = 60, "acid" = 0)
	slowdown = -0.1

/obj/item/clothing/suit/armor/f13/trailranger
	name = "Нагрудник рейнджера"
	desc = "Причудливая маленькая куртка и шарф, которые носят рейнджеры-следопыты НКР."
	icon_state = "cowboyrang"
	item_state = "cowboyrang"
	armor = list("melee" = 40, "bullet" = 35, "laser" = 20, "energy" = 20, "bomb" = 25, "bio" = 30, "rad" = 20, "fire" = 60, "acid" = 0)
	slowdown = -0.14

/obj/item/clothing/suit/armor/f13/town
	name = "Городской плащ"
	desc = "Неприметный черный плащ."
	icon_state = "towntrench"
	item_state = "hostrench"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	armor = list("melee" = 40, "bullet" = 30, "laser" = 20, "energy" = 40, "bomb" = 25, "bio" = 40, "rad" = 30, "fire" = 80, "acid" = 0)

/obj/item/clothing/suit/armor/f13/town/mayor
	name = "Плащ мэра"
	desc = "Символ авторитета мэра(или её недостатка)"

/obj/item/clothing/suit/armor/f13/town/sheriff
	name = "Плащ шерифа"
	desc = "Плащ, который не пытается скрыть под ним боевую броню всего тела."
	icon_state = "towntrench_heavy"
	armor = list("melee" = 60, "bullet" = 50, "laser" = 30, "energy" = 40, "bomb" = 25, "bio" = 40, "rad" = 40, "fire" = 80, "acid" = 0)

/obj/item/clothing/suit/armor/f13/town/embroidered
	name = "Вышитый плащ"
	desc = "Изготовленный на заказ бронированный плащ с удлиненным и поднятым воротником. На спине вышит цветок, хотя цвет немного поблек."
	icon_state = "towntrench_special"
	item_state = "towntrench_special"
	armor = list("melee" = 50, "bullet" = 40, "laser" = 25, "energy" = 40, "bomb" = 25, "bio" = 40, "rad" = 35, "fire" = 80, "acid" = 0)

/obj/item/clothing/suit/armor/f13/town/deputy
	name = "Плащ депутата"
	desc = "Бронированный плащ с дополнительными наплечниками, нагрудник и наколенники."
	icon_state = "towntrench_medium"
	armor = list("melee" = 50, "bullet" = 40, "laser" = 25, "energy" = 40, "bomb" = 25, "bio" = 40, "rad" = 35, "fire" = 80, "acid" = 0)

/obj/item/clothing/suit/armor/f13/vaquero
	name = "Костюм Вакеро"
	desc = "Богато украшенный костюм мексиканских стрелков на Старом Западе, подбитый кожей для дополнительной защиты."
	icon_state = "vaquero"
	item_state = "vaquero"
	armor = list("melee" = 30, "bullet" = 30, "laser" = 15, "energy" = 10, "bomb" = 15, "bio" = 0, "rad" = 0, "fire" = 30, "acid" = 0)
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	flags_inv = HIDEJUMPSUIT

/obj/item/clothing/suit/armor/f13/harpercoat
	name = "Пальто преступника"
	desc = "Боевой пыльник"
	icon_state = "harperduster"
	armor = list("melee" = 50, "bullet" = 40, "laser" = 25, "energy" = 40, "bomb" = 25, "bio" = 40, "rad" = 35, "fire" = 80, "acid" = 0)

/obj/item/clothing/suit/armor/f13/raider/reptiliatenebris
	name = "Reptilia Tenebris"
	desc = "Старая военная довоенная боевая броня под выветренным пыльником. Похоже, он оснащен металлическими пластинами, чтобы заменить крошащуюся керамику. Цвет этого пыльника смывался снова и снова, придавая ему более блеклый вид, как будто время сильно сжало его. Наряду с этим, пыльник был окрашен в глубокий оттенок серого, а бронежилет - в более темный оттенок зеленого."
	icon_state = "reptiliatenebris"
	item_state = "reptiliatenebris"

/obj/item/clothing/suit/armor/f13/raider/reptiliatenebris/Initialize()
    . = ..()
    AddComponent(/datum/component/armor_plate)