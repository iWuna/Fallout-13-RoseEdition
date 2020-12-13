#define METAL 1
#define WOOD 2
#define SAND 3

//Barricades/cover

/obj/structure/barricade/better
	name = "chest high wall"
	desc = "Looks like this would make good cover."
	anchored = 1
	density = 1
	obj_integrity = 100
	max_integrity = 100
	proj_pass_rate = 50 //How many projectiles will pass the cover. Lower means stronger cover
	material = METAL
	var/dirlike = FALSE
	var/canpass = FALSE

/obj/structure/barricade/better/Initialize()
	..()
	if(dir == 2)
		layer = ABOVE_MOB_LAYER

/obj/structure/barricade/better/deconstruct(disassembled = TRUE)
	qdel(src)

/obj/structure/barricade/better/CanPass(atom/movable/mover, turf/target, height=0)//So bullets will fly over and stuff.
	if(height == 0 || density == FALSE)
		return TRUE

	if(dirlike && istype(mover, /mob/living))
		if(mover.throwing)
			return TRUE
		if(get_dir(loc, target) & dir)
			return FALSE
		return TRUE

	else if(locate(/obj/structure/barricade) in get_turf(mover))
		return 1
	else if(istype(mover, /obj/item/projectile))
		if(!anchored)
			return 1
		var/obj/item/projectile/proj = mover
		if(proj.firer && Adjacent(proj.firer))
			return 1
		if(prob(proj_pass_rate))
			return 1
		return 0
	else
		return !density

/obj/structure/barricade/better/CheckExit(atom/movable/O, turf/target)
	if(density == FALSE)
		return TRUE

	if(dirlike && istype(O, /mob/living))
		if(O.throwing)
			return TRUE

		if(get_dir(loc, target) & dir)
			return FALSE
		return TRUE
	else
		return TRUE

/////BARRICADE TYPES///////

/obj/structure/barricade/better/sandbags
	name = "sandbags"
	desc = "Good barricade, but.."
	icon = 'icons/Marine/barricades.dmi'
	icon_state = "sandbag_0"
	obj_integrity = 300
	max_integrity = 300
	proj_pass_rate = 20
	pass_flags = LETPASSTHROW
	material = SAND
	climbable = TRUE
	dirlike = TRUE