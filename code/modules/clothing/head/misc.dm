

/obj/item/clothing/head/centhat
	name = "Неподходящая шляпа Vault-tec"
	icon_state = "centcom"
	desc = "Хорошо быть сморителем."
	item_state = "that"
	flags_inv = 0
	armor = list("melee" = 30, "bullet" = 15, "laser" = 30, "energy" = 10, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 50)
	strip_delay = 80

/obj/item/clothing/head/powdered_wig
	name = "Напудренный парик"
	desc = "Напудренный парик"
	icon_state = "pwig"
	item_state = "pwig"

/obj/item/clothing/head/that
	name = "Цилиндр"
	desc = "Такие шляпы носят Амиши"
	icon_state = "tophat"
	item_state = "that"
	dog_fashion = /datum/dog_fashion/head
	throwforce = 1

/obj/item/clothing/head/canada
	name = "Полосатый красный цилиндр"
	desc = "Пахнет как свежие пончики."
	icon_state = "canada"
	item_state = "canada"

/obj/item/clothing/head/redcoat
	name = "Шляпа от красного мундира"
	icon_state = "redcoat"
	desc = "<i>'Мне кажется, это рыжая'</i>"

/obj/item/clothing/head/mailman
	name = "Шляпа почтальона"
	icon_state = "mailman"
	desc = "<i>'Точно во время'</i> головной убор почтовой службы"

/obj/item/clothing/head/plaguedoctorhat
	name = "Шляпа чумного доктора"
	desc = "Когда-то ими пользовались чумные врачи. Они в значительной степени бесполезны."
	icon_state = "plaguedoctor"
	permeability_coefficient = 0.01

/obj/item/clothing/head/hasturhood
	name = "Капюшон Хастура"
	desc = "Он <i>невыразимо</i> стильный."
	icon_state = "hasturhood"
	flags_inv = HIDEHAIR
	flags_cover = HEADCOVERSEYES

/obj/item/clothing/head/nursehat
	name = "Шляпа медсестры"
	desc = "Позволяет быстро идентифицировать обученный медицинский персонал."
	icon_state = "nursehat"
	dynamic_hair_suffix = ""

	dog_fashion = /datum/dog_fashion/head/nurse

/obj/item/clothing/head/syndicatefake
	name = "Реплика чёрного космического шлема"
	icon_state = "syndicate-helm-black-red"
	item_state = "syndicate-helm-black-red"
	desc = "Пластиковая копия коммунистического космического шлема. В этом ты будешь выглядеть как настоящий кровожадный коммунист! Это игрушка, она не предназначена для использования в космосе!"
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR

/obj/item/clothing/head/cueball
	name = "Противоударный шлем"
	desc = "Большой, невыразительный белый шар, предназначенный для ношения на голове. Как ты вообще смотришь из этой штуки?"
	icon_state = "cueball"
	item_state="cueball"
	flags_cover = HEADCOVERSEYES|HEADCOVERSMOUTH
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR

/obj/item/clothing/head/snowman
	name = "Голова снеговика"
	desc = "Шар из белого пенопласта. Такой праздничный."
	icon_state = "snowman_h"
	item_state = "snowman_h"
	flags_cover = HEADCOVERSEYES
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR

/obj/item/clothing/head/justice
	name = "Шляпа правосудия"
	desc = "Сражайтесь за то, что справедливо!"
	icon_state = "justicered"
	item_state = "justicered"
	flags_inv = HIDEHAIR|HIDEEARS|HIDEEYES|HIDEFACE|HIDEFACIALHAIR
	flags_cover = HEADCOVERSEYES

/obj/item/clothing/head/justice/blue
	icon_state = "justiceblue"
	item_state = "justiceblue"

/obj/item/clothing/head/justice/yellow
	icon_state = "justiceyellow"
	item_state = "justiceyellow"

/obj/item/clothing/head/justice/green
	icon_state = "justicegreen"
	item_state = "justicegreen"

/obj/item/clothing/head/justice/pink
	icon_state = "justicepink"
	item_state = "justicepink"

