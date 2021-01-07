/obj/item/clothing/head/wizard
	name = "Шляпа волшебника"
	desc = "Странного вида шляпа, которая наверняка принадлежит настоящему магу."
	icon_state = "wizard"
	gas_transfer_coefficient = 0.01 // IT'S MAGICAL OKAY JEEZ +1 TO NOT DIE
	permeability_coefficient = 0.01
	armor = list("melee" = 30, "bullet" = 20, "laser" = 20, "energy" = 20, "bomb" = 20, "bio" = 20, "rad" = 20, "fire" = 100, "acid" = 100)
	strip_delay = 50
	equip_delay_other = 50
	resistance_flags = FIRE_PROOF | ACID_PROOF
	dog_fashion = /datum/dog_fashion/head/blue_wizard

/obj/item/clothing/head/wizard/red
	name = "Красная шляпа волшебника"
	desc = "Странного вида красная шляпа, которая наверняка принадлежит настоящему магу."
	icon_state = "redwizard"
	dog_fashion = /datum/dog_fashion/head/red_wizard

/obj/item/clothing/head/wizard/yellow
	name = "Желтая шляпа волшебника"
	desc = "Странного вида шляпа, которая наверняка принадлежит могущественному магу."
	icon_state = "yellowwizard"
	dog_fashion = null

/obj/item/clothing/head/wizard/black
	name = "Черная шляпа волшебника"
	desc = "Странного вида черная шляпа, которая наверняка принадлежит настоящему скелету. Жутко!"
	icon_state = "blackwizard"
	dog_fashion = null

/obj/item/clothing/head/wizard/fake
	name = "Шляпа волшебника"
	desc = "На ней блестками написано \"ВОЛШЕБНИК\". Идёт в комплекте с крутой бородой."
	icon_state = "wizard-fake"
	gas_transfer_coefficient = 1
	permeability_coefficient = 1
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	resistance_flags = FLAMMABLE
	dog_fashion = /datum/dog_fashion/head/blue_wizard

/obj/item/clothing/head/wizard/marisa
	name = "Шляпа ведьмы"
	desc = "Странного вида шляпна. Заставляет вас хотеть бросать огненные шары."
	icon_state = "marisa"
	dog_fashion = null

/obj/item/clothing/head/wizard/magus
	name = "Шлем Магуса"
	desc = "Таинственный шлем, шудящий с сверхестественной силой."
	icon_state = "magus"
	item_state = "magus"
	dog_fashion = null

/obj/item/clothing/head/wizard/santa
	name = "Шляпа Санты"
	desc = "Хо-хо-хо! Счастливого рождества!"
	icon_state = "santahat"
	flags_inv = HIDEHAIR|HIDEFACIALHAIR
	dog_fashion = null

/obj/item/clothing/suit/wizrobe
	name = "Роба волшебника"
	desc = "Великолепное, отделанное драгоценными камнями одеяние, которое, кажется, излучает силу."
	icon_state = "wizard"
	item_state = "wizrobe"
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.01
	body_parts_covered = CHEST|GROIN|ARMS|LEGS
	armor = list("melee" = 30, "bullet" = 20, "laser" = 20, "energy" = 20, "bomb" = 20, "bio" = 20, "rad" = 20, "fire" = 100, "acid" = 100)
	allowed = list(/obj/item/teleportation_scroll)
	flags_inv = HIDEJUMPSUIT
	strip_delay = 50
	equip_delay_other = 50
	resistance_flags = FIRE_PROOF | ACID_PROOF

/obj/item/clothing/suit/wizrobe/red
	name = "Красная роба волшебника"
	desc = "Великолепное, отделанное драгоценными камнями красное одеяние, которое, кажется, излучает силу."
	icon_state = "redwizard"
	item_state = "redwizrobe"

/obj/item/clothing/suit/wizrobe/yellow
	name = "Желтая роба волшебника"
	desc = "Великолепное, отделанное драгоценными камнями желтое одеяние, которое, кажется, излучает силу."
	icon_state = "yellowwizard"
	item_state = "yellowwizrobe"

/obj/item/clothing/suit/wizrobe/black
	name = "Черная роба волшебника"
	desc = "Пугающее черное одеяние с драгоценными камнями, от которого пахнет смертью и разложением."
	icon_state = "blackwizard"
	item_state = "blackwizrobe"

/obj/item/clothing/suit/wizrobe/marisa
	name = "Роба ведьмы"
	desc = "Магия - это все о силе заклинаний, ZE!"
	icon_state = "marisa"
	item_state = "marisarobe"

/obj/item/clothing/suit/wizrobe/magusblue
	name = "Роба магуса"
	desc = "Набор бронированных одежд, которые, кажется, излучают темную силу."
	icon_state = "magusblue"
	item_state = "magusblue"

/obj/item/clothing/suit/wizrobe/magusred
	name = "Роба магуса"
	desc = "Набор бронированных одежд, которые, кажется, излучают темную силу."
	icon_state = "magusred"
	item_state = "magusred"


