
//Chef
/obj/item/clothing/head/chefhat
	name = "Шляпа шеф-повара"
	item_state = "chef"
	icon_state = "chef"
	desc = "Командир в головном уборе шеф-повара."
	strip_delay = 10
	equip_delay_other = 10
	dynamic_hair_suffix = ""
	dog_fashion = /datum/dog_fashion/head/chef

/obj/item/clothing/head/chefhat/suicide_act(mob/user)
	user.visible_message("<span class='suicide'>[user] is donning [src]! It looks like [user.p_theyre()] trying to become a chef.</span>")
	user.say("Bork Bork Bork!")
	sleep(20)
	user.visible_message("<span class='suicide'>[user] climbs into an imaginary oven!</span>")
	user.say("BOOORK!")
	playsound(user, 'sound/machines/ding.ogg', 50, 1)
	return(FIRELOSS)

/obj/item/clothing/head/caphat
	name = "Шляпа капитана"
	desc = "Хорошо быть королём."
	icon_state = "captain"
	item_state = "that"
	flags_inv = 0
	armor = list("melee" = 10, "bullet" = 16, "laser" = 0, "energy" = 0, "bomb" = 16, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 50)
	strip_delay = 60
	dog_fashion = /datum/dog_fashion/head/captain

/obj/item/clothing/head/caphat/parade
	name = "Парадная фуражка капитана"
	desc = "Такие носят только капитаны высшего глаза."
	icon_state = "capcap"

	dog_fashion = null


/obj/item/clothing/head/hopcap
	name = "Фуражка главы персонала"
	icon_state = "hopcap"
	desc = "Символ истинного бюрократического микроменеджмента."
	armor = list("melee" = 10, "bullet" = 16, "laser" = 0, "energy" = 0, "bomb" = 16, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 50)
	dog_fashion = /datum/dog_fashion/head/hop

/obj/item/clothing/head/nun_hood
	name = "Капюшон монашки"
	desc = "Максимальное благочестие в этой звездной системе."
	icon_state = "nun_hood"
	flags_inv = HIDEHAIR
	flags_cover = HEADCOVERSEYES

/obj/item/clothing/head/fedora/det_hat
	name = "Фетровая шляпа детектива"
	desc = "Есть только один человек, который может вынюхать грязную вонь преступления, и он, вероятно, носит эту шляпу."
	icon_state = "detective"
	var/candy_cooldown = 0
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/small/detective
	dog_fashion = /datum/dog_fashion/head/detective

/obj/item/clothing/head/fedora/Initialize()
	. = ..()
	new /obj/item/reagent_containers/food/drinks/flask/det(src)

/obj/item/clothing/head/fedora/det_hat/examine(mob/user)
	..()
	to_chat(user, "<span class='notice'>Alt-click to take a candy corn.</span>")

/obj/item/clothing/head/fedora/det_hat/AltClick(mob/user)
	if(user.canUseTopic(src, BE_CLOSE, ismonkey(user)))
		..()
		if(loc == user)
			if(candy_cooldown < world.time)
				var/obj/item/reagent_containers/food/snacks/candy_corn/CC = new /obj/item/reagent_containers/food/snacks/candy_corn(src)
				user.put_in_hands(CC)
				to_chat(user, "You slip a candy corn from your hat.")
				candy_cooldown = world.time+1200
			else
				to_chat(user, "You just took a candy corn! You should wait a couple minutes, lest you burn through your stash.")

/obj/item/clothing/head/beret
	name = "Берет"
	desc = "Берет, любимый головной убор мима."
	icon_state = "beret"
	dog_fashion = /datum/dog_fashion/head/beret
	dynamic_hair_suffix = ""

/obj/item/clothing/head/beret/remnant
	name = "Берет Анклава"
	desc = "Берет, который обычно носят офицеры анклава. У него есть их символ на серебряной медали на фронте."
	icon_state = "remnant"
	item_state = "remnant"
	dynamic_hair_suffix = ""

/obj/item/clothing/head/beret/militia
	name = "Берет СОА"
	desc = "Зеленый берет, выданный членам Сил обороны оазиса."
	icon_state = "ncr_officer_beret"
	item_state = "ncr_officer_beret"
	dynamic_hair_suffix = ""
	armor = list("melee" = 35, "bullet" = 25, "laser" = 25, "energy" = 25, "bomb" = 30, "bio" = 20, "rad" = 0, "fire" = 50, "acid" = 0)