/obj/item/clothing/head/rabbitears
	name = "Кроличьи ушки"
	desc = "Носить их абсолютно бесполезно, они хороши только для  повышения вашей сексуальной привлекательности."
	icon_state = "bunny"
	dynamic_hair_suffix = ""

	dog_fashion = /datum/dog_fashion/head/rabbit

/obj/item/clothing/head/simplekitty //See if these cant be put into the map because theyre functionally identical to rabbit ears
	name = "Кошачья повязка на голову"
	desc = "Повязка на голову с парой милых кошачьих ушек"
	icon_state = "kittyb"
	color = "#999999"
	dynamic_hair_suffix = ""


/obj/item/clothing/head/flatcap
	name = "Кепка"
	desc = "Кепка рабочего человека"
	icon_state = "flat_cap"
	item_state = "detective"

/obj/item/clothing/head/pirate
	name = "Щляпа пирата"
	desc = "Ррр!"
	icon_state = "pirate"
	item_state = "pirate"
	dog_fashion = /datum/dog_fashion/head/pirate

/obj/item/clothing/head/pirate/captain
	icon_state = "hgpiratecap"
	item_state = "hgpiratecap"

/obj/item/clothing/head/bandana
	name = "Бандана пирата"
	desc = "Ррр!"
	icon_state = "bandana"
	item_state = "bandana"
	dynamic_hair_suffix = ""

/obj/item/clothing/head/bowler
	name = "Шляпа-котелок"
	desc = "Джентльмены, элита на борту!"
	icon_state = "bowler"
	item_state = "bowler"
	dynamic_hair_suffix = ""

/obj/item/clothing/head/witchwig
	name = "Парик ведьмы"
	desc = "Ихихихиххи!"
	icon_state = "witch"
	item_state = "witch"
	flags_inv = HIDEHAIR

/obj/item/clothing/head/chicken
	name = "Голова курицы"
	desc = "Ко!"
	icon_state = "chickenhead"
	item_state = "chickensuit"
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR

/obj/item/clothing/head/griffin
	name = "Голова грифона"
	desc = "Почему не 'голова орла'? Никто не знает."
	icon_state = "griffinhat"
	item_state = "griffinhat"
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR

/obj/item/clothing/head/bearpelt
	name = "Шляпа из медьвежьей шкуры"
	desc = "Пушистая."
	icon_state = "bearpelt"
	item_state = "bearpelt"

/obj/item/clothing/head/xenos
	name = "Шлем ксеноса"
	icon_state = "xenos"
	item_state = "xenos_helm"
	desc = "Шлем из хитиновой инопланетной шкуры."
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR

/obj/item/clothing/head/fedora
	name = "Федора"
	icon_state = "fedora"
	item_state = "fedora"
	desc = "Очень крутая шляпа, если ты гангстер. Действительно дурацкая шляпа, если это не так."
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/small

/obj/item/clothing/head/fedora/suicide_act(mob/user)
	if(user.gender == FEMALE)
		return 0
	var/mob/living/carbon/human/H = user
	user.visible_message("<span class='suicide'>[user] is donning [src]! It looks like [user.p_theyre()] trying to be nice to girls.</span>")
	user.say("M'lady.")
	sleep(10)
	H.facial_hair_style = "Neckbeard"
	return(BRUTELOSS)

/obj/item/clothing/head/sombrero
	name = "Сомбреро"
	icon_state = "sombrero"
	item_state = "sombrero"
	desc = "Вы практически можете попробовать фиесту на вкус."
	flags_inv = HIDEHAIR

	dog_fashion = /datum/dog_fashion/head/sombrero

/obj/item/clothing/head/sombrero/green
	name = "Зелёное сомбреро"
	icon_state = "greensombrero"
	item_state = "greensombrero"
	desc = "Настолько же элегантное, как и танцы с кактусом."
	flags_inv = HIDEHAIR|HIDEFACE|HIDEEARS
	dog_fashion = null

/obj/item/clothing/head/sombrero/shamebrero
	name = "Стыдобреро"
	icon_state = "shamebrero"
	item_state = "shamebrero"
	desc = "После того как его надели, оно уже никогда не снимается."
	item_flags = NODROP
	dog_fashion = null

