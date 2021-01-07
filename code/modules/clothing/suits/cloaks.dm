//Cloaks. No, not THAT kind of cloak.

/obj/item/clothing/neck/cloak
	name = "Коричневый плащ"
	desc = "Это плащ, который можно носить на шее."
	icon = 'icons/obj/clothing/cloaks.dmi'
	icon_state = "cloak"
	item_state = "cloak"
	w_class = WEIGHT_CLASS_SMALL
	body_parts_covered = CHEST|GROIN|LEGS|ARMS

/obj/item/clothing/neck/cloak/grey
	name = "Серый плащ"
	desc = "Это серый плащ, который можно носить на шее."
	icon = 'icons/obj/clothing/cloaks.dmi'
	icon_state = "cloakgrey"
	item_state = "cloakgrey"
	w_class = WEIGHT_CLASS_SMALL
	body_parts_covered = CHEST|GROIN|LEGS|ARMS

/obj/item/clothing/head/cloakhood
	name = "Капюшон плаща"
	icon = 'icons/obj/clothing/hats.dmi'
	icon_state = "golhood"
	desc = "Капюшон для твоего плаща."
	body_parts_covered = HEAD
	item_flags = NODROP
	flags_inv = HIDEHAIR|HIDEEARS

/obj/item/clothing/neck/cloak/suicide_act(mob/user)
	user.visible_message("<span class='suicide'>[user] is strangling [user.p_them()]self with [src]! It looks like [user.p_theyre()] trying to commit suicide!</span>")
	return(OXYLOSS)

/obj/item/clothing/neck/cloak/overseer
	name = "Шлем смотрителя Vault-Tec"
	desc = "Это плащ смотрителя. Выдан корпорацией Vault-tec, чтобы легко идентифицировать смотрителя. Он передаётся из поколения в поколение."
	icon_state = "overseercloak"

/obj/item/clothing/neck/cloak/hos
	name = "Плащ Главы Безопасности"
	desc = "Носит Секьюристан, правящими станцией железным кулаком."
	icon_state = "hoscloak"

/obj/item/clothing/neck/cloak/qm
	name = "Плащ Завхоза"
	desc = "Носится Каргонией, снабжающей станцию необходимыми инструментами для выживания."

/obj/item/clothing/neck/cloak/cmo
	name = "Плащ Главного Врача"
	desc = "Носятся Медитопией, доблестными мужчинами и женщинами, сдерживающими Мор."
	icon_state = "cmocloak"

/obj/item/clothing/neck/cloak/ce
	name = "Плащ Старшего Инженера"
	desc = "Носится Энгитопией, обладателями неограниченной власти."
	icon_state = "cecloak"

/obj/item/clothing/neck/cloak/rd
	name = "Плащ Научного Директора"
	desc = "Носистся Саентистией, тауматургами и исследователями Вселенной."
	icon_state = "rdcloak"

/obj/item/clothing/neck/cloak/cap
	name = "Плащ Капитана"
	desc = "Носится  коммандиром Космической Станции 13"
	icon_state = "capcloak"

/obj/item/clothing/neck/cloak/hop
	name = "Плащ Главы Персонала"
	desc = "Носится начальником отдела кадров. Слегка пахнет бюрократией."
	icon_state = "hopcloak"

/obj/item/clothing/neck/cloak/chiefcloak
	name = "wayfarer cloak"
	desc = "A symbol of the authority of the Wayfarer Chief."
	icon_state = "chiefcloak"

/obj/item/clothing/neck/cloak/amulet
	name = "Амулет охотника"
	desc = "Талисман охотник, говорят, что старые боги улыбаются тому, кто его носит."
	icon_state = "talisman"
	item_state = "talisman"
	body_parts_covered = null

/obj/item/clothing/neck/cloak/Hhuntercloak
	name = "Плащ бритвенного когтя"
	desc = "Плащ, украшенный костями Когтя Смерти и маленькими безделушками, отражающими дух огня машины."
	icon_state = "chiefcloak"
	allowed = list(/obj/item/gun, /obj/item/kitchen, /obj/item/twohanded, /obj/item/claymore, /obj/item/twohanded/spear)
