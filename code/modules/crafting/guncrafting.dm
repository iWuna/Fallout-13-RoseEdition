/obj/machinery/workbench
	name = "workbench"
	icon = 'icons/obj/machines/reloadingbench.dmi'
	icon_state = "standard_bench"
	desc = "A basic workbench for simple to intermediate projects."
	resistance_flags = INDESTRUCTIBLE
	density = TRUE
	layer = BELOW_OBJ_LAYER
	anchored = TRUE
	machine_tool_behaviour = TOOL_WORKBENCH
	var/wrenchable = 1

/obj/machinery/workbench/can_be_unfasten_wrench(mob/user, silent)
	if (!wrenchable)  // case also covered by NODECONSTRUCT checks in default_unfasten_wrench
		return CANT_UNFASTEN

	return ..()

/obj/machinery/workbench/wrench_act(mob/living/user, obj/item/I)
	default_unfasten_wrench(user, I, 10)
	return TRUE

/obj/machinery/workbench/attackby(obj/item/W, mob/user, params)
	if (istype(W, /obj/item/wrench) && !(flags_1&NODECONSTRUCT_1))
		W.play_tool_sound(src)
		deconstruct(TRUE)
		return
	if(user.a_intent == INTENT_HARM)
		return ..()
	if(user.transferItemToLoc(W, drop_location()))
		return 1

/obj/machinery/workbench/advanced
	name = "advanced workbench"
	icon_state = "advanced_bench"
	desc = "A large and advanced pre-war workbench to tackle any project!"
	machine_tool_behaviour = list(TOOL_AWORKBENCH, TOOL_WORKBENCH)
/*
	var/list/salvage_typeTrait = list("Automatic Burst Action" = /obj/item/prefabs/complex/action/autoburst,
							"Rapid Blowback Action" = /obj/item/prefabs/complex/action/rapid,
							"Long Barrel" = /obj/item/prefabs/complex/barrel/long,
							"762 Magazine Loader" = /obj/item/prefabs/complex/ammo_loader/m762,
							".50AE Magazine Loader" = /obj/item/prefabs/complex/ammo_loader/m50AE,
							"12g Drum Magazine Loader" = /obj/item/prefabs/complex/ammo_loader/m12g,
							"45-70 Internal Magazine Loader" = /obj/item/prefabs/complex/ammo_loader/m4570,
							"Multiple barrels" = /obj/item/prefabs/complex/barrel/dual,
							".50MG Internal Magazine Loader" = /obj/item/prefabs/complex/ammo_loader/m50MG,
							"Pre-War Alloys" = /obj/item/stack/sheet/prewar,
							"Advanced Hair Trigger" = /obj/item/prefabs/complex/trigger/advhair)

	var/list/salvage_typeNoTrait = list("Long Barrel" = /obj/item/prefabs/complex/barrel/long,
							"762 Magazine Loader" = /obj/item/prefabs/complex/ammo_loader/m762,
							".50AE Magazine Loader" = /obj/item/prefabs/complex/ammo_loader/m50AE,
							"12g Drum Magazine Loader" = /obj/item/prefabs/complex/ammo_loader/m12g,
							"45-70 Internal Magazine Loader" = /obj/item/prefabs/complex/ammo_loader/m4570,
							"Improved Weapon Frame" = /obj/item/prefabs/complex/WeaponFrame/improved,
							"Hair Trigger" = /obj/item/prefabs/complex/trigger/hair)
	
	var/list/esalvage_type = list(/obj/item/prefabs/complex/ecell/mfc,
	/obj/item/prefabs/complex/ecell/ecp,
	/obj/item/prefabs/complex/eburst/triple,
	/obj/item/prefabs/complex/eburst/fast,
	/obj/item/prefabs/complex/eburst/dual,
	/obj/item/prefabs/complex/ebarrel/plasma/weak,
	/obj/item/prefabs/complex/ebarrel/laser/scatter,
	/obj/item/prefabs/complex/ebarrel/laser/strong)

/obj/machinery/workbench/advanced/attackby(obj/item/W, mob/user, params)
	. = ..()
	var/mob/living/M = user
	if(istype(W,/obj/item/gun/energy/laser/aer9))
		if(do_after(user,30,target = src))
			qdel(W)
			new /obj/item/prefabs/complex/eWeaponFrame/rifle(get_turf(src))
			new /obj/item/prefabs/complex/ecell/mfc(get_turf(src))
			new /obj/item/prefabs/complex/eburst/simple(get_turf(src))
			new /obj/item/prefabs/complex/ebarrel/laser/avg(get_turf(src))
	if(istype(W,/obj/item/gun/energy/laser/pistol))
		if(do_after(user,30,target = src))			
			qdel(W)
			new /obj/item/prefabs/complex/eWeaponFrame/pistol(get_turf(src))
			new /obj/item/prefabs/complex/ecell/ec(get_turf(src))
			new /obj/item/prefabs/complex/eburst/simple(get_turf(src))
			new /obj/item/prefabs/complex/ebarrel/laser/weak(get_turf(src))
	if(istype(W,/obj/item/prefabs/complex/loot/energy))
		if(do_after(user,80,target = src)&& M.has_trait(TRAIT_MASTER_GUNSMITH))
			var/item_path = pick(esalvage_type)
			new item_path(get_turf(src))
			qdel(W)
	else if(istype(W,/obj/item/prefabs/complex/loot))
		if(do_after(user,80,target = src))
			if(M.has_trait(TRAIT_MASTER_GUNSMITH))
				var/item_path = salvage_typeTrait[pick(salvage_typeTrait)]
				new item_path(get_turf(src))
				qdel(W)
			else
				var/item_path = salvage_typeNoTrait[pick(salvage_typeNoTrait)]
				new item_path(get_turf(src))
				qdel(W)
*/

