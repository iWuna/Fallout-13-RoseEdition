//Just some alt-uniforms themed around Star Trek - Pls don't sue, Mr Roddenberry ;_;


/obj/item/clothing/under/trek
	can_adjust = FALSE


//TOS
/obj/item/clothing/under/trek/command
	name = "Униформа коммандования"
	desc = "Такую форму носят коммандующие офицеры."
	icon_state = "trek_command"
	item_color = "trek_command"
	item_state = "y_suit"

/obj/item/clothing/under/trek/engsec
	name = "Униформа инженеров и охраны"
	desc = "Униформа, которую носят офицеры инженерной службы или службы безопасности."
	icon_state = "trek_engsec"
	item_color = "trek_engsec"
	item_state = "r_suit"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0) //more sec than eng, but w/e.
	strip_delay = 50

/obj/item/clothing/under/trek/medsci
	name = "Униформа ученых и медиков"
	desc = "Такую униформу носят медицинские и научные офицеры"
	icon_state = "trek_medsci"
	item_color = "trek_medsci"
	item_state = "b_suit"


//TNG
/obj/item/clothing/under/trek/command/next
	icon_state = "trek_next_command"
	item_color = "trek_next_command"
	item_state = "r_suit"

/obj/item/clothing/under/trek/engsec/next
	icon_state = "trek_next_engsec"
	item_color = "trek_next_engsec"
	item_state = "y_suit"

/obj/item/clothing/under/trek/medsci/next
	icon_state = "trek_next_medsci"
	item_color = "trek_next_medsci"


//ENT
/obj/item/clothing/under/trek/command/ent
	icon_state = "trek_ent_command"
	item_color = "trek_ent_command"
	item_state = "bl_suit"

/obj/item/clothing/under/trek/engsec/ent
	icon_state = "trek_ent_engsec"
	item_color = "trek_ent_engsec"
	item_state = "bl_suit"

/obj/item/clothing/under/trek/medsci/ent
	icon_state = "trek_ent_medsci"
	item_color = "trek_ent_medsci"
	item_state = "bl_suit"


//Q
/obj/item/clothing/under/trek/Q
	name = "Французский мундир маршала"
	desc = "Что-то в нем ощущается не так..."
	icon_state = "trek_Q"
	item_color = "trek_Q"
	item_state = "r_suit"