
/obj/item/clothing/gloves/fingerless
	name = "Перчатки без пальцев"
	desc = "Простые черные перчатки без кончиков пальцев для тяжелой работы."
	icon_state = "fingerless"
	item_state = "fingerless"
	item_color = null	//So they don't wash.
	transfer_prints = TRUE
	strip_delay = 40
	equip_delay_other = 20
	cold_protection = HANDS
	min_cold_protection_temperature = GLOVES_MIN_TEMP_PROTECT

/obj/item/clothing/gloves/rifleman
	name = "Перчатки стрелка"
	desc = "Пара стрелковых перчаток. Большой и указательный пальцы были удалены, чтобы не ухудшать способность владельца стрелять."
	icon_state = "rifleman"
	item_state = "rifleman"
	item_color = null	//So they don't wash.
	transfer_prints = TRUE
	strip_delay = 40
	equip_delay_other = 20
	cold_protection = HANDS
	min_cold_protection_temperature = GLOVES_MIN_TEMP_PROTECT

/obj/item/clothing/gloves/patrol
	name = "Перчатки патрульного рейнджера"
	desc = "Пара перчаток рейнджера. Большой и указательный пальцы правой руки были удалены, чтобы не ухудшать способность владельца стрелять"
	icon_state = "patrol"
	item_state = "patrol"
	item_color = null	//So they don't wash.
	transfer_prints = TRUE
	strip_delay = 40
	equip_delay_other = 20
	cold_protection = HANDS
	min_cold_protection_temperature = GLOVES_MIN_TEMP_PROTECT

/obj/item/clothing/gloves/botanic_leather
	name = "Кожаные перчатки ботаника"
	desc = "Эти кожаные перчатки защищают от шипов, колючек, колючек, шипов и других вредных предметов растительного происхождения. К тому же они довольно теплые."
	icon_state = "leather"
	item_state = "ggloves"
	permeability_coefficient = 0.9
	cold_protection = HANDS
	min_cold_protection_temperature = GLOVES_MIN_TEMP_PROTECT
	heat_protection = HANDS
	max_heat_protection_temperature = GLOVES_MAX_TEMP_PROTECT
	resistance_flags = NONE
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 70, "acid" = 30)

/obj/item/clothing/gloves/combat
	name = "Боевые перчатки"
	desc = "Эти тактические перчатки огнеупорны и ударопрочны."
	icon_state = "black"
	item_state = "blackgloves"
	siemens_coefficient = 0
	permeability_coefficient = 0.05
	strip_delay = 80
	cold_protection = HANDS
	min_cold_protection_temperature = GLOVES_MIN_TEMP_PROTECT
	heat_protection = HANDS
	max_heat_protection_temperature = GLOVES_MAX_TEMP_PROTECT
	resistance_flags = NONE
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 80, "acid" = 50)

/obj/item/clothing/gloves/legion
	name = "Кожаные перчатки"
	desc = "Кожаные перчатки без пальцев для улучшения сцепления, которые носят легионеры."
	icon_state = "legion"
	item_state = "legion"
	item_color = null	//So they don't wash.
	transfer_prints = TRUE
	strip_delay = 40
	equip_delay_other = 20
	cold_protection = HANDS
	min_cold_protection_temperature = GLOVES_MIN_TEMP_PROTECT

/obj/item/clothing/gloves/legion/legate
	name = "Метталические перчатки"
	desc = "Тяжелые металлические перчатки, сделанные вручную."
	icon_state = "legionlegat"
	item_state = "legionlegat"
	transfer_prints = FALSE

/obj/item/clothing/gloves/Biker
	name = "Футуристичные перчатки."
	desc = "Перчатки футуристичного цвета."
	icon_state = "biker_gloves"
	item_state = "biker_gloves"
	transfer_prints = FALSE

/obj/item/clothing/gloves/bracer
	name = "Костяные наручи"
	desc = "Для тех случаев,когда вы ожидаете получить пощечину. Обеспечивает скромную защиту ваших рук."
	icon_state = "bracers"
	item_state = "bracers"
	item_color = null	//So they don't wash.
	transfer_prints = TRUE
	strip_delay = 40
	equip_delay_other = 20
	body_parts_covered = ARMS
	cold_protection = ARMS
	min_cold_protection_temperature = GLOVES_MIN_TEMP_PROTECT
	max_heat_protection_temperature = GLOVES_MAX_TEMP_PROTECT
	resistance_flags = NONE

/obj/item/clothing/gloves/rapid
	name = "Перчатки Полярной звезды"
	desc = "Один только взгляд на них наполняет вас желанием выбить из людей все дерьмо."
	icon_state = "rapid"
	item_state = "rapid"
	transfer_prints = TRUE
	var/warcry = "AT"

/obj/item/clothing/gloves/rapid/Touch(mob/living/target,proximity = TRUE)
	var/mob/living/M = loc

	if(M.a_intent == INTENT_HARM)
		M.changeNext_move(CLICK_CD_RAPID)
		if(warcry)
			M.say("[warcry]", ignore_spam = TRUE)
	.= FALSE

/obj/item/clothing/gloves/rapid/attack_self(mob/user)
	var/input = stripped_input(user,"Каким ты хочешь видеть свой боевой клич? Максимальная длина - 6 символов.", ,"", 7)
	if(input)
		warcry = input
