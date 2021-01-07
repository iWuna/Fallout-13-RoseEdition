/obj/item/clothing/under/f13
	armor = list(melee = 0, bullet = 0, laser = 0, energy = 0, bomb = 0, bio = 0, rad = 0, fire = 0, acid = 0) //Base type has no armor as well
	body_parts_covered = CHEST|GROIN|ARMS|LEGS
	fitted = NO_FEMALE_UNIFORM
	can_adjust = FALSE
	resistance_flags = NONE
	has_sensor = NO_SENSORS //kek

/obj/item/clothing/under/f13/female
	fitted = FEMALE_UNIFORM_TOP

//Vault

/obj/item/clothing/under/f13/vault
	name = "Комбинезон убежища"
	desc = "Синий комбинезон с распечатанным на нём жёлтым логотипом убежища."
	icon_state = "vault"
	item_state = "vault"
	item_color = "vault"
	can_adjust = TRUE
	has_sensor = LOCKED_SENSORS
	sensor_mode = SENSOR_COORDS
	random_sensor = FALSE
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 30, "fire" = 20, "acid" = 50)

/obj/item/clothing/under/f13/vault13
	name = "Комбинезон убежища 113"
	desc = "Синий комбинезон с распечатанным на нём логотипом убежища 113."
	icon_state = "vault13"
	item_state = "vault13"
	item_color = "vault13"
	can_adjust = TRUE
	has_sensor = LOCKED_SENSORS
	sensor_mode = SENSOR_COORDS
	random_sensor = FALSE
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 30, "fire" = 20, "acid" = 50)

//NCR

/obj/item/clothing/under/f13/ncr
	name = "Пустынная форма НКР"
	desc = "Комлпект стандартной униформы солдата Новой Калифорнийской Республики."
	icon_state = "ncr_uniform"
	can_adjust = TRUE
	item_state = "ncr_uniform"
	item_color = "ncr_uniform"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 30, "fire" = 20, "acid" = 50)

/obj/item/clothing/under/f13/ncr/officer
	name = "Пустынная форма офицера НКР"
	desc = "Комплект офицерской формы НКР."

/obj/item/clothing/under/f13/caravaneer
	name = "Костюм караванщика"
	desc = "Мягкий костюм, используемый караванщиками НКР."
	icon_state = "caravaneer"
	item_state = "caravaneer"
	item_color = "caravaneer"

/obj/item/clothing/under/f13/ncr/scout
	name = "Форма скаута НКР"
	desc = "Стандартная служебная форма для членов третьего разведывательного батальона."
	icon_state = "scoutclothes"
	item_state = "scoutclothes"
	item_color = "scoutclothes"
	can_adjust = FALSE

/obj/item/clothing/under/f13/ncrcf
	name = "Форма исправительного учерждения НКР"
	desc = "Дешёвые, поношенные синяя рубашка и брюки. На обороте красуются инициалы усправительного учерждения НКР, напоминающие о том, кому ты принадлежишь."
	icon_state = "ncrcf"
	item_state = "ncrcf"
	item_color = "ncrcf"

//Settlers

/obj/item/clothing/under/f13/brahminm
	name = "Костюм из кожи брамина"
	desc = "Простой костюм из белой рубашки и заплатанных брюк с Y-образной подтяжкой."
	icon_state = "brahmin_m"
	item_state = "brahmin_m"
	item_color = "brahmin_m"

/obj/item/clothing/under/f13/brahminf
	name = "Костюм из кожи брамина"
	desc = "Простой костюм из белой рубашки и заплатанных брюк с Y-образной подтяжкой."
	icon_state = "brahmin_f"
	item_state = "brahmin_f_s"
	item_color = "brahmin_f"

/obj/item/clothing/under/f13/doctorm
	name = "Костюм доктора"
	desc = "Белая футболка с коричневыми брюками, сшитая для тех, кто дорожит жизнью."
	icon_state = "doctor_m"
	item_state = "doctor_m"
	item_color = "doctor_m"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 30, "fire" = 20, "acid" = 50)

/obj/item/clothing/under/f13/doctorf
	name = "Костюм доктора"
	desc = "Белая футболка с коричневыми брюками, сшитая для тех, кто дорожит жизнью."
	icon_state = "doctor_f"
	item_state = "doctor_f"
	item_color = "doctor_f"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 30, "fire" = 20, "acid" = 50)

/obj/item/clothing/under/f13/caravan
	name = "Штаны караванщика"
	desc = "Толстые коричневые штаны караванщика"
	icon_state = "caravan"
	item_state = "caravan"
	item_color = "caravan"

/obj/item/clothing/under/f13/settler
	name = "Костюм поселенца"
	desc = "Грубо сшитый халат с поясом, надетым поверх серых штанов"
	icon_state = "settler"
	item_state = "settler"
	item_color = "settler"

//The City

/obj/item/clothing/under/f13/ranger
	name = "Костюм рейнджера"
	desc = "Простая деревенская одежда для закалённого слуги закона."
	icon_state = "ranger"
	item_state = "ranger"
	item_color = "ranger"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 30, "fire" = 20, "acid" = 50)

/obj/item/clothing/under/f13/trailranger
	name = "Костюм рейнджера"
	desc = "Простая деревенская одежда для заколённого слуги закона. Часто носили рейнджеры НКР."
	icon_state = "cowboyrang"
	item_state = "cowboyrang"
	item_color = "cowboyrang"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 30, "fire" = 20, "acid" = 50)

/obj/item/clothing/under/f13/patrolranger
	name = "Костюм рейнджера-патрульного"
	desc = "Пара коричневых брюк и дышащая рубашка, предназначенные для ношения под броней патрульного рейнджера НКР."
	icon_state = "patrolranger"
	item_state = "patrolranger"
	item_color = "patrolranger"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 30, "fire" = 20, "acid" = 50)

/obj/item/clothing/under/f13/vetranger
	name = "Костюм рейнджера-ветерана"
	desc = "Простая деревенская одежда для закалённого рейнджера."
	icon_state = "vetranger"
	item_state = "vetranger"
	item_color = "vetranger"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 40, "fire" = 30, "acid" = 70)

/obj/item/clothing/under/f13/rustic
	name = "Деревенский костюм"
	desc = "Простая деревенская одежда для жизни в пустошах."
	icon_state = "vetranger"
	item_state = "rustictown"
	item_color = "rustictown"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 30, "fire" = 20, "acid" = 50)

