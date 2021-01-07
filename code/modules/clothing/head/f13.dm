//Fallout 13 protective helmets directory

/obj/item/clothing/head/helmet/f13

/obj/item/clothing/head/helmet/f13/tribal
	name = "Силовой шлем племени"
	desc = "Этот шлем силовой брони был найден дикарями на поле боя.<br>Они верят, что эти шлемы захватывают духи их павших владельцев, поэтому они нарисовали на них несколько рун, чтобы придать им более священный вид."
	icon_state = "tribal"
	item_state = "tribal"
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	armor = list(melee = 30, bullet = 10, laser = 0, energy = 0, bomb = 10, bio = 0, rad = 10, fire = 0, acid = 0)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	strip_delay = 30

/obj/item/clothing/head/helmet/f13/motorcycle
	name = "Шлем мотоциклиста"
	desc = "Шлем, используемый мотоциклистами<br>Основная цель мотоциклетного шлема - защитить голову носителя во время удара, тем самым предотвращая или уменьшая травму головы и спасая жизнь носителя."
	icon_state = "motorcycle"
	item_state = "motorcycle"
	flags_cover = HEADCOVERSEYES
	armor = list(melee = 30, bullet = 10, laser = 0, energy = 0, bomb = 10, bio = 0, rad = 0, fire = 0, acid = 0)
	flags_inv = HIDEMASK|HIDEEARS|HIDEHAIR
	strip_delay = 10

/obj/item/clothing/head/helmet/f13/firefighter
	name = "Шлем пожарного"
	desc = "Шлем пожарного, надетый поверх огнезащитного покрытия, и сломанный противогаз.<br>От него сильно пахнет потом."
	icon_state = "firefighter"
	item_state = "firefighter"
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	armor = list(melee = 20, bullet = 10, laser = 0, energy = 0, bomb = 0, bio = 0, rad = 0, fire = 90, acid = 0)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	cold_protection = HEAD
	min_cold_protection_temperature = SPACE_HELM_MIN_TEMP_PROTECT
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_HELM_MAX_TEMP_PROTECT
	strip_delay = 30
	resistance_flags = FIRE_PROOF

/obj/item/clothing/head/helmet/f13/supaflyhelmet
	name = "Шлем рейдера супа-флай"
	desc = "Импровизированный шлем рейдера, сделанный из кожи.<br>Он сильно пахнет химикатами и потом."
	icon_state = "supafly"
	item_state = "supafly"
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	armor = list(melee = 40, bullet = 25, laser = 15, energy = 10, bomb = 16, bio = 20, rad = 0, fire = 50, acid = 0)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	strip_delay = 20

/obj/item/clothing/head/f13/boscap
	name = "Формальная шапка братства"
	desc = "Кепка, обычно носимая с официальной униформой местного отделения братства стали."
	icon_state = "boscap"
	item_state = "boscap"
	armor = list("melee" = 10, "bullet" = 15, "laser" = 10, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 20, "acid" = 0)
	strip_delay = 20

/obj/item/clothing/head/helmet/f13/yankee
	name = "Шлем рейдера янки"
	desc = "Давным-давно это принадлежало футболисту, а теперь это принадлежит пустоши."
	icon_state = "yankee"
	item_state = "yankee"
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	armor = list(melee = 40, bullet = 25, laser = 15, energy = 10, bomb = 16, bio = 20, rad = 0, fire = 50, acid = 0)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	strip_delay = 30


/obj/item/clothing/head/helmet/f13/localranger
	name = "Поношенный берет разведчика"
	desc = "Когда-то знак статуса, теперь выцветший головной убор."
	icon_state = "localranger"
	item_state = "localranger"
	armor = list(melee = 40, bullet = 25, laser = 15, energy = 10, bomb = 16, bio = 20, rad = 0, fire = 50, acid = 0)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	strip_delay = 30

/obj/item/clothing/head/helmet/f13/fiend
	name = "Дьявольский шлем"
	desc = "Кожаная кепка, сшитая вместе, украшенная черепом толсторога, идеально подходящая для любого подпитываемого наркотиками безумия."
	icon_state = "fiend"
	item_state = "fiend"
	armor = list("melee" = 40, "bullet" = 25, "laser" = 15, "energy" = 10, "bomb" = 16, "bio" = 20, "rad" = 0, "fire" = 50, "acid" = 0)
	flags_inv = HIDEEARS|HIDEHAIR

