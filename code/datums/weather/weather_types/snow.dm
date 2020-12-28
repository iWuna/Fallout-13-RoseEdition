/datum/weather/snow
	name = "Snow"
	desc = "Harsh snowstorms roam the topside of this area surface, burying any area unfortunate enough to be in its path."
	probability = 0

	telegraph_message = "<span class='userdanger'><i>Drifting particles of snow begin to dust the surrounding area..</i></span>"
	telegraph_duration = 300
	telegraph_overlay = "snow_storm"
	telegraph_sound = 'sound/f13effects/sandstorm_warning.ogg'

	weather_message = "<span class='userdanger'>Harsh winds pick up as dense snow begins to fall from the sky!</span>"
	weather_overlay = "snow"
	weather_duration_lower = 1200
	weather_duration_upper = 2400

	end_duration = 300
	end_message = "<span class='boldannounce'>The snowfall begins to slow.</span>"

	areas_type = list(/area/f13/wasteland, /area/f13/desert, /area/f13/farm, /area/f13/forest, /area/f13/ruins)
	protected_areas = list(/area/shuttle)
	target_trait = ZTRAIT_STATION

	immunity_type = "heavy_snow"

	barometer_predictable = TRUE

	affects_turfs = TRUE
	carbons_only = TRUE

/datum/weather/snow/weather_act(mob/living/L)
	L.adjust_bodytemperature(-rand(5, 15))

/datum/weather/snow/weather_act_turf(turf/T)
	if(!T.snow)
		T.snow_act()
		if(prob(20))
			addtimer(CALLBACK(GLOBAL_PROC, /proc/create_pile, T), rand(50, 150))
		for(var/obj/structure/S in T.contents)
			S.snow_act()
		for(var/obj/machinery/M in T.contents)
			M.snow_act()
		for(var/obj/item/I in T.contents)
			I.snow_act()

/datum/weather/snow/strong/weather_act(mob/living/L)
	L.adjust_bodytemperature(-rand(10, 20))
	
/proc/create_pile(loc)
	new/obj/structure/snow/pile(loc)