/obj/item/clothing/under/pj/red
	name = "Красная пижама"
	desc = "Для сна."
	icon_state = "red_pyjamas"
	item_color = "red_pyjamas"
	item_state = "w_suit"
	can_adjust = FALSE

/obj/item/clothing/under/pj/blue
	name = "Синяя пижама"
	desc = "Для сна."
	icon_state = "blue_pyjamas"
	item_color = "blue_pyjamas"
	item_state = "w_suit"
	can_adjust = FALSE

/obj/item/clothing/under/patriotsuit
	name = "Патриотический костюм"
	desc = "Мотоцикл не прилагается."
	icon_state = "ek"
	item_state = "ek"
	item_color = "ek"
	can_adjust = FALSE

/obj/item/clothing/under/scratch
	name = "Белый костюм"
	desc = "Белый костюм, подходящий для отличного хозяина."
	icon_state = "scratch"
	item_state = "scratch"
	item_color = "scratch"
	can_adjust = FALSE

/obj/item/clothing/under/sl_suit
	desc = "Костюм Амишей."
	name = "Костюм Амишей"
	icon_state = "sl_suit"
	item_color = "sl_suit"
	can_adjust = FALSE

/obj/item/clothing/under/roman
	name = "Римская броня"
	desc = "Древняя римская броня. Сделана из полосок металла и кожи."
	icon_state = "roman"
	item_color = "roman"
	item_state = "armor"
	can_adjust = FALSE
	strip_delay = 100
	resistance_flags = NONE

/obj/item/clothing/under/waiter
	name = "Костюм официанта"
	desc = "Крайнае умная униформа с дополнительным карманом для чаевых."
	icon_state = "waiter"
	item_state = "waiter"
	item_color = "waiter"
	can_adjust = FALSE

/obj/item/clothing/under/rank/prisoner
	name = "Комбинезон заключенного"
	desc = "Стандартизированная одежда заключенного. Сенсоры всегда работают в режиме \"Полное отслеживание\"."
	icon_state = "prisoner"
	item_state = "o_suit"
	item_color = "prisoner"
	has_sensor = LOCKED_SENSORS
	sensor_mode = SENSOR_COORDS
	random_sensor = FALSE

/obj/item/clothing/under/rank/mailman
	name = "Костюм почтальона"
	desc = "<i>'Специальная доставка!'</i>"
	icon_state = "mailman"
	item_state = "b_suit"
	item_color = "mailman"

/obj/item/clothing/under/rank/psyche
	name = "Комбинезон психиатра"
	desc = "Прекрасно!"
	icon_state = "psyche"
	item_state = "p_suit"
	item_color = "psyche"

/obj/item/clothing/under/rank/clown/sexy
	name = "Сексуальный костюм"
	desc = "Этот костюм заставляет всех хотеть тебя отХОНКать!"
	icon_state = "sexyclown"
	item_state = "sexyclown"
	item_color = "sexyclown"
	body_parts_covered = CHEST|GROIN|LEGS
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/jabroni
	name = "Костюм неудачника"
	desc = "Клуб кожевного мастерства двумя этажами ниже."
	icon_state = "darkholme"
	item_state = "darkholme"
	item_color = "darkholme"
	can_adjust = FALSE

/obj/item/clothing/under/rank/vice
	name = "Комбинезон вице офицера"
	desc = "Это стандартный наряд красавчика, как на голо-видении."
	icon_state = "vice"
	item_state = "gy_suit"
	item_color = "vice"
	can_adjust = FALSE

/obj/item/clothing/under/rank/centcom_officer
	desc = "Такие костюмы носят офицеры Центрального Коммандования."
	name = "\improper CentCom officer's jumpsuit"
	icon_state = "officer"
	item_state = "g_suit"
	item_color = "officer"
	alt_covers_chest = TRUE

/obj/item/clothing/under/rank/centcom_commander
	desc = "Такой костюм носят представители высшего руководства Центрального Коммандования"
	name = "\improper CentCom officer's jumpsuit"
	icon_state = "centcom"
	item_state = "dg_suit"
	item_color = "centcom"

/obj/item/clothing/under/space
	name = "\improper NASA jumpsuit"
	desc = "Он имеет логотип НАСА и изготовлен из материалов, защищенных от космического пространства."
	icon_state = "black"
	item_state = "bl_suit"
	item_color = "black"
	w_class = WEIGHT_CLASS_BULKY
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.02
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST | GROIN | LEGS | ARMS //Needs gloves and shoes with cold protection to be fully protected.
	min_cold_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MAX_TEMP_PROTECT
	can_adjust = FALSE
	resistance_flags = NONE

