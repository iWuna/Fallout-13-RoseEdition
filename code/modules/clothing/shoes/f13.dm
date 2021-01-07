//Fallout 13 shoes directory
/*
/obj/item/clothing/shoes
	var/stepsound = TRUE
*/
/obj/item/clothing/shoes/f13
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/shoes

/obj/item/clothing/shoes/f13/rag
	name = "Тряпки"
	desc = "Тряпки из рваной ткани<br>Она пропиталась вонючим потом, и это довольно отвратительно.<br>Только самые бедные поселенцы, в основном наркоманы или рабы, носят что-то подобное."
	icon_state = "rag"
	item_state = "rag"

/obj/item/clothing/shoes/f13/tan
	name = "Дубленые ботинки"
	desc = "Пара дубленых кожаных туфель."
	icon_state = "tan"
	item_state = "tan"

/obj/item/clothing/shoes/f13/brownie //Make a craft recipe, and delete this comment.
	name = "Коричневые ботинки"
	desc = "Пара коричневых кожаных ботинок из шкур диких животных."
	icon_state = "brownie"
	item_state = "brownie"

/obj/item/clothing/shoes/f13/fancy
	name = "Черные ботинки"
	desc = "Пара модных черных туфель." //Nice shoes!
	icon_state = "fancy"
	item_state = "fancy"

/obj/item/clothing/shoes/f13/cowboy
	name = "Ковбойские ботинки"
	desc = "Пара сапог из воловьей кожи со шпорами.<br>У них кубинский каблук, закругленный до острого носка, высокий голенище и, по традиции, никакой шнуровки."
	icon_state = "cowboy"
	item_state = "cowboy"

/obj/item/clothing/shoes/f13/explorer
	name = "Поношеные ботинки"
	desc = "Пара слегка поношенных рабочих ботинок со стальными носками.<br>хорошо держут пальцы ног в безопасности от падающего мусора, который вы найдете среди руин."
	icon_state = "explorer"
	armor = list(melee = 10, bullet = 10, laser = 0, energy = 0, bomb = 10, bio = 0, rad = 0, fire = 10, acid = 0)

/obj/item/clothing/shoes/f13/explorer/militia
	name = "Поношенные ботинки СОО"
	desc = "Пара слегка поношенных рабочих ботинок со стальными носками, выданных членам Сил обороны оазиса. Хорошо держит пальцы ног в безопасности от тех, кто стремится их сожрать."

/obj/item/clothing/shoes/f13/khan
	name = "Ботинки Великих Ханов"
	desc = "Пара кожаных сапог, усиленных металлическими пластинами.<br>Их обычно носят рейдеры из Великих Ханов"
	icon_state = "legionmetal" //It's that simple
	item_state = "legionmetal"
	armor = list(melee = 10, bullet = 10, laser = 0, energy = 0, bomb = 10, bio = 0, rad = 0, fire = 10, acid = 0)

/obj/item/clothing/shoes/f13/raidertreads
	name = "Рейдерские лохмотья"
	desc = "Дряхлый сапог на одной ноге, какая-то неопознаваемая херня на другой, верх рейдерской моды."
	icon_state = "raidertreads"
	item_state = "raidertreads"

/obj/item/clothing/shoes/f13/military
	name = "Военные ботинки"
	desc = "Высокоскоростные боевые ботинки без сопротивления, предназначенные для использования армией США перед Великой войной."
	icon_state = "military"
	item_state = "military"
	permeability_coefficient = 0.01
	clothing_flags = NOSLIP
	armor = list(melee = 10, bullet = 10, laser = 0, energy = 0, bomb = 10, bio = 0, rad = 0, fire = 10, acid = 0)
	strip_delay = 40
	resistance_flags = 0

/obj/item/clothing/shoes/f13/military/light
	name = "Улучшенные боевые ботинки"
	desc = "Высокоскоростные боевые ботинки без сопротивления, предназначенные для использования американскими спецназовцами перед Великой войной.<br>Подошвы сделаны из газированной резины, чтобы заглушить движение владельца."
//	stepsound = FALSE
	clothing_flags = NOSLIP

/obj/item/clothing/shoes/f13/military/diesel
	name = "Мужские дизельные ботинки"
	desc = "Модные мужские сапоги со стальными носками."
	icon_state = "diesel_m"
	item_state = "diesel_m"
	armor = list(melee = 20, bullet = 10, laser = 10, energy = 10, bomb = 10, bio = 0, rad = 0, fire = 0, acid = 0)
	cold_protection = FEET
	min_cold_protection_temperature = SHOES_MIN_TEMP_PROTECT

/obj/item/clothing/shoes/f13/military/female/diesel
	name = "Женские дизельные ботинки"
	desc = "Модные женские сапоги со стальными носками."
	icon_state = "diesel_f"
	item_state = "diesel_f"
	armor = list(melee = 20, bullet = 10, laser = 10, energy = 10, bomb = 10, bio = 0, rad = 0, fire = 0, acid = 0)
	cold_protection = FEET
	min_cold_protection_temperature = SHOES_MIN_TEMP_PROTECT

/obj/item/clothing/shoes/f13/military/ncr
	name = "Патрульные ботинки"
	desc = "Пара стандартных коричневых ботинок, с обтяжкой."
	icon_state = "ncr_boots"
	item_state = "ncr"