/obj/item/clothing/under/f13/sheriff
	name = "Костюм шерифа"
	desc = "Символ закона и цивилизации, чёрный жилет поверх хорошо накрахмаленной белой рубашки."
	icon_state = "vest_and_slacks"
	item_state = "vest_and_slacks"
	item_color = "vest_and_slacks"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 30, "fire" = 20, "acid" = 50)

/obj/item/clothing/under/f13/sleazeball
	name = "Костюм акулы бизнеса"
	desc = "Символ наживы и коррупции - черный жилет поверх хорошо накрахмаленной белой рубашки."
	icon_state = "vest_and_slacks"
	item_state = "vest_and_slacks"
	item_color = "vest_and_slacks"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 30, "fire" = 20, "acid" = 50)

/obj/item/clothing/under/f13/follower
	name = "Костюм гражданина"
	desc = "Цивилизованная, хорошо ухоженная одежда, которую носят хорошие граждане"
	icon_state = "follower"
	item_state = "follower"
	item_color = "follower"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 50, "fire" = 20, "acid" = 50)

/obj/item/clothing/under/f13/medic
	name = "Костюм доктора"
	desc = "Полностью белый костюм, достойный доктора"
	icon_state = "chef"
	item_state = "chef"
	item_color = "chef"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 30, "fire" = 20, "acid" = 50)

//Brotherhood of Steel

/obj/item/clothing/under/f13/recon
	name = "Костюм разведчика"
	desc = "ГГерметичный абсетовый комбинезон, покрывающий всё тело"
	icon_state = "recon"
	item_state = "recon"
	item_color = "recon"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 40, "fire" = 30, "acid" = 80)

//Legion

/obj/item/clothing/under/f13/legskirt
	name = "Форма легионера"
	desc = "Кожчаная юбка и толстая рубашка из хлопка с длинными рукавами."
	icon_state = "legskirt"
	item_state = "legskirt"
	item_color = "legskirt"
	var/sleeves_adjusted = 0
	lefthand_file = 'icons/mob/inhands/clothing_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/clothing_righthand.dmi'
	alt_covers_chest = TRUE
	can_adjust = TRUE

/obj/item/clothing/under/f13/legskirt/tac //whoaaa mama humina humina
	name = "неподходящая \"тактическая\" боевая юбка"
	desc = "Кожаная юбка под толстой черной рубашкой из хлопка с длинными рукавами. Идеально подходит для оперативников, предпочитающих неисправности гардероба."
	icon_state = "tacskirt"
	item_state = "tacskirt"
	item_color = "tacskirt"

/obj/item/clothing/under/f13/priestess
	name = "Роба жрицы"
	desc = "Роба, которую носили жрицы Марса."
	icon_state = "priestess"
	item_state = "priestess"
	item_color = "priestess"

/obj/item/clothing/under/f13/pmarsrobe
	name = "Роба жрицы Марса"
	desc = "Красная мантия, украшенная птичьими перьями для жрицы Марса."
	icon_state = "pmars_robe"
	item_state = "pmars_robe"
	armor = list(melee = 0, bullet = 0, laser = 20, energy = 20, bomb = 5, bio = 0, rad = 0, fire = 100, acid = 0)
	resistance_flags = LAVA_PROOF | FIRE_PROOF
	body_parts_covered = CHEST|GROIN|ARMS|LEGS
	flags_inv = HIDEGLOVES|HIDESHOES

//Roma Legion

/obj/item/clothing/under/f13/romaskirt
	name = "Форма римского легонера"
	desc = "Изношенная и поношенная пара униформы, оставшаяся от службы легионера Цезарю."
	icon_state = "roma_legion"
	item_state = "roma_legion"
	item_color = "roma_legion"

/obj/item/clothing/under/f13/romaskirt/auxilia
	name = "Форма римского ауксилии"
	desc = "Черная юбка и толстая рубашка из хлопка с длинным рукавом."
	icon_state = "roma_auxilia"
	item_state = "roma_auxilia"
	item_color = "roma_auxilia"
	var/sleeves_adjusted = 0
	lefthand_file = 'icons/mob/inhands/clothing_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/clothing_righthand.dmi'
	alt_covers_chest = TRUE
	can_adjust = TRUE

// Generic

/obj/item/clothing/under/f13/machinist
	name = "Костюм машиниста"
	desc = "Старомодная одежда машиниста."
	icon_state = "machinist"
	item_state = "machinist"
	item_color = "machinist"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 30, "fire" = 20, "acid" = 50)

/obj/item/clothing/under/f13/lumberjack
	name = "Костюм лесоруба"
	desc = "Старомодная одежда лесоруба."
	icon_state = "lumberjack"
	item_state = "lumberjack"
	item_color = "lumberjack"

/obj/item/clothing/under/f13/shiny
	name = "Блестящий костюм"
	desc = "Идеальный наряд для храброго и безрассудного ковбоя. Блестящий!"
	icon_state = "shiny"
	item_state = "shiny"
	item_color = "shiny"

/obj/item/clothing/under/f13/merca
	name = "Костюм наёмника"
	desc = "Поношенный костюм наёмника."
	icon_state = "merca"
	item_state = "merca"
	item_color = "merca"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 20, "fire" = 20, "acid" = 40)

/obj/item/clothing/under/f13/mercc
	name = "Костюм наёмника"
	desc = "Поношенный костюм наёмника."
	icon_state = "mercc"
	item_state = "mercc"
	item_color = "mercc"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 20, "fire" = 20, "acid" = 40)

/obj/item/clothing/under/f13/cowboyb
	name = "Костюм ковбоя"
	desc = "Грязный коричневый костюм ковбоя. Особенно полезен для выпаса брахманов."
	icon_state = "cowboyb"
	item_state = "cowboyb"
	item_color = "cowboyb"

/obj/item/clothing/under/f13/cowboyg
	name = "Костюм ковбоя"
	desc = "Грязный коричневый костюм ковбоя. Особенно полезен для выпаса брахманов."
	icon_state = "cowboyg"
	item_state = "cowboyg"
	item_color = "cowboyg"

/obj/item/clothing/under/f13/combat_shirt
	name = "Боевая форма"
	desc = "Старая боевая форма, вышедшая из употребления во время войны."
	icon_state = "combat_shirt"
	item_state = "combat_shirt"
	item_color = "combat_shirt"