/obj/machinery/workbench/mbench
	name = "machine workbench"
	//icon_state = "advanced_bench"
	desc = "A machining bench, useful for producing complex machined parts."
	machine_tool_behaviour = list(TOOL_MWORKBENCH)

/obj/machinery/workbench/assbench
	name = "assembly workbench"
	//icon_state = "advanced_bench"
	desc = "An assembly bench, useful for assembling complex parts into semi-finished products."
	machine_tool_behaviour = list(TOOL_ASSWORKBENCH)

/*
/obj/machinery/workbench/fbench
	name = "moulding workbench"
	icon_state = "moulding"
	desc = "A moulding bench, used for superheating metal into its molten form and moulding it."
	machine_tool_behaviour = list(TOOL_FWORKBENCH)
	wrenchable = FALSE
	var/obj/item/prefabs/mould/mould = null
	var/work_time = 20 //2 seconds

/obj/machinery/workbench/fbench/attackby(obj/item/W, mob/user, params)//todo me
	var/mob/living/carbon/human/H = usr
	if (istype(W, /obj/item/stack/sheet/prewar) && !H.has_trait(TRAIT_MASTER_GUNSMITH))
		to_chat(usr,"You have no clue as to how to work this material.")
		return
	else if(istype(W, /obj/item/screwdriver) && mould)
		if(do_after(user,work_time,target = src))
			mould.forceMove(get_turf(src))
			mould = null
			to_chat(user,"You remove the mould.")
		return 1
	else if(istype(W, /obj/item/prefabs/mould))
		if(do_after(user,work_time,target = src))
			if(mould)
				to_chat(user,"You remove the old mould.")
				mould.forceMove(get_turf(src))
			user.transferItemToLoc(W, src)
			mould = W
			to_chat(user,"You install the new mould.")
		return 1
	else if(mould && istype(W,mould.mould_sheet_type))
		var/obj/item/stack/sheet/S = W //typecast it so we can use .amount and .use
		if(S.amount < mould.sheet_amount)
			to_chat(user,"<span class='warning'>There's not enough material in [W]!</span>")
			return 0
		if(do_after(user,work_time,target = src))	 //success
			S.use(mould.sheet_amount) //This also deletes the stack if empty
			var/O = new mould.item_path(get_turf(src))
			to_chat(user,"<span class='notice'>You carefully melt down [W] into [O]!</span>")
		return 1
	else if(user.transferItemToLoc(W, drop_location()))
		return TRUE

/obj/machinery/workbench/fbench/Crossed(atom/movable/AM)
	for(var/A in src.loc)
		if(A == src)
			continue
		if(isobj(A))
			var/obj/O = A
			if(istype(O,/obj/item/stack/sheet/metal))
				var/obj/item/stack/sheet/Q = O
				if(Q.amount < 1)
					qdel(Q)
				else
					if(src.contents.len>0)
						if(istype(src.contents[1],/obj/item/prefabs/mould/barrel/m556))//556
							Q.amount -= 1
							var/obj/item/prefabs/complex/barrel/m556/C = new /obj/item/prefabs/complex/barrel/m556
							C.forceMove(src.loc)
						if(istype(src.contents[1],/obj/item/prefabs/mould/barrel/mm9))//9mm
							Q.amount -= 1
							var/obj/item/prefabs/complex/barrel/mm9/C = new /obj/item/prefabs/complex/barrel/mm9
							C.forceMove(src.loc)
						if(istype(src.contents[1],/obj/item/prefabs/mould/barrel/mm10))//10mm
							Q.amount -= 1
							var/obj/item/prefabs/complex/barrel/mm10/C = new /obj/item/prefabs/complex/barrel/mm10
							C.forceMove(src.loc)
						if(istype(src.contents[1],/obj/item/prefabs/mould/barrel/m357))//357
							Q.amount -= 1
							var/obj/item/prefabs/complex/barrel/m357/C = new /obj/item/prefabs/complex/barrel/m357
							C.forceMove(src.loc)
						if(istype(src.contents[1],/obj/item/prefabs/mould/barrel/m44))//44
							Q.amount -= 1
							var/obj/item/prefabs/complex/barrel/m44/C = new /obj/item/prefabs/complex/barrel/m44
							C.forceMove(src.loc)
						if(istype(src.contents[1],/obj/item/prefabs/mould/barrel/m45))//45
							Q.amount -= 1
							var/obj/item/prefabs/complex/barrel/m45/C = new /obj/item/prefabs/complex/barrel/m45
							C.forceMove(src.loc)
						if(istype(src.contents[1],/obj/item/prefabs/mould/barrel/m762))//762
							Q.amount -= 1
							var/obj/item/prefabs/complex/barrel/m762/C = new /obj/item/prefabs/complex/barrel/m762
							C.forceMove(src.loc)
						if(istype(src.contents[1],/obj/item/prefabs/mould/barrel/m4570))//4570
							Q.amount -= 1
							var/obj/item/prefabs/complex/barrel/m4570/C = new /obj/item/prefabs/complex/barrel/m4570
							C.forceMove(src.loc)
						if(istype(src.contents[1],/obj/item/prefabs/mould/barrel/shotgun))//4570
							Q.amount -= 1
							var/obj/item/prefabs/complex/barrel/shotgun/C = new /obj/item/prefabs/complex/barrel/shotgun
							C.forceMove(src.loc)
						if(istype(src.contents[1],/obj/item/prefabs/mould/action/simple))
							Q.amount -= 1
							var/obj/item/prefabs/complex/action/simple/C = new /obj/item/prefabs/complex/action/simple
							C.forceMove(src.loc)
						if(istype(src.contents[1],/obj/item/prefabs/mould/action/auto))
							Q.amount -= 1
							var/obj/item/prefabs/complex/action/auto/C = new /obj/item/prefabs/complex/action/auto
							C.forceMove(src.loc)
						if(istype(src.contents[1],/obj/item/prefabs/mould/bolt/simple))
							Q.amount -= 1
							var/obj/item/prefabs/complex/bolt/simple/C = new /obj/item/prefabs/complex/bolt/simple
							C.forceMove(src.loc)
						if(istype(src.contents[1],/obj/item/prefabs/mould/bolt/high))
							Q.amount -= 1
							var/obj/item/prefabs/complex/bolt/high/C = new /obj/item/prefabs/complex/bolt/high
							C.forceMove(src.loc)
						if(istype(src.contents[1],/obj/item/prefabs/mould/screw))
							Q.amount -= 1
							var/obj/item/prefabs/complex/screw/C = new /obj/item/prefabs/complex/screw
							C.forceMove(src.loc)
						if(istype(src.contents[1],/obj/item/prefabs/mould/simpleWeaponFrame))
							Q.amount -= 1
							var/obj/item/prefabs/complex/simpleWeaponFrame/low/C = new /obj/item/prefabs/complex/simpleWeaponFrame/low
							C.forceMove(src.loc)
						if(istype(src.contents[1],/obj/item/prefabs/mould/complexWeaponFrame))
							Q.amount -= 1
							var/obj/item/prefabs/complex/complexWeaponFrame/low/C = new /obj/item/prefabs/complex/complexWeaponFrame/low
							C.forceMove(src.loc)
						if(istype(src.contents[1],/obj/item/prefabs/mould/trigger))
							Q.amount -= 1
							var/obj/item/prefabs/complex/trigger/C = new /obj/item/prefabs/complex/trigger
							C.forceMove(src.loc)
			if(istype(O,/obj/item/stack/sheet/plastic))
				var/obj/item/stack/sheet/Q = O
				if(Q.amount < 1)
					qdel(Q)
				else
					if(src.contents.len>0)
						if(istype(src.contents[1],/obj/item/prefabs/mould/stock))
							Q.amount -= 1
							var/obj/item/prefabs/complex/stock/mid/C = new /obj/item/prefabs/complex/stock/mid
							C.forceMove(src.loc)
			if(istype(O,/obj/item/stack/sheet/plasteel))
				var/obj/item/stack/sheet/Q = O
				if(Q.amount < 1)
					qdel(Q)
				else
					if(src.contents.len>0)
						if(istype(src.contents[1],/obj/item/prefabs/mould/simpleWeaponFrame))
							Q.amount -= 1
							var/obj/item/prefabs/complex/simpleWeaponFrame/mid/C = new /obj/item/prefabs/complex/simpleWeaponFrame/mid
							C.forceMove(src.loc)
						if(istype(src.contents[1],/obj/item/prefabs/mould/complexWeaponFrame))
							Q.amount -= 1
							var/obj/item/prefabs/complex/complexWeaponFrame/mid/C = new /obj/item/prefabs/complex/complexWeaponFrame/mid
							C.forceMove(src.loc)
			if(istype(O,/obj/item/stack/sheet/prewar))
				var/obj/item/stack/sheet/Q = O
				if(Q.amount < 1)
					qdel(Q)
				else
					if(src.contents.len>0)
						if(istype(src.contents[1],/obj/item/prefabs/mould/simpleWeaponFrame))
							Q.amount -= 1
							var/obj/item/prefabs/complex/simpleWeaponFrame/high/C = new /obj/item/prefabs/complex/simpleWeaponFrame/high
							C.forceMove(src.loc)
						if(istype(src.contents[1],/obj/item/prefabs/mould/complexWeaponFrame))
							Q.amount -= 1
							var/obj/item/prefabs/complex/complexWeaponFrame/high/C = new /obj/item/prefabs/complex/complexWeaponFrame/high
							C.forceMove(src.loc)
*/


