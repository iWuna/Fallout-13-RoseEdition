/obj/item/clothing/under/color
	desc = "Стандартный цветной комбинезон. Разнообразие - это радость жизни!"

/obj/item/clothing/under/color/random
	icon_state = "random_jumpsuit"

/obj/item/clothing/under/color/random/Initialize()
	..()
	var/obj/item/clothing/under/color/C = pick(subtypesof(/obj/item/clothing/under/color) - /obj/item/clothing/under/color/random - /obj/item/clothing/under/color/grey/glorf - /obj/item/clothing/under/color/black/ghost)
	if(ishuman(loc))
		var/mob/living/carbon/human/H = loc
		H.equip_to_slot_or_del(new C(H), SLOT_W_UNIFORM) //or else you end up with naked assistants running around everywhere...
	else
		new C(loc)
	return INITIALIZE_HINT_QDEL

/obj/item/clothing/under/color/black
	name = "Черный комбинезон"
	icon_state = "black"
	item_state = "bl_suit"
	item_color = "black"
	resistance_flags = NONE

/obj/item/clothing/under/color/black/ghost
	item_flags = NODROP | DROPDEL

/obj/item/clothing/under/color/grey
	name = "Серый комбинезон"
	desc = "Со вкусом подобранный серый комбинезон, напоминающий о старых добрых временах."
	icon_state = "grey"
	item_state = "gy_suit"
	item_color = "grey"

/obj/item/clothing/under/color/grey/glorf
	name = "Древний комбинезон"
	desc = "Ужасно рваный и потертый серый комбинезон. Похоже, его не мыли больше десяти лет."

/obj/item/clothing/under/color/grey/glorf/hit_reaction(mob/living/carbon/human/owner, atom/movable/hitby, attack_text = "the attack", final_block_chance = 0, damage = 0, attack_type = MELEE_ATTACK)
	owner.forcesay(GLOB.hit_appends)
	return 0

/obj/item/clothing/under/color/blue
	name = "Синий комбинезон"
	icon_state = "blue"
	item_state = "b_suit"
	item_color = "blue"

/obj/item/clothing/under/color/green
	name = "Зеленый комбинезон"
	icon_state = "green"
	item_state = "g_suit"
	item_color = "green"

/obj/item/clothing/under/color/orange
	name = "Оранжевый комбинезон"
	desc = "Не носите это рядом с параноидальными офицерами безопасности."
	icon_state = "orange"
	item_state = "o_suit"
	item_color = "orange"

/obj/item/clothing/under/color/pink
	name = "Розовый комбинезон"
	icon_state = "pink"
	desc = "Просто глядя на него, вы чувствуете <i>стиль</i>."
	item_state = "p_suit"
	item_color = "pink"

/obj/item/clothing/under/color/red
	name = "Красный комбинезон"
	icon_state = "red"
	item_state = "r_suit"
	item_color = "red"

/obj/item/clothing/under/color/white
	name = "Комбинезон"
	icon_state = "white"
	item_state = "w_suit"
	item_color = "white"

/obj/item/clothing/under/color/white/Initialize()
	. = ..()
	AddComponent(/datum/component/spraycan_paintable)
	START_PROCESSING(SSobj, src)



/obj/item/clothing/under/color/yellow
	name = "Желтый комбинезон"
	icon_state = "yellow"
	item_state = "y_suit"
	item_color = "yellow"

/obj/item/clothing/under/color/darkblue
	name = "Тёмно-синий комбинезон"
	icon_state = "darkblue"
	item_state = "b_suit"
	item_color = "darkblue"

/obj/item/clothing/under/color/teal
	name = "Бирюзовый комбинезон"
	icon_state = "teal"
	item_state = "b_suit"
	item_color = "teal"

/obj/item/clothing/under/color/lightpurple
	name = "Фиолетовый комбинезон"
	icon_state = "lightpurple"
	item_state = "p_suit"
	item_color = "lightpurple"

/obj/item/clothing/under/color/darkgreen
	name = "Тёмно-зелёный комбинезон"
	icon_state = "darkgreen"
	item_state = "g_suit"
	item_color = "darkgreen"

/obj/item/clothing/under/color/lightbrown
	name = "Светло-коричневый комбинезон"
	icon_state = "lightbrown"
	item_state = "lb_suit"
	item_color = "lightbrown"

/obj/item/clothing/under/color/brown
	name = "Коричневый комбинезон"
	icon_state = "brown"
	item_state = "lb_suit"
	item_color = "brown"

/obj/item/clothing/under/color/maroon
	name = "Бордовый комбинезон"
	icon_state = "maroon"
	item_state = "r_suit"
	item_color = "maroon"

/obj/item/clothing/under/color/rainbow
	name = "Радужный комбинезон"
	desc = "Разноцветный комбинезон!"
	icon_state = "rainbow"
	item_state = "rainbow"
	item_color = "rainbow"
	can_adjust = FALSE
