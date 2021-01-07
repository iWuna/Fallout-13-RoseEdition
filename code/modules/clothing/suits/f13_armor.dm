//Fallout 13 general armor directory

/obj/item/clothing/suit/armor/f13

/obj/item/clothing/suit/armor/f13/cyberpunk
	name = "Бронированный плащ"
	desc = "Плащ, дополненный специальным сплавом для некоторой защиты и стиля."
	icon_state = "jensencoat"
	item_state = "jensencoat"
//	flags = THICKMATERIAL
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	armor = list(melee = 30, bullet = 30, laser = 30, energy = 10, bomb = 0, bio = 0, rad = 0, fire = 30, acid = 30)
	allowed = list(/obj/item/pen,/obj/item/paper,/obj/item/stamp,/obj/item/reagent_containers/food/drinks/flask,/obj/item/weapon,/obj/item/storage/box/matches,/obj/item/lighter,/obj/item/clothing/mask/cigarette,/obj/item/storage/fancy/cigarettes,/obj/item/flashlight,/obj/item/gun,/obj/item/ammo_box,/obj/item/ammo_casing)
	resistance_flags = UNACIDABLE
	strip_delay = 30
	icon = 'icons/fallout/clothing/suits.dmi'

/obj/item/clothing/suit/armor/f13/doom
	name = "Зеленый нагрудник"
	desc = "Странный зелёный нагрудник<br>Он легкий и удивительно удобный."
	icon_state = "praetor"
	item_state = "g_suit"
	body_parts_covered = CHEST
	armor = list(melee = 40, bullet = 40, laser = 40, energy = 30, bomb = 30, bio = 30, rad = 30, fire = 30, acid = 30)
	resistance_flags = UNACIDABLE
	strip_delay = 10
	icon = 'icons/fallout/clothing/suits.dmi'

/obj/item/clothing/suit/armor/f13/punk
	name = "Комлпект брони"
	desc = "Пара частей брони, которые можно носить поверх одежды для умеренной защиты от опасностей Пустоши.<br>Теперь ты чувствуешь себя счастливчиком? Ну, как ты, панк?"
	icon_state = "punkit" //Punk it
	item_state = "punkit" //Pun kit
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS
	armor = list(melee = 30, bullet = 30, laser = 30, energy = 30, bomb = 10, bio = 20, rad = 20, fire = 30, acid = 30)
	strip_delay = 30
	icon = 'icons/fallout/clothing/suits.dmi'

/obj/item/clothing/suit/armor/f13/tribal
	name = "Племенная броня"
	desc = "Набор брони, сделанный из шкур геконов.<br>Довольно хроша для самодельной брони."
	icon_state = "tribal"
	item_state = "tribal"
	armor = list(melee = 30, bullet = 20, laser = 20, energy = 0, bomb = 10, bio = 0, rad = 0, fire = 10, acid = 0)
	flags_inv = HIDEJUMPSUIT
	strip_delay = 40
	icon = 'icons/fallout/clothing/suits.dmi'

/obj/item/clothing/suit/armor/f13/slam
	name = "Броня рейдера-громилы"
	desc = "Грубая броня, которая, похоже, использует какую-то шину в качестве наплечника. То, что-то напоминающее кильт завязано вокруг талии.<br>Давай, круши и превращай своих врагов в варенье!"
	icon_state = "slam"
	item_state = "slam"
	armor = list(melee = 30, bullet = 30, laser = 30, energy = 0, bomb = 10, bio = 0, rad = 0, fire = 0, acid = 0)
	flags_inv = HIDEJUMPSUIT
	strip_delay = 40
	icon = 'icons/fallout/clothing/suits.dmi'
/*
/obj/item/clothing/suit/armor/f13/leatherarmor
	name = "Кожаная броня"
	desc = "Набор легких доспехов из вареной браминской кожи.<br>Он должен защищать от среднего 9-миллиметрового ружья, но все, что выше этого калибра, пробьет его, как масло."
	icon_state = "leatherarmor"
	item_state = "leatherarmor"
	armor = list(melee = 40, bullet = 20, laser = 10, energy = 10, bomb = 20, bio = 0, rad = 0, fire = 0, acid = 0)
	flags_inv = HIDEJUMPSUIT
	strip_delay = 40
	icon = 'icons/fallout/clothing/suits.dmi'

*/

