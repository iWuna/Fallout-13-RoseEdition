/obj/item/clothing/suit/toggle/labcoat
	name = "Лабораторный халат"
	desc = "Костюм, защищающий от мелких разливов химикатов."
	icon_state = "labcoat"
	item_state = "labcoat"
	blood_overlay_type = "coat"
	body_parts_covered = CHEST|ARMS
	allowed = list(/obj/item/analyzer, /obj/item/stack/medical, /obj/item/dnainjector, /obj/item/reagent_containers/dropper, /obj/item/reagent_containers/syringe, /obj/item/reagent_containers/hypospray, /obj/item/healthanalyzer, /obj/item/flashlight/pen, /obj/item/reagent_containers/glass/bottle, /obj/item/reagent_containers/glass/beaker, /obj/item/reagent_containers/pill, /obj/item/storage/pill_bottle, /obj/item/paper, /obj/item/melee/classic_baton/telescopic, /obj/item/soap, /obj/item/sensor_device, /obj/item/tank/internals/emergency_oxygen, /obj/item/tank/internals/plasmaman)
	armor = list("melee" = 15, "bullet" = 10, "laser" = 15,"energy" = 0, "bomb" = 0, "bio" = 50, "rad" = 0, "fire" = 50, "acid" = 50)
	togglename = "buttons"
	species_exception = list(/datum/species/golem)

/obj/item/clothing/suit/toggle/labcoat/cmo
	name = "Лабораторный халат Глав Врача"
	desc = "Более синий, чем стандартная модель."
	icon_state = "labcoat_cmo"
	item_state = "labcoat_cmo"

/obj/item/clothing/suit/toggle/labcoat/emt
	name = "EMT's jacket"
	desc = "A dark blue jacket with reflective strips for emergency medical technicians."
	icon_state = "labcoat_emt"
	item_state = "labcoat_cmo"

/obj/item/clothing/suit/toggle/labcoat/mad
	name = "Лабораторный халат сумасшедшего"
	desc = "Заставляет вас выглядеть способным ударить кого-то по голове и выстрелить в космос."
	icon_state = "labgreen"
	item_state = "labgreen"

/obj/item/clothing/suit/toggle/labcoat/genetics
	name = "Лабораторный халат генетика"
	desc = "Костюм, защищающий от мелких химических разливов. Имеет синюю полоску на плече."
	icon_state = "labcoat_gen"

/obj/item/clothing/suit/toggle/labcoat/chemist
	name = "Лабораторный халат химика"
	desc = "Костюм, защищающий от мелких химических разливов. Имеет оранжевую полоску на плече."
	icon_state = "labcoat_chem"

/obj/item/clothing/suit/toggle/labcoat/virologist
	name = "Лабораторный халат ученого"
	desc = "Костюм, защищающий от мелких химических разливов. Обеспечивает несколько большую защиту от биологических опасностей, чем стандартная модель. Имеет зеленую полоску на плече."
	icon_state = "labcoat_vir"

/obj/item/clothing/suit/toggle/labcoat/science
	name = "Лабораторный халат ученого"
	desc = "Костюм, защищающий от мелких химических разливов. Имеет фиолетовую полоску на плече."
	icon_state = "labcoat_tox"

/obj/item/clothing/suit/toggle/labcoat/fieldscribe
	name = "Полевой костюм писца"
	desc = "Костюм, который защищает от непогоды и выглядит стильно, но не более того."
	icon_state = "fieldscribe"
	body_parts_covered = CHEST|ARMS
	allowed = list(/obj/item/gun)
	armor = list("melee" = 15, "bullet" = 16, "laser" = 0, "energy" = 0, "bomb" = 16, "bio" = 0, "rad" = 0, "fire" = 10, "acid" = 0)