/obj/item/clothing/under/acj
	name = "Костюм кибернетического администратора"
	icon_state = "syndicate"
	item_state = "bl_suit"
	item_color = "syndicate"
	desc = "Кибернетически усиленный комбинезон, используемый для административных обязанностей."
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.01
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	armor = list("melee" = 100, "bullet" = 100, "laser" = 100,"energy" = 100, "bomb" = 100, "bio" = 100, "rad" = 100, "fire" = 100, "acid" = 100)
	cold_protection = CHEST | GROIN | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MAX_TEMP_PROTECT
	can_adjust = FALSE
	resistance_flags = FIRE_PROOF | ACID_PROOF

/obj/item/clothing/under/owl
	name = "Униформа совы"
	desc = "Мягкий коричневый комбинезон из синтетических перьев и сильной убежденности."
	icon_state = "owl"
	item_state = "owl"
	item_color = "owl"
	can_adjust = FALSE

/obj/item/clothing/under/griffin
	name = "Униформа грифона"
	desc = "Мягкий коричневый комбинезон с белым воротником из синтетических перьев и жажды погрома."
	icon_state = "griffin"
	item_state = "griffin"
	item_color = "griffin"
	can_adjust = FALSE

/obj/item/clothing/under/cloud
	name = "Облако"
	desc = "Облако"
	icon_state = "cloud"
	item_color = "cloud"
	can_adjust = FALSE

/obj/item/clothing/under/gimmick/rank/captain/suit
	name = "Костюм капитана"
	desc = "Зеленый костюм и желтый галстук. Пример авторитета."
	icon_state = "green_suit"
	item_state = "green_suit"
	item_color = "green_suit"
	can_adjust = FALSE

/obj/item/clothing/under/gimmick/rank/head_of_personnel/suit
	name = "Костюм Главы Персонала"
	desc = "Бирюзовый костюм и желтый галстук. Авторитетный, но безвкусный."
	icon_state = "teal_suit"
	item_state = "g_suit"
	item_color = "teal_suit"
	can_adjust = FALSE

/obj/item/clothing/under/suit_jacket
	name = "Черный костюм"
	desc = "Черный костюм с красным галстуком. Крайне официальный."
	icon_state = "black_suit"
	item_state = "bl_suit"
	item_color = "black_suit"
	can_adjust = FALSE

/obj/item/clothing/under/suit_jacket/really_black
	name = "Исполнительный костюм"
	desc = "Строгий черный костюм с красным галстуком, предназначенный для лучших сотрудников станции."
	icon_state = "really_black_suit"
	item_state = "bl_suit"
	item_color = "black_suit"

/obj/item/clothing/under/suit_jacket/female
	name = "Исполнительный костюм"
	desc = "Строгий брючный женский костюм, предназначенный для лучших на станции."
	icon_state = "black_suit_fem"
	item_state = "black_suit_fem"
	item_color = "black_suit_fem"

/obj/item/clothing/under/suit_jacket/green
	name = "Зелёный костюм"
	desc = "Зеленый костюм и желтый галстук"
	icon_state = "green_suit"
	item_state = "dg_suit"
	item_color = "green_suit"
	can_adjust = FALSE

/obj/item/clothing/under/suit_jacket/red
	name = "Красный костюм"
	desc = "Красный костюм и синий галстук. Несколько формально."
	icon_state = "red_suit"
	item_state = "r_suit"
	item_color = "red_suit"

/obj/item/clothing/under/suit_jacket/charcoal
	name = "Тёмно-серый костюм"
	desc = "Темно-серый костюм и красный галстук. Очень профессионально."
	icon_state = "charcoal_suit"
	item_state = "charcoal_suit"
	item_color = "charcoal_suit"

/obj/item/clothing/under/suit_jacket/navy
	name = "Флотской костюм"
	desc = "Темно-синий костюм и красный галстук, предназначенный для лучших сотрудников станции."
	icon_state = "navy_suit"
	item_state = "navy_suit"
	item_color = "navy_suit"

/obj/item/clothing/under/suit_jacket/burgundy
	name = "Бордовый костюм"
	desc = "Бордовый костюм и черный галстук. Несколько формально."
	icon_state = "burgundy_suit"
	item_state = "burgundy_suit"
	item_color = "burgundy_suit"

