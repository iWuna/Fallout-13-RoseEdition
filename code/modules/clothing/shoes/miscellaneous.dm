/obj/item/clothing/shoes/proc/step_action() //this was made to rewrite clown shoes squeaking
	SEND_SIGNAL(src, COMSIG_SHOES_STEP_ACTION)

/obj/item/clothing/shoes/sneakers/mime
	name = "Ботинки мима"
	icon_state = "mime"
	item_color = "mime"

/obj/item/clothing/shoes/sandal
	desc = "Пара довольно простых деревянных сандалий."
	name = "Сандали"
	icon_state = "wizard"
	strip_delay = 50
	equip_delay_other = 50
	permeability_coefficient = 0.9

/obj/item/clothing/shoes/sandal/marisa
	desc = "A pair of magic black shoes."
	name = "magic shoes"
	icon_state = "black"
	resistance_flags = FIRE_PROOF |  ACID_PROOF

/obj/item/clothing/shoes/sandal/magic
	name = "Магические сандали"
	desc = "Пара сандалий, наполненных магией."
	resistance_flags = FIRE_PROOF |  ACID_PROOF

/obj/item/clothing/shoes/galoshes
	desc = "Пара желтых резиновых сапог, предназначенных для предотвращения скольжения по мокрой поверхности."
	name = "Галоши"
	icon_state = "galoshes"
	permeability_coefficient = 0.01
	clothing_flags = NOSLIP
	slowdown = SHOES_SLOWDOWN+1
	strip_delay = 50
	equip_delay_other = 50
	resistance_flags = NONE
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 40, "acid" = 75)

/obj/item/clothing/shoes/galoshes/dry
	name = "Впитывающие калоши"
	desc = "Пара оранжевых резиновых сапог, предназначенных для предотвращения скольжения на влажных поверхностях, а также для их сушки."
	icon_state = "galoshes_dry"

/obj/item/clothing/shoes/galoshes/dry/step_action()
	var/turf/open/t_loc = get_turf(src)
	SEND_SIGNAL(t_loc, COMSIG_TURF_MAKE_DRY, TURF_WET_WATER, TRUE, INFINITY)

/obj/item/clothing/shoes/clown_shoes
	desc = "Стандартная клоунская обувь проказника. Черт возьми, они же огромные!"
	name = "Ботинки клоуна"
	icon_state = "clown"
	item_state = "clown_shoes"
	slowdown = SHOES_SLOWDOWN+1
	item_color = "clown"
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/shoes/clown

/obj/item/clothing/shoes/clown_shoes/Initialize()
	. = ..()
	AddComponent(/datum/component/squeak, list('sound/effects/clownstep1.ogg'=1,'sound/effects/clownstep2.ogg'=1), 50)

/obj/item/clothing/shoes/clown_shoes/equipped(mob/user, slot)
	. = ..()
	if(user.mind && user.mind.assigned_role == "Clown")
		SEND_SIGNAL(user, COMSIG_CLEAR_MOOD_EVENT, "noshoes")

/obj/item/clothing/shoes/clown_shoes/dropped(mob/user)
	. = ..()
	if(user.mind && user.mind.assigned_role == "Clown")
		SEND_SIGNAL(user, COMSIG_ADD_MOOD_EVENT, "noshoes", /datum/mood_event/noshoes)

/obj/item/clothing/shoes/clown_shoes/jester
	name = "Ботинки шута"
	desc = "Туфли придворных шутов, обновленные по современной скрипучей технологии."
	icon_state = "jester_shoes"

/obj/item/clothing/shoes/jackboots
	name = "Сапоги"
	desc = "Стандартные защитные боевые ботинки для боевых сценариев или боевых ситуаций. На все бои, на все времена."
	icon_state = "jackboots"
	item_state = "jackboots"
	lefthand_file = 'icons/mob/inhands/equipment/security_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/security_righthand.dmi'
	item_color = "hosred"
	strip_delay = 50
	equip_delay_other = 50
	resistance_flags = NONE
	permeability_coefficient = 0.05 //Thick soles, and covers the ankle
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/shoes

/obj/item/clothing/shoes/jackboots/fast
	slowdown = -1

/obj/item/clothing/shoes/winterboots
	name = "Зимние ботинки"
	desc = "Сапоги на подкладке из \"синтетического\" животного меха."
	icon_state = "winterboots"
	item_state = "winterboots"
	permeability_coefficient = 0.15
	cold_protection = FEET|LEGS
	min_cold_protection_temperature = SHOES_MIN_TEMP_PROTECT
	heat_protection = FEET|LEGS
	max_heat_protection_temperature = SHOES_MAX_TEMP_PROTECT
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/shoes

/obj/item/clothing/shoes/workboots
	name = "Рабочие ботинки"
	desc = "Стандартные инженерные рабочие ботинки на шнуровке для особо синих воротничков."
	icon_state = "workboots"
	item_state = "jackboots"
	lefthand_file = 'icons/mob/inhands/equipment/security_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/security_righthand.dmi'
	permeability_coefficient = 0.15
	strip_delay = 40
	equip_delay_other = 40
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/shoes

