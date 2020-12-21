/datum/chemical_reaction/space_drugs
	name = "Space Drugs"
	id = "space_drugs"
	results = list("space_drugs" = 3)
	required_reagents = list("mercury" = 1, "sugar" = 1, "lithium" = 1)

/datum/chemical_reaction/crank
	name = "Crank"
	id = "crank"
	results = list("crank" = 5)
	required_reagents = list("cleaner" = 1, "diethylamine" = 1, "sacid" = 1, "bicaridine" = 1, "welding_fuel" = 1)
	mix_message = "The mixture violently reacts, leaving behind a few crystalline shards."
	//required_temp = 390
	//shake and bake baby

/datum/chemical_reaction/krokodil
	name = "Krokodil"
	id = "krokodil"
	results = list("krokodil" = 6)
	required_reagents = list("diphenhydramine" = 1, "morphine" = 1, "cleaner" = 1, "potassium" = 1, "phosphorus" = 1, "welding_fuel" = 1)
	mix_message = "The mixture dries into a pale blue powder."
	required_temp = 380

/datum/chemical_reaction/methamphetamine
	results = list("methamphetamine" = 4)
	required_reagents = list("ephedrine" = 1, "iodine" = 1, "phosphorus" = 1, "hydrogen" = 1)
	required_temp = 374

/datum/chemical_reaction/bath_salts
	name = "bath_salts"
	id = "bath_salts"
	results = list("bath_salts" = 7)
	required_reagents = list("bad_food" = 1, "saltpetre" = 1, "nutriment" = 1, "cleaner" = 1, "yeast" = 1, "tea" = 1, "mercury" = 1)
	required_temp = 374

/datum/chemical_reaction/aranesp
	name = "aranesp"
	id = "aranesp"
	results = list("aranesp" = 3)
	required_reagents = list("epinephrine" = 1, "atropine" = 1, "morphine" = 1)

/datum/chemical_reaction/jet
	name = "Jet Inhalant"
	id = "jet"
	results = list("jet" = 2, "mercury" = 1)
	required_reagents = list("mercury" = 1, "phenol" = 1, "ethanol" = 1)

/datum/chemical_reaction/turbo
	name = "Turbo Inhalant"
	id = "turbo"
	results = list("turbo" = 3)
	required_reagents = list("mercury" = 1, "phenol" = 1, "ephedrine" = 1)
	required_catalysts = list("acetone" = 1)
	required_temp = 380

/datum/chemical_reaction/psycho
	name = "Psycho Fluid"
	id = "psycho"
	results = list("psycho" = 2, "mercury" = 1)
	required_reagents = list("mercury" = 1, "ammonia" = 1, "ephedrine" = 1)
	required_catalysts = list("bromine" = 1)
	required_temp = 422