/obj/item/clothing/under/suit_jacket/checkered
	name = "Клетчатый костюм"
	desc = "У вас очень красивый костюм. Жаль, если с ним что-нибудь случится, а?"
	icon_state = "checkered_suit"
	item_state = "checkered_suit"
	item_color = "checkered_suit"

/obj/item/clothing/under/suit_jacket/tan
	name = "Коричневый костюм"
	desc = "Коричневый костюм с желтым галстуком. Умно, но небрежно."
	icon_state = "tan_suit"
	item_state = "tan_suit"
	item_color = "tan_suit"

/obj/item/clothing/under/suit_jacket/white
	name = "Белый костюм"
	desc = "Белый костюм и пиджак с голубой рубашкой. Ты хочешь играть грубо? Ладно!"
	icon_state = "white_suit"
	item_state = "white_suit"
	item_color = "white_suit"

/obj/item/clothing/under/burial
	name = "погребальные одежды"
	desc = "Традиционная погребальная одежда начала 22 века."
	icon_state = "burial"
	item_state = "burial"
	item_color = "burial"
	has_sensor = NO_SENSORS

/obj/item/clothing/under/skirt/black
	name = "Черная юбка"
	desc = "Черная юбка, очень модная!"
	icon_state = "blackskirt"
	item_color = "blackskirt"
	body_parts_covered = CHEST|GROIN|ARMS
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/skirt/blue
	name = "Синяя юбка"
	desc = "Синяя, повседневная юбка."
	icon_state = "blueskirt"
	item_color = "blueskirt"
	item_state = "blueskirt"
	body_parts_covered = CHEST|GROIN|ARMS
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/skirt/red
	name = "Красная юбка"
	desc = "Красная, повседневная юбка."
	icon_state = "redskirt"
	item_color = "redskirt"
	item_state = "redskirt"
	body_parts_covered = CHEST|GROIN|ARMS
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/skirt/purple
	name = "Фиолетовая юбка"
	desc = "Красная, повседневная юбка."
	icon_state = "purpleskirt"
	item_color = "purpleskirt"
	item_state = "p_suit"
	body_parts_covered = CHEST|GROIN|ARMS
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/bride
	name = "Свадебное платье"
	desc = "Замысловатое белое свадебное платье"
	icon_state = "bride_white"
	item_state = "bride_white"
	item_color = "bride_white"

/obj/item/clothing/under/schoolgirl
	name = "Синяя униформа школьницы"
	desc = "Прямо как в том Японском аниме!"
	icon_state = "schoolgirl"
	item_state = "schoolgirl"
	item_color = "schoolgirl"
	body_parts_covered = CHEST|GROIN|ARMS
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/schoolgirl/red
	name = "Красная униформа школьницы"
	icon_state = "schoolgirlred"
	item_state = "schoolgirlred"
	item_color = "schoolgirlred"
	body_parts_covered = CHEST|GROIN|ARMS
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/schoolgirl/green
	name = "Зеленая униформа школьницы"
	icon_state = "schoolgirlgreen"
	item_state = "schoolgirlgreen"
	item_color = "schoolgirlgreen"
	body_parts_covered = CHEST|GROIN|ARMS
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/schoolgirl/orange
	name = "Оранжевая униформа школьницы"
	icon_state = "schoolgirlorange"
	item_state = "schoolgirlorange"
	item_color = "schoolgirlorange"
	body_parts_covered = CHEST|GROIN|ARMS
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/overalls
	name = "Комбинезон рабочего"
	desc = "Комплект прочного комбинезона для выполнения работы."
	icon_state = "overalls"
	item_state = "lb_suit"
	item_color = "overalls"
	can_adjust = FALSE

/obj/item/clothing/under/pirate
	name = "Пиратский костюм"
	desc = "Ррр!"
	icon_state = "pirate"
	item_state = "pirate"
	item_color = "pirate"
	can_adjust = FALSE

/obj/item/clothing/under/soviet
	name = "Советская униформа"
	desc = "За Родину!"
	icon_state = "soviet"
	item_state = "soviet"
	item_color = "soviet"
	can_adjust = FALSE

/obj/item/clothing/under/redcoat
	name = "Мундир"
	desc = "Выглядит старым."
	icon_state = "redcoat"
	item_state = "redcoat"
	item_color = "redcoat"
	can_adjust = FALSE

/obj/item/clothing/under/kilt
	name = "Кильт"
	desc = "Включает в себя обувь и плед."
	icon_state = "kilt"
	item_state = "kilt"
	item_color = "kilt"
	body_parts_covered = CHEST|GROIN|FEET
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/kilt/highlander
	desc = "Ты единственный, кто достоин этого килта.."
	item_flags = NODROP