/obj/item/clothing/head/beret/militia/Initialize()
	. = ..()
	AddComponent(/datum/component/armor_plate)

/obj/item/clothing/head/beret/black
	name = "Чёрный берет"
	desc = "Черный берет, идеально подходящий для ветеранов войны и мрачных, задумчивых, мимов-антигероев."
	icon_state = "beretblack"

/obj/item/clothing/head/beret/highlander
	desc = "Это была белая ткань. <i>Была.</i>"
	item_flags = NODROP
	dog_fashion = null

/obj/item/clothing/head/HoS
	name = "Фуражка главы службы безопасности"
	desc = "Прочная стандартная фуражка начальника Службы безопасности. Для того, чтобы показал офицерам, кто здесь главный."
	icon_state = "hoscap"
	armor = list("melee" = 10, "bullet" = 16, "laser" = 0, "energy" = 0, "bomb" = 16, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 50)
	strip_delay = 80
	dynamic_hair_suffix = ""

/obj/item/clothing/head/HoS/syndicate
	name = "Фуражка синдиката"
	desc = "Черная фуражка, подходящая для высокопоставленного офицера синдиката."

/obj/item/clothing/head/HoS/beret
	name = "Берет главы службы безопасности"
	desc = "Прочный берет для начальника Службы безопасности, чтобы выглядеть стильно, не жертвуя при этом защитой."
	armor = list("melee" = 35, "bullet" = 25, "laser" = 25, "energy" = 25, "bomb" = 30, "bio" = 20, "rad" = 0, "fire" = 50, "acid" = 0)
	icon_state = "hosberetblack"

/obj/item/clothing/head/HoS/beret/Initialize()
	. = ..()
	AddComponent(/datum/component/armor_plate)

/obj/item/clothing/head/HoS/beret/syndicate
	name = "Чёрный берет"
	desc = "Черный берет с тонкой броневой подкладкой внутри. Стильный и надежный."

/obj/item/clothing/head/warden
	name = "Полицейская шляпа надзирателя"
	desc = "Это специальная бронированная шляпа, выданная начальнику Службы безопасности. Защищает голову от ударов."
	icon_state = "policehelm"
	armor = list("melee" = 35, "bullet" = 25, "laser" = 25, "energy" = 25, "bomb" = 30, "bio" = 20, "rad" = 0, "fire" = 50, "acid" = 0)
	strip_delay = 60
	dog_fashion = /datum/dog_fashion/head/warden

/obj/item/clothing/head/warden/Initialize()
	. = ..()
	AddComponent(/datum/component/armor_plate)

/obj/item/clothing/head/beret/sec
	name = "Берет охраны"
	desc = "Крепкий берет с эмблемой службы безопасности. Использует усиленную ткань, чтобы обеспечить достаточную защиту."
	icon_state = "beret_badge"
	armor = list("melee" = 10, "bullet" = 16, "laser" = 0, "energy" = 0, "bomb" = 16, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 50)
	strip_delay = 60
	dog_fashion = null

/obj/item/clothing/head/beret/sec/navyhos
	name = "Берет главы безопасности"
	desc = "Специальный берет с эмблемой начальника Службы безопасности. Символ превосходства, знак мужества, знак отличия."
	icon_state = "hosberet"

/obj/item/clothing/head/beret/sec/navywarden
	name = "Берет надзирателя"
	desc = "Специальный берет с эмблемой начальника тюрьмы. Для надзирателя."
	icon_state = "wardenberet"
	armor = list("melee" = 10, "bullet" = 16, "laser" = 0, "energy" = 0, "bomb" = 16, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 50)
	strip_delay = 60

/obj/item/clothing/head/beret/sec/navyofficer
	desc = "Специальный берет с эмблемой службы безопасности. Для офицеров высшего класса."
	icon_state = "officerberet"

/obj/item/clothing/head/fedora/curator
	name = "Фетровая шляпа охотника за сокровищами"
	desc = "Сегодня ты получил красное сообщение, малыш, но это не значит, что оно тебе должно нравиться."
	icon_state = "curator"
