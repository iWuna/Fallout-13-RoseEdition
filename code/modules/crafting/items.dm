/obj/item/ammo_box/magazine/internal/cylinder/custom

/obj/item/ammo_box/magazine/internal/custom

/obj/item/ammo_box/magazine/custom



/obj/item/components
	name = "crafting items"
	icon = 'icons/fallout/objects/items.dmi'
	icon_state = "blueprint_empty"
	w_class = WEIGHT_CLASS_TINY

/obj/item/blueprint
	name = "crafting blueprint"
	icon = 'icons/fallout/objects/items.dmi'
	icon_state = "blueprint_empty"
	w_class = WEIGHT_CLASS_TINY

/obj/item/prefabs
	name = "crafting prefabs"
	icon = 'icons/fallout/objects/crafting.dmi'
	icon_state = "blueprint_empty"
	w_class = WEIGHT_CLASS_TINY
	var/list/tags = list()
	var/list/incompatible_tags = list()
	var/complexity = 10
	var/part_type = "generic" //These are for ensuring you can always swap out similar parts even if item paths differ, mostly fixing barrels
	var/mag_type
	var/enables_automatic = FALSE
	var/burst_mod = 0
	var/dam_mod = 0
	var/canpulloutmag = TRUE
	var/armorpen_mod = 0
	var/recoil_mod = 0
	var/spread_mod = 0
	var/burst_delay_mod = 0
	var/bullet_speed_mod = 0
	var/force_mod = 0
	var/fire_delay_mod = 0
	var/gun_weight_class = WEIGHT_CLASS_TINY //bulky, tiny, small. uses the highest weighted part
	var/caliber_name = ""
	var/frame_type = "pistol"
	var/scope = FALSE

/obj/item/stack/prefabs
    name = "crafting prefabs"
    icon = 'icons/fallout/objects/crafting.dmi'
    icon_state = "blueprint_empty"
    w_class = WEIGHT_CLASS_TINY

//misc blueprints
/obj/item/blueprint/misc
    name = "weapon blueprint"
    desc = "A crafting blueprint for a weapon design."
    icon_state = "blueprint2"

/obj/item/blueprint/misc/stim
    name = "Stimpack blueprint"
    desc = "Stimpacks"


/obj/item/blueprint/misc/superstims
    name = "Super Stimpack blueprint"
    desc = "Super stims"

//weapon blueprints
/obj/item/blueprint/weapon
    name = "weapon blueprint"
    desc = "A crafting blueprint for a weapon design."
    icon_state = "blueprint1"

//low tier

/obj/item/blueprint/weapon/AEP7
	name = "AEP7 blueprint"

/obj/item/blueprint/weapon/trail_carbine
	name = "Trail Carbine blueprint"

/obj/item/blueprint/weapon/lever_action
	name = "Lever Action shotgun blueprint"

/obj/item/blueprint/weapon/kar98
	name = "Ancient rifle blueprint"

/obj/item/blueprint/weapon/kar98/limited
	name = "Damaged ancient rifle blueprint"

//mid tier
/obj/item/blueprint/weapon/thatgun
	name = ".223 pistol blueprint"

/obj/item/blueprint/weapon/thatgun/limited
	name = "Damaged .223 pistol blueprint"

/obj/item/blueprint/weapon/pps
	name = "Ancient SMG blueprint"

/obj/item/blueprint/weapon/pps/limited
	name = "Damaged ancient SMG blueprint"

/obj/item/blueprint/weapon/mg34
	name = "Ancient machine gun blueprint"

/obj/item/blueprint/weapon/mg34/limited
	name = "Damaged ancient machine gun blueprint"

/obj/item/blueprint/weapon/marksmanrifle
	name = "Marksman Rifle blueprint"

/obj/item/blueprint/weapon/marksmanrifle/limited
	name = "Damaged Marksman Rifle blueprint"

/obj/item/blueprint/weapon/plasmapistol
	name = "Plasma Pistol blueprint"

/obj/item/blueprint/weapon/plasmapistol/limited
	name = "Damaged Plasma Pistol blueprint"

/obj/item/blueprint/weapon/uzi
	name = "UZI blueprint"

/obj/item/blueprint/weapon/uzi/limited
	name = "Damaged UZI blueprint"

/obj/item/blueprint/weapon/smg10mm
	name = "10mm SMG blueprint"

/obj/item/blueprint/weapon/smg10mm/limited
	name = "Damaged 10mm SMG blueprint"

/obj/item/blueprint/weapon/brush
	name = "Brush Gun blueprint"

/obj/item/blueprint/weapon/brush/limited
	name = "Damaged Brush Gun blueprint"

/obj/item/blueprint/weapon/grease_gun
 	name = "Grease Gun blueprint"

/obj/item/blueprint/weapon/grease_gun/limited
 	name = "Damaged Grease Gun blueprint"

//high tier
/obj/item/blueprint/weapon/R82
	name = "R82 heavy service rifle blueprint"

/obj/item/blueprint/weapon/R82/limited
	name = "Damaged R82 heavy service rifle blueprint"

/obj/item/blueprint/weapon/deagle
	name = "Desert Eagle blueprint"

/obj/item/blueprint/weapon/deagle/limited
	name = "Damaged Desert Eagle blueprint"

/obj/item/blueprint/weapon/R91
	name = "R91 Assault rifle blueprint"

/obj/item/blueprint/weapon/R91/limited
	name = "Damaged R91 Assault rifle blueprint"

/obj/item/blueprint/weapon/sniper
	name = "Sniper Rifle blueprint"

/obj/item/blueprint/weapon/sniper/limited
	name = "Damaged Sniper Rifle blueprint"