/obj/item/clothing/under/sexymime
	name = "Сексуальный костюм мима"
	desc = "Единственный раз, когда вам не нравится смотреть на чью-то стойку."
	icon_state = "sexymime"
	item_state = "sexymime"
	item_color = "sexymime"
	body_parts_covered = CHEST|GROIN|LEGS
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/gladiator
	name = "Униформа гладиатора"
	desc = "Разве вы не развлекаетесь? Разве не поэтому вы здесь?"
	icon_state = "gladiator"
	item_state = "gladiator"
	item_color = "gladiator"
	body_parts_covered = CHEST|GROIN|ARMS
	fitted = NO_FEMALE_UNIFORM
	can_adjust = FALSE
	resistance_flags = NONE

/obj/item/clothing/under/gladiator/ash_walker
	desc = "Эта гладиаторская форма, кажется, покрыта пеплом и довольно устарела."
	has_sensor = NO_SENSORS

/obj/item/clothing/under/sundress
	name = "Сарафан"
	desc = "Хочется порезвиться на ромашковом поле."
	icon_state = "sundress"
	item_state = "sundress"
	item_color = "sundress"
	body_parts_covered = CHEST|GROIN
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/captainparade
	name = "Капитанская парадная форма"
	desc = "Роскошная одежда капитана для особых случаев."
	icon_state = "captain_parade"
	item_state = "by_suit"
	item_color = "captain_parade"
	can_adjust = FALSE

/obj/item/clothing/under/hosparademale
	name = "Парадная форма ХОСа"
	desc = "Мужская роскошная одежда главы Службы безопасности для особых случаев."
	icon_state = "hos_parade_male"
	item_state = "r_suit"
	item_color = "hos_parade_male"
	can_adjust = FALSE

/obj/item/clothing/under/hosparadefem
	name = "Парадная форма ХОСа"
	desc = "Женская роскошная одежда главы Службы безопасности для особых случаев."
	icon_state = "hos_parade_fem"
	item_state = "r_suit"
	item_color = "hos_parade_fem"
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/assistantformal
	name = "Официальная форма ассистента"
	desc = "Официальная одежда ассистента. Зачем ассистенту нужна официальная одежда, до сих пор неизвестно."
	icon_state = "assistant_formal"
	item_state = "gy_suit"
	item_color = "assistant_formal"
	can_adjust = FALSE

/obj/item/clothing/under/blacktango
	name = "Черное платье для танго"
	desc = "Наполнено Латинским огнем."
	icon_state = "black_tango"
	item_state = "wcoat"
	item_color = "black_tango"
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/stripeddress
	name = "Полосатое платье"
	desc = "Стиль в космосе."
	icon_state = "striped_dress"
	item_state = "stripeddress"
	item_color = "striped_dress"
	fitted = FEMALE_UNIFORM_FULL
	can_adjust = FALSE

/obj/item/clothing/under/sailordress
	name = "Матросское платье"
	desc = "Официальная одежда для ведущей леди."
	icon_state = "sailor_dress"
	item_state = "sailor_dress"
	item_color = "sailor_dress"
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/redeveninggown
	name = "Красное вечернее платье"
	desc = "Модное платье для певцов в космических барах."
	icon_state = "red_evening_gown"
	item_state = "redeveninggown"
	item_color = "red_evening_gown"
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/maid
	name = "Костюм горничной"
	desc = "Сделано в китае."
	icon_state = "maid"
	item_state = "maid"
	item_color = "maid"
	body_parts_covered = CHEST|GROIN
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/maid/Initialize()
	. = ..()
	var/obj/item/clothing/accessory/maidapron/A = new (src)
	attach_accessory(A)

/obj/item/clothing/under/janimaid
	name = "Униформа горничной"
	desc = "Простая униформа горничной для работы по дому."
	icon_state = "janimaid"
	item_state = "janimaid"
	item_color = "janimaid"
	body_parts_covered = CHEST|GROIN
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/plaid_skirt
	name = "Красная клетчатая юбка"
	desc = "Опрятная красная юбка с белой блузкой."
	icon_state = "plaid_red"
	item_state = "plaid_red"
	item_color = "plaid_red"
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = TRUE
	alt_covers_chest = TRUE