/obj/item/clothing/shoes/f13/military/ncr_officer
	name = "Ботинки офицера НКР"
	desc = "Пара высоких черных, до блеска начищенных кожаных ботинок, туго зашнурованных. Они определенно принадлежат офицеру."
	icon_state = "ncr_officer_boots"
	item_state = "explorer"

/obj/item/clothing/shoes/f13/military/ncr_scout
	name = "Ботинки скаута НКР"
	desc = "Пара кожаных сапог на толстой подошве, изрядно поношенных хозяином."
	icon_state = "laced"
	item_state = "laced"

/obj/item/clothing/shoes/f13/military/legionleather
	name = "Кожаные ботинки"
	desc = "Пара кожаных сапог, которые, кажется, в основном целы, хоть и слегка поношены. Они принадлежат новобранцу легионеру Легиона Цезаря"
	icon_state = "legionleather"
	item_state = "legionleather"

/obj/item/clothing/shoes/f13/military/legionmetal
	name = "Покрытые металлом сапоги"
	desc = "Пара кожаных ботинок, которые были сильно залатаны и усилены легкими металлическими пластинами вокруг пятки и лодыжек, чтобы защитить пользователя."
	icon_state = "legionmetal"
	item_state = "legionmetal"
	armor = list(melee = 20, bullet = 20, laser = 10, energy = 10, bomb = 20, bio = 0, rad = 0, fire = 20, acid = 0)

/obj/item/clothing/shoes/f13/military/legionlegate
	name = "Ботинки из тяжелого металла"
	desc = "Пара тяжелых кожаных ботинок с накладывающимися друг на друга стальными пластинами, прикрепленными спереди, сбоку и сзади, размером 14. Они принадлежат легату Легиона Цезаря."
	icon_state = "legionlegate"
	item_state = "legionlegate"
	armor = list(melee = 30, bullet = 30, laser = 20, energy = 20, bomb = 30, bio = 0, rad = 10, fire = 30, acid = 10)

/obj/item/clothing/shoes/f13/military/generalboot
	name = "Ботинки полиции"
	desc = "Тестируются"
	icon_state = "militiaboots"
	item_state = "militiaboots"

//Fluff

/obj/item/clothing/shoes/f13/swimfins
	name = "Ласты"
	desc = "Я тебя конечно поздравляю с тем, что ты нашёл ласты в пустыне, но теперь тебе нужно найти и ещё и много воды, чтобы поплавать."
	icon_state = "flippers"
	item_state = "flippers"
	clothing_flags = NOSLIP

/obj/item/clothing/shoes/f13/moon
	name = "Лунные ботинки"
	desc = "Эти ботинки созданы с тонкой резиновой внешней поверхностью и ячеистой резиновой подошвой, покрытой красочными нейлоновыми тканями и использующими пенополиуретан.<br>На Луну!"
	icon_state = "moon"
	item_state = "moon"
	armor = list(melee = 40, bullet = 20, laser = 20, energy = 20, bomb = 20, bio = 10, rad = 50, fire = 0, acid = 0)
	cold_protection = FEET
	min_cold_protection_temperature = SHOES_MIN_TEMP_PROTECT
	heat_protection = FEET
	max_heat_protection_temperature = SHOES_MAX_TEMP_PROTECT
	clothing_flags = NOSLIP

/obj/item/clothing/shoes/f13/doom
	name = "Марсианские ботинки"
	desc = "Эти ботинки изготовлены из титанового сплава. На боку выгравированы какие-то руны.<br>На Марс!!"
	icon_state = "mars"
	item_state = "mars"
	armor = list(melee = 40, bullet = 20, laser = 20, energy = 20, bomb = 20, bio = 80, rad = 80, fire = 80, acid = 50)
	cold_protection = FEET
	min_cold_protection_temperature = SHOES_MIN_TEMP_PROTECT
	heat_protection = FEET
	max_heat_protection_temperature = SHOES_MAX_TEMP_PROTECT
	clothing_flags = NOSLIP

/obj/item/clothing/shoes/f13/miner
	name = "Шахтерские ботинки"
	desc = "Тяжелые рабочие ботинки с усиленными сталью носками и немного пушистой шерсти для дополнительного тепла."
	icon_state = "miner"
	item_state = "miner"
	armor = list(melee = 20, bullet = 0, laser = 0, energy = 0, bomb = 20, bio = 0, rad = 0, fire = 0, acid = 0)
	cold_protection = FEET
	min_cold_protection_temperature = SHOES_MIN_TEMP_PROTECT

/obj/item/clothing/shoes/f13/jamrock
	name = "Зелёные туфли из змеиной кожи"
	desc = "Они, возможно, потеряли часть своего блеска за эти годы, но эти зеленые туфли из крокодиловой кожи идеально подходят вам."
	icon_state = "jamrock_skins"
	item_state = "jamrock_skins"
	armor = list(melee = 20, bullet = 0, laser = 0, energy = 0, bomb = 20, bio = 0, rad = 0, fire = 0, acid = 0)
	cold_protection = FEET
	min_cold_protection_temperature = SHOES_MIN_TEMP_PROTECT