/obj/item/blueprint/weapon/breacher
	name = "Breacher Shotgun blueprint"

/obj/item/blueprint/weapon/breacher/limited
	name = "Damaged Breacher Shotgun blueprint"

/obj/item/blueprint/weapon/lmg
	name = "LMG blueprint"

/obj/item/blueprint/weapon/lmg/limited
	name = "Damaged LMG blueprint"

//very high tier
/obj/item/blueprint/weapon/plasmarifle
	name = "Plasma Rifle blueprint"

/obj/item/blueprint/weapon/plasmarifle/limited
	name = "Damaged Plasma Rifle blueprint"

/obj/item/blueprint/weapon/AER9
	name = "AER9 blueprint"

/obj/item/blueprint/weapon/AER9/limited
	name = "Damaged AER9 blueprint"

/obj/item/blueprint/weapon/AM_rifle
	name = "AM Rifle blueprint"

/obj/item/blueprint/weapon/AM_rifle/limited
	name = "Damaged AM Rifle blueprint"

/obj/item/blueprint/weapon/city_killer
	name = "City Killer shotgun blueprint"

/obj/item/blueprint/weapon/city_killer/limited
	name = "Damaged City Killer shotgun blueprint"

/obj/item/blueprint/weapon/rangemaster
	name = "Colt Rangemaster blueprint"

/obj/item/blueprint/weapon/rangemaster/limited
	name = "Damaged Colt Rangemaster blueprint"

/obj/item/blueprint/weapon/bozar
	name = "Bozar blueprint"

/obj/item/blueprint/weapon/bozar/limited
	name = "Damaged bozar blueprint"
//armor blueprints
/obj/item/blueprint/armor
    name = "armor blueprint"
    icon_state = "blueprint4"

/obj/item/blueprint/armor/combat
    name = "combat armor blueprint"

/obj/item/blueprint/armor/reinforced
    name = "reinforced armor blueprint"

/obj/item/advanced_crafting_components
    name = "crafting blueprint"
    icon = 'icons/fallout/objects/crafting.dmi'
    icon_state = "blueprint_empty"
    w_class = WEIGHT_CLASS_TINY