/obj/machinery/workbench/bottler
	name = "bottle press"
	icon_state = "bottler"
	desc = "A self-crafted all-in-one bottle making and pressing machine."
	machine_tool_behaviour = list(TOOL_BOTTLER)

/obj/machinery/workbench/forge
	name = "metalworking forge"
	desc = "A large furnace used for forging metal items such as swords, spears and shields. You can imagine yourself making iron daggers here for a long time."
	icon = 'icons/fallout/machines/64x32.dmi'
	icon_state = "forge"
	bound_width = 64
	machine_tool_behaviour = list(TOOL_FORGE)

/obj/item/weaponcrafting/receiver
	name = "modular receiver"
	desc = "A prototype modular receiver and trigger assembly for a firearm."
	icon = 'icons/obj/improvised.dmi'
	icon_state = "receiver"

/obj/item/weaponcrafting/stock
	name = "rifle stock"
	desc = "A classic rifle stock that doubles as a grip, roughly carved out of wood."
	icon = 'icons/obj/improvised.dmi'
	icon_state = "riflestock"

/obj/machinery/autolathe/ammobench
	name = "universal reloading bench"
	desc = "A reloading bench used for inefficiently  crafting new ammunition out of scrap metal. There's a substantial supply of powder and primer. This one can be used to craft most NCR and Legion rounds."
	resistance_flags = INDESTRUCTIBLE
	density = TRUE
	layer = BELOW_OBJ_LAYER
	anchored = TRUE
//	machine_tool_behaviour = list(TOOL_LEGION, TOOL_NCR)
	categories = list("Security")
	super_advanced_technology = FALSE

/obj/machinery/ammobench
	name = "pre-war reloading press"
	desc = "A high quality reloading press from before the war. Capable of cheap, mass production of ammunition."
	icon = 'icons/obj/machines/pre-war_press.dmi'
	icon_state = "pre-war_press"
	resistance_flags = INDESTRUCTIBLE
	density = TRUE
	layer = BELOW_OBJ_LAYER
	anchored = TRUE
	machine_tool_behaviour = TOOL_RELOADER

/obj/machinery/ammobench/makeshift
	name = "makeshift reloading bench"
	desc = "A makeshift reloading bench capable of producing ammunition rather inefficiently."
	icon = 'icons/obj/machines/reloadingbench.dmi'
	icon_state = "reloading_bench"
	resistance_flags = INDESTRUCTIBLE
	density = TRUE
	layer = BELOW_OBJ_LAYER
	anchored = TRUE
	machine_tool_behaviour = TOOL_MSRELOADER

/obj/machinery/ammobench/makeshift/wrench_act(mob/living/user, obj/item/I)
	default_unfasten_wrench(user, I, 10)
	return TRUE