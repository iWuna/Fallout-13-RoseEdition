/obj/item/clothing/head/f13/ncr
	name = "Патрульный шлем НКР"
	desc = "Стандартный шлем пехоты НКР"
	icon_state = "ncr_infantry_helmet"
	item_state = "ncr_infantry_helmet"
	armor = list("melee" = 40, "bullet" = 40, "laser" = 30, "energy" = 20, "bomb" = 25, "bio" = 30, "rad" = 20, "fire" = 60, "acid" = 0)
	strip_delay = 50

/obj/item/clothing/head/f13/ncr/medic
	name = "Шлем медика НКР"
	desc = "Стандартный шлем пехоты НКР, покрашен в цвет костюма медицинского офицера."
	icon_state = "ncr_medical_helmet"
	item_state = "ncr_medical_helmet"

/obj/item/clothing/head/f13/ncr/mp
	name = "Шлем военной полиции НКР"
	desc = "Стандартный шлем НКР с надписью \"ВП\" на задней части."
	icon_state = "ncr_MP"
	item_state = "ncr_MP"

/obj/item/clothing/head/f13/ncr/goggles
	name = "Штормой шлем НКР"
	desc = "Стандартный шлем пехоты НКР, к нему присоединены очки."
	icon_state = "ncr_goggles_helmet"
	item_state = "ncr_goggles_helmet"
	toggle_message = "You pull the goggles down under "
	alt_toggle_message = "You push the goggles up onto the "
	can_toggle = 1
	flags_inv = HIDEEARS
	actions_types = list(/datum/action/item_action/toggle)
	toggle_cooldown = 0
	flags_cover = HEADCOVERSEYES
	visor_flags_cover = HEADCOVERSEYES
	dog_fashion = null

/obj/item/clothing/head/hardhat/ncr
	name = "Шлем инженера НКР"
	desc = "Стандартный шлем пехоты НКР, к этому прикреплён фонарь для инженеров."
	icon_state = "hardhat_ncr"
	item_state = "hardhat_ncr"
	item_color = "ncr"
	flags_inv = HIDEEARS
	dog_fashion = null
	armor = list("melee" = 40, "bullet" = 40, "laser" = 30, "energy" = 20, "bomb" = 25, "bio" = 30, "rad" = 20, "fire" = 60, "acid" = 0)
	strip_delay = 50

/obj/item/clothing/head/hardhat/ncr
	name = "Шлем инженера НКР"
	desc = "Стандартный шлем пехоты НКР, к этому прикреплён фонарь для инженеров."
	icon_state = "hardhat0_ncr"
	item_state = "hardhat0_ncr"
	item_color = "ncr"
	flags_inv = HIDEEARS
	dog_fashion = null
	armor = list("melee" = 40, "bullet" = 40, "laser" = 30, "energy" = 20, "bomb" = 25, "bio" = 30, "rad" = 20, "fire" = 60, "acid" = 0)
	strip_delay = 50

/obj/item/clothing/head/f13/ncr/goggles/attack_self(mob/user)
	if(can_toggle && !user.incapacitated())
		if(world.time > cooldown + toggle_cooldown)
			cooldown = world.time
			up = !up
			flags_1 ^= visor_flags
			flags_inv ^= visor_flags_inv
			flags_cover ^= visor_flags_cover
			icon_state = "[initial(icon_state)][up ? "up" : ""]"
			to_chat(user, "[up ? alt_toggle_message : toggle_message] \the [src]")

			user.update_inv_head()
			if(iscarbon(user))
				var/mob/living/carbon/C = user
				C.head_update(src, forced = 1)

			if(active_sound)
				while(up)
					playsound(src.loc, "[active_sound]", 100, 0, 4)
					sleep(15)

/obj/item/clothing/head/beret/ncr
	name = "Берет офицера НКР"
	desc = "Зеленый берет, такие носят все офицеры НКР."
	icon_state = "ncr_officer_beret"
	item_state = "ncr_officer_beret"
	armor = list("melee" = 40, "bullet" = 40, "laser" = 20, "energy" = 20, "bomb" = 25, "bio" = 30, "rad" = 20, "fire" = 60, "acid" = 0)

/obj/item/clothing/head/beret/ncr_recon
	name = "Берет первого разведывательного батальона"
	desc = "Красный берет, выданный членам первого разведывательного батальона НКР."
	icon_state = "ncr_recon_beret"
	item_state = "ncr_recon_beret"
	armor = list("melee" = 40, "bullet" = 40, "laser" = 20, "energy" = 20, "bomb" = 25, "bio" = 30, "rad" = 20, "fire" = 60, "acid" = 0)

/obj/item/clothing/head/beret/ncr_scout
	name = "Берет третьего разведывательного батальона"
	desc = "Коричневый берет, выданный членам третьего разведывательного батальона НКР."
	icon_state = "scoutberet"
	item_state = "scoutberet"
	armor = list("melee" = 40, "bullet" = 40, "laser" = 30, "energy" = 20, "bomb" = 25, "bio" = 30, "rad" = 20, "fire" = 60, "acid" = 0)

/obj/item/clothing/head/beret/ncr_recon_ranger
	name = "Берет рейнджера-разведчика НКР"
	desc = "Коричневый берет, выданный членам разведывательного батальона НКР."
	icon_state = "scoutberet"
	item_state = "scoutberet"
	armor = list("melee" = 35, "bullet" = 30, "laser" = 30, "energy" = 20, "bomb" = 25, "bio" = 30, "rad" = 20, "fire" = 60, "acid" = 0)

/obj/item/clothing/head/beret/ncr_scout_lt
	name = "Берет офицера третьего разведывательного батальона"
	desc = "Коричневый берет, выданный офицерам третьего разведывательного батальона НКР."
	icon_state = "scoutberet"
	item_state = "scoutberet"
	armor = list("melee" = 50, "bullet" = 50, "laser" = 30, "energy" = 20, "bomb" = 25, "bio" = 30, "rad" = 20, "fire" = 60, "acid" = 0)

/obj/item/clothing/head/f13/ranger
	name = "Шляпа рейнджера НКР"
	desc = "Шляпа рейнджера НКР, носимая всеми, кроме самых элитных рейнджеров."
	icon_state = "drill_hat"
	item_state = "drillhat"
	armor = list("melee" = 50, "bullet" = 40, "laser" = 30, "energy" = 40, "bomb" = 25, "bio" = 40, "rad" = 40, "fire" = 80, "acid" = 0)

/obj/item/clothing/head/f13/trailranger
	name = "Шляпа рейнджера-следопыты"
	desc = "Деревенская, домашняя ковбойская шляпа, которую носят рейнджеры-следопыты НКР. Вуху!"
	icon_state = "cowboyrang"
	item_state = "cowboyrang"
	armor = list("melee" = 40, "bullet" = 30, "laser" = 20, "energy" = 30, "bomb" = 25, "bio" = 40, "rad" = 40, "fire" = 80, "acid" = 0)