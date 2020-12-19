//The effect when you wrap a dead body in gift wrap
/obj/effect/spresent
	name = "strange present"
	desc = "It's a ... present?"
	icon = 'icons/obj/items_and_weapons.dmi'
	icon_state = "strangepresent"
	density = TRUE
	anchored = FALSE

/obj/effect/beam
	name = "beam"
	var/def_zone
	pass_flags = PASSTABLE

/obj/effect/beam/singularity_act()
	return

/obj/effect/beam/singularity_pull()
	return

/obj/effect/spawner
	name = "object spawner"

/obj/effect/list_container
	name = "list container"

/obj/effect/list_container/mobl
	name = "mobl"
	var/master = null

	var/list/container = list(  )

/obj/effect/overlay/thermite
	name = "thermite"
	desc = "Looks hot."
	icon = 'icons/effects/fire.dmi'
	icon_state = "2" //what?
	anchored = TRUE
	opacity = TRUE
	density = TRUE
	layer = FLY_LAYER

//Makes a tile fully lit no matter what
/obj/effect/fullbright
	icon = 'icons/effects/alphacolors.dmi'
	icon_state = "white"
	plane = LIGHTING_PLANE
	layer = LIGHTING_LAYER
	blend_mode = BLEND_ADD

/obj/effect/abstract/marker
	name = "marker"
	icon = 'icons/effects/effects.dmi'
	anchored = TRUE
	icon_state = "wave3"
	layer = RIPPLE_LAYER

/obj/effect/abstract/marker/Initialize(mapload)
	. = ..()
	GLOB.all_abstract_markers += src

/obj/effect/abstract/marker/Destroy()
	GLOB.all_abstract_markers -= src
	. = ..()

/obj/effect/abstract/marker/at
	name = "active turf marker"

//я сделала хуйню, имею право.//
#define CARDINAL_DIRS 		list(1,2,4,8)

/obj/effect/forcefield
	anchored = TRUE
	opacity = FALSE
	density = TRUE

/obj/effect/forcefield/fog
	name = "dense fog"
	desc = "It looks way too dangerous to traverse. Best wait until it has cleared up."
	icon = 'icons/effects/effects.dmi'
	icon_state = "smoke"
	opacity = TRUE


/obj/effect/forcefield/fog/Initialize()
	. = ..()
	dir  = pick(CARDINAL_DIRS)


/obj/effect/forcefield/fog/Destroy()
	return ..()


/obj/effect/forcefield/fog/attack_hand(mob/living/user)
	to_chat(user, "<span class='notice'>You peer through the fog, but it's impossible to tell what's on the other side...</span>")
	return TRUE


/obj/effect/forcefield/fog/attack_alien(M)
	return attack_hand(M)


/obj/effect/forcefield/fog/attack_paw(mob/living/carbon/monkey/user)
	return attack_hand(user)


/obj/effect/forcefield/fog/attack_animal(M)
	return attack_hand(M)


/obj/effect/forcefield/fog/CanPass(atom/movable/mover, turf/target)
	if(isobj(mover))
		return TRUE
	return FALSE

/obj/effect/forcefield/fog/passable_fog
	name = "fog"
	desc = "It looks dangerous to traverse."
	icon = 'icons/effects/effects.dmi'
	icon_state = "smoke"
	density = FALSE
	alpha = 255

/obj/effect/forcefield/fog/passable_fog/CanPass(atom/movable/mover, turf/target)
	return TRUE

/obj/effect/forcefield/fog/passable_fog/Crossed(atom/movable/mover, oldloc)
	. = ..()
	if(!opacity)
		return
	set_opacity(FALSE)
	alpha = 180
	addtimer(CALLBACK(src, .proc/reset), 30 SECONDS)

/obj/effect/forcefield/fog/passable_fog/proc/reset()
	alpha = initial(alpha)
	set_opacity(TRUE)

/obj/effect/dummy/lighting_obj
	name = "lighting fx obj"
	desc = "Tell a coder if you're seeing this."
	icon_state = "nothing"
	light_system = MOVABLE_LIGHT
	light_range = MINIMUM_USEFUL_LIGHT_RANGE
	light_color = COLOR_WHITE
	mouse_opacity = MOUSE_OPACITY_TRANSPARENT

/obj/effect/dummy/lighting_obj/Initialize(mapload, _range, _power, _color, _duration)
	. = ..()
	if(!isnull(_range))
		set_light_range(_range)
	if(!isnull(_power))
		set_light_power(_power)
	if(!isnull(_color))
		set_light_color(_color)
	if(_duration)
		QDEL_IN(src, _duration)

/obj/effect/dummy/lighting_obj/moblight
	name = "mob lighting fx"

/obj/effect/dummy/lighting_obj/moblight/Initialize(mapload, _color, _range, _power, _duration)
	. = ..()
	if(!ismob(loc))
		return INITIALIZE_HINT_QDEL

/obj/effect/abstract/directional_lighting
	mouse_opacity = MOUSE_OPACITY_TRANSPARENT

/obj/effect/abstract/directional_lighting
	mouse_opacity = MOUSE_OPACITY_TRANSPARENT