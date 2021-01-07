/obj/item/reactive_armour_shell
	name = "Оболочка рекативной брони"
	desc = "Экспериментальный бронекостюм, ожидающий установки аномального ядра."
	icon_state = "reactiveoff"
	icon = 'icons/obj/clothing/suits.dmi'
	w_class = WEIGHT_CLASS_BULKY

/obj/item/reactive_armour_shell/attackby(obj/item/I, mob/user, params)
	..()
	var/static/list/anomaly_armour_types = list(
		/obj/effect/anomaly/grav	                = /obj/item/clothing/suit/armor/reactive/repulse,
		/obj/effect/anomaly/flux 	           		= /obj/item/clothing/suit/armor/reactive/tesla,
		/obj/effect/anomaly/bluespace 	            = /obj/item/clothing/suit/armor/reactive/teleport
		)

	if(istype(I, /obj/item/assembly/signaler/anomaly))
		var/obj/item/assembly/signaler/anomaly/A = I
		var/armour_path = anomaly_armour_types[A.anomaly_type]
		if(!armour_path)
			armour_path = /obj/item/clothing/suit/armor/reactive/stealth //Lets not cheat the player if an anomaly type doesnt have its own armour coded
		to_chat(user, "You insert [A] into the chest plate, and the armour gently hums to life.")
		new armour_path(get_turf(src))
		qdel(src)
		qdel(A)

//Reactive armor
/obj/item/clothing/suit/armor/reactive
	name = "Рективная броня"
	desc = "Кажется, по какой-то причине это не очень помогает."
	var/active = 0
	var/reactivearmor_cooldown_duration = 0 //cooldown specific to reactive armor
	var/reactivearmor_cooldown = 0
	icon_state = "reactiveoff"
	item_state = "reactiveoff"
	blood_overlay_type = "armor"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 100, "acid" = 100)
	actions_types = list(/datum/action/item_action/toggle)
	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | ACID_PROOF
	hit_reaction_chance = 50

/obj/item/clothing/suit/armor/reactive/attack_self(mob/user)
	active = !(active)
	if(active)
		to_chat(user, "<span class='notice'>[src] теперь активна.</span>")
		icon_state = "reactive"
		item_state = "reactive"
	else
		to_chat(user, "<span class='notice'>[src] теперь неактивна.</span>")
		icon_state = "reactiveoff"
		item_state = "reactiveoff"
	add_fingerprint(user)
	return

/obj/item/clothing/suit/armor/reactive/emp_act(severity)
	. = ..()
	if(. & EMP_PROTECT_SELF)
		return
	active = 0
	icon_state = "reactiveoff"
	item_state = "reactiveoff"
	reactivearmor_cooldown = world.time + 200

//When the wearer gets hit, this armor will teleport the user a short distance away (to safety or to more danger, no one knows. That's the fun of it!)
/obj/item/clothing/suit/armor/reactive/teleport
	name = "Реактивная телепортная броня"
	desc = "Кто-то отделил нашего научного руководителя от его собственной головы!"
	var/tele_range = 6
	var/rad_amount= 15
	reactivearmor_cooldown_duration = 100

/obj/item/clothing/suit/armor/reactive/teleport/hit_reaction(mob/living/carbon/human/owner, atom/movable/hitby, attack_text = "the attack", final_block_chance = 0, damage = 0, attack_type = MELEE_ATTACK)
	if(!active)
		return 0
	if(prob(hit_reaction_chance))
		var/mob/living/carbon/human/H = owner
		if(world.time < reactivearmor_cooldown)
			owner.visible_message("<span class='danger'>Реактивная телепортационная система все еще заряжается! Она не может телепортировать [H]!</span>")
			return
		owner.visible_message("<span class='danger'>Система телепортации отбрасывает [H] от [attack_text], отключаясь в процессе!</span>")
		playsound(get_turf(owner),'sound/magic/blink.ogg', 100, 1)
		var/list/turfs = new/list()
		for(var/turf/T in orange(tele_range, H))
			if(T.density)
				continue
			if(T.x>world.maxx-tele_range || T.x<tele_range)
				continue
			if(T.y>world.maxy-tele_range || T.y<tele_range)
				continue
			turfs += T
		if(!turfs.len)
			turfs += pick(/turf in orange(tele_range, H))
		var/turf/picked = pick(turfs)
		if(!isturf(picked))
			return
		H.forceMove(picked)
		H.rad_act(rad_amount)
		reactivearmor_cooldown = world.time + reactivearmor_cooldown_duration
		return 1
	return 0

