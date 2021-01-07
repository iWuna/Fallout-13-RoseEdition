/obj/item/clothing/accessory //Ties moved to neck slot items, but as there are still things like medals and armbands, this accessory system is being kept as-is
	name = "Аксессуар"
	desc = "Что-то пошло не так!"
	icon = 'icons/obj/clothing/accessories.dmi'
	icon_state = "plasma"
	item_state = ""	//no inhands
	item_color = "plasma" //On accessories, this controls the worn sprite. That's a bit weird.
	slot_flags = 0
	w_class = WEIGHT_CLASS_SMALL
	var/above_suit = FALSE
	var/minimize_when_attached = TRUE // TRUE if shown as a small icon in corner, FALSE if overlayed
	var/datum/component/storage/detached_pockets

/obj/item/clothing/accessory/proc/attach(obj/item/clothing/under/U, user)
	GET_COMPONENT(storage, /datum/component/storage)
	if(storage)
		if(SEND_SIGNAL(U, COMSIG_CONTAINS_STORAGE))
			return FALSE
		U.TakeComponent(storage)
		detached_pockets = storage
	U.attached_accessory = src
	forceMove(U)
	layer = FLOAT_LAYER
	plane = FLOAT_PLANE
	if(minimize_when_attached)
		transform *= 0.5	//halve the size so it doesn't overpower the under
		pixel_x += 8
		pixel_y -= 8
	U.add_overlay(src)

	if (islist(U.armor) || isnull(U.armor)) 										// This proc can run before /obj/Initialize has run for U and src,
		U.armor = getArmor(arglist(U.armor))	// we have to check that the armor list has been transformed into a datum before we try to call a proc on it
																					// This is safe to do as /obj/Initialize only handles setting up the datum if actually needed.
	if (islist(armor) || isnull(armor))
		armor = getArmor(arglist(armor))

	U.armor = U.armor.attachArmor(armor)

	if(isliving(user))
		on_uniform_equip(U, user)

	return TRUE

/obj/item/clothing/accessory/proc/detach(obj/item/clothing/under/U, user)
	if(detached_pockets && detached_pockets.parent == U)
		TakeComponent(detached_pockets)

	U.armor = U.armor.detachArmor(armor)

	if(isliving(user))
		on_uniform_dropped(U, user)

	if(minimize_when_attached)
		transform *= 2
		pixel_x -= 8
		pixel_y += 8
	layer = initial(layer)
	plane = initial(plane)
	U.cut_overlays()
	U.attached_accessory = null
	U.accessory_overlay = null

/obj/item/clothing/accessory/proc/on_uniform_equip(obj/item/clothing/under/U, user)
	return

/obj/item/clothing/accessory/proc/on_uniform_dropped(obj/item/clothing/under/U, user)
	return

/obj/item/clothing/accessory/AltClick(mob/user)
	if(istype(user) && user.canUseTopic(src, BE_CLOSE, ismonkey(user)))
		if(initial(above_suit))
			above_suit = !above_suit
			to_chat(user, "[src] will be worn [above_suit ? "above" : "below"] your suit.")

/obj/item/clothing/accessory/examine(mob/user)
	..()
	to_chat(user, "<span class='notice'>\The [src] can be attached to a uniform. Alt-click to remove it once attached.</span>")
	if(initial(above_suit))
		to_chat(user, "<span class='notice'>\The [src] can be worn above or below your suit. Alt-click to toggle.</span>")

/obj/item/clothing/accessory/waistcoat
	name = "Жилет"
	desc = "Для какой-то классной, убийственной забавы."
	icon_state = "waistcoat"
	item_state = "waistcoat"
	item_color = "waistcoat"
	minimize_when_attached = FALSE

/obj/item/clothing/accessory/maidapron
	name = "Фартук горничной"
	desc = "Лучшая часть костюма горничной."
	icon_state = "maidapron"
	item_state = "maidapron"
	item_color = "maidapron"
	minimize_when_attached = FALSE


//Ranks