/obj/item/clothing/head/helmet/f13/drake
	name = "Драконий шлем"
	icon_state = "dragon"
	desc = "Череп дракона"
	armor = list("melee" = 70, "bullet" = 30, "laser" = 50, "energy" = 40, "bomb" = 70, "bio" = 60, "rad" = 50, "fire" = 100, "acid" = 100)
	heat_protection = HEAD
	max_heat_protection_temperature = FIRE_IMMUNITY_HELM_MAX_TEMP_PROTECT
	resistance_flags = FIRE_PROOF | ACID_PROOF

/obj/item/clothing/head/helmet/f13/fiend_reinforced
	name = "Усиленный дьявольский шлем"
	desc = "Кожаная кепка, сшитая вместе, украшенная черепом толсторога, идеально подходящая для любого подпитываемого наркотиками безумия. Этот шлем был усилен металлическими пластинами под черепом"
	icon_state = "fiend"
	item_state = "fiend"
	armor = list("melee" = 45, "bullet" = 30, "laser" = 20, "energy" = 10, "bomb" = 16, "bio" = 20, "rad" = 0, "fire" = 50, "acid" = 0)
	flags_inv = HIDEEARS|HIDEHAIR

/obj/item/clothing/head/helmet/f13/vaquerohat
	name = "Шляпа Вакеро"
	desc = "Старое сомбреро, которое носил Вакеро, чтобы уберечься от палящего солнца."
	icon_state = "vaquerohat"
	item_state = "vaquerohat"
	armor = list("melee" = 10, "bullet" = 15, "laser" = 10, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 20, "acid" = 0)

/obj/item/clothing/head/helmet/f13/khan
	name = "Шлем Великих Ханов"
	desc = "Часть головного убора, обычно носимого великими Ханами, которая, по-видимому, напоминает стереотипные традиционные монгольские шлемы - вероятно, собран из довоенного мотоциклетного шлема.<br>Он черный, с двумя рогами по бокам и небольшим шипом, торчащим сверху, очень похожий на пикельхельм.<br>Кожаное покрытие защищает шею и уши владельца от солнечных ожогов."
	icon_state = "khan"
	item_state = "khan"
	armor = list(melee = 35, bullet = 25, laser = 25, energy = 20, bomb = 10, bio = 0, rad = 0, fire = 0, acid = 0)
	flags_inv = HIDEEARS|HIDEHAIR
	strip_delay = 20

/obj/item/clothing/head/helmet/f13/khan/Initialize()
	. = ..()
	AddComponent(/datum/component/armor_plate)

/obj/item/clothing/head/helmet/f13/khan/fullhelm
	name = "Полный шлем Великих Ханов"
	desc = "Шлем Хана, модифицированный стальными рогами, и полностью защищающий голову, состоит из красных линз солнцезащитных очков и толстой металлической пластины, чтобы скрыть нижнюю часть лица"
	icon_state = "khanhelmet"
	item_state = "khanhelmet"
	armor = list(melee = 35, bullet = 25, laser = 25, energy = 30, bomb = 30, bio = 0, rad = 0, fire = 0, acid = 0)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	strip_delay = 20

/obj/item/clothing/head/helmet/f13/khan/fullhelm/Initialize()
	. = ..()
	AddComponent(/datum/component/armor_plate)


/obj/item/clothing/head/helmet/f13/ranger/old
	name = "Старый шлем рейнджера"
	desc = "Старый военный шлем, который обычно носили пустынные рейнджеры. Он прошел через огонь и пламя, спасая единственную жизнь среди тяжелого кровопролития.<br>На этом шлеме сбоку есть надпись \"Прости меня, мама\"."
	icon_state = "oldranger"
	item_state = "oldranger"
	armor = list(melee = 40, bullet = 20, laser = 20, energy = 20, bomb = 20, bio = 0, rad = 30, fire = 30, acid = 10)
	glass_colour_type = /datum/client_colour/glass_colour/lightgreen