/*
/obj/item/clothing/suit/armor/f13/bmetalarmor //uses the same path as bmetalarmor in armor.dm, causing the assless chaps bug
	name = "Черная металлическая броня"
	desc = "Набор прочных металлических доспехов, сделанных из различных кусков металлолома. Похоже, они замедляют движение."
	icon_state = "bmetalarmor"
	item_state = "bmetalarmor"
	armor = list(melee = 50, bullet = 40, laser = 30, energy = 30, bomb = 40, bio = 0, rad = 0, fire = 20, acid = 0)
	flags_inv = HIDEJUMPSUIT
	resistance_flags = FIRE_PROOF
	icon = 'icons/fallout/clothing/suits.dmi'
*/
/obj/item/clothing/suit/armor/f13/ncrarmor/soldier
	name = "Стандартная броня пехотинца"
	desc = "Набор брони НКР, состоящий из бронированного нагрудника, металлических наплечников и перчаток, которые носят солдаты НКР в боевых условиях.<br>На этом нагруднике красуется эмблема НКР, которая со временем слегка поблекла."
	icon_state = "ncr_armor2"
	item_state = "ncr_armor2"
	icon = 'icons/fallout/clothing/suits.dmi'

/obj/item/clothing/suit/armor/f13/ncrarmor/patriot
	name = "Броня пехотинца батальона \"Патриотов\""
	desc = "Набор брони НКР, состоящий из бронированного нагрудника, металлических наплечников и перчаток, которые носят патриоты НКР в боевых условиях.<br>У этого на нагруднике белой краской нарисована пятиконечная звезда - эмблема батальона."
	icon_state = "ncr_armor3"
	item_state = "ncr_armor3"
	icon = 'icons/fallout/clothing/suits.dmi'

/obj/item/clothing/suit/armor/f13/ncrarmor/commie
	name = "Броня пехотинца батальона \"Коммунистов\""
	desc = "Набор брони НКР, состоящий из бронированного нагрудника, металлических наплечников и перчаток, которые носят товарищи НКР в боевых условиях.<br>У этого на нагруднике красной краской нарисована пятиконечная звезда - эмблема батальона."
	icon_state = "ncr_armor4"
	item_state = "ncr_armor4"
	icon = 'icons/fallout/clothing/suits.dmi'

/obj/item/clothing/suit/armor/f13/ncrarmor/preacher
	name = "Броня пехотинца батальона \"Проповедников\""
	desc = "Набор брони НКР, состоящий из бронированного нагрудника, металлических наплечников и перчаток, которые носят фанатики НКР в боевых условиях.<br>У этого на нагруднике желтой краской нарисован святой крест - эмблема батальона."
	icon_state = "ncr_armor5"
	item_state = "ncr_armor5"

/obj/item/clothing/suit/armor/f13/ncrarmor/lover
	name = "Броня пехотинца батальона \"Любящих\""
	desc = "Набор брони НКР, состоящий из бронированного нагрудника, металлических наплечников и перчаток, которые носят любители НКР в боевых условиях.<br>У этого на нагруднике розовой краской нарисован символ сердца - эмблема батальона."
	icon_state = "ncr_armor6"
	item_state = "ncr_armor6"
	icon = 'icons/fallout/clothing/suits.dmi'

/obj/item/clothing/suit/armor/f13/ncrarmor/stalker //Cheeki breeki i v damke !!!
	name = "Броня пехотинца батальона \"Сталкеров\""
	desc = "Набор брони НКР, состоящий из бронированного нагрудника, металлических наплечников и перчаток, которые носят исследователи НКР в боевых условиях.<br>У этого на нагруднике желтой краской нарисован символ радиации - эмблема батальона."
	icon_state = "ncr_armor7"
	item_state = "ncr_armor7"
	icon = 'icons/fallout/clothing/suits.dmi'