/obj/item/clothing/accessory/ncr
    name = "(O-6) знаки отличия полковника"
    desc = "Офицер в чине полковника должен носить их."
    icon_state = "colonelrank"
    item_color = "colonelrank"
    minimize_when_attached = TRUE

/obj/item/clothing/accessory/ncr/CPT
    name = "(O-3) знаки отличия капитана"
    desc = "Офицер в чине капитана должен носить их."
    icon_state = "captainrank"
    item_color = "captainrank"
    minimize_when_attached = TRUE

/obj/item/clothing/accessory/ncr/LT
    name = "(O-1) знаки отличия лейтенанта"
    desc = "Офицер в чине лейтинанта должен носить их."
    icon_state = "lieutenantrank"
    item_color = "lieutenantrank"
    minimize_when_attached = TRUE

/obj/item/clothing/accessory/armband/med/ncr
	name = "Медицинская нарукавная повязка (O-1 Медицинский офицер)"
	desc = "Нарукавная повязка, которую носият медицинские офицеры НКР, чтобы показать свое звание и специальность. Этот - белый."

/obj/item/clothing/accessory/ncr/SSGT
    name = "(E-6) знаки отличия старжего сержанта"
    desc = "Офицер в чине старшего сержанта должен носить их."
    icon_state = "ncrenlisted"
    item_color = "ncrenlisted"
    minimize_when_attached = TRUE

/obj/item/clothing/accessory/ncr/SGT
    name = "(E-5) знаки отличия сержанта"
    desc = "Офицер в чине сержанта должен носить их."
    icon_state = "ncrenlisted"
    item_color = "ncrenlisted"
    minimize_when_attached = TRUE

/obj/item/clothing/accessory/armband/engine/ncr
    name = "Инженерная нарукавная повязка (E-5 Инженер)"
    desc = "Нарукавная повязка, которую носили инженеры НКР, чтобы показать их ранг и специальность. Этот оранжевый с отражающей полосой!"

/obj/item/clothing/accessory/ncr/CPL
    name = "(E-4) знаки отличия капрала"
    desc = "Капрал должен носить их."
    icon_state = "ncrenlisted"
    item_color = "ncrenlisted"
    minimize_when_attached = TRUE

/obj/item/clothing/accessory/ncr/SPC
    name = "(E-3) знаки отличия рядовго первого класса"
    desc = "Специалист должен носить их"
    icon_state = "ncrenlisted"
    item_color = "ncrenlisted"
    minimize_when_attached = TRUE

/obj/item/clothing/accessory/ncr/TPR
    name = "(E-3) знаки отличия рядовго первого класса"
    desc = "Солдат должен носить их."
    icon_state = "ncrenlisted"
    item_color = "ncrenlisted"
    minimize_when_attached = TRUE

/obj/item/clothing/accessory/ncr/REC
    name = "(E-2) знаки отличия рядовго"
    desc = "Рекрут должен носить их."
    icon_state = "ncrenlisted"
    item_color = "ncrenlisted"
    minimize_when_attached = TRUE

//BOSRanks

/obj/item/clothing/accessory/bos/initiateK
    name = "Знак рыцаря-искателя"
    desc = "Серебряная булавка с голубой тканью, такие носят посвященные, стремящиеся стать рыцарями."
    icon_state = "initiateK"
    item_color = "initiateK"
    minimize_when_attached = TRUE

/obj/item/clothing/accessory/bos/initiateS
    name = "Знак писца-претендента"
    desc = "Серебряная булавка с красной тканью, такие носят посвященные, стремящиеся стать писцами."
    icon_state = "initiateS"
    item_color = "initiateS"
    minimize_when_attached = TRUE

/obj/item/clothing/accessory/bos/knight
    name = "Знак рыцаря"
    desc = "Серебряная булавка с одним устройством и синей расцветкой, такие носят полноправные рыцари Братства."
    icon_state = "knight"
    item_color = "knight"
    minimize_when_attached = TRUE

