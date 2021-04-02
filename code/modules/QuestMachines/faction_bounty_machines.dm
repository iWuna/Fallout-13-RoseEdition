/obj/machinery/bounty_machine/faction
	/* Available item types and prices. [key] - item type< [value] - item price*/
	var/list/price_list = list()

	/* Will create one copy for each item in price list.*/
	var/list/items_ref_list = list()

	/* How many caps stored in machine */
	var/stored_caps = 0

	/* Only head of this faction will have access to machine */
	var/faction_id = "city"

	/* If true - everyone can use machine. If false - only a faction head */
	var/free_access = 0

	/* In vend mode user can buy items. If not - user can complete quests */
	var/vend_mode = 0

/*
================ Content =====================
*/

/*  CITY */
/obj/machinery/bounty_machine/faction/city
	name = "Терминал Контрактов"
	desc = "Этот терминал использует мэр, что бы поддерживать связь с внешним миром."
	icon_state = "terminal"
	faction_id = "city"
	quest_type = /datum/bounty_quest/faction/city
	price_list = list(
					/obj/item/stack/sheet/metal/five = 850,
					/obj/item/stack/sheet/glass/five = 750,
					/obj/effect/spawner/lootdrop/food = 590,
					/obj/effect/spawner/lootdrop/garbage = 890,
					/obj/structure/closet/coffin = 700,
					/obj/item/weapon/pickaxe/rust = 1299,
					/obj/item/weapon/circuitboard/machine/ore_redemption = 1000,
					/obj/item/weapon/circuitboard/machine/hydroponics = 2500,
					/obj/item/weapon/circuitboard/machine/chem_dispenser = 5900,
					/obj/item/weapon/circuitboard/machine/chem_heater = 3900,
					/obj/item/weapon/circuitboard/machine/chem_master = 4900,
					/obj/structure/reagent_dispensers/beerkeg = 500,
					/obj/structure/reagent_dispensers/watertank = 5000,
					/obj/structure/reagent_dispensers/watertank/high = 9000,
					/obj/item/weapon/paper_bin = 600,
					/obj/item/seeds/potato/sweet = 3000,
					/obj/item/seeds/banana = 2000,
					/obj/item/seeds/tobacco = 2000,
					/obj/item/seeds/grass = 1000,
					/obj/item/seeds/grape = 5000,
					/obj/item/seeds/cannabis = 6000,
					/obj/item/seeds/ambrosia = 8000,
					/obj/item/weapon/gun/energy/disabler/compliance_regulator = 4500,
					/obj/item/weapon/disk/design_disk/f13/schlocket = 2500,
					/obj/item/weapon/disk/design_disk/f13/dawnshire = 2500,
					/obj/item/weapon/disk/design_disk/f13/ormed = 3500,
					/obj/item/weapon/disk/design_disk/f13/vesttec = 3500,
					/obj/item/weapon/disk/design_disk/f13/greenway = 2600,
					/obj/item/pizzabox/mushroom = 1900,
					/obj/item/lockpick/pro = 3400,
					/obj/item/device/radio/prc = 4500,
					/obj/item/crafting/weapon_parts/ballistic = 2500,
					/obj/item/crafting/weapon_parts/energy = 4500,
					/obj/item/crafting/weapon_parts/plasma = 6500
					)

/*  АНКЛАВ */

/obj/machinery/bounty_machine/faction/enclave
	name = "Терминал Контрактов"
	desc = "Этот терминал использует мэр, что бы поддерживать связь с внешним миром."
	icon_state = "terminal"
	faction_id = "enclave"
	quest_type = /datum/bounty_quest/faction/city
	price_list = list(
					/obj/item/stack/sheet/metal/five = 850,
					/obj/item/stack/sheet/glass/five = 750,
					/obj/effect/spawner/lootdrop/food = 590,
					/obj/effect/spawner/lootdrop/garbage = 890,
					/obj/structure/reagent_dispensers/beerkeg = 500,
					/obj/structure/reagent_dispensers/watertank = 5000,
					/obj/structure/reagent_dispensers/watertank/high = 9000,
					/obj/item/weapon/paper_bin = 600,
					/obj/item/weapon/gun/energy/disabler/compliance_regulator = 4500,
					/obj/item/weapon/disk/design_disk/f13/schlocket = 2500,
					/obj/item/weapon/disk/design_disk/f13/dawnshire = 2500,
					/obj/item/weapon/disk/design_disk/f13/ormed = 3500,
					/obj/item/weapon/disk/design_disk/f13/vesttec = 3500,
					/obj/item/weapon/disk/design_disk/f13/greenway = 2600,
					/obj/item/pizzabox/mushroom = 1900,
					/obj/item/lockpick/pro = 3400,
					/obj/item/device/radio/prc = 4500,
					/obj/item/crafting/weapon_parts/ballistic = 2500,
					/obj/item/crafting/weapon_parts/energy = 4500,
					/obj/item/crafting/weapon_parts/plasma = 6500,
					/obj/item/weapon/stock_parts/cell_pa/default = 3500,
					/obj/item/weapon/stock_parts/cell_pa/high = 6500
					)