/obj/item/clothing/head/cone
	desc = "Этот конус пытается предупредить вас о чём-то!"
	name = "Предупреждающий конус"
	icon = 'icons/obj/janitor.dmi'
	icon_state = "cone"
	item_state = "cone"
	force = 1
	throwforce = 3
	throw_speed = 2
	throw_range = 5
	w_class = WEIGHT_CLASS_SMALL
	attack_verb = list("warned", "cautioned", "smashed")
	resistance_flags = NONE

/obj/item/clothing/head/santa
	name = "Шляпа Санты"
	desc = "В первый же день Рождества мой работодатель подарил мне это!"
	icon_state = "santahatnorm"
	item_state = "that"
	cold_protection = HEAD
	min_cold_protection_temperature = FIRE_HELM_MIN_TEMP_PROTECT
	dog_fashion = /datum/dog_fashion/head/santa

/obj/item/clothing/head/jester
	name = "Шляпа шута"
	desc = "Шляпа с колокольчиками, чтобы добавить немного веселья костюму."
	icon_state = "jester_hat"
	dynamic_hair_suffix = ""

/obj/item/clothing/head/rice_hat
	name = "Рисовая шляпа"
	desc = "Добро пожаловать на рисовые поля, сукины дети."
	icon_state = "rice_hat"

/obj/item/clothing/head/lizard
	name = "Шляпа из кожи ящерицы"
	desc = "Как много ящериц умерло, чтобы сделать это? НЕДОСТАТОЧНО!"
	icon_state = "lizard"

/obj/item/clothing/head/papersack
	name = "Шляпа из бумажного пакета"
	desc = "Бумажный пакет с грубо вырезанными отверстиями для глаз. Полезно для сокрытия своей личности или уродства."
	icon_state = "papersack"
	flags_inv = HIDEHAIR|HIDEFACE|HIDEEARS

/obj/item/clothing/head/papersack/smiley
	name = "Шляпа из бумажного пакета"
	desc = "Бумажный пакет с грубо вырезанными отверстиями для глаз и нарисованной на лицевой стороне отрывочной улыбкой. Совсем не жутко."
	icon_state = "papersack_smile"
	flags_inv = HIDEHAIR|HIDEFACE|HIDEEARS

/obj/item/clothing/head/crown
	name = "Корона"
	desc = "Корона, достойная короля, может быть, мелкого короля."
	icon_state = "crown"
	armor = list("melee" = 15, "bullet" = 10, "laser" = 15, "energy" = 0, "bomb" = 0, "bio" = 10, "rad" = 0, "fire" = 10, "acid" = 0)
	resistance_flags = FIRE_PROOF
	dynamic_hair_suffix = ""

/obj/item/clothing/head/crown/fancy
	name = "Великолепная корона"
	desc = "Корона, которую носят только высшие императоры<s>земли</s> космоса."
	icon_state = "fancycrown"

/obj/item/clothing/head/scarecrow_hat
	name = "Шляпа пугала"
	desc = "Простая соломенная шляпа."
	icon_state = "scarecrow_hat"

/obj/item/clothing/head/lobsterhat
	name = "Голова лобстера"
	desc = "Когда все идет к крабу, защита головы - лучший выбор."
	icon_state = "lobster_hat"
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR

/obj/item/clothing/head/drfreezehat
	name = "doctor freeze's wig"
	desc = "A cool wig for cool people."
	icon_state = "drfreeze_hat"
	flags_inv = HIDEHAIR

/obj/item/clothing/head/pharoah
	name = "Шляпа фараона"
	desc = "Ходи как Египтянин"
	icon_state = "pharoah_hat"
	icon_state = "pharoah_hat"

/obj/item/clothing/head/jester/alt
	name = "Шляпа шута"
	desc = "Шляпа с колокольчиками, чтобы добавить немного веселья костюму."
	icon_state = "jester_hat2"
	dynamic_hair_suffix = ""