/obj/item/clothing/accessory/bos/scribe
    name = "Знак писца"
    desc = "Серебряная булавка с одним устройством и красной окраской, такие носят полноправные писцы Братства."
    icon_state = "scribe"
    item_color = "scribe"
    minimize_when_attached = TRUE

/obj/item/clothing/accessory/bos/juniorpaladin
    name = "Знак начинающего паладина"
    desc = "Серебряная булавка с одним устройством и фиолетовой окраской. Такие носят паладинамы Братства."
    icon_state = "juniorpaladin"
    item_color = "juniorpaladin"
    minimize_when_attached = TRUE

/obj/item/clothing/accessory/bos/knightcaptain
    name = "Знаки рыцаря-капитана"
    desc = "Позолоченная, с серебряной подкладкой булавка с одним прибором и двумя распростертыми крыльями сбоку; золотой меч в центре на синей ткани. Такие носят рыцари-капитаны."
    icon_state = "knight-captain"
    item_color = "knight-captain"
    minimize_when_attached = TRUE

/obj/item/clothing/accessory/bos/seniorscribe
    name = "Знаки старшего писца"
    desc = "Серебряная булавка с одним позолоченным прибором, маленькими зазубринами на верхнем конце и золотым мечом в центре красной ткани, такие носят высокопоставленные старшие писцы."
    icon_state = "seniorscribe"
    item_color = "seniorscribe"
    minimize_when_attached = TRUE

/obj/item/clothing/accessory/bos/paladin
    name = "Знаки паладина"
    desc = "Серебряная булавка с одним прибором, серебряный меч в центре пурпурного цвета и зарубки, обозначающие ранг Паладина."
    icon_state = "paladin"
    item_color = "paladin"
    minimize_when_attached = TRUE

/obj/item/clothing/accessory/bos/seniorpaladin
    name = "Знаки старшего паладина"
    desc = "Серебряная булавка с одним позолоченным прибором, маленькими зазубринами на верхнем конце и золотым мечом в центре пурпурной ткани, такие носят высокопоставленные старшие Паладины."
    icon_state = "seniorpaladin"
    item_color = "seniorpaladin"
    minimize_when_attached = TRUE

/obj/item/clothing/accessory/bos/seniorknight
    name = "Знаки старшего рыцаря"
    desc = "Серебряная булавка с одним позолоченным прибором, маленькими зазубринами на верхнем конце и золотым мечом в центре пурпурной ткани, такие носят высокопоставленные старшие рыцари.."
    icon_state = "seniorknight"
    item_color = "seniorknight"
    minimize_when_attached = TRUE

/obj/item/clothing/accessory/bos/juniorknight
    name = "Знаки начинающего рыцаря"
    desc = "Серебряная булавка с одним устройством и синей расцветкой. Такие носят обучающиеся рыцари Братства."
    icon_state = "juniorknight"
    item_color = "juniorknight"
    minimize_when_attached = TRUE

/obj/item/clothing/accessory/bos/juniorscribe
    name = "Знаки начинающего писца"
    desc = "Серебряная булавка с одним устройством и красной окраской. Такие носят обучающиеся писцы Братства."
    icon_state = "juniorscribe"
    item_color = "juniorscribe"
    minimize_when_attached = TRUE

/obj/item/clothing/accessory/bos/headscribe
    name = "Знаки главного писаря"
    desc = "Позолоченная серебряная булавка с одним прибором и двумя распростертыми крыльями сбоку, золотой меч в центре на красной ткани. Такие носят главные писцы."
    icon_state = "headscribe"
    item_color = "headscribe"
    minimize_when_attached = TRUE

/obj/item/clothing/accessory/bos/sentinel
    name = "Знаки стража"
    desc = "Позолоченная, с серебряной подкладкой булавка с одним устройством и двумя распростертыми крыльями сбоку, золотой меч в центре пурпурной ткани. Такие носят стражи."
    icon_state = "sentinel"
    item_color = "sentinel"
    minimize_when_attached = TRUE