/obj/item/clothing/under/f13/Retro_Biker_Vest
	name = "Футуристичный жилет"
	desc = "Розовый жилет с черными брюками. Довольно футуристично выглядит."
	icon_state = "Biker"
	item_state = "Biker"

/* //slave rags, crafted from 2 cloth- uncomment when sprites available
/obj/item/clothing/under/f13/slaverags
	name = "slave rags"
	desc = "Rags made for only the most basic and unworthy of slaves."
	icon_state = "slaverags"
	item_state = "slaverags"
*/

/obj/item/clothing/under/f13/erpdress
	name = "Бандажное платье"
	desc = "Сшитое знаменитым довоенным модельером Мари Каллуной, это платье было сделано так, чтобы огибать каждый ваш изгиб и демонстрировать глубокое декольте."
	icon_state = "bandagedress"
	item_state = "bandagedress"

/obj/item/clothing/under/f13/classdress
	name = "Элегантное платье"
	desc = "Платье, которое наилучшим образом демонстрирует все ваши достоинства, оставаясь при этом довольно формальным и со вкусом подобранным."
	icon_state = "societydress"
	item_state = "societydress"

/obj/item/clothing/under/f13/bluedress
	name = "Синее платье"
	desc = "Милое, но простое, обычное довоенное платье."
	icon_state = "blue_dress"
	item_state = "blue_dress"

/obj/item/clothing/under/f13/pinkdress
	name = "Розовое платье"
	desc = "Милое, но простое, обычное довоенное платье."
	icon_state = "pink_dress"
	item_state = "pink_dress"

/obj/item/clothing/under/f13/greendress
	name = "Зелёное платье"
	desc = "Милое, но простое, обычное довоенное платье."
	icon_state = "green_dress"
	item_state = "green_dress"

/obj/item/clothing/under/f13/blackdress
	name = "Чёрное платье"
	desc = "Темное и откровенное платье, в котором сочетаются формальность и соблазнительность."
	icon_state = "blackdress"
	item_state = "blackdress"

/obj/item/clothing/under/f13/xenon
	name = "Яркий комбинезон"
	desc = "Комбинезон, который, кажется, пришел из другого времени."
	icon_state = "xenon"
	item_state = "xenon"

/obj/item/clothing/under/f13/roving
	name = "Костюм бродячего торговца"
	desc = "Этот костюм обычно носят бродячие торговцы."
	icon_state = "roving"
	item_state = "roving"
	item_color = "roving"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 20, "fire" = 20, "acid" = 40)

/obj/item/clothing/under/f13/follower
	name = "Форма волонтёра последоветелей"
	desc = "Униформа добровольцев последователей апокалипсиса."
	icon_state = "follower"
	item_state = "follower"
	item_color = "follower"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 20, "fire" = 20, "acid" = 40)

/obj/item/clothing/under/f13/raider_leather
	name = "Кожанка рейдера"
	desc = "Сшитые вместе обрывки, обычно носятся рейдерами."
	icon_state = "raider_leather"
	item_state = "raider_leather"
	item_color = "raider_leather"

/obj/item/clothing/suit/armor/fluff/chestplate/rusty
	name = "Ржавая броня"
	desc = "Металлолом, который ковали, пока его не стало возможно надевать"
	icon_state = "rusty_armor"
	item_state = "rustyl_armor"
	item_color = "rusty_armor"
	body_parts_covered = CHEST|GROIN|ARMS|LEGS|FEET

/obj/item/clothing/under/f13/raiderrags
	name = "Лохмотья рейдера"
	desc = "Обрывки грубо сшитой вместе одежды, которую обычно носят рейдеры."
	icon_state = "raiderrags"
	item_state = "raiderrags"
	item_color = "raiderrags"

/obj/item/clothing/under/f13/khan
	name = "Униформа великого ханка"
	desc = "Униформа члена Великих Ханов."
	icon_state = "khan"
	item_state = "khan"
	item_color = "khan"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 10, "fire" = 10, "acid" = 40)

/obj/item/clothing/suit/armor/khan_jacket
	name = "Бронированая куртка ханов"
	desc = "Символ величайших барыг."
	icon_state = "khan_jacket"
	item_state = "khan_jacket"

/obj/item/clothing/suit/armor/warriors
	name = "Бронежилет воина"
	desc = "Символ величайших гангстеров"
	icon_state = "warriors"
	item_state = "warriors"

/obj/item/clothing/under/f13/tribe
	name = "Племенные лохмотья"
	desc = "Пыльные тряпки, украшенные полосками кожи и маленькими кусочками бирюзы."
	icon_state = "tribalrags"
	item_state = "tribalrags"

/obj/item/clothing/under/f13/tribe_chief
	name = "Одеяние вождя племени"
	desc = "Ухоженная роба, украшенная тонкой кожей и полированной бирюзой."
	icon_state = "chiefrags"
	item_state = "chiefrags"

/obj/item/clothing/under/f13/tribe_Hhunter
	name = "Одеяние бритвенного когтя"
	desc = "Дубленые кожаные одежды, украшенные костями когтей смерти и отмеченные великим машинным духом земли."
	icon_state = "hhunterrags"
	item_state = "hhunterrags"

/obj/item/clothing/under/f13/tribe_shaman
	name = "Одеяние шамана племени"
	desc = "Аккуратно сшитое вручную одеяние из ткани с тяжелыми бирюзовыми украшениями, наброшенными поверх."
	icon_state = "shamanrags"
	item_state = "shamanrags"

/obj/item/clothing/under/f13/exile
	name = "Растрепанная униформа НКР"
	desc = "Взъерошенная и модифицированная форма дежурного, напоминающая форму НКР."
	icon_state = "ncr_uniformexile"
	item_state = "ncr_uniformexile"
	item_color = "ncr_uniformexile"
	armor = list("melee" = 10, "bullet" = 10, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 30, "fire" = 20, "acid" = 50)

/obj/item/clothing/under/f13/exile/legion
	name = "Расртепанная форма легионера"
	desc = "Растрепанная и модифицрованная форма, напоминающая стандартную форму Легиона."
	icon_state = "legion_uniformexile"
	item_state = "legion_uniformexile"
	item_color = "legion_uniformexile"

/obj/item/clothing/under/f13/exile/vault
	name = "Расртепанный комбинезон жителя убежища"
	desc = "Взъерошенная и рваная униформа, похожая на стандартный комбинезон Vault-Tech."
	icon_state = "vault_exile"
	item_state = "vault_exile"
	item_color = "vault_exile"