/*
================ Mechanics ======================
*/
/obj/machinery/bounty_machine/faction/New()
	..()
	for(var/i = 1; i <= price_list.len; i++)
		var/target_type = price_list[i]
		var/atom/A = new target_type(src)
		items_ref_list.Add(A)

/obj/machinery/bounty_machine/faction/Destroy()
	for(var/atom/Itm in items_ref_list)
		qdel(Itm)

/* Add caps */
/obj/machinery/bounty_machine/faction/proc/add_caps(var/obj/item/stack/caps/C)
	if(!C) return
	if(!is_have_access(usr))
		if(free_access)
			to_chat(usr, "Only faction members can use this machine")
		else
			to_chat(usr, "Only faction leader can use this machine")

	var/mob/character = usr
	if(character.unEquip(C))
		var/caps_count = C.amount
		stored_caps += caps_count
		playsound(src, 'sound/items/change_jaws.ogg', 60, 1)
		to_chat(usr, "[stored_caps] caps added.")
		qdel(C)

/* Spawn all caps on world and clear caps storage */
/obj/machinery/bounty_machine/faction/proc/remove_all_caps()
	if(stored_caps <= 0)
		return
	var/obj/item/stack/caps/C = new/obj/item/stack/caps
	if(stored_caps > C.max_amount)
		C.add(C.max_amount - 1)
		C.forceMove(src.loc)
		stored_caps -= C.max_amount
	else
		C.add(stored_caps - 1)
		C.forceMove(src.loc)
		stored_caps = 0
	playsound(src, 'sound/items/coinflip.ogg', 60, 1)
	src.ShowUI(usr)

/* Buy item */
/obj/machinery/bounty_machine/faction/proc/buy(var/item_index, var/mob/user)
	if(item_index > price_list.len)
		to_chat(usr, "Неверный предмет! *beep*")
		return

	if(!connected_pod)
		to_chat(usr, "No pod connected")
		return

	if(!is_have_access(user))
		if(free_access)
			to_chat(usr, "Только члены фракции может использовать это.")
			return
		else
			to_chat(usr, "Только лидер фракции может использовать это.")
			return

	var/target_type = price_list[item_index]

	// Check price
	if(stored_caps >= price_list[target_type])
		// animation
		flick("tele0", connected_pod)

		//Remove caps
		stored_caps -= price_list[target_type]

		// Create item
		new target_type(connected_pod.loc)
		to_chat(usr, "Готово. *boop*")
	else
		to_chat(usr, "Недостаточно средств.")

/* Returns 1 if selected mob have acces to use this machine */
/obj/machinery/bounty_machine/faction/proc/is_have_access(var/mob/character)
	var/datum/f13_faction/F = get_faction_datum(character.social_faction)
	var/is_head = F.head_status == character.status ? 1 : 0
	var/is_same_faction = F.id == faction_id ? 1 : 0
	switch(free_access)
		// Free access
		if(1)
			if(is_same_faction)
				return 1
			else
				return 0
		// Only for heads
		if(0)
			if(is_same_faction)
				if(is_head)
					return 1
				else
					return 0
			else
				return 0

/*  INTERACTION */
/obj/machinery/bounty_machine/faction/attackby(obj/item/OtherItem, mob/living/carbon/human/user, parameters)

	// CAPS
	if(istype(OtherItem, /obj/item/stack/caps))
		add_caps(OtherItem)