/obj/item/clothing/suit/armor/f13/ncrarmor/punisher
	name = "Броня пехотинца батальона \"Карателей\""
	desc = "Набор брони НКР, состоящий из бронированного нагрудника, металлических наплечников и перчаток, которые носят герои или злодеи НКР в боевых условиях.<br>У этого на нагруднике белой краской нарисован череп - эмблема батальона."
	icon_state = "ncr_armor8"
	item_state = "ncr_armor8"
	icon = 'icons/fallout/clothing/suits.dmi'

/obj/item/clothing/suit/armor/f13/ncrarmor/facewrap
	name = "Броня с лицевым покрытием"
	desc = "Комплект брони НКР, состоящий из бронированного нагрудника, металлических наплечников и перчаток, которые носят разведчики НКР в боевых условиях.<br>У этого есть лицевое покрытие, предназначенное для того, чтобы натягиваться на лицо пользователя и защищать его от частиц пыли и других, главным образом радиоактивных элементов."
	icon_state = "ncr_armor9"
	item_state = "ncr_armor9"
	armor = list(melee = 30, bullet = 20, laser = 10, energy = 10, bomb = 20, bio = 0, rad = 30, fire = 10, acid = 10) //Better radiation protection, thank the facewrap bro!
	icon = 'icons/fallout/clothing/suits.dmi'

/obj/item/clothing/suit/armor/f13/rangercombat/old
	name = "Поношенная боевая броня ветерана"
	desc = "Уникальная броня, побывавшая в бесчисленных битвах и ставшая причиной большого кровопролития."
	icon_state = "oldranger"
	item_state = "oldranger"
	armor = list(melee = 40, bullet = 20, laser = 20, energy = 20, bomb = 20, bio = 0, rad = 30, fire = 20, acid = 20)
	icon = 'icons/fallout/clothing/suits.dmi'

/obj/item/clothing/suit/armor/f13/battlecoat //Maxson's battlecoat from Fallout 4
	name = "Боевое пальто"
	desc = "Тяжелое мягкое кожаное пальто, которое носили пилоты довоенных бомбардировщиков в прошлом и пилоты послевоенных цеппелинов в будущем."
	icon_state = "battlecoat"
	item_state = "battlecoat"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS
	armor = list(melee = 50, bullet = 30, laser = 30, energy = 30, bomb = 30, bio = 0, rad = 30, fire = 30, acid = 30)
	strip_delay = 30
	allowed = list(/obj/item/gun)
	icon = 'icons/fallout/clothing/suits.dmi'

/obj/item/clothing/suit/armor/f13/kaicoat //Kai's battlecoat because he's batman
	name = "Шинель братства"
	desc = "Тяжела, как тот груз, который мы несем, чтобы защитить себя.."
	icon_state = "kaicoat"
	item_state = "kaicoat"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS
	armor = list(melee = 50, bullet = 30, laser = 30, energy = 30, bomb = 30, bio = 0, rad = 30, fire = 30, acid = 30)
	strip_delay = 30
	allowed = list(/obj/item/gun)
	icon = 'icons/mob/suit.dmi'

/obj/item/clothing/suit/armor/f13/battlecoat/vault
	name = "Пальто коммадования"
	desc = "Тяжелый довоенный бомбер, выкрашенный в синий цвет, с вышитым на спине номером \"113\". Чаще всего их носят лидеры, например сморители."
	icon_state = "vault_commandcoat"
	item_state = "vault_commandcoat"
	armor = list(melee = 0, bullet = 0, laser = 0, energy = 0, bomb = 0, bio = 0, rad = 0, fire = 0, acid = 0)

/obj/item/clothing/suit/armor/f13/battlecoat/tan
	name = "Дубленое боевое пальто"
	desc = "Тяжелое мягкое кожаное пальто, которое носили пилоты довоенных бомбардировщиков в прошлом и пилоты послевоенных цеппелинов в будущем. Цвета этого немного поблекли"
	icon_state = "battlecoat_tan"
	item_state = "maxson_battlecoat"

//Knights of the Apocalypse