//stuff ported from WW2
/obj/item/clothing/under/f13/ncr_formal_uniform
	name = "Довоенная униформа НКР"
	desc = "Старая довоенная форма, перепрофилированная для Вооруженных сил НКР"
	icon_state = "us_uniform"
	item_state = "us_uniform"
	item_color = "us_uniform"

/obj/item/clothing/under/f13/ncr_camo
	name = "Довоеный комуфляж НКР"
	desc = "Старый довоенный камуфляж, перепрофилированный для Вооруженных сил НКР"
	icon_state = "nato_uniform"
	item_state = "nato_uniform"
	item_color = "nato_uniform"



//Prom Dress

/obj/item/clothing/under/f13/prom_dress
	name = "Фиолетовое платье для выпускного"
	desc = "Это фиолетовое платье чудесным образом пережило войну и, кажется, почти не пострадало, за исключением нескольких свободных концов от износа. Платье сшито из мягкой ткани, скорее всего из мраморного бархата."
	icon_state = "promdress"
	item_state = "promdress"
	item_color = "promdress"

//Dust Devils

//Boomers

//Bright Brotherhood

//Nightkin Gang

//The Chairmen

//Greasers

//Maud's Muggers

//Jackals

//Powder Gangers

//White Legs

//Dead Horses

//The Kings

//Mutant Band

//Remnants

/obj/item/clothing/under/f13/enclave_officer
	name = "Униформа офицера Анклава"
	desc = "Стандартная униформа оциера Анклава.<br>Внешний слой выполнен из прочного материала, предназначенного для того, чтобы выдерживать суровые условия пустоши."
	icon_state = "enclave_o"
	item_state = "bl_suit"
	item_color = "enclave_o"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 20, "fire" = 20, "acid" = 40)

/obj/item/clothing/under/f13/navy
	name = "Комбинезон морского флота"
	desc = "Довоенная стандартная форма морского флота."
	icon_state = "navy"
	item_state = "bl_suit"
	item_color = "navy"

/obj/item/clothing/under/f13/navyofficer
	name = "Комбинезон офицера морского флота"
	desc = "Стандартная довоеная морская форма для рядовых офицеров."
	icon_state = "navyofficer"
	item_state = "bl_suit"
	item_color = "navyofficer"

/obj/item/clothing/under/f13/machinist
	name = "Костюм рабочего"
	desc = "Старомодная одежда машиниста."
	icon_state = "machinist"
	item_state = "lb_suit"
	item_color = "machinist"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 20, "fire" = 20, "acid" = 40)

/obj/item/clothing/under/f13/lumberjack
	name = "Костюм лесоруба"
	desc = "Старомодная одежда лесоруба"
	icon_state = "lumberjack"
	item_state = "r_suit"
	item_color = "lumberjack"

/obj/item/clothing/under/f13/police
	name = "Довоенная униформа полицейского"
	desc = "Золотая классика довоенных полицейских."
	icon_state = "retro_police"
	item_state = "b_suit"
	item_color = "retro_police"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 10, "fire" = 10, "acid" = 40)

/obj/item/clothing/under/f13/cowboyt //Originally cowboy and mafia stuff by Nienhaus
	name = "Пыльный костюм старателя"
	desc = "Белая рубашка с блестящими медными пуговицами и коричневые брюки, которые обычно носят старатели."
	icon_state = "cowboyt"
	item_state = "det"
	item_color = "cowboyt"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 20, "fire" = 20, "acid" = 40)

/obj/item/clothing/under/f13/cowboyb
	name = "Гладкий костюм старателя"
	desc = "Белая рубашка с медными пуговицами и коричневые брюки, которые обычно носят старатели."
	icon_state = "cowboyb"
	item_state = "det"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 20, "fire" = 20, "acid" = 40)

/obj/item/clothing/under/f13/cowboyg
	name = "Дорогой костюм старателя"
	desc = "Белая рубашка с черными пуговицами и серые брюки, которые обычно носят старатели."
	icon_state = "cowboyg"
	item_state = "sl_suit"
	item_color = "cowboyg"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 20, "fire" = 20, "acid" = 40)

/obj/item/clothing/under/f13/female/flapper
	name = "Легкомысленное платье"
	desc = "Наряд, который обычно носят старомодные проститутки со всего Нью-Рино, но его можно увидеть по всей пустоши."
	icon_state = "flapper"
	item_state = "gy_suit"
	item_color = "flapper"

/obj/item/clothing/under/f13/bdu //WalterJe military standarts.
	name = "Боевая парадная форма"
	desc = "Стандартная военная парадная форма."
	icon_state = "bdu"
	item_state = "xenos_suit"
	item_color = "bdu"
	can_adjust = TRUE

/obj/item/clothing/under/f13/dbdu
	name = "Пустынная боевая парадная форма"
	desc = "Стандартная пустынная военная парадная форма."
	icon_state = "dbdu"
	item_state = "brownjsuit"
	item_color = "dbdu"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 20, "fire" = 20, "acid" = 40)
	can_adjust = TRUE

/obj/item/clothing/under/f13/shiny //Firefly, yay!
	name = "Блестящий костюм"
	desc = "Идеальный наряд для храброго и безрассудного космического ковбоя. Блестящий!"
	icon_state = "shiny"
	item_state = "owl"
	item_color = "shiny"

/obj/item/clothing/under/f13/batter //I guess we're going OFF limits.
	name = "Поношенная форма бейсболиста"
	desc = "<b>Очищение в процессе ... </b>"
	icon_state = "batter"
	item_state = "w_suit"
	item_color = "batter"

/obj/item/clothing/under/f13/bennys //Benny's suit from Fallout: New Vegas. But Benny was just a kid back in 2255, so it's just a fancy suit for you.
	name = "Модный костюм"
	desc = "Чёрно-белый клетчатый костюм из буйвола. Последний писк моды!"
	icon_state = "benny"
	item_state = "white_suit"
	item_color = "benny"

/obj/item/clothing/under/f13/relaxedwear
	name = "pre-war male relaxedwear"
	desc = "A dirty long-sleeve blue shirt with a greenish brown sweater-vest and slacks."
	icon_state = "relaxedwear_m"
	item_state = "g_suit"
	item_color = "relaxedwear_m"

/obj/item/clothing/under/f13/spring
	name = "Довоенный мужской весенний наряд"
	desc = "Грязная бежевая рубашка с длинными рукавами, красный свитер-жилет и коричневые брюки."
	icon_state = "spring_m"
	item_state = "brownjsuit"
	item_color = "spring_m"

