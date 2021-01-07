/obj/item/clothing/gloves/ring
	name = "Золотое кольцо"
	desc = "Крохотное золотое кольцо, такого размера, чтобы обернуть вокруг пальца."
	gender = NEUTER
	w_class = WEIGHT_CLASS_TINY
	icon = 'icons/obj/ring.dmi'
	icon_state = "ringgold"
	item_state = "gring"
	body_parts_covered = 0
	attack_verb = list("proposed")
	transfer_prints = TRUE
	strip_delay = 40

/obj/item/clothing/gloves/ring/suicide_act(mob/living/carbon/user)
	user.visible_message("<span class='suicide'>\[user] is putting the [src] in [user.p_their()] mouth! It looks like [user] is trying to choke on the [src]!</span>")
	return OXYLOSS


/obj/item/clothing/gloves/ring/diamond
	name = "Алмазное кольцо"
	desc = "Дорогое кольцо, усыпанное бриллиантами. Культуры использовали эти кольца в ухаживании на протяжении тысячелетий."
	icon_state = "ringdiamond"
	item_state = "dring"

/obj/item/clothing/gloves/ring/diamond/attack_self(mob/user)
	user.visible_message("<span class='warning'>\The [user] gets down on one knee, presenting \the [src].</span>","<span class='warning'>You get down on one knee, presenting \the [src].</span>")

/obj/item/clothing/gloves/ring/silver
	name = "Серебрянное кольцо"
	desc = "Крошечное серебряное колечко, по размеру, чтобы обернуть вокруг пальца."
	icon_state = "ringsilver"
	item_state = "sring"
