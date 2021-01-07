/obj/item/clothing/head/soft
	name = "Складская кепка"
	desc = "Это бейсболка безвкусного желтого цвета."
	icon_state = "cargosoft"
	item_state = "helmet"
	item_color = "cargo"

	dog_fashion = /datum/dog_fashion/head/cargo_tech

	var/flipped = 0

/obj/item/clothing/head/soft/dropped()
	src.icon_state = "[item_color]soft"
	src.flipped=0
	..()

/obj/item/clothing/head/soft/verb/flipcap()
	set category = "Object"
	set name = "Кепка"

	flip(usr)


/obj/item/clothing/head/soft/AltClick(mob/user)
	..()
	if(!user.canUseTopic(src, BE_CLOSE, ismonkey(user)))
		return
	else
		flip(user)


/obj/item/clothing/head/soft/proc/flip(mob/user)
	if(!user.incapacitated())
		src.flipped = !src.flipped
		if(src.flipped)
			icon_state = "[item_color]soft_flipped"
			to_chat(user, "<span class='notice'>You flip the hat backwards.</span>")
		else
			icon_state = "[item_color]soft"
			to_chat(user, "<span class='notice'>You flip the hat back in normal position.</span>")
		usr.update_inv_head()	//so our mob-overlays update

/obj/item/clothing/head/soft/examine(mob/user)
	..()
	to_chat(user, "<span class='notice'>Alt-click the cap to flip it [flipped ? "forwards" : "backwards"].</span>")

/obj/item/clothing/head/soft/red
	name = "Красная кепка"
	desc = "Это бейсболка безвкусного красного цвета."
	icon_state = "redsoft"
	item_color = "red"
	dog_fashion = null

/obj/item/clothing/head/soft/blue
	name = "Синяя кепка"
	desc = "Это бейсболка безвкусного синего цвета."
	icon_state = "bluesoft"
	item_color = "blue"
	dog_fashion = null

/obj/item/clothing/head/soft/green
	name = "Зелёная кепка"
	desc = "Это бейсболка безвкусного зелёного цвета."
	icon_state = "greensoft"
	item_color = "green"
	dog_fashion = null

/obj/item/clothing/head/soft/yellow
	name = "Желтая кепка"
	desc = "Это бейсболка безвкусного жёлтого цвета."
	icon_state = "yellowsoft"
	item_color = "yellow"
	dog_fashion = null

/obj/item/clothing/head/soft/grey
	name = "Серая кепка"
	desc = "Это бейсболка безвкусного серого цвета."
	icon_state = "greysoft"
	item_color = "grey"
	dog_fashion = null

/obj/item/clothing/head/soft/orange
	name = "Оранжевая кепка"
	desc = "Это бейсболка безвкусного оранжевого цвета."
	icon_state = "orangesoft"
	item_color = "orange"
	dog_fashion = null

/obj/item/clothing/head/soft/mime
	name = "Кепка"
	desc = "Это бейсболка безвкусного цвета."
	icon_state = "mimesoft"
	item_color = "mime"
	dog_fashion = null

/obj/item/clothing/head/soft/purple
	name = "Фиолетовая кепка"
	desc = "Это бейсболка безвкусного фиолетового цвета."
	icon_state = "purplesoft"
	item_color = "purple"
	dog_fashion = null

/obj/item/clothing/head/soft/black
	name = "Чёрная кепка"
	desc = "Это бейсболка безвкусного черного цвета."
	icon_state = "blacksoft"
	item_color = "black"
	dog_fashion = null

/obj/item/clothing/head/soft/rainbow
	name = "Радужная кепка"
	desc = "Это бейсболка в яркой радуге цветов."
	icon_state = "rainbowsoft"
	item_color = "rainbow"
	dog_fashion = null

/obj/item/clothing/head/soft/sec
	name = "Кепка охраны"
	desc = "Это прочная бейсболка со вкусом подобранного красного цвета."
	icon_state = "secsoft"
	item_color = "sec"
	armor = list("melee" = 25, "bullet" = 25, "laser" = 16, "energy" = 16, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 20, "acid" = 50)
	strip_delay = 60
	dog_fashion = null

/obj/item/clothing/head/soft/emt
	name = "Кепка ОБР"
	desc = "Это бейсболка темно-бирюзового цвета с отражающим крестом на макушке."
	icon_state = "emtsoft"
	item_color = "emt"
	dog_fashion = null