/obj/item/clothing/suit/wizrobe/santa
	name = "Костюм Санты"
	desc = "Пик моды!"
	icon_state = "santa"
	item_state = "santa"

/obj/item/clothing/suit/wizrobe/fake
	name = "Роба волшебника"
	desc = "Довольно тусклая синяя мантия, подражающая настоящей мантии волшебника."
	icon_state = "wizard-fake"
	item_state = "wizrobe"
	gas_transfer_coefficient = 1
	permeability_coefficient = 1
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	resistance_flags = FLAMMABLE

/obj/item/clothing/head/wizard/marisa/fake
	name = "Шляпа ведьмы"
	desc = "Странно выглядящая шляпа, вызывающая желание бросать огненные шары."
	icon_state = "marisa"
	gas_transfer_coefficient = 1
	permeability_coefficient = 1
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	resistance_flags = FLAMMABLE

/obj/item/clothing/suit/wizrobe/marisa/fake
	name = "Роба ведьмы"
	desc = "Магия - это все о силе заклинаний, ZE!"
	icon_state = "marisa"
	item_state = "marisarobe"
	gas_transfer_coefficient = 1
	permeability_coefficient = 1
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	resistance_flags = FLAMMABLE

/obj/item/clothing/suit/wizrobe/paper
	name = "Роба из папье-маше" // no non-latin characters!
	desc = "Роба, скрепленныая различными кусочками прозрачной ленты и пасты."
	icon_state = "wizard-paper"
	item_state = "wizard-paper"
	var/robe_charge = TRUE
	actions_types = list(/datum/action/item_action/stickmen)


/obj/item/clothing/suit/wizrobe/paper/ui_action_click(mob/user, action)
	stickmen()


/obj/item/clothing/suit/wizrobe/paper/verb/stickmen()
	set category = "Object"
	set name = "Summon Stick Minions"
	set src in usr
	if(!isliving(usr))
		return
	if(!robe_charge)
		to_chat(usr, "<span class='warning'>Внутренний магический запас мантии все еще подзаряжается!</span>")
		return

	usr.say("Восстань, Мое создание! Прочь со своей страницы в эту реальность!")
	playsound(src.loc, 'sound/magic/summon_magic.ogg', 50, 1, 1)
	var/mob/living/M = new /mob/living/simple_animal/hostile/stickman(get_turf(usr))
	var/list/factions = usr.faction
	M.faction = factions
	src.robe_charge = FALSE
	sleep(30)
	src.robe_charge = TRUE
	to_chat(usr, "<span class='notice'>Мантия гудит, ее внутренний магический запас восстановлен.</span>")


//Shielded Armour

/obj/item/clothing/suit/space/hardsuit/shielded/wizard
	name = "Броня боевого мага"
	desc = "Не все волшебники боятся приближаться близко и лично."
	icon_state = "battlemage"
	item_state = "battlemage"
	recharge_rate = 0
	current_charges = 15
	recharge_cooldown = INFINITY
	shield_state = "shield-red"
	shield_on = "shield-red"
	min_cold_protection_temperature = ARMOR_MIN_TEMP_PROTECT
	max_heat_protection_temperature = ARMOR_MAX_TEMP_PROTECT
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/shielded/wizard
	armor = list("melee" = 30, "bullet" = 20, "laser" = 20, "energy" = 20, "bomb" = 20, "bio" = 20, "rad" = 20, "fire" = 100, "acid" = 100)
	slowdown = 0
	resistance_flags = FIRE_PROOF | ACID_PROOF

/obj/item/clothing/head/helmet/space/hardsuit/shielded/wizard
	name = "Шлем боевого волшебника"
	desc = "Весьма впечатляющий шлем."
	icon_state = "battlemage"
	item_state = "battlemage"
	min_cold_protection_temperature = ARMOR_MIN_TEMP_PROTECT
	max_heat_protection_temperature = ARMOR_MAX_TEMP_PROTECT
	armor = list("melee" = 30, "bullet" = 20, "laser" = 20, "energy" = 20, "bomb" = 20, "bio" = 20, "rad" = 20, "fire" = 100, "acid" = 100)
	actions_types = null //No inbuilt light
	resistance_flags = FIRE_PROOF | ACID_PROOF

/obj/item/clothing/head/helmet/space/hardsuit/shielded/wizard/attack_self(mob/user)
	return

/obj/item/wizard_armour_charge
	name = "Заряды щита боевого мага"
	desc = "Мощная руна, которая увеличит количество ударов, которые может принять доспех боевого мага, прежде чем перестанет работать."
	icon = 'icons/effects/effects.dmi'
	icon_state = "electricity2"

/obj/item/wizard_armour_charge/afterattack(obj/item/clothing/suit/space/hardsuit/shielded/wizard/W, mob/user)
	. = ..()
	if(!istype(W))
		to_chat(user, "<span class='warning'>Уран может быть использована только на броне боевого мага!</span>")
		return
	W.current_charges += 8
	to_chat(user, "<span class='notice'>You charge \the [W]. It can now absorb [W.current_charges] hits.</span>")
	qdel(src)
