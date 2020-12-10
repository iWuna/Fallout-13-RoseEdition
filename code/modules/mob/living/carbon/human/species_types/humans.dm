/datum/species/human
	name = "Human"
	id = "human"
	default_color = "FFFFFF"
	species_traits = list(EYECOLOR,HAIR,FACEHAIR,LIPS)
	default_features = list("mcolor" = "FFF", "tail_human" = "None", "ears" = "None", "wings" = "None")
	use_skintones = 1
	skinned_type = /obj/item/stack/sheet/animalhide/human
	disliked_food = GROSS | RAW
	liked_food = JUNKFOOD | FRIED

/datum/species/human/after_equip_job(datum/job/J, mob/living/carbon/human/H)
	if(H.special_i < 3)
		H.grant_language(/datum/language/aphasia)
		H.remove_language(/datum/language/common)
	if(H.special_i > 8)
		to_chat(H,"You feel yourself very smart, that smart that you can understand idiots!")
		H.grant_language(/datum/language/aphasia)
	punchdamagelow = initial(punchdamagelow) * (1 + H.special_s * 0.2)
	punchdamagehigh = initial(punchdamagehigh) * (1 + H.special_s * 0.2)
	punchstunthreshold = initial(punchstunthreshold) * (1 + H.special_s * 0.1)
	speedmod = initial(speedmod) * (1 + H.special_a * 0.5)

/datum/species/human/qualifies_for_rank(rank, list/features)
	return TRUE	//Pure humans are always allowed in all roles.

//Curiosity killed the cat's wagging tail.
/datum/species/human/spec_death(gibbed, mob/living/carbon/human/H)
	if(H)
		H.endTailWag()

/datum/species/human/spec_stun(mob/living/carbon/human/H,amount)
	if(H)
		H.endTailWag()
	. = ..()

/datum/species/human/space_move(mob/living/carbon/human/H)
	var/obj/item/flightpack/F = H.get_flightpack()
	if(istype(F) && (F.flight) && F.allow_thrust(0.01, src))
		return TRUE

/datum/species/human/on_species_gain(mob/living/carbon/human/H, datum/species/old_species)
	if(H.dna.features["ears"] == "Cat")
		mutantears = /obj/item/organ/ears/cat
	if(H.dna.features["tail_human"] == "Cat")
		mutanttail = /obj/item/organ/tail/cat
	..()

/datum/species/human/spec_life(mob/living/carbon/human/H)
	if (H.radiation>2500 && prob(10))
		to_chat(H, "<span class='danger'>You feel strange!</span>")
		H.set_species(/datum/species/ghoul)
		H.Stun(40)
		H.radiation = 0