//Fire

/obj/item/clothing/suit/armor/reactive/fire
	name = "Реактивная зажигательная броня"
	desc = "Экспериментальный бронекостюм с реактивной сенсорной решеткой, подключенной к излучателю пламени. Для стильного пироманьяка."

/obj/item/clothing/suit/armor/reactive/fire/hit_reaction(mob/living/carbon/human/owner, atom/movable/hitby, attack_text = "the attack", final_block_chance = 0, damage = 0, attack_type = MELEE_ATTACK)
	if(!active)
		return 0
	if(prob(hit_reaction_chance))
		if(world.time < reactivearmor_cooldown)
			owner.visible_message("<span class='danger'>Реактивная зажигательная броня [owner] активируется, но не может послать пламя, так как он все еще перезаряжает свои огненные струи!</span>")
			return
		owner.visible_message("<span class='danger'>[src] блокирует [attack_text], посылая струи пламени!</span>")
		playsound(get_turf(owner),'sound/magic/fireball.ogg', 100, 1)
		for(var/mob/living/carbon/C in range(6, owner))
			if(C != owner)
				C.fire_stacks += 8
				C.IgniteMob()
		owner.fire_stacks = -20
		reactivearmor_cooldown = world.time + reactivearmor_cooldown_duration
		return 1
	return 0

//Stealth

/obj/item/clothing/suit/armor/reactive/stealth
	name = "Скрытная реактивная броня"
	desc = "Экспериментальный доспех, который делает владельца невидимым при обнаружении неминуемого вреда и создает приманку, которая убегает от владельца. Нельзя бороться с тем, чего не видишь."

/obj/item/clothing/suit/armor/reactive/stealth/hit_reaction(mob/living/carbon/human/owner, atom/movable/hitby, attack_text = "the attack", final_block_chance = 0, damage = 0, attack_type = MELEE_ATTACK)
	if(!active)
		return 0
	if(prob(hit_reaction_chance))
		if(world.time < reactivearmor_cooldown)
			owner.visible_message("<span class='danger'>Реактивная стелс система на костюме [owner] активируется, но всё ещё заряжает свои голографические излучатели!</span>")
			return
		var/mob/living/simple_animal/hostile/illusion/escape/E = new(owner.loc)
		E.Copy_Parent(owner, 50)
		E.GiveTarget(owner) //so it starts running right away
		E.Goto(owner, E.move_to_delay, E.minimum_distance)
		owner.alpha = 0
		owner.visible_message("<span class='danger'>[owner] ударяется [attack_text] в грудь!</span>") //We pretend to be hit, since blocking it would stop the message otherwise
		spawn(40)
			owner.alpha = initial(owner.alpha)
		reactivearmor_cooldown = world.time + reactivearmor_cooldown_duration
		return 1

//Tesla

/obj/item/clothing/suit/armor/reactive/tesla
	name = "Реактивная тесла броня"
	desc = "Экспериментальный бронекостюм с чувствительными детекторами, подключенными к огромной конденсаторной решетке,из которой торчали излучатели. Бац."
	siemens_coefficient = -1
	var/tesla_power = 25000
	var/tesla_range = 20
	var/tesla_flags = TESLA_MOB_DAMAGE | TESLA_OBJ_DAMAGE

/obj/item/clothing/suit/armor/reactive/tesla/dropped(mob/user)
	..()
	if(istype(user))
		user.flags_1 &= ~TESLA_IGNORE_1

/obj/item/clothing/suit/armor/reactive/tesla/equipped(mob/user, slot)
	..()
	if(slot_flags & slotdefine2slotbit(slot)) //Was equipped to a valid slot for this item?
		user.flags_1 |= TESLA_IGNORE_1