/obj/item/clothing/head/f13/strange
	name = "Странный шлем"
	desc = "Очень странный металический шлем...<br>Мне хочется верить."
	icon = 'icons/fallout/clothing/hats.dmi'
	icon_state = "strange"
	item_state = "helmet"
	armor = list(melee = 40, bullet = 20, laser = 40, energy = 40, bomb = 20, bio = 100, rad = 40, fire = 90, acid = 100)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	cold_protection = HEAD
	min_cold_protection_temperature = SPACE_HELM_MIN_TEMP_PROTECT
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_HELM_MAX_TEMP_PROTECT
	strip_delay = 50
	resistance_flags = FIRE_PROOF

/obj/item/clothing/head/helmet/f13/doom
	name = "Шлем морпеха"
	desc = "Шлем, сделанный из неизвестного сплава<br>Вы чувствуете, что этот шлем позволит вам пережить ад на Марсе... э-э, на Земле."
	icon_state = "doom"
	item_state = "doom"
	armor = list(melee = 50, bullet = 40, laser = 40, energy = 40, bomb = 50, bio = 100, rad = 100, fire = 100, acid = 100)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	strip_delay = 10
	resistance_flags = UNACIDABLE

/obj/item/clothing/head/helmet/f13/magneto
	name = "Шлем Магнето"
	desc = "Этот шлем позволяет его владельцу противостоять всем, кроме самых сильных или самых неожиданных телепатических атак.<br>Это достигается благодаря технологии, встроенной в сам шлем."
	icon_state = "magneto"
	item_state = "magneto"
	armor = list(melee = 60, bullet = 50, laser = 50, energy = 50, bomb = 50, bio = 100, rad = 100, fire = 30, acid = 100)
	flags_inv = HIDEEARS|HIDEHAIR
	strip_delay = 50
	resistance_flags = UNACIDABLE

//Knights of the Apocalypse

/obj/item/clothing/head/helmet/knight
	name = "Средневековый шлем"
	desc = "Классический металлический шлем, который носили все рыцари и всадники старой эпохи."
	icon_state = "knight_green"
	item_state = "knight_green"
	armor = list(melee = 40, bullet = 20, laser = 10, energy = 10, bomb = 20, bio = 0, rad = 0, fire = 0, acid = 0)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	strip_delay = 80
	dog_fashion = null

/obj/item/clothing/head/helmet/knight/blue
	name = "Синий средневековый шлем"
	desc = "Классический металлический шлем, который носили все рыцари и всадники старой эпохи.<br>Этот покрашен в синий"
	icon_state = "knight_blue"
	item_state = "knight_blue"

/obj/item/clothing/head/helmet/knight/yellow
	name = "Желтый средневековый шлем"
	desc = "Классический металлический шлем, который носили все рыцари и всадники старой эпохи.<br>This one is painted yellow."
	icon_state = "knight_yellow"
	item_state = "knight_yellow"

/obj/item/clothing/head/helmet/knight/red
	name = "Красный средневековый шлем"
	desc = "Классический металлический шлем, который носили все рыцари и всадники старой эпохи.<br>This one is painted red."
	icon_state = "knight_red"
	item_state = "knight_red"

/obj/item/clothing/head/helmet/knight/templar
	name = "Шлем крестоносца"
	desc = "ДЕУС ВУЛЬТ!."
	icon_state = "knight_templar"
	item_state = "knight_templar"

/obj/item/clothing/head/helmet/knight/f13/metal
	name = "Металлический шлем"
	desc = "Металлический шлем, выкованный в огне.<br>Специально разработан для самых грозных и сильных воинов пустоши."
	icon_state = "metalhelmet"
	item_state = "metalhelmet"

/obj/item/clothing/head/helmet/knight/f13/rider
	name = "Шлем всадника" //Not raider. Rider.
	desc = "Причудливый шлем из темного металла с оранжевыми брызгами пламени."
	icon_state = "rider"
	item_state = "rider"

//Fallout 13 soft caps directory

/obj/item/clothing/head/soft/f13

/obj/item/clothing/head/soft/f13/baseball
	name = "Бейсболка"
	desc = "Мягкая шапка с закругленной короной и жестким козырьком, выступающим вперед."
	icon_state = "baseball"
	item_color = "baseball"