/obj/item/clothing/head/nemes
	name = "Головной убор Немеса"
	desc = "Роскошная космическая гробница не входит в стоимость."
	icon_state = "nemes_headdress"
	icon_state = "nemes_headdress"

/obj/item/clothing/head/frenchberet
	name = "Французский берет"
	desc = "Качественный берет, настоянный на аромате курящих, пьющих вино парижан. По какой-то причине вы чувствуете себя менее склонным к военному конфликту."
	icon_state = "beretblack"

/obj/item/clothing/head/frenchberet/speechModification(M)
	if(copytext(M, 1, 2) != "*")
		M = " [M]"
		var/list/french_words = strings("french_replacement.json", "french")

		for(var/key in french_words)
			var/value = french_words[key]
			if(islist(value))
				value = pick(value)

			M = replacetextEx(M, " [uppertext(key)]", " [uppertext(value)]")
			M = replacetextEx(M, " [capitalize(key)]", " [capitalize(value)]")
			M = replacetextEx(M, " [key]", " [value]")

		if(prob(3))
			M += pick(" Honh honh honh!"," Honh!"," Zut Alors!")
	return trim(M)

//Fluff

/obj/item/clothing/head/fluff/cowboy
	name = "Шляпа ковбоя"
	desc = "Это широкополая шляпа с высокой тульей, наиболее известная как определяющий наряд североамериканского ковбоя."
	icon_state = "cowboy"
	item_state = "dethat"

/obj/item/clothing/head/fluff/bandit
	name = "Шляпа бандита"
	desc = "Черная ковбойская шляпа с большими полями, загнутыми по бокам, и серебряным орлом, приколотым спереди."
	icon_state = "bandit"
	item_state = "fedora"

/obj/item/clothing/head/fluff/gambler
	name = "Шляпа игрока"
	desc = "Идеально подходит для бродячего азартного игрока." //But I got to ramble (ramblin' man) //Oh I got to gamble (gamblin' man) //Got to got to ramble (ramblin' man) //I was born a ramblin' gamblin' man
	icon_state = "gambler"
	item_state = "dethat"

/obj/item/clothing/head/fluff/pot
	name = "Металлическая кастрюля"
	desc = "Шаг первый: начните с соуса.<br>Шаг второй: добавьте лапшу.<br>Шаг третий: перемешайте макароны.<br>Шаг четвертый: включите духовку.<br>Шаг пятый: сожгите дом."
	icon_state = "pot"
	item_state = "fedora"
	force = 10
	hitsound = 'sound/items/trayhit1.ogg'

/obj/item/clothing/head/fluff/battlecruiser
	name = "Шляпа капитана"
	icon_state = "battlecruiser"
	item_state = "battlecruiser"
	desc = "Ямато заряжен. Я тоже."
	armor = list(melee = 10, bullet = 16, laser = 0, energy = 0, bomb = 16, bio = 0, rad = 0)

/obj/item/clothing/head/fluff/Bikerhelmet
	name = "Футуристичный шлем"
	desc = "Какой-то шлем, словно из далекого будущего."
	icon_state = "biker_helmet"
	item_state = "biker_helmet"
	armor = list("melee" = 5, "bullet" = 5, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 100, "acid" = 0)
	resistance_flags = FIRE_PROOF
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR

//Fallout 13

/obj/item/clothing/head/f13/police
	name = "Довоенная полицейская шляпа"
	desc = "Это полицейская фуражка темно-синего цвета с серебряным значком на лицевой стороне.<br>на значке начертаны слова \"SPECIAL\" и \"полицейский\"."
	icon_state = "retropolice"
	item_state = "fedora"
	armor = list(melee = 10, bullet = 16, laser = 0, energy = 0, bomb = 25, bio = 0, rad = 0)
	dynamic_hair_suffix = ""

/obj/item/clothing/head/f13/stormchaser
	name = "stormchaser hat"
	icon_state = "stormchaser"
	item_state = "fedora"
	desc = "Home, home on the wastes,<br>Where the mole rat and the fire gecko play.<br>Where seldom is heard a discouraging word,<br>And my skin is not glowing all day."