/obj/item/clothing/gloves/color/yellow
	desc = "Эти перчатки защищают носителя от ударов тока."
	name = "Изолирующие перчатки"
	icon_state = "yellow"
	item_state = "ygloves"
	siemens_coefficient = 0
	permeability_coefficient = 0.05
	item_color="yellow"
	resistance_flags = NONE

/obj/item/clothing/gloves/color/fyellow
	desc = "Эти перчатки - дешевая подделка настоящих. Это ни в коем случае это не может плохо кончиться."
	name = "Дешёвые изолирующие перчатки"
	icon_state = "yellow"
	item_state = "ygloves"
	siemens_coefficient = 1			//Set to a default of 1, gets overridden in New()
	permeability_coefficient = 0.05
	item_color="yellow"
	resistance_flags = NONE

/obj/item/clothing/gloves/color/fyellow/New()
	..()
	siemens_coefficient = pick(0,0.5,0.5,0.5,0.5,0.75,1.5)

/obj/item/clothing/gloves/color/fyellow/old
	desc = "Старые поношенные изолирующие перчатки, надеюсь они всё ещё работают."
	name = "Поношенные изолирующи перчатки"

/obj/item/clothing/gloves/color/fyellow/old/Initialize()
	. = ..()
	siemens_coefficient = pick(0,0,0,0.5,0.5,0.5,0.75)

/obj/item/clothing/gloves/color/black
	desc = "Эти перчатки защищают от огня."
	name = "Чёрные перчатки"
	icon_state = "black"
	item_state = "blackgloves"
	item_color="black"
	cold_protection = HANDS
	min_cold_protection_temperature = GLOVES_MIN_TEMP_PROTECT
	heat_protection = HANDS
	max_heat_protection_temperature = GLOVES_MAX_TEMP_PROTECT
	resistance_flags = NONE
	var/can_be_cut = 1

/obj/item/clothing/gloves/color/black/hos
	item_color = "hosred"

/obj/item/clothing/gloves/color/black/ce
	item_color = "chief"

/obj/item/clothing/gloves/color/black/attackby(obj/item/I, mob/user, params)
	if(istype(I, /obj/item/wirecutters))
		if(can_be_cut && icon_state == initial(icon_state))//only if not dyed
			to_chat(user, "<span class='notice'>Вы отрезаете кончики пальцев от [src].</span>")
			I.play_tool_sound(src)
			new /obj/item/clothing/gloves/fingerless(drop_location())
			qdel(src)
	..()

/obj/item/clothing/gloves/color/orange
	name = "Оранжевые перчтки"
	desc = "Просто пара перчаток, ничем не отличаются от обычных."
	icon_state = "orange"
	item_state = "orangegloves"
	item_color="orange"

/obj/item/clothing/gloves/color/red
	name = "Красные перчатки"
	desc = "Просто пара перчаток, ничем не отличаются от обычных."
	icon_state = "red"
	item_state = "redgloves"
	item_color = "red"


/obj/item/clothing/gloves/color/red/insulated
	name = "Изолирующие перчатки"
	desc = "Эти перчатки защищают носителя от электричества."
	siemens_coefficient = 0
	permeability_coefficient = 0.05
	resistance_flags = NONE

/obj/item/clothing/gloves/color/rainbow
	name = "Радужные перчатки"
	desc = "Просто пара перчаток, ничем не отличаются от обычных."
	icon_state = "rainbow"
	item_state = "rainbowgloves"
	item_color = "rainbow"

/obj/item/clothing/gloves/color/rainbow/clown
	item_color = "clown"

/obj/item/clothing/gloves/color/blue
	name = "Синие перчатки"
	desc = "Просто пара перчаток, ничем не отличаются от обычных."
	icon_state = "blue"
	item_state = "bluegloves"
	item_color="blue"

/obj/item/clothing/gloves/color/purple
	name = "Фиолетовые перчатки"
	desc = "Просто пара перчаток, ничем не отличаются от обычных."
	icon_state = "purple"
	item_state = "purplegloves"
	item_color="purple"

/obj/item/clothing/gloves/color/green
	name = "Зелёные перчатки"
	desc = "Просто пара перчаток, ничем не отличаются от обычных."
	icon_state = "green"
	item_state = "greengloves"
	item_color="green"