/obj/item/clothing/shoes/laced
	name = "Ботинки пустынного рейнджера"
	desc = "Пара зашнурованных тяжелых ботинок, принятых ветеранами-рейнджерами НКР после Договора об объединении рейнджеров."
	icon_state = "laced"
	item_state = "laced"
	strip_delay = 50
	equip_delay_other = 50
	resistance_flags = NONE
	permeability_coefficient = 0.05 //Thick soles, and covers the ankle
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/shoes

/obj/item/clothing/shoes/workboots/mining
	name = "Шахтерские ботинки"
	desc = "Шахтерские ботинки со стальным носком для добычи полезных ископаемых в опасных условиях. Очень хорошо умеет держать пальцы на ногах целыми."
	icon_state = "explorer"
	resistance_flags = FIRE_PROOF

/obj/item/clothing/shoes/cult
	name = "Ботинки призывателя Нар-Си"
	desc = "Пара сапог, которые носият последователи нар-Си."
	icon_state = "cult"
	item_state = "cult"
	item_color = "cult"
	cold_protection = FEET
	min_cold_protection_temperature = SHOES_MIN_TEMP_PROTECT
	heat_protection = FEET
	max_heat_protection_temperature = SHOES_MAX_TEMP_PROTECT

/obj/item/clothing/shoes/cult/alt
	name = "Ботинки культиста"
	icon_state = "cultalt"

/obj/item/clothing/shoes/cult/alt/ghost
	item_flags = NODROP | DROPDEL

/obj/item/clothing/shoes/cyborg
	name = "Ботинки киборга"
	desc = "Ботинки для костюма киборга."
	icon_state = "boots"

/obj/item/clothing/shoes/laceup
	name = "Зашнурованные ботинки"
	desc = "Верх моды, они ещё и предварительно отполированы!"
	icon_state = "laceups"
	equip_delay_other = 50

/obj/item/clothing/shoes/laceup/bos
	name = "Ботинки братства"
	desc = "Начищенные парадные туфли, как правило, носят с официальной одеждой Братства."
	icon_state = "laceups"
	equip_delay_other = 50

/obj/item/clothing/shoes/roman
	name = "Римские сандали"
	desc = "Сандалии на кожаных ремешках с пряжками."
	icon_state = "roman"
	item_state = "roman"
	strip_delay = 100
	equip_delay_other = 100
	permeability_coefficient = 0.9

/obj/item/clothing/shoes/griffin
	name = "Ботинки грифона"
	desc = "Пара сапог от костюма, сделанных по образцу птичьих когтей."
	icon_state = "griffinboots"
	item_state = "griffinboots"
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/shoes

/obj/item/clothing/shoes/bhop
	name = "Прыжковые ботинки"
	desc = "Специальная пара боевых ботинок со встроенной двигательной установкой для быстрого движения вперед."
	icon_state = "jetboots"
	item_state = "jetboots"
	item_color = "hosred"
	resistance_flags = FIRE_PROOF
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/shoes
	actions_types = list(/datum/action/item_action/bhop)
	permeability_coefficient = 0.05
	var/jumpdistance = 5 //-1 from to see the actual distance, e.g 4 goes over 3 tiles
	var/jumpspeed = 3
	var/recharging_rate = 60 //default 6 seconds between each dash
	var/recharging_time = 0 //time until next dash
	var/jumping = FALSE //are we mid-jump?

/obj/item/clothing/shoes/bhop/ui_action_click(mob/user, action)
	if(!isliving(user))
		return

	if(jumping)
		return

	if(recharging_time > world.time)
		to_chat(user, "<span class='warning'>Внутренние двигатели ботинок всё ещё перезаряжаются!</span>")
		return

	var/atom/target = get_edge_target_turf(user, user.dir) //gets the user's direction

	if (user.throw_at(target, jumpdistance, jumpspeed, spin = FALSE, diagonals_first = TRUE, callback = CALLBACK(src, .proc/hop_end)))
		jumping = TRUE
		playsound(src, 'sound/effects/stealthoff.ogg', 50, 1, 1)
		user.visible_message("<span class='warning'>[usr] быстро бежит вперёд!</span>")
	else
		to_chat(user, "<span class='warning'>Что-то не даёт вам бежать вперёд!</span>")

/obj/item/clothing/shoes/bhop/proc/hop_end()
	jumping = FALSE
	recharging_time = world.time + recharging_rate

/obj/item/clothing/shoes/singery
	name = "Желтые ботинки артиста"
	desc = "Эти ботинки просто созданы для танцев"
	icon_state = "ysing"
	equip_delay_other = 50

/obj/item/clothing/shoes/singerb
	name = "Синие ботинки артиста"
	desc = "Эти ботинки просто созданы для танцев."
	icon_state = "bsing"
	equip_delay_other = 50

/obj/item/clothing/shoes/bronze
	name = "Бронзовые ботинки"
	desc = "Гигантские неуклюжие башмаки, грубо сделанные из бронзы. Зачем кому-то носить это?"
	icon = 'icons/obj/clothing/clockwork_garb.dmi'
	icon_state = "clockwork_treads"

