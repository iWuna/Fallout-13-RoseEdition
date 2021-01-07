/*
 * Job related
 */

//Botanist
/obj/item/clothing/suit/apron
	name = "Фартук"
	desc = "Обычный синий фартук"
	icon_state = "apron"
	item_state = "apron"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN
	allowed = list(/obj/item/reagent_containers/spray/plantbgone, /obj/item/plant_analyzer, /obj/item/seeds, /obj/item/reagent_containers/glass/bottle, /obj/item/reagent_containers/glass/beaker, /obj/item/cultivator, /obj/item/reagent_containers/spray/pestspray, /obj/item/hatchet, /obj/item/storage/bag/plants)

//Captain
/obj/item/clothing/suit/captunic
	name = "Парадный мундир капитана"
	desc = "Его носит капитан, чтобы показать свой класс."
	icon_state = "captunic"
	item_state = "bio_suit"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	flags_inv = HIDEJUMPSUIT
	allowed = list(/obj/item/disk, /obj/item/stamp, /obj/item/reagent_containers/food/drinks/flask, /obj/item/melee, /obj/item/storage/lockbox/medal, /obj/item/assembly/flash/handheld, /obj/item/storage/box/matches, /obj/item/lighter, /obj/item/clothing/mask/cigarette, /obj/item/storage/fancy/cigarettes, /obj/item/tank/internals/emergency_oxygen, /obj/item/tank/internals/plasmaman)

//Chaplain
/obj/item/clothing/suit/nun
	name = "Роба монашки"
	desc = "Максимальная чистота."
	icon_state = "nun"
	item_state = "nun"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS|HANDS
	flags_inv = HIDESHOES|HIDEJUMPSUIT
	allowed = list(/obj/item/storage/book/bible, /obj/item/nullrod, /obj/item/reagent_containers/food/drinks/bottle/holywater, /obj/item/storage/fancy/candle_box, /obj/item/candle, /obj/item/tank/internals/emergency_oxygen, /obj/item/tank/internals/plasmaman)

/obj/item/clothing/suit/studentuni
	name = "Роба студента"
	desc = "Униформа давно ушедшего института обучения."
	icon_state = "studentuni"
	item_state = "studentuni"
	body_parts_covered = ARMS|CHEST
	allowed = list(/obj/item/storage/book/bible, /obj/item/nullrod, /obj/item/reagent_containers/food/drinks/bottle/holywater, /obj/item/storage/fancy/candle_box, /obj/item/candle, /obj/item/tank/internals/emergency_oxygen, /obj/item/tank/internals/plasmaman)

/obj/item/clothing/suit/witchhunter
	name = "Одежда охотника на ведьм"
	desc = "Этот изношенный наряд был очень полезен в свое время."
	icon_state = "witchhunter"
	item_state = "witchhunter"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	allowed = list(/obj/item/storage/book/bible, /obj/item/nullrod, /obj/item/reagent_containers/food/drinks/bottle/holywater, /obj/item/storage/fancy/candle_box, /obj/item/candle, /obj/item/tank/internals/emergency_oxygen, /obj/item/tank/internals/plasmaman)

//Chef
/obj/item/clothing/suit/toggle/chef
	name = "Фартук Шефа"
	desc = "Фартук высококлассного шефа."
	icon_state = "chef"
	item_state = "chef"
	gas_transfer_coefficient = 0.9
	permeability_coefficient = 0.5
	body_parts_covered = CHEST|GROIN|ARMS
	allowed = list(/obj/item/kitchen, /obj/item/gun)
	togglename = "sleeves"

//Cook
/obj/item/clothing/suit/apron/chef
	name = "Фартук повара"
	desc = "Простой, тусклый белый фартук шеф-повара."
	icon_state = "apronchef"
	item_state = "apronchef"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN
	allowed = list(/obj/item/kitchen)

//Detective
/obj/item/clothing/suit/det_suit
	name = "Плащ"
	desc = "18-й многоцелевой плащ. Тот, кто носит его, занимается серьезным делом."
	icon_state = "detective"
	item_state = "det_suit"
	blood_overlay_type = "coat"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	armor = list("melee" = 25, "bullet" = 25, "laser" = 16, "energy" = 16, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 45)
	cold_protection = CHEST|GROIN|LEGS|ARMS
	heat_protection = CHEST|GROIN|LEGS|ARMS