/*
/obj/item/stack/prefabs/mWeaponParts
	name = "Metal Weapon Parts"
	desc = ""
	//icon_state = ""

/obj/item/stack/prefabs/wWeaponParts
	name = "Wooden Weapon Parts"
	desc = ""
	//icon_state = ""

/obj/item/stack/prefabs/pWeaponParts
	name = "Plastic Weapon Parts"
	desc = ""
	//icon_state = ""

/obj/item/stack/prefabs/psWeaponParts
	name = "Plasteel Weapon Parts"
	desc = ""
	//icon_state = ""

/obj/item/prefabs/complex

/obj/item/prefabs/complex/WeaponFrame
	name = "Weapon Frame"
	desc = "An unfinished gun."
	icon_state = "gunframe"

	var/max_complexity = 100
	complexity = 0

	var/destroy_chance =  15
	var/needs_stock = FALSE
	var/quality = 0

	var/obj/item/prefabs/action = null
	var/obj/item/prefabs/barrel = null
	var/obj/item/prefabs/trigger = null
	var/obj/item/prefabs/bolt = null
	var/obj/item/prefabs/screw = null
	var/obj/item/prefabs/receiver = null
	var/obj/item/prefabs/alloys = null
	var/obj/item/prefabs/assembly = null
	var/obj/item/prefabs/stock = null
	var/obj/item/prefabs/ammo_loader = null


/obj/item/prefabs/complex/WeaponFrame/makeshift
	name = "Makeshift weapon frame"
	max_complexity = 100
	destroy_chance = 30
	tags = list("makeshift_quality")
	incompatible_tags = list("masterwork_quality")
	quality = "makeshift" //This just adds a suffix at the end of the gun name

/obj/item/prefabs/complex/WeaponFrame/standard
	max_complexity = 140
	destroy_chance = 10
	tags = list("standard_quality")
	quality = "standard"

/obj/item/prefabs/complex/WeaponFrame/improved
	name = "Improved Weapon Frame"
	max_complexity = 170
	destroy_chance = 25
	tags = list("improved_quality")
	quality = "improved"

/obj/item/prefabs/complex/WeaponFrame/masterwork
	name = "Masterwork Weapon Frame"
	max_complexity = 270
	destroy_chance = 0
	tags = list("masterwork_quality")
	incompatible_tags = "makeshift_quality"
	quality = "masterwork"

/obj/item/prefabs/complex/WeaponFrame/examine(mob/user)
	..()

	if(action)
		to_chat(user,"<span class='notice'>It's got [action] installed.</span>")
	else
		to_chat(user,"<span class='warning'>There is no action mechanism installed!</span>")
	if(barrel)
		to_chat(user,"<span class='notice'>It's got [barrel] installed.</span>")
	else
		to_chat(user,"<span class='warning'>There is no barrel!</span>")
	if(trigger)
		to_chat(user,"<span class='notice'>It's got [trigger] installed.</span>")
	else
		to_chat(user,"<span class='warning'>There is no trigger!</span>")
	if(bolt)
		to_chat(user,"<span class='notice'>It's got [bolt] installed.</span>")
	else
		to_chat(user,"<span class='warning'>There is no bolt!</span>")
	if(screw)
		to_chat(user,"<span class='notice'>It's got [screw] installed.</span>")
	else
		to_chat(user,"<span class='warning'>There is no screw!</span>")
	if(receiver)
		to_chat(user,"<span class='notice'>It's got [receiver] installed.</span>")
	else
		to_chat(user,"<span class='warning'>There is no receiver!</span>")
	if(ammo_loader)
		to_chat(user,"<span class='notice'>It's got [ammo_loader] installed.</span>")
	else
		to_chat(user,"<span class='warning'>There is no ammo loader!</span>")
	if(stock)
		to_chat(user,"<span class='notice'>It's got [stock] installed.</span>")
	else
		if(needs_stock)
			to_chat(user,"<span class='warning'>There is no stock installed!</span>")
		else
			to_chat(user,"<span class='notice'>There is no stock, but it will work without one.</span>")
	if(alloys)
		to_chat(user,"<span class='notice'>It's got [alloys] installed.</span>")
	else
		to_chat(user,"<span class='notice'>There is no outer frame installed, but it will work without one.</span>")

	if(assembly)
		to_chat(user,"<span class='notice'>It's got [assembly] installed.</span>")
	else
		to_chat(user,"<span class='warning'>There is no gun assembly installed! Activate the assembly in-hand to shape it.</span>")

	to_chat(user,"<span class='notice'>The frame's complexity is [complexity]/[max_complexity].</span>")

/obj/item/prefabs/complex/WeaponFrame/attackby(obj/item/W, mob/user, params)
	var/mob/living/M = user
	var/obj/item/dropitem = null

	if(istype(W,/obj/item/prefabs/complex/WeaponFrame))
		return

	if(istype(W,/obj/item/wrench))
		finish_gun(user)

	if(istype(W,/obj/item/screwdriver))
		if(!LAZYLEN(src.contents))
			to_chat(M,"\The [src] does not contain anything.")
			return 0
		
		for(var/obj/item/advanced_crafting_components/A in src.contents)
			receiver = null
			alloys = null
			assembly = null
			to_chat(M,"You remove \the [A] from \the [src].")
			A.forceMove(get_turf(src))

		for(var/obj/item/prefabs/P in src.contents)
			action = null
			barrel = null
			trigger = null
			bolt = null
			screw = null
			ammo_loader = null
			stock = null

			//temp disabled
			//if(!M.has_trait(TRAIT_MASTER_GUNSMITH) && prob(destroy_chance))
			//	to_chat(M,"<span_class='warning'>[P] is ruined when you remove it!</span>")
			//	P.forceMove(get_turf(src))
			//	qdel(P)
			//	continue
			to_chat(M,"You remove \the [P] from \the [src].")
			P.forceMove(get_turf(src))

		enables_automatic = 0
		complexity = 0
		playsound(loc, 'sound/items/screwdriver.ogg', 50, 1)
		return 0

	if(istype(W,/obj/item/prefabs))
		var/obj/item/prefabs/I = W
		if(complexity + I.complexity > max_complexity)
			to_chat(usr,"<span class='warning'>[I] cannot fit on that frame! The system is too complicated and needs simpler parts.</span>")
			return

		for(var/obj/item/prefabs/P in src.contents)
			if(I.part_type == P.part_type) //Always able to swap out barrel with barrel, etc
				continue

			for(var/tag in I.tags)
				if(tag in P.incompatible_tags)//Something already in it is incompatible
					to_chat(usr,"<span class='warning'>[I] cannot fit on that frame! \The [P] makes it incompatible.</span>")
					return
				for(var/inner_tag in P.tags) //This part we're holding is incompatible with something already in it. Hello recursion my old friend
					if(inner_tag in I.incompatible_tags)
						to_chat(usr,"<span class='warning'>[I] cannot fit on that frame! It's incompatible with \the [P].</span>")
						return

		if(!do_after(user,20,target = src))
			return

		complexity += I.complexity
		if(I.enables_automatic)
			enables_automatic = TRUE
	if(istype(W,/obj/item/prefabs/complex/action))//automatic/burst/etc, lower damage for burst
		dropitem = action
		if(action)
			to_chat(usr,"<span_class='notice'>You swap out \the [action].</span>")
			action = null
		action = W
	else if(istype(W,/obj/item/prefabs/complex/barrel))//bullet speed
		dropitem = barrel
		if(barrel)
			to_chat(usr,"<span_class='notice'>You swap out \the [barrel].</span>")
			barrel = null
		barrel = W
	else if(istype(W,/obj/item/prefabs/complex/trigger))//fire delay, burst delay, more spread for better
		dropitem = trigger
		if(trigger)
			to_chat(usr,"<span_class='notice'>You swap out \the [trigger].</span>")
			trigger = null
		trigger = W
	else if(istype(W,/obj/item/prefabs/complex/bolt))//damage, armorpen mod
		dropitem = bolt
		if(bolt)
			to_chat(usr,"<span_class='notice'>You swap out \the [bolt].</span>")
			bolt = null
		bolt = W
	else if(istype(W,/obj/item/prefabs/complex/screw))//spread
		dropitem = screw
		if(screw)
			to_chat(usr,"<span_class='notice'>You swap out \the [screw].</span>")
			screw = null
		screw = W
	else if(istype(W,/obj/item/advanced_crafting_components/receiver))//req
		dropitem = receiver
		if(receiver)
			to_chat(usr,"<span_class='notice'>You swap out \the [receiver].</span>")
			receiver = null
		receiver = W
	else if(istype(W,/obj/item/advanced_crafting_components/alloys))//extra random stats if present
		dropitem = alloys
		if(alloys)
			to_chat(usr,"<span_class='notice'>You swap out \the [alloys].</span>")
			alloys = null
		alloys = W
	else if(istype(W,/obj/item/prefabs/complex/ammo_loader))//ammo type
		dropitem = ammo_loader
		if(ammo_loader)
			to_chat(usr,"<span_class='notice'>You swap out \the [ammo_loader].</span>")
			ammo_loader = null
		ammo_loader = W
	else if(istype(W,/obj/item/prefabs/complex/gunframe))
		var/obj/item/prefabs/complex/gunframe/G = W
		dropitem = assembly
		if(assembly)
			to_chat(usr,"<span_class='notice'>You swap out \the [assembly].</span>")
			assembly = null
		assembly = W
		icon_state = assembly.icon_state
		src.name = "[G.gun_type] frame"
		needs_stock = G.needs_stock
	else if(istype(W,/obj/item/prefabs/complex/stock))//spread reduction
		dropitem = stock
		if(stock)
			to_chat(usr,"<span_class='notice'>You swap out \the [stock].</span>")
			stock = null
		stock = W
	else
		return ..()

	if(dropitem)
		dropitem.forceMove(get_turf(src))

	playsound(get_turf(src), 'sound/items/screwdriver.ogg', 50, 1)
	user.transferItemToLoc(W,src)

//Alloys are not needed, but buff stats a bit
/obj/item/prefabs/complex/WeaponFrame/proc/finish_gun(mob/user)
	var/mob/living/M = user

	if(!action || !barrel || !trigger || !bolt || !screw || !receiver || !assembly || (!stock && needs_stock))
		if(user)
			to_chat(user,"<span_class='notice'>It's missing a part! Examine it for more details.</span>")
		return 0

	var/gun_path
	var/gun_icon
	var/prefix = ""
	var/quality = ""
	var/obj/item/gun/G

	switch(assembly.frame_type) //Specific item sprites - weird ones are genericized
		if("pistol")
			gun_path = /obj/item/gun/ballistic/automatic/pistol //Generic pistol!
			gun_icon = "m1911"//Garbage default pistol
			switch(ammo_loader.caliber_name) //Here we do some basic life hacks to get our nice sprites out there
				if("10mm")
					gun_icon = "n99"
				if("9mm")
					gun_icon = "ninemil"
				if("5.56")
					gun_icon = "thatgun"
				if("7.62")
					gun_icon = "aps"
				if(".45-70")
					if(complexity > 100)
						gun_icon = "maria"
				if(".50")
					if(complexity > 100)
						gun_icon = "deagle"
		if("rifle")
			//if(enables_automatic)
			gun_path = /obj/item/gun/ballistic/automatic
			gun_icon = "service_rifle"
			//else
			//	gun_path = /obj/item/gun/ballistic/shotgun //It's a bolt action rifle
			//	gun_icon = pick("varmint_rifle","308")
			switch(ammo_loader.caliber_name)
				if("9mm")
					gun_icon = "auto_pipe_rifle"
				if("5.56")
					if(complexity < 50)
						gun_icon = "varmint_rifle"
					else if(complexity < 125)
						gun_icon = "service_rifle"
					else if(complexity < 150)
						gun_icon = "assault_rifle"
					else if(complexity < 200)
						gun_icon = "assault_carbine"
					else if(complexity < 250)
						gun_icon = "R82"
					else
						gun_icon = "type93"
				if("7.62")
					if(enables_automatic)
						gun_icon = "rangemaster"
					else
						gun_icon = "moistnugget"

		if("shotgun")
			gun_path = /obj/item/gun/ballistic/shotgun/automatic
			//if(!istype(barrel,/obj/item/prefabs/complex/barrel/shotgun))
			//	if(user)
			//		to_chat(user,"<span class='warning'>Shotguns must have shotgun barrels!</span>")
			//	return 0
			if(complexity < 50)
				gun_icon = "single_shotgun"
			else if(complexity < 75)
				gun_icon = "caravan_shotgun"
			else if(complexity < 100)
				gun_icon = "hunting"
			else if(complexity < 125)
				gun_icon = "trenchgun"
			else if(complexity < 200)
				gun_icon = "riot_shotgun"
			else
				gun_icon = "bulldog"
		if("revolver")
			gun_path = /obj/item/gun/ballistic/revolver
			gun_icon = "detective_panther"
			switch(ammo_loader.caliber_name)
				if("10mm")
					gun_icon = "colt6250"
				if("9mm")
					gun_icon = "zipgun"
				if(".357")
					gun_icon = "colt357"
				if(".44")
					gun_icon = "m29"
				if(".45")
					gun_icon = "mysterious_m29"
				if(".45-70")
					gun_icon = "hunting_revolverscopeless"
				if(".50")
					gun_icon = "mateba"
				if("12g")
					gun_icon = "hunting-sawn"
		if("smg")
			gun_path = /obj/item/gun/ballistic/automatic
			gun_icon = "smg10mm"
			switch(ammo_loader.caliber_name)
				if("10mm")
					gun_icon = "smg10mm"
				if("9mm")
					gun_icon = "mini-uzi"
				if(".44")
					gun_icon = "grease_gun"
				if(".45")
					gun_icon = "tommygun"
				if(".45-70")
					gun_icon = "m90"
		if("lmg")
			gun_path = /obj/item/gun/ballistic/automatic
			gun_icon = "R84"
			if(complexity < 100)
				gun_icon = "R84"
			else
				gun_icon = "fnfal"

		if("sniper")
			scope = TRUE
			//if(enables_automatic)
			gun_path = /obj/item/gun/ballistic/automatic
			//else
			//	gun_path = /obj/item/gun/ballistic/shotgun //Bolt action
			gun_icon = "308"
			switch(barrel.caliber_name)
				if(".357")
					gun_icon = "cowboyrepeater"
				if(".44")
					gun_icon = "trailcarbine"
				if(".45")
					gun_icon = "sniper"
				if(".45-70")
					gun_icon = "gold_sniper"
				if("5.56")
					gun_icon = "rat_slayer"
				if("7.62")
					gun_icon = "rangemaster"
				if(".50")
					gun_icon = "bozar"

	if(!ispath(gun_path)) //Something went fucky
		return 0

	G = new gun_path(get_turf(src))
	G.icon_state = gun_icon
	G.gun_icon_state = gun_icon
	G.item_state = gun_icon
	G.desc = ""

	if(alloys)
		to_chat(user,"You use the alloys to improve the weapon.")
		G.extra_damage += pick(6,4,2)
		G.extra_penetration += pick(6,4,2)
	if(enables_automatic)
		G.automatic = 1

	if(M.has_trait(TRAIT_MASTER_GUNSMITH))
		to_chat(user,"Your skills come in handy while assembling the weapon")
		if(prob(7))
			G.extra_damage += 5
		if(prob(7))
			G.extra_penetration += 5
		if(prob(7))
			G.burst_size += 1
		if(prob(7))
			G.spread += -15
		if(prob(7))
			G.projectile_speed += -0.2
		if(prob(7))
			G.fire_delay += -0.5

	for(var/obj/item/prefabs/C in src.contents)
		G.extra_damage += C.dam_mod//0
		G.burst_size += C.burst_mod//1
		G.customburst += C.burst_mod//1
		G.burst_delay += C.burst_delay_mod//2
		G.extra_penetration += C.armorpen_mod//0
		G.recoil += C.recoil_mod//0
		G.spread += C.spread_mod//0
		G.projectile_speed += C.bullet_speed_mod //Should be tiny increments, normally is 0.8
		G.fire_delay += C.fire_delay_mod
		if(G.w_class < C.gun_weight_class)
			G.w_class = C.gun_weight_class
		if(C.mag_type && istype(G,/obj/item/gun/ballistic))
			var/obj/item/gun/ballistic/B = G
			B.mag_type = C.mag_type
			B.pulloutmag = C.canpulloutmag
		else if(C.mag_type && istype(G,/obj/item/gun/energy))
			var/obj/item/gun/energy/E = G
			E.cell_type = C.mag_type
		G.force += C.force_mod

	if(complexity < 50)
		quality = "crude" //It shouldn't even be possible to get this low, maybe VERY basic shotguns
	else if(complexity < 75)
		quality = "makeshift"
	else if(complexity < 100)
		quality = "standard"
	else if(complexity < 150)
		quality = "good"
	else if(complexity < 170)
		quality = "improved"
	else if(complexity < 200)
		quality = "excellent"
	else if(complexity < 250)
		quality = "superior"
	else
		quality = "masterwork"

	if(max_complexity / 2 > complexity) //You got lazy and didn't even fill half the possible complexity
		G.extra_damage += pick(-2,-1,0)
		if(quality == "standard")
			quality = "substandard"
		if(quality == "improved")
			quality = "modified"
		if(quality == "masterwork")
			quality = "enhanced"

	G.name = "[prefix][ammo_loader.caliber_name] [assembly.frame_type] ([quality])"
	
	if(scope)
		G.zoomable = TRUE
		G.zoom_amt = 10
		G.zoom_out_amt = 13
		G.build_zooming()

	var/obj/item/gun/ballistic/B = G
	B.magazine = new B.mag_type(B)
	src.forceMove(G) //Entire assembly gets thrown in the gun


/obj/item/prefabs/complex/simpleWeaponFrame/low
	name = "Simple Weapon Frame (standard)"
	desc = ""
	icon_state = "gunframe"

/obj/item/prefabs/complex/complexWeaponFrame/low
	name = "Complex Weapon Frame (standard)"
	desc = ""
	icon_state = "gunframe"

/obj/item/prefabs/complex/simpleWeaponFrame/mid
	name = "Simple Weapon Frame (improved)"
	desc = ""
	//icon_state = ""

/obj/item/prefabs/complex/complexWeaponFrame/mid
	name = "Complex Weapon Frame (improved)"
	desc = ""
	//icon_state = ""

/obj/item/prefabs/complex/simpleWeaponFrame/high
	name = "Simple Weapon Frame (masterwork)"
	desc = ""
	//icon_state = ""

/obj/item/prefabs/complex/complexWeaponFrame/high
	name = "Complex Weapon Frame (masterwork)"
	desc = ""
	//icon_state = ""

//moulds

/obj/item/prefabs/mould
	name = "Mould"
	desc = ""
	icon_state = "mould"

	var/item_path
	var/mould_sheet_type = /obj/item/stack/sheet/metal
	var/sheet_amount = 1

/obj/item/prefabs/mould/action/simple
	name = "Simple Action Mould"
	desc = ""
	item_path = /obj/item/prefabs/complex/action/simple
	sheet_amount = 1

/obj/item/prefabs/mould/action/auto
	name = "Automatic Action Mould"
	desc = ""
	item_path = /obj/item/prefabs/complex/action/auto
	sheet_amount = 2

/obj/item/prefabs/mould/barrel/short
	name = "Short Barrel Mould"
	desc = ""
	item_path = /obj/item/prefabs/complex/barrel/short
	sheet_amount = 1

/obj/item/prefabs/mould/barrel/medium
	name = "Medium Barrel Mould"
	desc = ""
	item_path = /obj/item/prefabs/complex/barrel/medium
	sheet_amount = 2

/obj/item/prefabs/mould/barrel/long
	name = "Long Barrel Mould"
	desc = ""
	item_path = /obj/item/prefabs/complex/barrel/long
	sheet_amount = 3

/obj/item/prefabs/mould/bolt/simple
	name = "Simple Bolt Mould"
	desc = ""
	item_path = /obj/item/prefabs/complex/bolt/simple
	sheet_amount = 2

/obj/item/prefabs/mould/bolt/high
	name = "Advanced Bolt Mould"
	desc = ""
	item_path = /obj/item/prefabs/complex/bolt/high
	sheet_amount = 2

/obj/item/prefabs/mould/trigger
	name = "Simple Trigger Mould"
	desc = ""
	item_path = /obj/item/prefabs/complex/trigger/simple
	sheet_amount = 2

/obj/item/prefabs/mould/stock
	name = "Stock Mould"
	desc = ""
	item_path = /obj/item/prefabs/complex/stock/mid
	mould_sheet_type = /obj/item/stack/sheet/plastic

/obj/item/prefabs/mould/screw
	name = "Screw Mould"
	desc = ""
	item_path = /obj/item/prefabs/complex/screw

/obj/item/prefabs/mould/simpleWeaponFrame
	name = "Simple Weapon Frame Mould"
	desc = ""
	item_path = /obj/item/prefabs/complex/WeaponFrame/makeshift
	sheet_amount = 5

/obj/item/prefabs/mould/complexWeaponFrame
	name = "Complex Weapon Frame Mould"
	desc = ""
	item_path = /obj/item/prefabs/complex/WeaponFrame/standard
	sheet_amount = 5

/obj/item/prefabs/mould/prewarWeaponFrame
	name = "Prewar Weapon Frame Mould"
	desc = ""
	item_path = /obj/item/prefabs/complex/WeaponFrame/improved
	sheet_amount = 5

/obj/item/prefabs/mould/masterworkWeaponFrame
	name = "Masterwork Weapon Frame Mould"
	desc = ""
	item_path = /obj/item/prefabs/complex/WeaponFrame/masterwork
	sheet_amount = 1
	mould_sheet_type = /obj/item/stack/sheet/prewar

/obj/item/prefabs/mould/m10mm
	name = "10mm Magazine Ammo Loader Mould"
	desc = ""
	item_path = /obj/item/prefabs/complex/ammo_loader/m10mm
	sheet_amount = 2

/obj/item/prefabs/mould/m10mmdouble
	name = "10mm Magazine Double Ammo Loader Mould"
	desc = ""
	item_path = /obj/item/prefabs/complex/ammo_loader/m10mmdouble
	sheet_amount = 2

/obj/item/prefabs/mould/m9mm
	name = "9mm Magazine Ammo Loader Mould"
	desc = ""
	item_path = /obj/item/prefabs/complex/ammo_loader/m9mm
	sheet_amount = 2

/obj/item/prefabs/mould/m9mmdouble
	name = "9mm Magazine Double Ammo Loader Mould"
	desc = ""
	item_path = /obj/item/prefabs/complex/ammo_loader/m9mmdouble
	sheet_amount = 2

/obj/item/prefabs/mould/m9mmext
	name = "9mm Magazine Extended Ammo Loader Mould"
	desc = ""
	item_path = /obj/item/prefabs/complex/ammo_loader/m9mmext
	sheet_amount = 2

/obj/item/prefabs/mould/m556
	name = "556 Magazine Ammo Loader Mould"
	desc = ""
	item_path = /obj/item/prefabs/complex/ammo_loader/m556
	sheet_amount = 2

//components
/obj/item/prefabs/complex/action
	part_type = "action"

/obj/item/prefabs/complex/action/simple
	name = "Simple Action"
	desc = ""
	icon_state = "action"
	complexity = 10
	tags = list("semiauto")
	incompatible_tags = list("automatic")

/obj/item/prefabs/complex/action/auto
	name = "Automatic Action"
	desc = ""
	icon_state = "action"
	complexity = 30
	tags = list("automatic")
	incompatible_tags = list("semiauto")
	spread_mod = 10
	enables_automatic = TRUE

/obj/item/prefabs/complex/action/autoburst
	name = "Automatic Burst Action"
	desc = ""
	icon_state = "action"
	complexity = 50
	tags = list("automatic","burst")
	incompatible_tags = list("revolver","shotgun","sniper")
	burst_mod = 1
	spread_mod = 20
	enables_automatic = TRUE

/obj/item/prefabs/complex/action/rapid
	name = "Rapid Blowback Action"
	desc = "Rare!"
	icon_state = "action"
	part_type = "action"
	complexity = 80
	tags = list("automatic","burst")
	incompatible_tags = list("revolver","shotgun","sniper","pistol")
	spread_mod = 30
	burst_mod = 2
	burst_delay_mod = -1
	enables_automatic = TRUE

/obj/item/prefabs/complex/barrel
	name = "Barrel"
	desc = ""
	icon_state = "barrel"
	part_type = "barrel"
	complexity = 10

/obj/item/prefabs/complex/barrel/short
	name = "Short Barrel"
	desc = ""
	icon_state = "barrel"
	complexity = 10
	bullet_speed_mod = 0
	dam_mod = -3
	armorpen_mod = -3

/obj/item/prefabs/complex/barrel/medium
	name = "Medium Barrel"
	desc = ""
	icon_state = "barrel"
	complexity = 20
	bullet_speed_mod = -0.2

/obj/item/prefabs/complex/barrel/long
	name = "Long Barrel"
	desc = ""
	icon_state = "barrel"
	complexity = 40
	bullet_speed_mod = -0.4

/obj/item/prefabs/complex/barrel/dual
	name = "Multiple barrels"
	desc = ""
	icon_state = "barrel"
	tags = list("automatic")
	complexity = 70
	burst_mod = 1
	burst_delay_mod = -1.5
	spread_mod = 30

// obsolete
/obj/item/prefabs/complex/bolt
	name = "Bolt"
	desc = ""
	icon_state = "bolt"
	part_type = "bolt"

/obj/item/prefabs/complex/bolt/simple
	name = "Simple Bolt"
	desc = ""
	icon_state = "bolt"
	tags = list("crude_quality")
	incompatible_tags = list("masterwork_quality")
	complexity = 10

/obj/item/prefabs/complex/bolt/high
	name = "Advanced Bolt"
	desc = ""
	tags = list("prewar_quality","bonusdmg")
	incompatible_tags = list("crude_quality")
	complexity = 40
	dam_mod = 6
	armorpen_mod = 6

/obj/item/prefabs/complex/trigger/simple
	name = "Simple Trigger"
	desc = ""
	icon_state = "trigger"
	complexity = 10
	part_type = "trigger"

/obj/item/prefabs/complex/trigger/hair
	name = "Hair Trigger"
	desc = ""
	icon_state = "trigger"
	complexity = 20
	part_type = "trigger"
	fire_delay_mod = -2.5

/obj/item/prefabs/complex/trigger/advhair
	name = "Advanced Hair Trigger"
	desc = ""
	icon_state = "trigger"
	complexity = 40
	part_type = "trigger"
	fire_delay_mod = -5

/obj/item/prefabs/complex/stock
	name = "Stock"
	desc = ""
	icon_state = "stockwood"
	//tags = list("rifle","shotgun","lmg")
	//tags = list("rifle")
	incompatible_tags = list("pistol","revolver")
	complexity = 5
	part_type = "stock"

/obj/item/prefabs/complex/stock/low
	name = "Wooden Stock"
	desc = ""
	icon_state = "stockwood"
	complexity = 5
	spread_mod = -5

/obj/item/prefabs/complex/stock/mid
	name = "Plastic Stock"
	desc = ""
	icon_state = "stock"
	complexity = 15
	spread_mod = -15

/obj/item/prefabs/complex/screw
	name = "Screw"
	desc = ""
	icon_state = "screw"
	complexity = 10
	part_type = "screw"

/obj/item/prefabs/complex/ammo_loader
    name = "Basic Ammo Loader"
    desc = ""
    icon_state = "ammo" //whatever
    part_type = "ammo"
    tags = list()
    incompatible_tags = list()

/obj/item/prefabs/complex/ammo_loader/m556
	name = "556 Magazine Loader"
	mag_type = /obj/item/ammo_box/magazine/m556
	complexity = 30
	caliber_name = "5.56"
	incompatible_tags = list("revolver")

/obj/item/prefabs/complex/ammo_loader/m762
	name = "762 Magazine Loader"
	mag_type = /obj/item/ammo_box/magazine/m762
	complexity = 80
	caliber_name = "7.62"
	incompatible_tags = list("revolver")

/obj/item/prefabs/complex/ammo_loader/m9mm
	name = "9mm Simple Magazine Loader"
	mag_type = /obj/item/ammo_box/magazine/m9mm
	complexity = 10
	caliber_name = "9mm"
	incompatible_tags = list("revolver")

/obj/item/prefabs/complex/ammo_loader/m9mmdouble
	name = "9mm Double Stack Magazine Loader"
	mag_type = /obj/item/ammo_box/magazine/m9mmds
	complexity = 15
	caliber_name = "9mm"
	incompatible_tags = list("revolver")

/obj/item/prefabs/complex/ammo_loader/m9mmext
	name = "9mm Extended Magazine Loader"
	mag_type = /obj/item/ammo_box/magazine/uzim9mm
	complexity = 20
	caliber_name = "9mm"
	incompatible_tags = list("revolver")

/obj/item/prefabs/complex/ammo_loader/m10mm
	name = "10mm Simple Magazine Loader"
	mag_type = /obj/item/ammo_box/magazine/m10mm_adv
	complexity = 12
	caliber_name = "10mm"
	incompatible_tags = list("revolver")

/obj/item/prefabs/complex/ammo_loader/m10mmdouble
	name = "10mm Double Magazine Loader"
	mag_type = /obj/item/ammo_box/magazine/m10mm_auto
	complexity = 20
	caliber_name = "10mm"
	incompatible_tags = list("revolver")

/obj/item/prefabs/complex/ammo_loader/m45mm
	name = ".45 Simple Magazine Loader"
	mag_type = /obj/item/ammo_box/magazine/m45
	complexity = 8
	caliber_name = ".45"
	incompatible_tags = list("revolver")

/obj/item/prefabs/complex/ammo_loader/m45mmdouble
	name = ".45 Double Magazine Loader"
	mag_type = /obj/item/ammo_box/magazine/greasegun
	complexity = 18
	caliber_name = ".45"
	incompatible_tags = list("revolver")

/obj/item/prefabs/complex/ammo_loader/m45mmext
	name = ".45 Extended Magazine Loader"
	mag_type = /obj/item/ammo_box/magazine/tommygunm45
	complexity = 30
	caliber_name = ".45"
	incompatible_tags = list("revolver")

/obj/item/prefabs/complex/ammo_loader/m50AE
	name = ".50AE Magazine Loader"
	mag_type = /obj/item/ammo_box/magazine/a50
	complexity = 30
	caliber_name = ".50"
	incompatible_tags = list("revolver")

/obj/item/prefabs/complex/ammo_loader/m12g
	name = "12g Drum Magazine Loader"
	mag_type = /obj/item/ammo_box/magazine/d12g
	complexity = 60
	caliber_name = "12g"
	incompatible_tags = list("bonusdmg","burst","revolver","pistol")

/obj/item/prefabs/complex/ammo_loader/m4570
	name = "45-70 Internal Magazine Loader"
	mag_type = /obj/item/ammo_box/magazine/internal/shot/tube4570
	complexity = 60
	caliber_name = ".45-70"
	incompatible_tags = list("pistol")
	canpulloutmag = FALSE

/obj/item/prefabs/complex/ammo_loader/m44
	name = ".44 Internal Magazine Loader"
	mag_type = /obj/item/ammo_box/magazine/internal/shot/tube44
	complexity = 15
	caliber_name = ".44"
	incompatible_tags = list("pistol")
	canpulloutmag = FALSE

/obj/item/prefabs/complex/ammo_loader/m44
	name = ".357 Internal Magazine Loader"
	mag_type = /obj/item/ammo_box/magazine/internal/shot/tube357
	complexity = 10
	caliber_name = ".357"
	incompatible_tags = list("pistol")
	canpulloutmag = FALSE

/obj/item/prefabs/complex/ammo_loader/m50MG
	name = ".50MG Internal Magazine Loader"
	mag_type = /obj/item/ammo_box/magazine/internal/boltaction/antimateriel
	complexity = 80
	caliber_name = ".50"
	tags = list("semiauto")
	incompatible_tags = list("automatic","pistol","shotgun")
	canpulloutmag = FALSE

//more stuff here
//internal shotgun magazines
//etc
//energy weapons

/obj/item/prefabs/complex/gunframe
	name = "frame"
	part_type = "frame"
	icon_state = "rifleframe"
	var/gun_type = ""
	var/needs_stock = FALSE

/obj/item/prefabs/complex/loot
	name = "Ruined Pre-War Assembly"
	desc = "You might be able to salvage this using an advanced workbench, a gunsmith might get better results..."
	icon_state = "advancedframe"
*/
//plasma
/obj/item/advanced_crafting_components/flux
	name = "Flux capacitator"
	desc = "An energy weapon part, a craftsman might want to have this."
	icon_state = "flux"