/obj/item/clothing/head/soft/f13/enclave
	name = "Офицерская фуражка"
	desc = "Стандартная офицерская фуражка анклава."
	icon_state = "enclave"
	item_color = "enclave"

/obj/item/clothing/head/soft/f13/utility
	name = "Синяя фуражка"
	desc = "Восьмиконечная шапка, с козырьком, похожий на бейсбольную кепку, известная как утилитарная фуражка или восьмиконечное покрытие."
	icon_state = "utility_g"
	item_color = "utility_g"

/obj/item/clothing/head/soft/f13/utility/navy
	name = "Фуражка морского флота"
	icon_state = "utility_n"
	item_color = "utility_n"

/obj/item/clothing/head/soft/f13/utility/olive
	name = "Оливковая фуражка"
	icon_state = "utility_o"
	item_color = "utility_o"

/obj/item/clothing/head/soft/f13/utility/tan
	name = "Телесная фуражка"
	icon_state = "utility_t"
	item_color = "utility_t"

/obj/item/clothing/head/f13

/obj/item/clothing/head/f13/safari //Referencing the Jebediah from Mad Max 3 1985
	name = "Пробковый шлем"
	desc = "Легкий, обтянутый тканью шлем, сделанный из сердцевины.<br>Подходит для исследователей или сумасшедших пилотов."
	icon_state = "safari"
	item_state = "dethat"
	armor = list(melee = 40, bullet = 10, laser = 0, energy = 0, bomb = 20, bio = 0, rad = 0, fire = 30, acid = 0)

/obj/item/clothing/head/f13/chinese_soldier
	name = "Китайская боковая фуражка"
	desc = "Складная военная фуражка с прямыми боками, со знаками отличия Народно-освободительной армии, такие носили регулярные войска."
	icon_state = "chinese_s"
	item_state = "secsoft"
	flags_inv = HIDEHAIR

/obj/item/clothing/head/f13/chinese_officer
	name = "Китайская боковая фуражка"
	desc = "Складная военная фуражка с прямыми боками, со знаками отличия Народно-освободительной армии, такие носили младшие офицеры."
	icon_state = "chinese_o"
	item_state = "secsoft"
	flags_inv = HIDEHAIR

/obj/item/clothing/head/f13/chinese_commander
	name = "Китайская боковая фуражка"
	desc = "Фуражка темно-зеленого цвета с красной звездой на лицевой стороне.<br>Очевидно, она принадлежала высокопоставленному офицеру Народно-освободительной армии."
	icon_state = "chinese_c"
	item_state = "fedora"
	flags_inv = HIDEHAIR

/obj/item/clothing/head/f13/stormchaser
	name = "Шляпа штурмовика"
	desc = "Дом, дом среди пустыни,<br>Где играют кротокрыс и огненный геккон.<br>Где редко слышены обескураживающие слова,<br>И моя кожа не светится целый день"
	icon_state = "stormchaser"
	item_state = "fedora"
	flags_inv = HIDEEARS|HIDEHAIR

/obj/item/clothing/head/f13/headscarf
	name = "Головной платок"
	desc = "Кусок ткани, надеваемый на голову для различных целей, таких как защита головы или волос от дождя, ветра, грязи, холода, тепла, для санитарии, для моды, признания или социального различия - с религиозным значением, чтобы скрыть лысину, из скромности или других форм социальной условности."
	icon_state = "headscarf"
	item_state = "dethat"
	flags_inv = HIDEMASK|HIDEEARS|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR

/obj/item/clothing/head/f13/headscarf/Initialize()
	. = ..()
	AddComponent(/datum/component/armor_plate)

/obj/item/clothing/head/f13/pot
	name = "Металлическая кастрюля"
	desc = "Шаг первый: начните с соуса.<br>Шаг второй: добавьте лапшу.<br>Шаг третий: перемешайте макароны.<br>Шаг четвертый: включите печь.<br>Шаг пятый: Сожгите дом"
	icon_state = "pot"
	item_state = "fedora"
	force = 20
	hitsound = 'sound/items/trayhit1.ogg'
	flags_inv = HIDEHAIR