/obj/item/clothing/suit/det_suit/Initialize()
	. = ..()
	allowed = GLOB.detective_vest_allowed

/obj/item/clothing/suit/det_suit/grey
	name = "Нуарный плащ"
	desc = "Серый плащ крутого частного детектива."
	icon_state = "greydet"
	item_state = "greydet"

//Engineering
/obj/item/clothing/suit/hazardvest
	name = "Жилет опасности"
	desc = "Жилет высокой видимости, используемый в рабочих зонах."
	icon_state = "hazard"
	item_state = "hazard"
	blood_overlay_type = "armor"
	allowed = list(/obj/item/flashlight, /obj/item/tank/internals/emergency_oxygen, /obj/item/tank/internals/plasmaman, /obj/item/t_scanner, /obj/item/radio)
	resistance_flags = NONE

//Lawyer
/obj/item/clothing/suit/toggle/lawyer
	name = "Синий пиджак"
	desc = "Остроумный пиджак."
	icon_state = "suitjacket_blue"
	item_state = "suitjacket_blue"
	blood_overlay_type = "coat"
	body_parts_covered = CHEST|ARMS
	togglename = "buttons"

/obj/item/clothing/suit/toggle/lawyer/purple
	name = "Финий пиджак"
	desc = "Щегольский пиджак."
	icon_state = "suitjacket_purp"
	item_state = "suitjacket_purp"

/obj/item/clothing/suit/toggle/lawyer/black
	name = "Черный пиджак"
	desc = "Профессиональный пиджак."
	icon_state = "suitjacket_black"
	item_state = "ro_suit"


//Mime
/obj/item/clothing/suit/suspenders
	name = "Подтяжки"
	desc = "Подтягивают иллюзию игры мима."
	icon = 'icons/obj/clothing/belts.dmi'
	icon_state = "suspenders"
	blood_overlay_type = "armor" //it's the less thing that I can put here

//Security
/obj/item/clothing/suit/security/officer
	name = "Жилет офицера СБ"
	desc = "Эта куртка предназначена для тех особых случаев, когда офицер Службы безопасности не обязан носить свою броню."
	icon_state = "officerbluejacket"
	item_state = "officerbluejacket"
	body_parts_covered = CHEST|ARMS

/obj/item/clothing/suit/security/warden
	name = "Жилет надзирателя"
	desc = "Идеально подходит для смотрителя, который хочет оставить впечатление стиля на тех, кто посещает бриг."
	icon_state = "wardenbluejacket"
	item_state = "wardenbluejacket"
	body_parts_covered = CHEST|ARMS

/obj/item/clothing/suit/security/hos
	name = "Жилет главы безопасности"
	desc = "Этот предмет одежды был специально разработан для утверждения высшей власти."
	icon_state = "hosbluejacket"
	item_state = "hosbluejacket"
	body_parts_covered = CHEST|ARMS

//Surgeon
/obj/item/clothing/suit/apron/surgical
	name = "Фартук хирурга"
	desc = "Стерильный синий фартук хирурга."
	icon_state = "surgical"
	allowed = list(/obj/item/scalpel, /obj/item/surgical_drapes, /obj/item/cautery, /obj/item/hemostat, /obj/item/retractor)

//Curator
/obj/item/clothing/suit/curator
	name = "Пальто охотника за сокровищами"
	desc = "Модная и легко бронированная, эта куртка пользуется популярностью у охотников за сокровищами к востоку от реки Колорадо."
	icon_state = "curator"
	item_state = "curator"
	blood_overlay_type = "coat"
	body_parts_covered = CHEST|ARMS
	allowed = list(/obj/item/tank/internals, /obj/item/melee/curator_whip, /obj/item/gun)
	armor = list("melee" = 25, "bullet" = 25, "laser" = 16, "energy" = 16, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 45)
	cold_protection = CHEST|ARMS
	heat_protection = CHEST|ARMS