/* GUI */
/* Shop UI*/
/obj/machinery/bounty_machine/faction/proc/GetShopUI()
	var/dat = {"<meta charset="UTF-8">"}
	dat += "<h1>Магазин</h1>"
	dat += "<a href='?src=\ref[src];exit=1'>Выход</a><br><br>"
	dat += "<font color = 'green'>Баланс: [stored_caps]</font>"
	dat += "<a href='?src=\ref[src];removecaps=1'>Забрать</a><br>"
	if(free_access)
		dat += "<font color = 'green'><b>Доступ:</b> Свободный</font><br>"
	else
		dat += "<font color = 'red'><b>Доступ:</b> Только для лидера</font><br>"

	dat += "<div class='statusDisplay'>"
	for(var/i = 1; i <= price_list.len; i++)
		var/itm_type = price_list[i]
		var/atom/itm_ref = items_ref_list[i]
		var/price = price_list[itm_type]
		if(stored_caps < price_list[itm_type])
			dat += "<a href='?src=\ref[src];examine=[i]'>?</a>"
			dat += "<font color = 'grey'><b> [itm_ref] - [price] </b></font>"
			dat += "<a href='?src=\ref[src];buy=[i]'>Купить</a><br>"
		else
			dat += "<a href='?src=\ref[src];examine=[i]'>?</a>"
			dat += "<font color = 'green'><b> [itm_ref] - [price] </b></font>"
			dat += "<a href='?src=\ref[src];buy=[i]'>Купить</a><br>"
	dat += ""
	dat += "</div>"
	return dat

/* Quest UI */
/obj/machinery/bounty_machine/faction/proc/GetQuestUI()
	var/dat = {"<meta charset="UTF-8">"}
	var/datum/asset/assets = get_asset_datum(/datum/asset/simple/bounty_employers)
	assets.send(usr)

	dat += "<h1>Wasteland Bounty Station</h1>"

	if(connected_pod)
		dat += "<font color='green'>Квантовая площадка найдена</font><br>"
		dat += "<a href='?src=\ref[src];findpod=1'>Сканировать</a>"
	else
		dat += "<font color='red'>Квантовая площадка не обнаружена</font><br>"
		dat += "<a href='?src=\ref[src];findpod=1'>Сканировать</a>"
	dat += "<a href='?src=\ref[src];shop=1'>Магазин</a><br>"
	dat += "<style>.leftimg {float:left;margin: 7px 7px 7px 0;}</style>"

	dat += "<h2>Contracts:</h2>"
	var/item_index = 1
	for(var/datum/bounty_quest/Q in active_quests)
		//usr << browse_rsc(Q.GetIconWithPath(), Q.employer_icon)
		dat += "<div class='statusDisplay'>"
		dat += "<img src='[Q.employer_icon]' class='leftimg' width = 59 height = 70></img>"
		dat += "<font color='green'><b>ID: </b> [Q.name]</font><br>"
		dat += "<font color='green'><b>Заказчик: </b> [Q.employer]</font><br>"
		dat += "<font color='green'><b>Сообщение:</b></font>"
		dat += "<font color='green'>[Q.desc]</font><br><br>"
		dat += "<font color='green'><b>Надо: </b></font>"
		dat += "<font color='green'><i>[Q.need_message]. </i></font><br>"
		dat += "<font color='green'><b>Награда:</b></font>"
		dat += "<font color='green'> [Q.caps_reward] крышек</font><br>"
		dat += "<a href='?src=\ref[src];completequest=[item_index]'>Отправить</a><br>"
		dat += "</div>"
		item_index++

	return dat

/obj/machinery/bounty_machine/faction/ShowUI()
	var/dat
	if(vend_mode)
		dat = GetShopUI()
	else
		dat = GetQuestUI()

	var/datum/browser/popup = new(usr, "bounty", "Wasteland Faction Contracts Database", 640, 400) // Set up the popup browser window
	popup.set_content(dat)
	popup.set_title_image(usr.browse_rsc_icon(src.icon, src.icon_state))
	popup.open()

/* Topic */
/obj/machinery/bounty_machine/faction/Topic(href, href_list)
	..()
	if(href_list["exit"])
		vend_mode = 0
	if(href_list["examine"])
		var/itm_index = text2num(href_list["examine"])
		var/obj/T = items_ref_list[itm_index]
		T.examine(usr)
	if(href_list["buy"])
		var/itm_index = text2num(href_list["buy"])
		buy(itm_index, usr)
	if(href_list["shop"])
		vend_mode = 1
	if(href_list["removecaps"])
		remove_all_caps()
	ShowUI()