/obj/item/clothing/suit/armor/riot/knight
	name = "Рыцарский доспех"
	desc = "Классический рыцарский доспех, высокоэффективный при остановке атак ближнего боя."
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

/obj/item/clothing/suit/armor/riot/knight/templar
	name = "Доспех крестоносца"
	desc = "Такова воля божья!"
	icon_state = "knight_templar"
	item_state = "knight_templar"

/obj/item/clothing/suit/armor/riot/knight/tabard
	name = "Доспех с накидкой"
	desc = "Набор доспехов с накидкой для высокой видимости пользователя во время боя."
	icon_state = "knight_tabard"
	item_state = "knight_tabard"

//exiles

/obj/item/clothing/suit/armor/f13/exile
	name = "Базовая броня отступника"
	desc = "Для тестов."
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS
	armor = list("melee" = 40, "bullet" = 25, "laser" = 20, "energy" = 20, "bomb" = 40, "bio" = 40, "rad" = 20, "fire" = 60, "acid" = 20)
	strip_delay = 30
	icon = 'icons/fallout/clothing/suits.dmi'

/obj/item/clothing/suit/armor/f13/exile/ncrexile
	name = "Модифицированная броня НКР"
	desc = "Изменённый, испортившийся комплект брони, состоящий из снаряжения НКР и кусков металлолома."
	icon_state = "ncrexile"
	item_state = "ncrexile"

/obj/item/clothing/suit/armor/f13/exile/ncrexile/Initialize()
	. = ..()
	AddComponent(/datum/component/armor_plate)

/obj/item/clothing/suit/armor/f13/exile/legexile
	name = "Модифицированная броня легионера"
	desc = "Изменённый, испортившийся комплект брони, состоящий из снаряжения легиона и кусков металлолома."
	icon_state = "legexile"
	item_state = "legexile"

/obj/item/clothing/suit/armor/f13/exile/legexile/Initialize()
	. = ..()
	AddComponent(/datum/component/armor_plate)

/obj/item/clothing/suit/armor/f13/exile/bosexile
	name = "Модифицированная броня братства"
	desc = "Изменённый, испортившийся комплект брони, состоящий из боевой брони братства и кусков металлолома."
	icon_state = "brotherhoodexile"
	item_state = "brotherhoodexile"

/obj/item/clothing/suit/armor/f13/exile/bosexile/Initialize()
	. = ..()
	AddComponent(/datum/component/armor_plate)

/*
/obj/item/clothing/suit/armor/f13/exile/r
	name = "Улучшенная модифицированная броня отступника"
	desc = "Для тестов"
	armor = list("melee" = 55, "bullet" = 40, "laser" = 30, "energy" = 30, "bomb" = 50, "bio" = 40, "rad" = 20, "fire" = 60, "acid" = 20)
	strip_delay = 30

/obj/item/clothing/suit/armor/f13/exile/r/ncr
	name = "Улучшенная модифицированная броня НКР"
	desc = "Изменённый, испортившийся комплект брони, состоящий из снаряжения НКР и кусков металлолома. Этот набор был дополнен дополнительными защитными пластинами, вшитыми внутрь брони, что обеспечивало дополнительную защиту."
	icon_state = "ncrexile"
	item_state = "ncrexile"

/obj/item/clothing/suit/armor/f13/exile/r/legion
	name = "Улучшенная модифицированная броня легиона"
	desc = "Изменённый, испортившийся комплект брони, состоящий из снаряжения легиона и кусков металлолома. Этот набор был дополнен дополнительными защитными пластинами, вшитыми внутрь брони, что обеспечивало дополнительную защиту."
	icon_state = "legexile"
	item_state = "legexile"

/obj/item/clothing/suit/armor/f13/exile/r/bos
	name = "Улучшенная модифицированная броня братства"
	desc = "Изменённый, испортившийся комплект брони, состоящий из боевой брони братства и кусков металлолома. Этот набор был дополнен дополнительными защитными пластинами, вшитыми внутрь брони, что обеспечивало дополнительную защиту."
	icon_state = "brotherhoodexile"
	item_state = "brotherhoodexile" */