/obj/item/clothing/under/plaid_skirt/blue
	name = "Синяя клетчатая юбка"
	desc = "Опрятная синяя юбка с белой блузкой."
	icon_state = "plaid_blue"
	item_state = "plaid_blue"
	item_color = "plaid_blue"
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = TRUE
	alt_covers_chest = TRUE

/obj/item/clothing/under/plaid_skirt/purple
	name = "Фиолетовая клетчатая юбка"
	desc = "Опрятная фиолетовая юбка с белой блузкой."
	icon_state = "plaid_purple"
	item_state = "plaid_purple"
	item_color = "plaid_purple"
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = TRUE
	alt_covers_chest = TRUE

/obj/item/clothing/under/singery
	name = "Желтый костюм певца"
	desc = "Просто глядя на это, хочется петь."
	icon_state = "ysing"
	item_state = "ysing"
	item_color = "ysing"
	fitted = NO_FEMALE_UNIFORM
	alternate_worn_layer = ABOVE_SHOES_LAYER
	can_adjust = FALSE

/obj/item/clothing/under/singerb
	name = "Синий костюм певца"
	desc = "Просто глядя на это, хочется петь."
	icon_state = "bsing"
	item_state = "bsing"
	item_color = "bsing"
	fitted = NO_FEMALE_UNIFORM
	alternate_worn_layer = ABOVE_SHOES_LAYER
	can_adjust = FALSE

/obj/item/clothing/under/plaid_skirt/green
	name = "Зеленая клетчатая юбка"
	desc = "Опрятная зеленая юбка с белой блузкой."
	icon_state = "plaid_green"
	item_state = "plaid_green"
	item_color = "plaid_green"
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = TRUE
	alt_covers_chest = TRUE

/obj/item/clothing/under/jester
	name = "Костюм шута"
	desc = "Веселое платье, очень подходящее для развлечения твоего хозяина."
	icon_state = "jester"
	item_state = "jester"
	item_color = "jester"
	can_adjust = FALSE

/obj/item/clothing/under/jester/alt
	icon_state = "jester2"

/obj/item/clothing/under/jester/dark
	name = "Хаотичный костюм шута"
	desc = "Наполненный хаосом, этот наряд заставляет вас чувствовать, что вы можете сделать все, что угодно!"
	icon_state = "d_jester"
	item_state = "dark_jester"
	item_color = "d_jester"

/obj/item/clothing/under/geisha
	name = "Костюм гейши"
	desc = "Милый космический семпай не прилагается."
	icon_state = "geisha"
	item_color = "geisha"
	can_adjust = FALSE

/obj/item/clothing/under/villain
	name = "Костюм злодея"
	desc = "Смена гардероба необходима, если вы когда-нибудь захотите поймать настоящего супергероя."
	icon_state = "villain"
	item_state = "villain"
	item_color = "villain"
	can_adjust = FALSE

/obj/item/clothing/under/sailor
	name = "Костюм моряка"
	desc = "Шкипер в кают-компании пьет Джин'."
	icon_state = "sailor"
	item_state = "sailor"
	item_color = "sailor"
	can_adjust = FALSE

/obj/item/clothing/under/saloon_dress
	name = "Платье салуна"
	desc = "Наряд для девушек из салуна."
	icon_state = "dress_saloon_s"
	item_state = "dress_saloon_s"
	item_color = "dress_saloon_s"
	can_adjust = FALSE

/obj/item/clothing/under/weddingdress_blue
	name = "Голубое свадебное платье"
	desc = "Нарядное довоенное свадебное платье из драгоценных материалов. Это - синее."
	icon_state = "bride_blue_s"
	item_state = "bride_blue_s"
	item_color = "bride_blue_s"
	can_adjust = FALSE

/obj/item/clothing/under/weddingdress_orange
	name = "Оранжевое свадебное платье"
	desc = "Нарядное довоенное свадебное платье из драгоценных материалов. Это - оранжевое."
	icon_state = "bride_orange_s"
	item_state = "bride_orange_s"
	item_color = "bride_orange_s"
	can_adjust = FALSE

/obj/item/clothing/under/weddingdress_purple
	name = "Фиолетовое свадебное платье"
	desc = "Нарядное довоенное свадебное платье из драгоценных материалов. Это - фиолетовое."
	icon_state = "bride_purple_s"
	item_state = "bride_purple_s"
	item_color = "bride_purple_s"
	can_adjust = FALSE