/obj/item/clothing/shoes/bronze/Initialize()
	. = ..()
	AddComponent(/datum/component/squeak, list('sound/machines/clockcult/integration_cog_install.ogg' = 1, 'sound/magic/clockwork/fellowship_armory.ogg' = 1), 50)

/obj/item/clothing/shoes/wheelys
	name = "У"
	desc = "Использует запатентованную технологию выдвижного колеса. Никогда не жертвуют скоростью ради стиля - не то, чтобы это давало много." //Thanks Fel
	icon_state = "wheelys"
	item_state = "wheelys"
	actions_types = list(/datum/action/item_action/wheelys)
	var/wheelToggle = FALSE //False means wheels are not popped out
	var/obj/vehicle/ridden/scooter/wheelys/W

/obj/item/clothing/shoes/wheelys/Initialize()
	. = ..()
	W = new /obj/vehicle/ridden/scooter/wheelys(null)

/obj/item/clothing/shoes/wheelys/ui_action_click(mob/user, action)
	if(!isliving(user))
		return
	if(!istype(user.get_item_by_slot(SLOT_SHOES), /obj/item/clothing/shoes/wheelys))
		to_chat(user, "<span class='warning'>Вы должны надеть ролики, чтобы использовать их!</span>")
		return
	if(!(W.is_occupant(user)))
		wheelToggle = FALSE
	if(wheelToggle)
		W.unbuckle_mob(user)
		wheelToggle = FALSE
		return
	W.forceMove(get_turf(user))
	W.buckle_mob(user)
	wheelToggle = TRUE

/obj/item/clothing/shoes/wheelys/dropped(mob/user)
	if(wheelToggle)
		W.unbuckle_mob(user)
		wheelToggle = FALSE
	..()

/obj/item/clothing/shoes/wheelys/Destroy()
	QDEL_NULL(W)
	. = ..()

/obj/item/clothing/shoes/kindleKicks
	name = "Горящие ролики"
	desc = "Они обязательно что-нибудь в тебе разожгут, и это не детская ностальгия..."
	icon_state = "kindleKicks"
	item_state = "kindleKicks"
	actions_types = list(/datum/action/item_action/kindleKicks)
	light_system = MOVABLE_LIGHT
	light_range = 2
	light_power = 3
	light_on = FALSE
	var/lightCycle = 0
	var/active = FALSE

/obj/item/clothing/shoes/kindleKicks/ui_action_click(mob/user, action)
	if(active)
		return
	active = TRUE
	set_light_color(rgb(rand(0, 255), rand(0, 255), rand(0, 255)))
	set_light_on(active)
	addtimer(CALLBACK(src, .proc/lightUp), 0.5 SECONDS)

/obj/item/clothing/shoes/kindleKicks/proc/lightUp(mob/user)
	if(lightCycle < 15)
		set_light_color(rgb(rand(0, 255), rand(0, 255), rand(0, 255)))
		lightCycle++
		addtimer(CALLBACK(src, .proc/lightUp), 0.5 SECONDS)
	else
		lightCycle = 0
		active = FALSE
		set_light_on(active)


//Fallout 13

/obj/item/clothing/shoes/legionleather
	name = "Кожаные ботинки легиона"
	desc = "Пара ботинок, которые носят рекруты легиона."
	icon_state = "legionleather"
	item_state = "legionleather"
	item_color = "cult"
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/shoes

/obj/item/clothing/shoes/legionmetal
	name = "Металлические ботинки легиона"
	desc = "Пара ботинок, которые носят ветераны легиона."
	icon_state = "legionmetal"
	item_state = "legionmetal"
	item_color = "cult"
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/shoes

/obj/item/clothing/shoes/legionlegat
	name = "Ботинки легата легиона"
	desc = "Ботинки, которые носит Легат Легиона."
	icon_state = "legionlegat"
	item_state = "legionlegat"
	item_color = "cult"
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/shoes

/obj/item/clothing/shoes/combat //basic syndicate combat boots for nuke ops and mob corpses
	name = "Боевые ботинки"
	desc = "Высокоскоростные бовые ботинки."
	icon_state = "combat"
	item_state = "combat"
	lefthand_file = 'icons/mob/inhands/equipment/security_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/security_righthand.dmi'
	strip_delay = 70
	resistance_flags = NONE
	permeability_coefficient = 0.05 //Thick soles, and covers the ankle
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/shoes
	slowdown = -0.05

/obj/item/clothing/shoes/combat/swat //overpowered boots for death squads
	name = "Тактические ботинки"
	desc = "Высокоскоростные бовые ботинки."
	permeability_coefficient = 0.01

/obj/item/clothing/shoes/combat/plate
	name = "Бронированные боевые ботинки"
	desc = "Пара сильно поношенных кожаных сапог с бронированными пластинами, привязанными вокруг них, защищая ноги пользователей от низко летящих осколков или снарядов."
	icon_state = "legionmetal"
	item_state = "legionmetal"
	item_color = "cult"
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/shoes
