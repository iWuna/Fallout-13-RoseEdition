/obj/item/prefabs/complex/eWeaponFrame
	name = "Weapon Frame"
	desc = "An unfinished energy gun."
	icon_state = "gunframe"

	var/max_complexity = 100
	complexity = 0

	var/destroy_chance =  15
	var/needs_stock = FALSE
	var/quality = 0

	var/obj/item/prefabs/barrel = null //plasma/laser/etc
	var/obj/item/prefabs/cell = null //type of ammo
	var/obj/item/prefabs/lens = null //required
	var/obj/item/prefabs/conductors = null //bonus stats
	var/obj/item/prefabs/flux = null //required
	var/obj/item/prefabs/burst = null


/obj/item/prefabs/complex/eWeaponFrame/attackby(obj/item/W, mob/user, params)
	var/mob/living/M = user
	var/obj/item/dropitem = null

	if(istype(W,/obj/item/prefabs/complex/eWeaponFrame))
		return

	if(istype(W,/obj/item/wrench))
		finish_egun(user)

	if(istype(W,/obj/item/screwdriver))
		if(!LAZYLEN(src.contents))
			to_chat(M,"\The [src] does not contain anything.")
			return 0
		
		for(var/obj/item/advanced_crafting_components/A in src.contents)
			lens = null
			flux = null
			conductors = null
			to_chat(M,"You remove \the [A] from \the [src].")
			A.forceMove(get_turf(src))

		for(var/obj/item/prefabs/P in src.contents)
			barrel = null
			cell = null

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
	if(istype(W,/obj/item/prefabs/complex/ebarrel))//automatic/burst/etc, lower damage for burst
		dropitem = barrel
		if(barrel)
			to_chat(usr,"<span_class='notice'>You swap out \the [barrel].</span>")
			barrel = null
		barrel = W
	else if(istype(W,/obj/item/prefabs/complex/eburst))//bullet speed
		dropitem = burst
		if(burst)
			to_chat(usr,"<span_class='notice'>You swap out \the [burst].</span>")
			burst = null
		burst = W
	else if(istype(W,/obj/item/prefabs/complex/ecell))//bullet speed
		dropitem = cell
		if(cell)
			to_chat(usr,"<span_class='notice'>You swap out \the [cell].</span>")
			cell = null
		cell = W
	else if(istype(W,/obj/item/advanced_crafting_components/lenses))//req
		dropitem = lens
		if(lens)
			to_chat(usr,"<span_class='notice'>You swap out \the [lens].</span>")
			lens = null
		lens = W
	else if(istype(W,/obj/item/advanced_crafting_components/flux))//extra random stats if present
		dropitem = flux
		if(flux)
			to_chat(usr,"<span_class='notice'>You swap out \the [flux].</span>")
			flux = null
		flux = W
	else if(istype(W,/obj/item/advanced_crafting_components/conductors))//extra random stats if present
		dropitem = conductors
		if(conductors)
			to_chat(usr,"<span_class='notice'>You swap out \the [conductors].</span>")
			conductors = null
		conductors = W
	else
		return ..()

	if(dropitem)
		dropitem.forceMove(get_turf(src))

	playsound(get_turf(src), 'sound/items/screwdriver.ogg', 50, 1)
	user.transferItemToLoc(W,src)

//Alloys are not needed, but buff stats a bit