/obj/item/clothing/under/weddingdress_red
	name = "Красное свадебное платье"
	desc = "Нарядное довоенное свадебное платье из драгоценных материалов. Это - красное."
	icon_state = "bride_red_s"
	item_state = "bride_red_s"
	item_color = "bride_red_s"
	can_adjust = FALSE

/obj/item/clothing/under/orange_dress
	name = "Оранжевое платье"
	desc = "Оранжевое довоенное платье. Это обрезано."
	icon_state = "dress_orange_s"
	item_state = "dress_orange_s"
	item_color = "dress_orange_s"
	can_adjust = FALSE

/obj/item/clothing/under/yellow_dress
	name = "Желтое платье"
	desc = "Желтое довоенное платье. Кажется, что оно идет ниже колен."
	icon_state = "dress_yellow_s"
	item_state = "dress_yellow_s"
	item_color = "dress_yellow_s"
	can_adjust = FALSE

/obj/item/clothing/under/formalblack_dress
	name = "Черное платье"
	desc = "Официальное черное платье."
	icon_state = "dress_black"
	item_state = "dress_black"
	item_color = "dress_black"
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = TRUE
	alt_covers_chest = TRUE

/obj/item/clothing/under/cheongsam_dress
	name = "Ципао"
	desc = "Традиционное, облегающее восточное платье."
	icon_state = "cheongsam_s"
	item_state = "cheongsam_s"
	item_color = "cheongsam_s"
	can_adjust = FALSE

/obj/item/clothing/under/orange_skirt
	name = "Оранжевая юбка"
	desc = "Строгая оранжевая юбка с блузкой."
	icon_state = "huresource_s"
	item_state = "huresource_s"
	item_color = "huresource_s"
	can_adjust = FALSE

/obj/item/clothing/under/brown_skirt
	name = "Коричневая юбка"
	desc = "Строгая коричневая юбка с блузкой."
	icon_state = "dress_rd_s"
	item_state = "dress_rd_s"
	item_color = "dress_rd_s"
	can_adjust = FALSE

/obj/item/clothing/under/businessattire_tanned
	name = "Выдубленый бизнес костюм"
	desc = "Выдубленый костюм с галстуком и брюками."
	icon_state = "rdalt_s"
	item_state = "rdalt_s"
	item_color = "rdalt_s"
	can_adjust = FALSE

/obj/item/clothing/under/businessattire_manager
	name = "Костюм менеджера"
	desc = "Типичный наряд, который носили менеджеры до войны. Этот комплект поставляется с рубашкой с длинными рукавами без пуговиц на манжетах, брюками, поясом и галстуком-клипсой."
	icon_state = "manager"
	item_state = "manager"
	item_color = "manager"
	can_adjust = TRUE
	alt_covers_chest = TRUE

/obj/item/clothing/under/emr_dispatch
	name = "Костюм диспетчера скорой помощи"
	desc = "Костюм диспетчера скорой помощи. С кахкисом и  синей рубашкой с воротником."
	icon_state = "dispatch_s"
	item_state = "dispatch_s"
	item_color = "dispatch_s"
	can_adjust = FALSE

/obj/item/clothing/under/flower_dress
	name = "Цветочное платье"
	desc = "Платье, сделанное из синтетических цветов, сшитых таким образом, чтобы сделать платье."
	icon_state = "flower_dress"
	item_state = "flower_dress"
	item_color = "flower_dress"
	can_adjust = FALSE

/obj/item/clothing/under/flamenco
	name = "Платье для фламенко"
	desc = "Традиционное облегающее платье фламенко."
	icon_state = "flamenco"
	item_state = "flamenco"
	item_color = "flamenco"
	can_adjust = FALSE

/obj/item/clothing/under/western_bustle
	name = "Наряд барменши"
	desc = "Красный наряд барменши, похожий на тот, что можно увидеть в таверне."
	icon_state = "western_bustle"
	item_state = "western_bustle"
	item_color = "western_bustle"
	can_adjust = FALSE

/obj/item/clothing/under/jeanshorts
	name = "Джинсовые шорты"
	desc = "Пара прочных джинсовых шорт."
	icon_state = "jean_shorts"
	item_state = "jean_shorts"
	item_color = "jean_shorts"
	can_adjust = FALSE

/obj/item/clothing/under/jeans_ripped
	name = "Рваные джинсы"
	desc = "Джинсы с множеством дырок."
	icon_state = "jean_ripped"
	item_state = "jean_ripped"
	item_color = "jean_ripped"
	can_adjust = FALSE