/obj/item/clothing/under/f13/formal
	name = "Довоенная мужская официальная одежда"
	desc = "Черный пиджак, старая белая рубашка и грязные темно-фиолетовые брюки.<br>Традиционно его носили самые богатые люди послевоенного мира."
	icon_state = "formal_m"
	item_state = "judge"
	item_color = "formal_m"

/obj/item/clothing/under/f13/bodyguard
	name = "Костюм телохранителя"
	desc = "Грязные довоенные брюки, галстук и парадная рубашка с какими-то самодельными наплечниками из металлолома, прикрепленными кожаными ремнями."
	icon_state = "bodyguard"
	item_state = "sl_suit"
	item_color = "bodyguard"

/obj/item/clothing/under/f13/westender
	name = "Классический костюм бармена"
	desc = "Изысканный костюм бармена, украшенный классическим западным галстуком фронтирмена."
	icon_state = "westender"
	item_state = "sl_suit"
	item_color = "westender"

/obj/item/clothing/under/f13/rag
	name = "Рваные тряпки"
	desc = "Рубашка или что там еще из рваной ткани.<br>Оно пропиталось потом и имеет неприятный запах.<br>Только самые бедные из поселенцев, в основном наркоманы, налетчики или рабы носят что-то подобное."
	item_state = "lgloves"
	item_color = "rag"
	can_adjust = 0

/obj/item/clothing/under/f13/tribal
	name = "Мужской племенной наряд"
	desc = "Мужской наряд из шкур гекконов.<br>Он не покрывает некоторые части тела,но все же это лучше, чем ходить голым..."
	icon_state = "tribal_m"
	item_state = "lgloves"
	item_color = "tribal_m"
	can_adjust = 0

/obj/item/clothing/under/f13/female/tribal
	name = "Женский племенной наряд"
	desc = "Женский наряд из шкур гекконов.<br>Он не покрывает некоторые части тела, но все же это лучше, чем ходить голым..."
	icon_state = "tribal_f"
	item_state = "lgloves"
	item_color = "tribal_f"
	can_adjust = TRUE
	fitted = NO_FEMALE_UNIFORM

/obj/item/clothing/under/f13/settler
	name = "Костюм поселенца"
	desc = "Более или менее грубо сшитый коричневый халат с импровизированным поясом из ткани.<br>В паре с поношенными серыми брюками."
	icon_state = "settler"
	item_state = "brownjsuit"
	item_color = "settler"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 20, "fire" = 20, "acid" = 40)

/obj/item/clothing/under/f13/brahmin //Male version
	name = "Мужской костюм из кожи брамина"
	desc = "Простой костюм из белой рубашки и заплатанных брюк с Y-образной подтяжкой."
	icon_state = "brahmin_m"
	item_state = "brownjsuit"
	item_color = "brahmin_m"

/obj/item/clothing/under/f13/female/brahmin //Female version
	name = "Мужской костюм из кожи брамина"
	desc = "Простой костюм из белой рубашки и заплатанных брюк с Y-образной подтяжкой.<br>Для женщин."
	icon_state = "brahmin_f"
	item_state = "brownjsuit"
	item_color = "brahmin_f"

/obj/item/clothing/under/f13/doctor //Male version
	name = "Мужской костюм доктора"
	desc = "Белая футболка, коричневые брюки и маленькая коричневая сумка, крикреплённая к ним.<br>Для мужчин."
	icon_state = "doctor_m"
	item_state = "brownjsuit"
	item_color = "doctor_m"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 20, "fire" = 20, "acid" = 40)

/obj/item/clothing/under/f13/female/doctor //Female version
	name = "Женский костюм доктора"
	desc = "Белая футболка, коричневые брюки и маленькая коричневая сумка, крикреплённая к ним.<br>Для женщин."
	icon_state = "doctor_f"
	item_state = "brownjsuit"
	item_color = "doctor_f"
	fitted = NO_FEMALE_UNIFORM

/obj/item/clothing/under/f13/mercadv //Male version
	name = "Мужской костюм наемника-авантюриста"
	desc = "Большая кожаная куртка с оторванными рукавами, красный свитер, ожерелье с тремя зубами неизвестного происхождения и коричневые кожаные штаны.<br>Прикреплён грубый кожаный патронташ для хранения вещей.<br>Для мужчин."
	icon_state = "merca_m"
	item_state = "bl_suit"
	item_color = "merca_m"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 20, "fire" = 20, "acid" = 40)

/obj/item/clothing/under/f13/female/mercadv //Female version
	name = "Женский костюм наемника-авантюриста"
	desc = "Большая кожаная куртка с оторванными рукавами, красный свитер, ожерелье с тремя зубами неизвестного происхождения и коричневые кожаные штаны.<br>Прикреплён грубый кожаный патронташ для хранения вещей.<br>Для женщин."
	icon_state = "merca_f"
	item_state = "bl_suit"
	item_color = "merca_f"
	fitted = NO_FEMALE_UNIFORM

/obj/item/clothing/under/f13/merccharm //Male version
	name = "Мужской костюм обоятельного наёмника"
	desc = "Сине-серый костюм, напоминающий костюм-тройку, плотно сшитый и усиленный маленькой металлической чашечкой в области паха.<br>Для мужчин."
	icon_state = "mercc_m"
	item_state = "mercc_f"
	item_color = "mercc_m"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 20, "fire" = 20, "acid" = 40)

/* Missing a worn sprite
/obj/item/clothing/under/f13/female/merccharm //Female version
	name = "female merc charmer outfit"
	desc = "A ripped and torn blue female business suit, it still gives ladies a rather sexy look.<br>Fitted for female wastelanders."
	icon_state = "mercc_f"
	item_state = "bl_suit"
	item_color = "mercc_f"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 20, "fire" = 20, "acid" = 40)
*/

/obj/item/clothing/under/f13/mechanic
	name = "Поношенный синий комбинезон"
	desc = "Поношенный комбинезон, сшитый из ткани нежно-голубого цвета, со старыми пятнами машинного масла на нем.<br>Давным-давно он мог принадлежать ремонтному механику."
	icon_state = "mechanic"
	item_state = "syndicate-blue"
	item_color = "mechanic"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 20, "fire" = 20, "acid" = 40)