/obj/item/clothing/head/f13/cowboy
	name = "Шляпа ковбоя"
	desc = "Широкополая шляпа с высокой тульей, наиболее известная как определяющий наряд североамериканского ковбоя."
	icon_state = "cowboy"
	item_state = "dethat"
	flags_inv = HIDEHAIR

/obj/item/clothing/head/f13/bandit
	name = "Шляпа бандита"
	desc = "Черная ковбойская шляпа с большими загнутыми по бокам полями.<br>Спереди прикреплена серебряная булавка с орлом."
	icon_state = "bandit"
	item_state = "fedora"
	flags_inv = HIDEHAIR

/obj/item/clothing/head/f13/gambler
	name = "Шляпа игрока"
	desc = "Идеальная шляпа для бродячего игрока." //But I got to ramble (ramblin' man) //Oh I got to gamble (gamblin' man) //Got to got to ramble (ramblin' man) //I was born a ramblin' gamblin' man
	icon_state = "gambler"
	item_state = "dethat"
	flags_inv = HIDEHAIR

/obj/item/clothing/head/f13/general
	name = "Фуражка генерала"
	desc = "Военная фуражка темно-зеленого цвета с золотым значком на лицевой стороне.<br>На значке написано \"Новая Калифорнийская Республика\""
	icon_state = "general"
	item_state = "fedora"
	flags_inv = HIDEHAIR
	armor = list(melee = 20, bullet = 20, laser = 0, energy = 0, bomb = 20, bio = 0, rad = 0, fire = 30, acid = 0)

//Fluff

/obj/item/clothing/head/f13/rastacap
	name = "Шляпа растамана"
	desc = "<font color='#157206'>Он Хаффи, брось ему вилку и беги,</font><br><font color='green'>Он не может встать для джа джа сынок,</font><br><font color='#fd680e'>Он Хаффи леф'я с ним пушка,</font><br><font color='red'>Выкопай с ним бомбу.</font>"
	icon_state = "rastacap"
	item_state = "fedora"
	flags_inv = HIDEEARS|HIDEHAIR|HIDEFACIALHAIR
	cold_protection = HEAD //This tam brings the warm reggae and Jamaican sun with it.
	min_cold_protection_temperature = FIRE_HELM_MIN_TEMP_PROTECT

/obj/item/clothing/head/f13/fez
	name = "Феска"
	desc = "Фески реально крутые!"
	icon_state = "fez"
	item_state = "secsoft"

/obj/item/clothing/head/f13/beaver
	name = "Бобровая шапка"
	desc = "Шляпа из войлочного бобрового меха, которая заставляет владельца чувствовать себя одновременно комфортно и элегантно."
	icon_state = "beaver"
	item_state = "that"

/obj/item/clothing/head/f13/purple
	name = "Фиолетовый цилиндр"
	desc = "Может быть, вы и не владеете лучшей тюрьмой в наблюдаемой Вселенной или лучшей шоколадной фабрикой во всем мире, но, по крайней мере, вы можете попытаться завладеть этим фиолетовым цилиндром!"
	icon_state = "ptophat"
	item_state = "that"

/obj/item/clothing/head/f13/det_hat_alt
	name = "Фетровая шляпа детектива"
	desc = "Есть только один человек, который может вынюхать грязную вонь преступления, и он, вероятно, носит эту черную шляпу."
	icon_state = "detectivealt"
	item_state = "fedora"
	flags_inv = HIDEHAIR
	armor = list(melee = 30, bullet = 10, laser = 10, energy = 10, bomb = 10, bio = 0, rad = 0, fire = 0, acid = 0)

/obj/item/clothing/head/f13/trilby
	name = "Трильби с перьями"
	desc = "Остроконечная, стильная синяя шляпа с пером."
	icon_state = "trilby"
	item_state = "fedora"

/obj/item/clothing/head/f13/battlecruiser
	name = "Шляпа капитана"
	desc = "Ямато заряжен. Я тоже."
	icon_state = "battlecruiser"
	item_state = "battlecruiser"
	armor = list(melee = 30, bullet = 20, laser = 20, energy = 10, bomb = 20, bio = 0, rad = 0, fire = 0, acid = 0)