/obj/item/clothing/accessory/bos/elder
    name = "Знаки старшего"
    desc = "Позолоченная, с серебряной подкладкой булавка с одним прибором и двумя распростертыми крыльями сбоку; золотой меч в центре на зеленой ткани. На его верхней половине имеются насечки с драгоценными камнями, обозначающие ранг старейшины."
    icon_state = "elder"
    item_color = "elder"
    minimize_when_attached = TRUE
//Medals

/obj/item/clothing/accessory/medal
	name = "Бронзовая медаль"
	desc = "Бронзовая медаль."
	icon_state = "bronze"
	item_color = "bronze"
	materials = list(MAT_METAL=1000)
	resistance_flags = FIRE_PROOF
	var/medaltype = "medal" //Sprite used for medalbox
	var/commended = FALSE

//Pinning medals on people
/obj/item/clothing/accessory/medal/attack(mob/living/carbon/human/M, mob/living/user)
	if(ishuman(M) && (user.a_intent == INTENT_HELP))

		if(M.wear_suit)
			if((M.wear_suit.flags_inv & HIDEJUMPSUIT)) //Check if the jumpsuit is covered
				to_chat(user, "<span class='warning'>Medals can only be pinned on jumpsuits.</span>")
				return

		if(M.w_uniform)
			var/obj/item/clothing/under/U = M.w_uniform
			var/delay = 20
			if(user == M)
				delay = 0
			else
				user.visible_message("[user] is trying to pin [src] on [M]'s chest.", \
									 "<span class='notice'>You try to pin [src] on [M]'s chest.</span>")
			var/input
			if(!commended && user != M)
				input = stripped_input(user,"Please input a reason for this commendation, it will be recorded by Vault-Tec.", ,"", 140)
			if(do_after(user, delay, target = M))
				if(U.attach_accessory(src, user, 0)) //Attach it, do not notify the user of the attachment
					if(user == M)
						to_chat(user, "<span class='notice'>You attach [src] to [U].</span>")
					else
						user.visible_message("[user] pins \the [src] on [M]'s chest.", \
											 "<span class='notice'>You pin \the [src] on [M]'s chest.</span>")
						if(input)
							SSblackbox.record_feedback("associative", "commendation", 1, list("commender" = "[user.real_name]", "commendee" = "[M.real_name]", "medal" = "[src]", "reason" = input))
							GLOB.commendations += "[user.real_name] awarded <b>[M.real_name]</b> the <span class='medaltext'>[name]</span>! \n- [input]"
							commended = TRUE
							desc += "<br>The inscription reads: [input] - [user.real_name]"
							log_game("<b>[key_name(M)]</b> was given the following commendation by <b>[key_name(user)]</b>: [input]")
							message_admins("<b>[key_name(M)]</b> was given the following commendation by <b>[key_name(user)]</b>: [input]")

		else
			to_chat(user, "<span class='warning'>Medals can only be pinned on jumpsuits!</span>")
	else
		..()

/obj/item/clothing/accessory/medal/conduct
	name = "Медаль за выдающееся поведения"
	desc = "Бронзовая медаль За выдающееся поведение. Хотя это большая честь, это самая основная награда, присуждаемая Vault-Tec. Он часто вручается капитаном члену своей команды."

/obj/item/clothing/accessory/medal/bronze_heart
	name = "Бронзовая медаль в форме сердца"
	desc = "Бронзовая медаль в форме сердца, вручаемая за самопожертвование. Её часто награждают посмертно или за тяжелое ранение при исполнении служебных обязанностей."
	icon_state = "bronze_heart"

/obj/item/clothing/accessory/medal/ribbon
	name = "Лента"
	desc = "Лента"
	icon_state = "cargo"
	item_color = "cargo"

/obj/item/clothing/accessory/medal/ribbon/cargo
	name = "Награда \"складской работник смены\""
	desc = "Награда присуждается только тем грузовым техникам, которые проявили преданность своему долгу в соответствии с высочайшими традициями Каргонии."