/obj/item/clothing/under/f13/petrochico
	name = "Поношенный зелёный комбинезон"
	desc = "Темно-зеленый комбинезон с белыми полосками на рукавах и нашивкой \"Петро-Чико\" на правой части груди."
	icon_state = "petrochico"
	item_state = "centcom"
	item_color = "petrochico"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 20, "fire" = 20, "acid" = 40)

/obj/item/clothing/under/f13/caravaneer
	name = "Костюм караванщика"
	desc = "Коричневая рубашка в полоску, темно-синие брюки на подтяжках.<br>Такую одежду обычно носят караванщики и путешественники."
	icon_state = "caravaneer"
	item_state = "syndicate-blue"
	item_color = "caravaneer"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 10, "fire" = 10, "acid" = 40)

/* Same as /obj/item/clothing/under/f13/roving but with a sprite that doesn't work
/obj/item/clothing/under/f13/trader
	name = "roving trader outfit "
	desc = "An outfit commonly worn by various wastelanders, but it still looks pretty badass!"
	icon_state = "trader"
	item_state = "bl_suit"
	item_color = "trader"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 20, "fire" = 20, "acid" = 40)
*/

/obj/item/clothing/under/f13/merchant
	name = "Костюм торговца"
	desc = "Наряд, обычно носимый различными жителями пустоши - в основном бродячими торговцами и торговцами на рынке.<br>Как насчёт продать его мне со скидкой 10%?"
	icon_state = "merchant"
	item_state = "brownjsuit"
	item_color = "merchant"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 20, "fire" = 20, "acid" = 40)

/obj/item/clothing/under/f13/worn
	name = "Поношенный костюм"
	desc = "Поношенная рубашка цвета хаки без пуговиц и рваные джинсы.<br>Поначалу это может показаться плохим выбором одежды, но есть жители пустошей, которые не могут позволить себе даже этого."
	icon_state = "worn"
	item_state = "brownjsuit"
	item_color = "worn"

/obj/item/clothing/under/f13/vault
	name = "Комбинезон жителя убежища"
	desc = "Нормативная одежда, которую носят обитатели убежищ Vault-Tec. Cделан из прочной кожи.<br>У этого комбинезона нет номера на спине."
	icon_state = "vault"
	item_state = "b_suit"
	item_color = "vault"
	can_adjust = TRUE
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 10, "rad" = 30, "fire" = 30, "acid" = 40)

/obj/item/clothing/under/f13/vault/v13 //The Legend is here.
	name = "Комбинезон убежища 13"
	desc = "Нормативная одежда, которую носят обитатели убежищ Vault-Tec. Cделан из прочной кожи.<br>У этого комбинезона номер 13 на спине."
	icon_state = "vault13"
	item_color = "vault13"

/obj/item/clothing/under/f13/vault/v113
	name = "Комбинезон убежища 113"
	desc = "Нормативная одежда, которую носят обитатели убежищ Vault-Tec. Cделан из прочной кожи.<br>У этого комбинезона номер 113 на спине."
	icon_state = "vault113"
	item_color = "vault113"

/obj/item/clothing/under/f13/vault/v21
	name = "Комбинезон убежища 21"
	desc = "Нормативная одежда, которую носят обитатели убежищ Vault-Tec. Cделан из прочной кожи.<br>У этого комбинезона номер 21 на спине."
	icon_state = "vault21"
	item_color = "vault21"

/obj/item/clothing/under/f13/vault/v42
	name = "Комбинезон убежища 42"
	desc = "Нормативная одежда, которую носят жители убежищ Vault-Tec, построенных для того, чтобы решить главный вопрос жизни, вселенной и всего остального. Cделан из прочной кожи.<br>This jumpsuit has number 42 on the back."
	icon_state = "vault42"
	item_color = "vault42"

/obj/item/clothing/under/f13/followers
	name = "Костюм последователя"
	desc = "Белая рубашка с темно-коричневыми брюками-карго - наряд, который обычно носят последователи Апокалипсиса.<br><i>Nihil boni sine labore.</i>"
	icon_state = "followers"
	item_state = "bar_suit"
	item_color = "followers"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 20, "fire" = 20, "acid" = 40)

/obj/item/clothing/under/f13/combat
	name = "Боевая униформа"
	desc = "Древняя боевая форма, вышедшая из употребления во времена Великой войны."
	icon_state = "combat"
	item_state = "bl_suit"
	item_color = "combat"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 20, "fire" = 20, "acid" = 40)

/obj/item/clothing/under/f13/gunner
	name = "Боевая форма наводчика"
	desc = "Древняя боевая форма, вышедшая из употребления во времена Великой войны. На ней есть царапины и нарисованный череп, символизирующий, что он принадлежит наводчик"
	icon_state = "GunnerPlates"
	item_state = "GunnerPlates"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 20, "fire" = 20, "acid" = 40)

/obj/item/clothing/under/f13/combat/militia
	name = "Роба ODF"
	desc = "Оливково-зеленая боевая форма, выданная членам Сил обороны оазиса."

/obj/item/clothing/under/f13/enclave_officer
	name = "Униформа офицера"
	desc = "Стандартная форма офицера анклава.<br>Внешний слой сделан из прочного материала, предназначенного для того, чтобы выдерживать суровые условия пустоши."
	icon_state = "enclave_o"
	item_state = "bl_suit"
	item_color = "enclave_o"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 20, "fire" = 20, "acid" = 40)

/obj/item/clothing/under/f13/ncr/torn
	name = "Порванное пальто"
	desc = "Некоторое время назад это выглядело как обычная форма НКР, но теперь это выглядит как беспорядочно разоваранная ткань."
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	armor = list(melee = 0, bullet = 0, laser = 0, energy = 0, bomb = 0, bio = 0, rad = 0, fire = 0, acid = 0)
	icon_state = "tornovercoat"
	item_color = "tornovercoat"

/obj/item/clothing/under/f13/general
	name = "Генеральское пальто"
	desc = "Мрачно выглядящее пальто - предпочтительный стандарт для главнокомандующего Новой Калифорнийской республики.<br>Оно украшено золотыми звездами и эмблемой, которая украшает левую сторону."
	icon_state = "general"
	item_state = "lb_suit"
	item_color = "general"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 20, "fire" = 40, "acid" = 40)