/obj/item/clothing/under/denim_skirt
	name = "Джинсовая юбка"
	desc = "Юбка из плотноых джинс."
	icon_state = "denim_skirt"
	item_state = "denim_skirt"
	item_color = "denim_skirt"
	can_adjust = FALSE

/obj/item/clothing/under/chaps
	name = "Чапы"
	desc = "Вуху, ковбой."
	icon_state = "chaps"
	item_state = "chaps"
	item_color = "chaps"
	can_adjust = FALSE

/obj/item/clothing/under/sundress/white
	name = "Белый сарафан"
	desc = "Белый сарафан с розовым декоративным цветочным рисунком"
	icon_state = "sundress_white"
	item_state = "sundress_white"
	item_color = "sundress_white"
	can_adjust = FALSE

/obj/item/clothing/under/dress/green
	name = "Зеленое цельное платье"
	desc = "Облегающее, цельное платье. Это - зеленое."
	icon_state = "dress_green"
	item_state = "dress_green"
	item_color = "dress_green"
	can_adjust = FALSE

/obj/item/clothing/under/dress/pink
	name = "Розовое цельное платье"
	desc = "Облегающее, цельное платье. Это - розовое."
	icon_state = "dress_pink"
	item_state = "dress_pink"
	item_color = "dress_pink"
	can_adjust = FALSE

/obj/item/clothing/under/skirt/black/swept
	name = "Черная угловая юбка"
	desc = "Юбка с угловым подолом. Он довольно короткий."
	icon_state = "skirt_swept"
	item_state = "skirt_swept"
	item_color = "skirt_swept"
	can_adjust = FALSE

/obj/item/clothing/under/croptop
	name = "Топик"
	desc = "Красный топик с джинсовыми джинсами"
	icon_state = "croptop"
	item_state = "croptop"
	item_color = "croptop"
	can_adjust = FALSE

/obj/item/clothing/under/corset
	name = "Корсет"
	desc = "Ограничительный, плотный, черный корсет."
	icon_state = "corset"
	item_state = "corset"
	item_color = "corset"
	can_adjust = FALSE


/obj/item/clothing/under/jamrock
	name = "Рубашка и брюки для диско"
	desc = "Эта белая атласная рубашка когда-то была модной. Раньше она действительно ловила свет. Теперь пахнет так, будто кто-то помочился в подмышки, а золотисто-коричневые брюки расклешены. Обычные расклешенные брюки были сапожного покроя, но это далеко не нормально. Это чьи-то пропитанные мочой, испачканные спермой брюки для вечеринок."
	icon_state = "jamrock_uniform"
	item_state = "jamrock_uniform"
	item_color = "jamrock_uniform"
	can_adjust = FALSE

/obj/item/clothing/under/qipao/black
	name = "Черное ципао"
	desc = "Традиционное, облегающее восточное платье. Это - черное."
	icon_state = "qipao"
	item_state = "qipao"
	item_color = "qipao"
	can_adjust = FALSE

/obj/item/clothing/under/qipao/red
	name = "Красное ципао"
	desc = "Традиционное, облегающее восточное платье. Это - красное ."
	icon_state = "qipao_red"
	item_state = "qipao_red"
	item_color = "qipao_red"
	can_adjust = FALSE

/obj/item/clothing/under/qipao/white
	name = "Белое ципао"
	desc = "Традиционное, облегающее восточное платье. Это - белое."
	icon_state = "qipao_white"
	item_state = "qipao_white"
	item_color = "qipao_white"
	can_adjust = FALSE

/obj/item/clothing/under/cheon/red
	name = "Красный чхон"
	desc = "Традиционный чон, который носят мужчины. Этот - красный."
	icon_state = "cheongr"
	item_state = "cheongr"
	item_color = "cheongr"
	can_adjust = FALSE

/obj/item/clothing/under/cheon/white
	name = "Белый чхон"
	desc = "Традиционный чон, который носят мужчины. Этот - белый."
	icon_state = "cheongw"
	item_state = "cheongw"
	item_color = "cheongw"
	can_adjust = FALSE

/obj/item/clothing/under/cheon/black
	name = "Черный чхон"
	desc = "Традиционный чон, который носят мужчины. Этот - черный."
	icon_state = "cheong"
	item_state = "cheong"
	item_color = "cheong"
	can_adjust = FALSE