/obj/item/clothing/accessory/medal/silver
	name = "Серебрянная медаль"
	desc = "Серебрянная медаль."
	icon_state = "silver"
	item_color = "silver"
	medaltype = "medal-silver"
	materials = list(MAT_SILVER=1000)

/obj/item/clothing/accessory/medal/silver/valor
	name = "Медаль за доблесть"
	desc = "Серебряная медаль, присуждаемая за исключительную доблесть."

/obj/item/clothing/accessory/medal/silver/security
	name = "Медаль охранника"
	desc = "Награда, выдающаяся за боевые заслуги и самопожертвование в защиту коммерческих интересов Vault-Tec. Часто присуждается сотрудникам Службы безопасности."

/obj/item/clothing/accessory/medal/gold
	name = "Золотая медаль"
	desc = "Престижная золотая медаль"
	icon_state = "gold"
	item_color = "gold"
	medaltype = "medal-gold"
	materials = list(MAT_GOLD=1000)

/obj/item/clothing/accessory/medal/gold/captain
	name = "Медаль капитана"
	desc = "Золотой медалью награждались исключительно те, кто был произведен в чин капитана. Это означает кодифицированные обязанности капитана и его неоспоримую власть над экипажем."
	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | ACID_PROOF

/obj/item/clothing/accessory/medal/gold/heroism
	name = "Медаль за выдающийся героизм"
	desc = "Чрезвычайно редкая золотая медаль, присуждаемая только цетральным коммандованием. Получить такую медаль - высшая честь, и их существует крайне мало. Этой медалью почти никогда не награждают никого, кроме командиров."

/obj/item/clothing/accessory/medal/plasma
	name = "Медаль из ультрацита"
	desc = "Эксцентричная медаль из ультрацита"
	icon_state = "plasma"
	item_color = "plasma"
	medaltype = "medal-plasma"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = -10, "acid" = 0) //It's made of plasma. Of course it's flammable.
	materials = list(MAT_PLASMA=1000)

/obj/item/clothing/accessory/medal/plasma/temperature_expose(datum/gas_mixture/air, exposed_temperature, exposed_volume)
	if(exposed_temperature > 300)
		atmos_spawn_air("plasma=20;TEMP=[exposed_temperature]")
		visible_message("<span class='danger'> \The [src] bursts into flame!</span>","<span class='userdanger'>Your [src] bursts into flame!</span>")
		qdel(src)

/obj/item/clothing/accessory/medal/plasma/nobel_science
	name = "Нобелевская научная медаль"
	desc = "Плазменная медаль, представляющая значительный вклад в область науки или техники."


////////////
//Armbands//
////////////

/obj/item/clothing/accessory/armband
	name = "Красная нарукавная повязка"
	desc = "Модная красная позвяка!"
	icon_state = "redband"
	item_color = "redband"

/obj/item/clothing/accessory/armband/white
	name = "Нарукавная повязка"
	desc = "Модная повязка!"
	icon_state = "whiteband"
	item_color = "whiteband"

/obj/item/clothing/accessory/armband/black
	name = "Нарукавная повязка военной полиции"
	desc = "An armband issued to NCR Military Police, signifying their alignment with NCROSI rather than the typical chain of command."
	icon_state = "blackband"
	item_color = "blackband"

/obj/item/clothing/accessory/armband/deputy
	name = "Нарукавная повязка заместителя ХОСа"
	desc = "Нарукавная повязка, которую носят сотрудники, уполномоченные исполнять обязанности заместителя начальника Службы безопасности станции."

/obj/item/clothing/accessory/armband/cargo
	name = "Нарукавная повязка охранника складского отсека"
	desc = "Нарукавная повязка, которую носят сотрудники Службы безопасности станции, чтобы показать, к какому отделу они приписаны. Эта коричнеая."
	icon_state = "cargoband"
	item_color = "cargoband"