/obj/item/clothing/under/f13/recon
	name = "Разведывательная броня"
	desc = "Предназначенная для ношения под броней силовой брони Т-45д, разведывательная броня представляет собой герметичный асбестовый комбинезон, покрывающий все тело.<br>К ней прилагается интерфейс и крепления для силовой брони.<br>Она имеет двойное назначение -  позволяет пользователю фактически управлять броней и защищает мягкие ткани от движущихся частей внутри скафандра и тепла."
	icon_state = "recon"
	item_state = "rig_suit"
	item_color = "recon"
	flags_inv = HIDEHAIR
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 30, "fire" = 30, "acid" = 40)
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HEAD
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HEAD

/obj/item/clothing/under/f13/chinese
	name = "Китайский комбинезон"
	desc = "Древняя китайская боевая форма. Использовалась до войны."
	icon_state = "chinese"
	item_state = "bl_suit"
	item_color = "chinese"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 20, "fire" = 20, "acid" = 40)

/obj/item/clothing/under/f13/locust
	name = "Униформа саранчи"
	desc = "Старинная довоенная боевая униформа. Используется наёмниками саранчи."
	icon_state = "locust"
	item_state = "locust"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 20, "fire" = 20, "acid" = 40)

//Fluff

/obj/item/clothing/under/f13/agent47
	name = "Мистический костюм"
	desc = "Этот темный костюм был сшит слепым человеком по имени Томми, который держал портняжную мастерскую в развалинах старого Чикаго.<br>Кажется, он укреплён неизвестным металлом"
	icon_state = "agent47"
	item_state = "lawyer_black"
	item_color = "agent47"

/obj/item/clothing/under/f13/psychologist
	name = "Водолазка психолога"
	desc = "Бирюзовая водолазка и темно-синие брюки, принадлежащие психологу."
	icon_state = "psychturtle"
	item_state = "b_suit"
	item_color = "psychturtle"
/obj/item/clothing/under/f13/villain //Doubles as Gang Leader primary uniform for extra villainy
	name = "Зелёно-чёрный костюм"
	desc = "В этом костюме есть что-то злое, только злодей может носить что-то подобное."
	icon_state = "villain"
	item_state = "syndicate-green"
	item_color = "villain"

/obj/item/clothing/under/f13/gentlesuit
	name = "Джентельменский костюм"
	desc = "Шелковая черная рубашка с белым галстуком, серый жилет и брюки в тон. Чувствуется нормально"
	icon_state = "gentlesuit"
	item_state = "gy_suit"
	item_color = "gentlesuit"

/obj/item/clothing/under/f13/detectivealt
	name = "Модный костюм детектива"
	desc = "Безукоризненно белая парадная рубашка в паре с модными черными брюками, красным галстуком и угольно-черным жилетом."
	icon_state = "detectivealt"
	item_state = "bl_suit"
	item_color = "detectivealt"
	can_adjust = TRUE

/obj/item/clothing/under/f13/hopalt
	name = "Костюм главы персонала"
	desc = "Синий пиджак и красный галстук с такими же красными манжетами! Шикарно. Нося это, вы чувствуете себя более важным, чем ваша должность."
	icon_state = "hopalt"
	item_state = "b_suit"
	item_color = "hopalt"

/obj/item/clothing/under/f13/roboticistalt
	name = "Комбинезон роботехника"
	desc = "Облегающий черный с яркими усиленными оранжевыми швами, отлично подходит для промышленных работ"
	icon_state = "roboticsalt"
	item_state = "jensensuit"
	item_color = "roboticsalt"
	can_adjust = TRUE

/obj/item/clothing/under/f13/bartenderalt
	name = "Модная униформа бармена"
	desc = "Довольно модная униформа для настоящего профессионала."
	icon_state = "barmanalt"
	item_state = "bl_suit"
	item_color = "barmanalt"

/obj/item/clothing/under/f13/spaceship
	name = "Униформа члена экипажа"
	desc = "Знаки отличия на этой форме говорят вам, что эта форма принадлежит какому-то члену экипажа."
	icon_state = "spaceship_crewman"
	item_state = "syndicate-black-red"
	item_color = "spaceship_crewman"

/obj/item/clothing/under/f13/spaceship/officer
	name = "Униформа офицера"
	desc = "Знаки различия на этой форме говорят вам, что эта форма принадлежит какому-то офицеру"
	icon_state = "spaceship_officer"
	item_color = "spaceship_officer"

/obj/item/clothing/under/f13/spaceship/captain
	name = "Униформа капитана"
	desc = "Знаки отличия на этом мундире говорят вам, что этот мундир принадлежит какому-то капитану."
	icon_state = "spaceship_captain"
	item_color = "spaceship_captain"

//Female clothing! It's not misogyny, yet dresses shall be separate from /f13/ as Fallout build has its own female subtype.

/obj/item/clothing/under/pants/f13/ghoul
	name = "Рваные брюки"
	desc = "AПара рваных штанов, которые не стирали больше ста лет.<br>Как хорошо, что вы не слишком часто видите гениталии гулей.<br><i>Кстати говоря, вы также можете носить их, чтобы притвориться диким гулем...</i>"
	icon_state = "ghoul"
	item_color = "ghoul"

/obj/item/clothing/under/pants/f13/cloth
	name = "Брюки из ткани"
	desc = "Пара поношенных пыльных суконных штанов, сшитых из различных текстильных изделий.<br>Обычно встречается по всей пустоши."
	icon_state = "cloth"
	item_color = "cloth"

/obj/item/clothing/under/pants/f13/caravan //Caravanner - someone who travels with caravan. Caravaneer - caravan leader.
	name = "Брюки караванщика"
	desc = "Пара широких пыльных брюк-карго.<br>Обычно их носят караванщики или грабители караванов."
	icon_state = "caravan"
	item_color = "caravan"

/obj/item/clothing/under/pants/f13/khan
	name = "Брюки Великих Ханов"
	desc = "Суконные штаны с кожаными накладками для брони, прикрепленными по бокам.<br>Обычно их носят рейдеры из Великих Ханов."
	icon_state = "khan"
	item_color = "khan"
	body_parts_covered = LEGS

/obj/item/clothing/under/pants/f13/warboy //Mad Max 4 2015 babe!
	name = "Мужские военные брюки"
	desc = "Пара темно-коричневых брюк, идеально подходящих для того, кто захватывает солнце, отправляясь в Валгаллу."
	icon_state = "warboy"
	item_color = "warboy"
	body_parts_covered = LEGS

/obj/item/clothing/under/pants/f13/doom
	name = "Зелёные брюки"
	desc = "Странные зеленые штаны из синтетического материала."
	icon_state = "green"
	item_color = "green"
	resistance_flags = UNACIDABLE
	body_parts_covered = LEGS