//Fluff welding masks

/obj/item/clothing/head/welding/f13

/obj/item/clothing/head/welding/f13/fire
	name = "Сварочный шлем крематора"
	desc = "Сварочный шлем с нарисованным на нем пламенем.<br>Он конечно жуткий, но крутой"
	icon_state = "welding_fire"
	item_state = "welding"
	tint = 1
	armor = list(melee = 20, bullet = 10, laser = 5, energy = 5, bomb = 5, bio = 0, rad = 0, fire = 30, acid = 0)

/obj/item/clothing/head/welding/f13/japan
	name = "Сварочный шлем Ниппон"
	desc = "Kojin no ato wo motomezu, kojin no motometaru no tokoro wo motome yo."
	icon_state = "welding_japan"
	item_state = "welding"
	tint = 1
	armor = list(melee = 40, bullet = 0, laser = 0, energy = 0, bomb = 0, bio = 0, rad = 0, fire = 30, acid = 0)

/obj/item/clothing/head/f13/town
	name = "Городская треуголка"
	desc = "Да что эти треуголки забыли в пустыне?"
	icon_state = "tricorn"
	item_state = "dethat"
	flags_inv = HIDEHAIR
	armor = list("melee" = 40, "bullet" = 30, "laser" = 20, "energy" = 40, "bomb" = 25, "bio" = 40, "rad" = 30, "fire" = 80, "acid" = 0)

/obj/item/clothing/head/f13/town/mayor
	name = "Треуголка мэра"
	desc = "Треуголка в пустыне? Странные вещи творятся."

/obj/item/clothing/head/f13/town/big
	name = "Большая шлпяпа"
	desc = "Эта шляпа действительно большая"
	icon_state = "bigcowboyhat"

/obj/item/clothing/head/f13/town/deputy
	name = "Шляпа депутата"
	desc = "Чёрная ковбойская шляпа"
	icon_state = "deputyhat"
	armor = list("melee" = 50, "bullet" = 40, "laser" = 25, "energy" = 40, "bomb" = 25, "bio" = 40, "rad" = 35, "fire" = 80, "acid" = 0)

/obj/item/clothing/head/f13/town/sheriff
	name = "Шляпа шерифа"
	desc = "Черная ковбойская шляпа с лентой из змеиной кожи."
	icon_state = "sheriffhat"
	armor = list("melee" = 60, "bullet" = 50, "laser" = 30, "energy" = 40, "bomb" = 25, "bio" = 40, "rad" = 40, "fire" = 80, "acid" = 0)

/obj/item/clothing/head/f13/generalcap
	name = "Милицейская фуражка"
	desc = ""
	icon_state = "militiacap"
	item_state = "militiacap"
	armor = list("melee" = 20, "bullet" = 20, "laser" = 10, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	flags_inv = HIDEHAIR

/obj/item/clothing/head/f13/inquisition_hat
	name = "Шляпа инквизитора"
	desc = "Красная шляпа испанского инквизитора."
	icon = 'icons/fallout/clothing/hats.dmi'
	icon_state = "inquisition_hat"
	armor = list("melee" = 60, "bullet" = 50, "laser" = 30, "energy" = 40, "bomb" = 25, "bio" = 40, "rad" = 40, "fire" = 80, "acid" = 0)

/obj/item/clothing/head/f13/anarchist_hat
	name = "Шляпа анархиста"
	desc = "Очень странная черная круглая шляпа."
	icon = 'icons/fallout/clothing/hats.dmi'
	icon_state = "anarchist_hat"
	armor = list("melee" = 60, "bullet" = 50, "laser" = 30, "energy" = 40, "bomb" = 25, "bio" = 40, "rad" = 40, "fire" = 80, "acid" = 0)

/obj/item/clothing/head/f13/snow_cowboy_hat
	name = "Белая шляпа ковбоя"
	desc = "С четырехлистным клевером"
	icon_state = "snow_cowboy_hat"
	armor = list("melee" = 60, "bullet" = 50, "laser" = 30, "energy" = 40, "bomb" = 25, "bio" = 40, "rad" = 40, "fire" = 80, "acid" = 0)