//lasers
/obj/item/advanced_crafting_components/lenses
	name = "Focused crystal lenses"
	desc = "An energy weapon part, a craftsman might want to have this."
	icon_state = "lenses"

//general energy
/obj/item/advanced_crafting_components/conductors
	name = "Superconductor coil"
	desc = "An energy weapon part, a craftsman might want to have this."
	icon_state = "conductor"

//general ballistics
/obj/item/advanced_crafting_components/receiver
	name = "Advanced modular receiver"
	desc = "A ballistic weapon part, a craftsman might want to have this."
	icon_state = "receiver"

//rifles
/obj/item/advanced_crafting_components/assembly
	name = "weapon assembly"
	desc = "A ballistic weapon part, a craftsman might want to have this. Activate it in hand to shape it into a type of firearm. This cannot be undone!"
	icon_state = "rifleframe"

/*
	//Ideally these would all have their own sprites
	var/list/frame_types = list("pistol" = WEIGHT_CLASS_TINY,
							"rifle" = WEIGHT_CLASS_BULKY,
							"smg" = WEIGHT_CLASS_SMALL,
							"lmg" = WEIGHT_CLASS_BULKY,
							"shotgun" = WEIGHT_CLASS_BULKY,
							"revolver" = WEIGHT_CLASS_SMALL,
							"sniper" = WEIGHT_CLASS_BULKY) //add more here, energy weapons etc

/obj/item/advanced_crafting_components/assembly/attack_self(mob/user)
	var/selection = input(user,"What do you want to shape this assembly into?") as null|anything in frame_types
	if(!selection)
		return

	to_chat(user,"<span class='notice'>You begin shaping the metal into a gun frame... Sit tight! This cannot be undone!")
	if(do_after(user,80,target = src))
		var/obj/item/prefabs/complex/gunframe/G = new(get_turf(src))
		if(selection == "pistol" || selection == "revolver")
			G.icon_state = "pistolframe" //lil pistol icon hackiness
		G.frame_type = selection
		G.gun_type = selection
		G.tags = list(selection)
		for(var/F in frame_types)
			if(F == selection)
				continue
			LAZYADD(G.incompatible_tags,F) //Add our opposing ones, rifle shit cannot go in a pistol frame, etc

		G.gun_weight_class = frame_types[selection]
		G.name = "[selection] [initial(G.name)]" //ie. pistol frame
		to_chat(user,"<span class='notice'>You finish shaping the metal and end up with \the [G]!")
		user.dropItemToGround(src) //Clear it the UI/inventory
		if(selection == "pistol" || selection == "smg" || selection == "revolver")
			G.needs_stock = FALSE //negates the need to add a stock
		else
			G.needs_stock = TRUE
		qdel(src)
*/
//general
/obj/item/advanced_crafting_components/alloys
	name = "Superlight alloys"
	desc = "A general crafting part, a craftsman might want to have this."
	icon_state = "alloys"

/obj/item/attachments
    name = "attachment"
    icon = 'icons/fallout/objects/crafting.dmi'
    icon_state = "alloys"
    w_class = WEIGHT_CLASS_TINY

/obj/item/attachments/scope
	name = "Weapon Optics"
	desc = "A long-range scope, attach to a compatible weapon. Remove with a screwdriver. Makes the weapon slightly slower to fire."
	icon_state = "scope"

/obj/item/attachments/recoil_decrease
	name = "Recoil Compensator"
	desc = "Improves stability and recoil, attach to a compatible weapon. Cannot be removed."
	icon_state = "recoilcomp"

/obj/item/attachments/bullet_speed
	name = "Improved Barrel"
	desc = "Improves bullet speed, attach to a compatible weapon. Cannot be removed."
	icon_state = "barrel"

/obj/item/attachments/burst_improvement
	name = "Burst Cam"
	desc = "Increases burst size, attach to a compatible weapon. Cannot be removed."
	icon_state = "burstcam"