/obj/item/clothing/under/f13/bosform_f
	name = "Женская униформа послушника"
	desc = "Сухая и хорошо подогнанная форма Братства Стали для особых случаев. У этого нет никаких отметин,и он выглядит как женский."
	icon_state = "bosform_f"
	item_state = "bosform_f"
	item_color = "bosform_f"

/obj/item/clothing/under/f13/bosform_m
	name = "Мужская униформа послушника"
	desc = "Сухая и хорошо подогнанная форма Братства Стали для особых случаев. У этого нет никаких отметин,и он выглядит как мужской."
	icon_state = "bosform_m"
	item_state = "bosform_m"
	item_color = "bosform_m"

/obj/item/clothing/under/f13/bosformsilver_f
	name = "Женская униформа рыцаря"
	desc = "Сухая и хорошо подогнанная форма Братства Стали для особых случаев. На этом костюме серебрянная цепь, и он выглядит как женский."
	icon_state = "bosformsilver_f"
	item_state = "bosformsilver_f"
	item_color = "bosformsilver_f"

/obj/item/clothing/under/f13/bosformsilver_m
	name = "Мужская униформа рыцаря"
	desc = "Сухая и хорошо подогнанная форма Братства Стали для особых случаев. На этом костюме серебрянная цепь, и он выглядит как мужской."
	icon_state = "bosformsilver_m"
	item_state = "bosformsilver_m"
	item_color = "bosformsilver_m"

/obj/item/clothing/under/f13/bosformgold_f
	name = "Женская униформа паладина"
	desc = "Сухая и хорошо подогнанная форма Братства Стали для особых случаев. На этом костюме золотая цепь, обозначающая власть, и он выглядит как женский."
	icon_state = "bosformgold_f"
	item_state = "bosformgold_f"
	item_color = "bosformgold_f"

/obj/item/clothing/under/f13/bosformgold_m
	name = "Мужская униформа паладина"
	desc = "Сухая и хорошо подогнанная форма Братства Стали для особых случаев. На этом костюме золотая цепь, обозначающая власть, и он выглядит как мужской."
	icon_state = "bosformgold_m"
	item_state = "bosformgold_m"
	item_color = "bosformgold_m"

/obj/item/clothing/under/f13/atomfaithful
	name = "Наряд верующего"
	desc = "Одежда, которую носили верующие в единство"
	icon_state = "atomfaithful"
	item_state = "atomfaithful"
	item_color = "atomfaithful"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 100, "fire" = 20, "acid" = 40)


/obj/item/clothing/under/f13/atomwitchunder
	name = "Нижнее белье провидицы"
	desc = "Нижнее белье женщин-провидиц единства."
	icon_state = "atomwitchunder"
	item_state = "atomwitchunder"
	item_color = "atomwitchunder"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 100, "fire" = 20, "acid" = 40)


/obj/item/clothing/under/f13/atombeliever
	name = "Одежда верующего"
	desc = "Одежда истинно верующего в единство."
	icon_state = "atombeliever"
	item_state = "atombeliever"
	item_color = "atombeliever"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 100, "fire" = 20, "acid" = 40)


/obj/item/clothing/under/f13/raiderharness
	name = "Жгут рейдера"
	desc = "Кожаная сбруя, едва прикрывавшая самое необходимое."
	icon_state = "raiderharness"
	item_state = "raiderharness"
	item_color = "raiderharness"

/obj/item/clothing/under/f13/fprostitute
	name = "Костюм проститутки"
	desc = "Латексный наряд для тех, кто продает свое общество. Или действительно любит ветерок."
	icon_state = "fprostitute"
	item_state = "fprostitute"
	item_color = "fprostitute"

/obj/item/clothing/under/f13/mprostitute
	name = "Костюм мужчины-проституки"
	desc = "Латексный наряд для тех, кто продает свое общество. Или действительно любит ветерок."
	icon_state = "mprostitute"
	item_state = "mprostitute"
	item_color = "mprostitute"

/obj/item/clothing/under/f13/ravenharness
	name = "Вороний жгут"
	desc = "Жгут, сделанный из нескольких черных ремней, сшитых вместе, образуя свернувшийся кусок одежды. Спереди нарисован символ красного цвета, к нему прилагается пара кожаных штанов."
	icon_state = "raven_harness"
	item_state = "raven_harness"

/obj/item/clothing/under/f13/jamrock
	name = "Рубашки и брюки диско-задницы"
	desc = "Эта белая атласная рубашка когда-то была модной. Раньше она действительно ловил свет. Теперь пахнет так, будто кто-то помочился в подмышки, а золотисто-коричневые брюки разрезаны. Обычные расклешенные брюки были бы сапожного покроя, но это далеко не нормально. Это чьи-то пропитанные мочой, испачканные спермой брюки для вечеринок."
	icon_state = "jamrock_uniform"
	item_state = "jamrock_uniform"

/obj/item/clothing/under/f13/keksweater
	name = "Красный свитер"
	desc = "Темно-красный свитер с брюками-карго. Идеально подходит для тех случаев, когда в местных кондиционируемых помещениях становится слишком холодно."
	icon_state = "brahminsss"
	item_state = "brahminsss"

/obj/item/clothing/under/f13/inquisition
	name = "Униформа инквизитора"
	desc = "Никто не ожидал испанской инквизиции!"
	icon = 'icons/fallout/clothing/uniforms.dmi'
	icon_state = "inquisition"
	can_adjust = TRUE
	item_state = "inquisition"
	item_color = "inquisition"

/obj/item/clothing/under/f13/joshua
	name = "Униформа Джошуа"
	desc = "Просто униформа Джошуа"
	icon = 'icons/fallout/clothing/uniforms.dmi'
	icon_state = "joshua"
	item_state = "joshua"
	item_color = "joshua"

/obj/item/clothing/under/f13/nw_sweater
	name = "Тёплый свитер"
	desc = "Связан твоей мамочкой."
	icon = 'icons/fallout/clothing/uniforms.dmi'
	icon_state = "sweater"
	item_state = "sweater"
	item_color = "sweater"

/obj/item/clothing/under/f13/ny_trap
	name = "Сексуальный костюм санты"
	desc = "Лучший подарок для твоего парня."
	icon = 'icons/fallout/clothing/uniforms.dmi'
	icon_state = "ny_trap"
	item_state = "ny_trap"
	item_color = "ny_trap"