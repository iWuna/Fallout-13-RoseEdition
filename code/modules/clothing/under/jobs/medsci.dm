/*
 * Science
 */
/obj/item/clothing/under/rank/research_director
	desc = "Это костюм, который носят те, у кого есть ноу-хау, чтобы достичь должности \"Научного директора\". Его ткань обеспечивает незначительную защиту от биологических загрязнений."
	name = "Жилет научного директора"
	icon_state = "director"
	item_state = "lb_suit"
	item_color = "director"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 10, "bio" = 10, "rad" = 0, "fire" = 0, "acid" = 35)
	can_adjust = FALSE

/obj/item/clothing/under/rank/research_director/alt
	desc = "Может быть, когда-нибудь ты создашь свое собственное существо, полу-человек, полу-свинью. Его ткань обеспечивает незначительную защиту от биологических загрязнений."
	name = "Коричневый костюм научного директора"
	icon_state = "rdwhimsy"
	item_state = "rdwhimsy"
	item_color = "rdwhimsy"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 10, "bio" = 10, "rad" = 0, "fire" = 0, "acid" = 0)
	can_adjust = TRUE
	alt_covers_chest = TRUE

/obj/item/clothing/under/rank/research_director/turtleneck
	desc = "Темно-фиолетовая водолазка и коричневые брюки цвета хаки - для режиссера с превосходным чувством стиля."
	name = "Водолазка научного директора"
	icon_state = "rdturtle"
	item_state = "p_suit"
	item_color = "rdturtle"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 10, "bio" = 10, "rad" = 0, "fire" = 0, "acid" = 0)
	can_adjust = TRUE
	alt_covers_chest = TRUE

/obj/item/clothing/under/rank/scientist
	desc = "Он сделан из специального волокна, которое обеспечивает незначительную защиту от взрывчатых веществ. У него есть знаки, которые обозначают владельца как ученого."
	name = "Комбинезон ученого"
	icon_state = "toxins"
	item_state = "w_suit"
	item_color = "toxinswhite"
	permeability_coefficient = 0.5
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 10, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)


/obj/item/clothing/under/rank/chemist
	desc = "Он сделан из специального волокна, которое обеспечивает особую защиту от биологических опасностей. На нем нашивка с званием химика."
	name = "Комбинезон химика"
	icon_state = "chemistry"
	item_state = "w_suit"
	item_color = "chemistrywhite"
	permeability_coefficient = 0.5
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 10, "rad" = 0, "fire" = 50, "acid" = 65)

/*
 * Medical
 */
/obj/item/clothing/under/rank/chief_medical_officer
	desc = "Это комбинезон, который носят те, у кого есть опыт работы \"главным врачом\". Он обеспечивает незначительную биологическую защиту."
	name = "Комбинезон главного врача"
	icon_state = "cmo"
	item_state = "w_suit"
	item_color = "cmo"
	permeability_coefficient = 0.5
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 10, "rad" = 0, "fire" = 0, "acid" = 0)

/obj/item/clothing/under/rank/geneticist
	desc = "Он сделан из специального волокна, которое обеспечивает особую защиту от биологических опасностей. На нем есть полоса, обозначающая звание генетика."
	name = "Комбинезон генетика"
	icon_state = "genetics"
	item_state = "w_suit"
	item_color = "geneticswhite"
	permeability_coefficient = 0.5
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 10, "rad" = 0, "fire" = 0, "acid" = 0)

/obj/item/clothing/under/rank/virologist
	desc = "Он сделан из специального волокна, которое обеспечивает особую защиту от биологических опасностей. На нем нашивка вирусолога."
	name = "Комбинезон вирусолога"
	icon_state = "virology"
	item_state = "w_suit"
	item_color = "virologywhite"
	permeability_coefficient = 0.5
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 10, "rad" = 0, "fire" = 0, "acid" = 0)

/obj/item/clothing/under/rank/nursesuit
	desc = "Это комбинезон, который обычно носят медсестры в медицинском отсеке."
	name = "Костюм медсестры"
	icon_state = "nursesuit"
	item_state = "w_suit"
	item_color = "nursesuit"
	permeability_coefficient = 0.5
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 10, "rad" = 0, "fire" = 0, "acid" = 0)
	fitted = NO_FEMALE_UNIFORM
	can_adjust = FALSE

/obj/item/clothing/under/rank/medical
	desc = "Он сделан из специального волокна, которое обеспечивает незначительную защиту от биологических опасностей. На груди у него крест, означающий, что его владелец - обученный медик."
	name = "Комбинезон доктора"
	icon_state = "medical"
	item_state = "w_suit"
	item_color = "medical"
	permeability_coefficient = 0.5
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 10, "rad" = 0, "fire" = 0, "acid" = 0)

/obj/item/clothing/under/rank/medical/blue
	name = "Медицинский халат"
	desc = "Он сделан из специального волокна, которое обеспечивает незначительную защиту от биологических опасностей. Этот - нежно-голубой."
	icon_state = "scrubsblue"
	item_color = "scrubsblue"
	can_adjust = FALSE

/obj/item/clothing/under/rank/medical/green
	name = "Медицинский халат"
	desc = "Он сделан из специального волокна, которое обеспечивает незначительную защиту от биологических опасностей. Этот - темно-зеленый."
	icon_state = "scrubsgreen"
	item_color = "scrubsgreen"
	can_adjust = FALSE

/obj/item/clothing/under/rank/medical/purple
	name = "Медицинский халат"
	desc = "Он сделан из специального волокна, которое обеспечивает незначительную защиту от биологических опасностей. Этот - темно-фиолетовый."
	icon_state = "scrubspurple"
	item_color = "scrubspurple"
	can_adjust = FALSE