/obj/item/prefabs/complex/eWeaponFrame/proc/finish_egun(mob/user)
	var/mob/living/M = user

	if(!barrel || !burst || !cell || !lens || !flux || !conductors)
		if(user)
			to_chat(user,"<span_class='notice'>It's missing a part! Examine it for more details.</span>")
		return 0

	var/gun_path
	var/gun_icon
	var/prefix = ""
	var/quality = ""
	var/obj/item/gun/G
	var/lethal = TRUE

	if(istype(src,/obj/item/prefabs/complex/eWeaponFrame/pistol))
		gun_path = /obj/item/gun/energy/laser/pistol
		gun_icon = "AEP7"//Garbage default pistol
		prefix = "Portable"
	else if(istype(src,/obj/item/prefabs/complex/eWeaponFrame/rifle))
		gun_path = /obj/item/gun/energy/laser/aer9
		gun_icon = "laser"
		prefix = "Full Length"
	else if(istype(src,/obj/item/prefabs/complex/eWeaponFrame/hqrifle))
		gun_path = /obj/item/gun/energy/laser/rcw
		gun_icon = "lasercw"
		prefix = "Advanced"

	if(istype(barrel, /obj/item/prefabs/complex/ebarrel/ion))
		lethal = FALSE
		if(istype(src,/obj/item/prefabs/complex/eWeaponFrame/pistol))
			gun_path = /obj/item/gun/energy/ionrifle/carbine
			gun_icon = "ioncarbine"
			prefix = "Portable Ion"
		else
			gun_path = /obj/item/gun/energy/ionrifle
			gun_icon = "ionrifle"
			prefix = "Ion"

	if(!ispath(gun_path)) //Something went fucky
		return 0

	G = new gun_path(get_turf(src))
	G.icon_state = gun_icon
	G.gun_icon_state = gun_icon
	G.item_state = gun_icon
	G.desc = ""

	if(conductors && lethal)
		to_chat(user,"You use the conductors to improve the weapon.")
		G.extra_damage += pick(6,4,2)
		G.extra_penetration += pick(6,4,2)

	if(M.has_trait(TRAIT_MASTER_GUNSMITH) && lethal)
		to_chat(user,"Your skills come in handy while assembling the weapon")
		if(prob(25))
			G.extra_damage += 5
		if(prob(25))
			G.extra_penetration += 5

	for(var/obj/item/prefabs/C in src.contents && lethal)
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
		if(C.energyAmmoType)
			var/obj/item/gun/energy/E = G
			E.cell_type = C.energyAmmoType
		if (C.energyProjType)
			var/obj/item/gun/energy/E = G
			E.ammo_type = C.energyProjType
		G.force += C.force_mod

	if(complexity < 50)
		quality = "crude" //It shouldn't even be possible to get this low, maybe VERY basic shotguns
	else if(complexity < 50)
		quality = "makeshift"
	else if(complexity < 75)
		quality = "standard"
	else if(complexity < 100)
		quality = "good"
	else if(complexity < 130)
		quality = "improved"
	else if(complexity < 150)
		quality = "excellent"
	else if(complexity < 180)
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

	G.desc = "[prefix] [burst.name] [barrel.name] ([quality])"
	G.name = "[G.name] ([capitalize(quality)])"
	
	var/obj/item/gun/energy/B = G
	B.cell = new B.cell_type(B)

	B.Initialize()

	src.forceMove(G) //Entire assembly gets thrown in the gun

/obj/item/prefabs/complex/eWeaponFrame/examine(mob/user)
	..()
	if(barrel)
		to_chat(user,"<span class='notice'>It's got [barrel] installed.</span>")
	else
		to_chat(user,"<span class='warning'>There is no barrel installed!</span>")
	if(cell)
		to_chat(user,"<span class='notice'>It's got [cell] installed.</span>")
	else
		to_chat(user,"<span class='warning'>There is no cell assembly installed!</span>")
	if(burst)
		to_chat(user,"<span class='notice'>It's got [burst] installed.</span>")
	else
		to_chat(user,"<span class='warning'>There is no stream adapter assembly installed!</span>")
	if(lens)
		to_chat(user,"<span class='notice'>It's got [lens] installed.</span>")
	else
		to_chat(user,"<span class='warning'>There is no lens assembly installed!</span>")
	if(conductors)
		to_chat(user,"<span class='notice'>It's got [conductors] installed.</span>")
	else
		to_chat(user,"<span class='notice'>There is no superconductors installed!</span>")
	if(flux)
		to_chat(user,"<span class='notice'>It's got [flux] installed.</span>")
	else
		to_chat(user,"<span class='warning'>There is no capacitator installed!</span>")

	to_chat(user,"<span class='notice'>The frame's complexity is [complexity]/[max_complexity].</span>")