/obj/item/clothing/under/plasmaman
	name = "Плазменный скафандр"
	desc = "Специальный защитный костюм, который позволяет плазменным формам жизни безопасно существовать в насыщенной кислородом среде и автоматически гасит их в критической ситуации. Несмотря на герметичность, он не пригоден для полетов в космос."
	icon_state = "plasmaman"
	item_state = "plasmaman"
	item_color = "plasmaman"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 100, "rad" = 0, "fire" = 95, "acid" = 95)
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	can_adjust = FALSE
	strip_delay = 80
	var/next_extinguish = 0
	var/extinguish_cooldown = 100
	var/extinguishes_left = 5


/obj/item/clothing/under/plasmaman/examine(mob/user)
	..()
	to_chat(user, "<span class='notice'>There are [extinguishes_left] extinguisher charges left in this suit.</span>")


/obj/item/clothing/under/plasmaman/proc/Extinguish(mob/living/carbon/human/H)
	if(!istype(H))
		return

	if(H.on_fire)
		if(extinguishes_left)
			if(next_extinguish > world.time)
				return
			next_extinguish = world.time + extinguish_cooldown
			extinguishes_left--
			H.visible_message("<span class='warning'>[H]'s suit automatically extinguishes [H.p_them()]!</span>","<span class='warning'>Your suit automatically extinguishes you.</span>")
			H.ExtinguishMob()
			new /obj/effect/particle_effect/water(get_turf(H))
	return 0

/obj/item/clothing/under/plasmaman/attackby(obj/item/E, mob/user, params)
	..()
	if (istype(E, /obj/item/extinguisher_refill))
		if (extinguishes_left == 5)
			to_chat(user, "<span class='notice'>The inbuilt extinguisher is full.</span>")
			return
		extinguishes_left = 5
		to_chat(user, "<span class='notice'>You refill the suit's built-in extinguisher, using up the cartridge.</span>")
		qdel(E)
		return
	return

/obj/item/extinguisher_refill
	name = "Кассета для огнетушителя скафандра"
	desc = "Кассета, заряженная сжатой смесью огнетушителя, используется для заправки автоматического огнетушителя на плазменных защитных костюмах."
	icon_state = "plasmarefill"
	icon = 'icons/obj/device.dmi'

/obj/item/clothing/under/rank/security/navyblue/russian
	name = "Униформа русского офицера"
	desc = "Последний писк российской моды."
	icon_state = "hostanclothes"
	item_state = "hostanclothes"
	item_color = "hostanclothes"

/obj/item/clothing/under/mummy
	name = "Бинты мумии"
	desc = "Верните плиту на место или терпите мои несвежие рекомендации."
	icon_state = "mummy"
	item_state = "mummy"
	item_color = "mummy"
	body_parts_covered = CHEST|GROIN|ARMS|LEGS
	fitted = NO_FEMALE_UNIFORM
	can_adjust = FALSE
	resistance_flags = NONE

/obj/item/clothing/under/scarecrow
	name = "Одежда пугала"
	desc = "Прекрасный камуфляж дя того, чтобы прятаться в ботанике."
	icon_state = "scarecrow"
	item_state = "scarecrow"
	item_color = "scarecrow"
	body_parts_covered = CHEST|GROIN|ARMS|LEGS
	fitted = NO_FEMALE_UNIFORM
	can_adjust = FALSE
	resistance_flags = NONE

/obj/item/clothing/under/draculass
	name = "Плащ дракулы"
	desc = "Костюм, сшитый в древнюю \"Викторианскую\" эру."
	icon_state = "draculass"
	item_state = "draculass"
	item_color = "draculass"
	body_parts_covered = CHEST|GROIN|ARMS
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/drfreeze
	name = "Морозный комбинезон доктора"
	desc = "Модифицированный комбинезон ученого, чтобы выглядеть особенно круто."
	icon_state = "drfreeze"
	item_state = "drfreeze"
	item_color = "drfreeze"
	can_adjust = FALSE

/obj/item/clothing/under/lobster
	name = "Костюм лобстера"
	desc = "Кто обезглавил талисман колледжа?"
	icon_state = "lobster"
	item_state = "lobster"
	item_color = "lobster"
	fitted = NO_FEMALE_UNIFORM
	can_adjust = FALSE

/obj/item/clothing/under/skeleton
	name = "Комбинезон скелета"
	desc = "Черный комбинезон с рисунком белых костей, напечатанных на нём. Жутко!"
	icon_state = "skeleton"
	item_state = "skeleton"
	item_color = "skeleton"
	body_parts_covered = CHEST|GROIN|ARMS|LEGS
	fitted = NO_FEMALE_UNIFORM
	can_adjust = FALSE
	resistance_flags = NONE