/obj/item/clothing/accessory/armband/engine
	name = "Нарукавная повязка охранника инженерного отсека"
	desc = "Нарукавная повязка, которую носят сотрудники Службы безопасности станции, чтобы показать, к какому отделу они приписаны. Эта оранжевая с отражающей полосой!"
	icon_state = "engieband"
	item_color = "engieband"

/obj/item/clothing/accessory/armband/science
	name = "Нарукавная повязка охранника научного отдела"
	desc = "Нарукавная повязка, которую носят сотрудники Службы безопасности станции, чтобы показать, к какому отделу они приписаны. Эта - фиолетовая."
	icon_state = "rndband"
	item_color = "rndband"

/obj/item/clothing/accessory/armband/hydro
	name = "Нарукавная повязка охранника гидропонного отсека"
	desc = "Нарукавная повязка, которую носят сотрудники Службы безопасности станции, чтобы показать, к какому отделу они приписаны. Эта - зеленая с синим."
	icon_state = "hydroband"
	item_color = "hydroband"

/obj/item/clothing/accessory/armband/med
	name = "medical guard armband"
	desc = "Нарукавная повязка, которую носят сотрудники Службы безопасности станции, чтобы показать, к какому отделу они приписаны. Эта - белая."
	icon_state = "medband"
	item_color = "medband"

/obj/item/clothing/accessory/armband/medblue
	name = "Нарукавная повязка первой помощи"
	desc = "Нарукавная повязка, которую носят солдаты НКР, которые обученные оказывать первую медицинскую помощь."
	icon_state = "medblueband"
	item_color = "medblueband"

/obj/item/clothing/accessory/armband/remnant
	name = "Нарукавная повязка анклава"
	desc = "Нарукавная повязка, показывающая принадлежность к Акнлаву. Такие носят всего его члены."
	icon_state = "remnant"
	item_color = "remnant"

//////////////
//OBJECTION!//
//////////////

/obj/item/clothing/accessory/lawyers_badge
	name = "Значок адвоката"
	desc = "Наполняет вас убежденностью в СПРАВЕДЛИВОСТИ. Адвокаты, как правило, хотят показать его всем, с кем они встречаются."
	icon_state = "lawyerbadge"
	item_color = "lawyerbadge"

/obj/item/clothing/accessory/lawyers_badge/on_uniform_equip(obj/item/clothing/under/U, user)
	var/mob/living/L = user
	if(L)
		L.bubble_icon = "lawyer"

/obj/item/clothing/accessory/lawyers_badge/on_uniform_dropped(obj/item/clothing/under/U, user)
	var/mob/living/L = user
	if(L)
		L.bubble_icon = initial(L.bubble_icon)

////////////////
//HA HA! NERD!//
////////////////
/obj/item/clothing/accessory/pocketprotector
	name = "Карманный протектор"
	desc = "Может защитить вашу одежду от чернильных пятен, но вы будете выглядеть как ботаник, если используете его."
	icon_state = "pocketprotector"
	item_color = "pocketprotector"
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/pocketprotector

/obj/item/clothing/accessory/pocketprotector/full/Initialize()
	. = ..()
	new /obj/item/pen/red(src)
	new /obj/item/pen(src)
	new /obj/item/pen/blue(src)

/obj/item/clothing/accessory/pocketprotector/cosmetology/Initialize()
	. = ..()
	for(var/i in 1 to 3)
		new /obj/item/lipstick/random(src)

////////////////
//OONGA BOONGA//
////////////////

/obj/item/clothing/accessory/talisman
	name = "Костяной талисман"
	desc = "Талисман охотника, говорят, старые боги улыбаются тем, кто его носит."
	icon_state = "talisman"
	item_color = "talisman"
	armor = list("melee" = 5, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 25)

/obj/item/clothing/accessory/skullcodpiece
	name = "Гульфики из черепа"
	desc = "Украшение в форме черепа, предназначенное для защиты самого важного в жизни."
	icon_state = "skull"
	item_color = "skull"
	above_suit = TRUE
	armor = list("melee" = 5, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 25)