/obj/item/clothing/suit/armor/reactive/tesla/hit_reaction(mob/living/carbon/human/owner, atom/movable/hitby, attack_text = "the attack", final_block_chance = 0, damage = 0, attack_type = MELEE_ATTACK)
	if(!active)
		return FALSE
	if(prob(hit_reaction_chance))
		if(world.time < reactivearmor_cooldown)
			var/datum/effect_system/spark_spread/sparks = new /datum/effect_system/spark_spread
			sparks.set_up(1, 1, src)
			sparks.start()
			owner.visible_message("<span class='danger'>Тесла катушка на костюме [owner] еще перезаряжается! Броня просто испускает несколько искр.</span>")
			return
		owner.visible_message("<span class='danger'>[src] блокирует [attack_text], посылая дуги молний!</span>")
		tesla_zap(owner, tesla_range, tesla_power, tesla_flags)
		reactivearmor_cooldown = world.time + reactivearmor_cooldown_duration
		return TRUE

//Repulse

/obj/item/clothing/suit/armor/reactive/repulse
	name = "Реактивная репульсовая броня"
	desc = "Экспериментальный доспех, который яростно отбрасывает нападающих."

/obj/item/clothing/suit/armor/reactive/repulse/hit_reaction(mob/living/carbon/human/owner, atom/movable/hitby, attack_text = "the attack", final_block_chance = 0, damage = 0, attack_type = MELEE_ATTACK)
	if(!active)
		return 0
	if(prob(hit_reaction_chance))
		if(world.time < reactivearmor_cooldown)
			owner.visible_message("<span class='danger'>Репульсовый генератор ещё заряжается!</span>")
			return 0
		playsound(get_turf(owner),'sound/magic/repulse.ogg', 100, 1)
		owner.visible_message("<span class='danger'>[src] блокирует [attack_text], превращая атаку в силовую волну</span>")
		var/turf/T = get_turf(owner)
		var/list/thrown_items = list()
		for(var/atom/movable/A in range(T, 7))
			if(A == owner || A.anchored || thrown_items[A])
				continue
			var/throwtarget = get_edge_target_turf(T, get_dir(T, get_step_away(A, T)))
			A.throw_at(throwtarget,10,1)
			thrown_items[A] = A

		reactivearmor_cooldown = world.time + reactivearmor_cooldown_duration
		return 1

/obj/item/clothing/suit/armor/reactive/table
	name = "Реактивная столовая броня"
	desc = "Если вы не можете победить мемы, возглавьте их."
	var/tele_range = 10

/obj/item/clothing/suit/armor/reactive/table/hit_reaction(mob/living/carbon/human/owner, atom/movable/hitby, attack_text = "the attack", final_block_chance = 0, damage = 0, attack_type = MELEE_ATTACK)
	if(!active)
		return 0
	if(prob(hit_reaction_chance))
		var/mob/living/carbon/human/H = owner
		if(world.time < reactivearmor_cooldown)
			owner.visible_message("<span class='danger'>Фабрикаторы реактивной настольной брони все еще находятся на перезарядке!</span>")
			return
		owner.visible_message("<span class='danger'>Реактивная телепортационная система бросает [H] прямо в [attack_text] и швыряет их в сфабрикованный стол!</span>")
		owner.visible_message("<font color='red' size='3'>[H] ЛЕЗЕТ НА СТОЛ!!!</font>")
		owner.Knockdown(40)
		var/list/turfs = new/list()
		for(var/turf/T in orange(tele_range, H))
			if(T.density)
				continue
			if(T.x>world.maxx-tele_range || T.x<tele_range)
				continue
			if(T.y>world.maxy-tele_range || T.y<tele_range)
				continue
			turfs += T
		if(!turfs.len)
			turfs += pick(/turf in orange(tele_range, H))
		var/turf/picked = pick(turfs)
		if(!isturf(picked))
			return
		H.forceMove(picked)
		new /obj/structure/table(get_turf(owner))
		reactivearmor_cooldown = world.time + reactivearmor_cooldown_duration
		return 1
	return 0

/obj/item/clothing/suit/armor/reactive/table/emp_act()
	return