/obj/item/clothing/gloves/color/grey
	name = "Серые перчатки"
	desc = "Просто пара перчаток, ничем не отличаются от обычных."
	icon_state = "gray"
	item_state = "graygloves"
	item_color="grey"

/obj/item/clothing/gloves/color/grey/rd
	item_color = "director"

/obj/item/clothing/gloves/color/grey/hop
	item_color = "hop"

/obj/item/clothing/gloves/color/light_brown
	name = "Светло коричневые перчатки"
	desc = "Просто пара перчаток, ничем не отличаются от обычных."
	icon_state = "lightbrown"
	item_state = "lightbrowngloves"
	item_color="light brown"

/obj/item/clothing/gloves/color/brown
	name = "Коричневые перчатки"
	desc = "Просто пара перчаток, ничем не отличаются от обычных."
	icon_state = "brown"
	item_state = "browngloves"
	item_color="brown"

/obj/item/clothing/gloves/color/brown/cargo
	item_color = "cargo"

/obj/item/clothing/gloves/color/captain
	desc = "Королевские синие перчатки с красивой золотой отделкой, алмазным противоударным покрытием и встроенным тепловым барьером. Шикарно."
	name = "Капитанские перчатки"
	icon_state = "captain"
	item_state = "egloves"
	item_color = "captain"
	siemens_coefficient = 0
	permeability_coefficient = 0.05
	cold_protection = HANDS
	min_cold_protection_temperature = GLOVES_MIN_TEMP_PROTECT
	heat_protection = HANDS
	max_heat_protection_temperature = GLOVES_MAX_TEMP_PROTECT
	strip_delay = 60
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 70, "acid" = 50)

/obj/item/clothing/gloves/color/latex
	name = "Латексные перчатки"
	desc = "Дешёвые стерильные перчатки, сделаные из латекса."
	icon_state = "latex"
	item_state = "lgloves"
	siemens_coefficient = 0.3
	permeability_coefficient = 0.01
	item_color="mime"
	transfer_prints = TRUE
	resistance_flags = NONE

/obj/item/clothing/gloves/color/latex/nitrile
	name = "Нитриловые перчатки"
	desc = "Дорогие стерильные перчатки, которые прочнее латекса."
	icon_state = "nitrile"
	item_state = "nitrilegloves"
	item_color = "cmo"
	transfer_prints = FALSE

/obj/item/clothing/gloves/color/white
	name = "Перчатки"
	desc = "Выглядят очень странно."
	icon_state = "white"
	item_state = "wgloves"
	item_color="white"

/obj/item/clothing/gloves/color/white/bos
	name = "Перчатки братства"
	desc = "Белые перчатки, надетые вместе с одеянием Братства."
	icon_state = "white"
	item_state = "wgloves"
	item_color="white"

/obj/item/clothing/gloves/color/white/redcoat
	item_color = "redcoat"

/obj/item/clothing/gloves/color/random
	name = "Случайные перчатки"
	desc = "Эти перчатки должны быть случайного цвета..."
	icon_state = "random_gloves"
	item_state = "wgloves"
	item_color = "mime"

/obj/item/clothing/gloves/color/random/Initialize()
	..()
	var/list/gloves = list(
		/obj/item/clothing/gloves/color/orange = 1,
		/obj/item/clothing/gloves/color/red = 1,
		/obj/item/clothing/gloves/color/blue = 1,
		/obj/item/clothing/gloves/color/purple = 1,
		/obj/item/clothing/gloves/color/green = 1,
		/obj/item/clothing/gloves/color/grey = 1,
		/obj/item/clothing/gloves/color/light_brown = 1,
		/obj/item/clothing/gloves/color/brown = 1,
		/obj/item/clothing/gloves/color/white = 1,
		/obj/item/clothing/gloves/color/rainbow = 1)

	var/obj/item/clothing/gloves/color/selected = pick(gloves)
	if(ishuman(loc))
		var/mob/living/carbon/human/H = loc
		H.equip_to_slot_or_del(new selected(H), SLOT_GLOVES)
	else
		new selected(loc)
	return INITIALIZE_HINT_QDEL

