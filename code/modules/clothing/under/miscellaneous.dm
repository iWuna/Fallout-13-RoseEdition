/obj/item/clothing/under/pj/red
	name = "red pj's"
	desc = "Sleepwear."
	icon_state = "red_pyjamas"
	item_color = "red_pyjamas"
	item_state = "w_suit"
	can_adjust = FALSE

/obj/item/clothing/under/pj/blue
	name = "blue pj's"
	desc = "Sleepwear."
	icon_state = "blue_pyjamas"
	item_color = "blue_pyjamas"
	item_state = "w_suit"
	can_adjust = FALSE

/obj/item/clothing/under/patriotsuit
	name = "Patriotic Suit"
	desc = "Motorcycle not included."
	icon_state = "ek"
	item_state = "ek"
	item_color = "ek"
	can_adjust = FALSE

/obj/item/clothing/under/scratch
	name = "white suit"
	desc = "A white suit, suitable for an excellent host."
	icon_state = "scratch"
	item_state = "scratch"
	item_color = "scratch"
	can_adjust = FALSE

/obj/item/clothing/under/sl_suit
	desc = "It's a very amish looking suit."
	name = "amish suit"
	icon_state = "sl_suit"
	item_color = "sl_suit"
	can_adjust = FALSE

/obj/item/clothing/under/roman
	name = "roman armor"
	desc = "Ancient Roman armor. Made of metallic and leather straps."
	icon_state = "roman"
	item_color = "roman"
	item_state = "armor"
	can_adjust = FALSE
	strip_delay = 100
	resistance_flags = NONE

/obj/item/clothing/under/waiter
	name = "waiter's outfit"
	desc = "It's a very smart uniform with a special pocket for tip."
	icon_state = "waiter"
	item_state = "waiter"
	item_color = "waiter"
	can_adjust = FALSE

/obj/item/clothing/under/rank/prisoner
	name = "prison jumpsuit"
	desc = "It's standardised prisoner-wear. Its suit sensors are stuck in the \"Fully On\" position."
	icon_state = "prisoner"
	item_state = "o_suit"
	item_color = "prisoner"
	has_sensor = LOCKED_SENSORS
	sensor_mode = SENSOR_COORDS
	random_sensor = FALSE

/obj/item/clothing/under/rank/mailman
	name = "mailman's jumpsuit"
	desc = "<i>'Special delivery!'</i>"
	icon_state = "mailman"
	item_state = "b_suit"
	item_color = "mailman"

/obj/item/clothing/under/rank/psyche
	name = "psychedelic jumpsuit"
	desc = "Groovy!"
	icon_state = "psyche"
	item_state = "p_suit"
	item_color = "psyche"

/obj/item/clothing/under/rank/clown/sexy
	name = "sexy-clown suit"
	desc = "It makes you look HONKable!"
	icon_state = "sexyclown"
	item_state = "sexyclown"
	item_color = "sexyclown"
	body_parts_covered = CHEST|GROIN|LEGS
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/jabroni
	name = "Jabroni Outfit"
	desc = "The leather club is two sectors down."
	icon_state = "darkholme"
	item_state = "darkholme"
	item_color = "darkholme"
	can_adjust = FALSE

/obj/item/clothing/under/rank/vice
	name = "vice officer's jumpsuit"
	desc = "It's the standard issue pretty-boy outfit, as seen on Holo-Vision."
	icon_state = "vice"
	item_state = "gy_suit"
	item_color = "vice"
	can_adjust = FALSE

/obj/item/clothing/under/rank/centcom_officer
	desc = "It's a jumpsuit worn by CentCom Officers."
	name = "\improper CentCom officer's jumpsuit"
	icon_state = "officer"
	item_state = "g_suit"
	item_color = "officer"
	alt_covers_chest = TRUE

/obj/item/clothing/under/rank/centcom_commander
	desc = "It's a jumpsuit worn by CentCom's highest-tier Commanders."
	name = "\improper CentCom officer's jumpsuit"
	icon_state = "centcom"
	item_state = "dg_suit"
	item_color = "centcom"

/obj/item/clothing/under/space
	name = "\improper NASA jumpsuit"
	desc = "It has a NASA logo on it and is made of space-proofed materials."
	icon_state = "black"
	item_state = "bl_suit"
	item_color = "black"
	w_class = WEIGHT_CLASS_BULKY
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.02
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST | GROIN | LEGS | ARMS //Needs gloves and shoes with cold protection to be fully protected.
	min_cold_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MAX_TEMP_PROTECT
	can_adjust = FALSE
	resistance_flags = NONE

/obj/item/clothing/under/acj
	name = "administrative cybernetic jumpsuit"
	icon_state = "syndicate"
	item_state = "bl_suit"
	item_color = "syndicate"
	desc = "A cybernetically enhanced jumpsuit used for administrative duties."
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.01
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	armor = list("melee" = 100, "bullet" = 100, "laser" = 100,"energy" = 100, "bomb" = 100, "bio" = 100, "rad" = 100, "fire" = 100, "acid" = 100)
	cold_protection = CHEST | GROIN | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MAX_TEMP_PROTECT
	can_adjust = FALSE
	resistance_flags = FIRE_PROOF | ACID_PROOF

/obj/item/clothing/under/owl
	name = "owl uniform"
	desc = "A soft brown jumpsuit made of synthetic feathers and strong conviction."
	icon_state = "owl"
	item_state = "owl"
	item_color = "owl"
	can_adjust = FALSE

/obj/item/clothing/under/griffin
	name = "griffon uniform"
	desc = "A soft brown jumpsuit with a white feather collar made of synthetic feathers and a lust for mayhem."
	icon_state = "griffin"
	item_state = "griffin"
	item_color = "griffin"
	can_adjust = FALSE

/obj/item/clothing/under/cloud
	name = "cloud"
	desc = "cloud"
	icon_state = "cloud"
	item_color = "cloud"
	can_adjust = FALSE

/obj/item/clothing/under/gimmick/rank/captain/suit
	name = "captain's suit"
	desc = "A green suit and yellow necktie. Exemplifies authority."
	icon_state = "green_suit"
	item_state = "green_suit"
	item_color = "green_suit"
	can_adjust = FALSE

/obj/item/clothing/under/gimmick/rank/head_of_personnel/suit
	name = "head of personnel's suit"
	desc = "A teal suit and yellow necktie. An authoritative yet tacky ensemble."
	icon_state = "teal_suit"
	item_state = "g_suit"
	item_color = "teal_suit"
	can_adjust = FALSE

/obj/item/clothing/under/suit_jacket
	name = "black suit"
	desc = "A black suit and red tie. Very formal."
	icon_state = "black_suit"
	item_state = "bl_suit"
	item_color = "black_suit"
	can_adjust = FALSE

/obj/item/clothing/under/suit_jacket/really_black
	name = "executive suit"
	desc = "A formal black suit and red tie, intended for the station's finest."
	icon_state = "really_black_suit"
	item_state = "bl_suit"
	item_color = "black_suit"

/obj/item/clothing/under/suit_jacket/female
	name = "executive suit"
	desc = "A formal trouser suit for women, intended for the station's finest."
	icon_state = "black_suit_fem"
	item_state = "black_suit_fem"
	item_color = "black_suit_fem"

/obj/item/clothing/under/suit_jacket/green
	name = "green suit"
	desc = "A green suit and yellow necktie. Baller."
	icon_state = "green_suit"
	item_state = "dg_suit"
	item_color = "green_suit"
	can_adjust = FALSE

/obj/item/clothing/under/suit_jacket/red
	name = "red suit"
	desc = "A red suit and blue tie. Somewhat formal."
	icon_state = "red_suit"
	item_state = "r_suit"
	item_color = "red_suit"

/obj/item/clothing/under/suit_jacket/charcoal
	name = "charcoal suit"
	desc = "A charcoal suit and red tie. Very professional."
	icon_state = "charcoal_suit"
	item_state = "charcoal_suit"
	item_color = "charcoal_suit"

/obj/item/clothing/under/suit_jacket/navy
	name = "navy suit"
	desc = "A navy suit and red tie, intended for the station's finest."
	icon_state = "navy_suit"
	item_state = "navy_suit"
	item_color = "navy_suit"

/obj/item/clothing/under/suit_jacket/burgundy
	name = "burgundy suit"
	desc = "A burgundy suit and black tie. Somewhat formal."
	icon_state = "burgundy_suit"
	item_state = "burgundy_suit"
	item_color = "burgundy_suit"

/obj/item/clothing/under/suit_jacket/checkered
	name = "checkered suit"
	desc = "That's a very nice suit you have there. Shame if something were to happen to it, eh?"
	icon_state = "checkered_suit"
	item_state = "checkered_suit"
	item_color = "checkered_suit"

/obj/item/clothing/under/suit_jacket/tan
	name = "tan suit"
	desc = "A tan suit with a yellow tie. Smart, but casual."
	icon_state = "tan_suit"
	item_state = "tan_suit"
	item_color = "tan_suit"

/obj/item/clothing/under/suit_jacket/white
	name = "white suit"
	desc = "A white suit and jacket with a blue shirt. You wanna play rough? OKAY!."
	icon_state = "white_suit"
	item_state = "white_suit"
	item_color = "white_suit"

/obj/item/clothing/under/burial
	name = "burial garments"
	desc = "Traditional burial garments from the early 22nd century."
	icon_state = "burial"
	item_state = "burial"
	item_color = "burial"
	has_sensor = NO_SENSORS

/obj/item/clothing/under/skirt/black
	name = "black skirt"
	desc = "A black skirt, very fancy!"
	icon_state = "blackskirt"
	item_color = "blackskirt"
	body_parts_covered = CHEST|GROIN|ARMS
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/skirt/blue
	name = "blue skirt"
	desc = "A blue, casual skirt."
	icon_state = "blueskirt"
	item_color = "blueskirt"
	item_state = "blueskirt"
	body_parts_covered = CHEST|GROIN|ARMS
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/skirt/red
	name = "red skirt"
	desc = "A red, casual skirt."
	icon_state = "redskirt"
	item_color = "redskirt"
	item_state = "redskirt"
	body_parts_covered = CHEST|GROIN|ARMS
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/skirt/purple
	name = "purple skirt"
	desc = "A purple, casual skirt."
	icon_state = "purpleskirt"
	item_color = "purpleskirt"
	item_state = "p_suit"
	body_parts_covered = CHEST|GROIN|ARMS
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/bride
	name = "wedding gown"
	desc = "An intricate white wedding gown"
	icon_state = "bride_white"
	item_state = "bride_white"
	item_color = "bride_white"

/obj/item/clothing/under/schoolgirl
	name = "blue schoolgirl uniform"
	desc = "It's just like one of my Japanese animes!"
	icon_state = "schoolgirl"
	item_state = "schoolgirl"
	item_color = "schoolgirl"
	body_parts_covered = CHEST|GROIN|ARMS
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/schoolgirl/red
	name = "red schoolgirl uniform"
	icon_state = "schoolgirlred"
	item_state = "schoolgirlred"
	item_color = "schoolgirlred"
	body_parts_covered = CHEST|GROIN|ARMS
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/schoolgirl/green
	name = "green schoolgirl uniform"
	icon_state = "schoolgirlgreen"
	item_state = "schoolgirlgreen"
	item_color = "schoolgirlgreen"
	body_parts_covered = CHEST|GROIN|ARMS
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/schoolgirl/orange
	name = "orange schoolgirl uniform"
	icon_state = "schoolgirlorange"
	item_state = "schoolgirlorange"
	item_color = "schoolgirlorange"
	body_parts_covered = CHEST|GROIN|ARMS
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/overalls
	name = "laborer's overalls"
	desc = "A set of durable overalls for getting the job done."
	icon_state = "overalls"
	item_state = "lb_suit"
	item_color = "overalls"
	can_adjust = FALSE

/obj/item/clothing/under/pirate
	name = "pirate outfit"
	desc = "Yarr."
	icon_state = "pirate"
	item_state = "pirate"
	item_color = "pirate"
	can_adjust = FALSE

/obj/item/clothing/under/soviet
	name = "soviet uniform"
	desc = "For the Motherland!"
	icon_state = "soviet"
	item_state = "soviet"
	item_color = "soviet"
	can_adjust = FALSE

/obj/item/clothing/under/redcoat
	name = "redcoat uniform"
	desc = "Looks old."
	icon_state = "redcoat"
	item_state = "redcoat"
	item_color = "redcoat"
	can_adjust = FALSE

/obj/item/clothing/under/kilt
	name = "kilt"
	desc = "Includes shoes and plaid."
	icon_state = "kilt"
	item_state = "kilt"
	item_color = "kilt"
	body_parts_covered = CHEST|GROIN|FEET
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/kilt/highlander
	desc = "You're the only one worthy of this kilt."
	item_flags = NODROP

/obj/item/clothing/under/sexymime
	name = "sexy mime outfit"
	desc = "The only time when you DON'T enjoy looking at someone's rack."
	icon_state = "sexymime"
	item_state = "sexymime"
	item_color = "sexymime"
	body_parts_covered = CHEST|GROIN|LEGS
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/gladiator
	name = "gladiator uniform"
	desc = "Are you not entertained? Is that not why you are here?"
	icon_state = "gladiator"
	item_state = "gladiator"
	item_color = "gladiator"
	body_parts_covered = CHEST|GROIN|ARMS
	fitted = NO_FEMALE_UNIFORM
	can_adjust = FALSE
	resistance_flags = NONE

/obj/item/clothing/under/gladiator/ash_walker
	desc = "This gladiator uniform appears to be covered in ash and fairly dated."
	has_sensor = NO_SENSORS

/obj/item/clothing/under/sundress
	name = "sundress"
	desc = "Makes you want to frolic in a field of daisies."
	icon_state = "sundress"
	item_state = "sundress"
	item_color = "sundress"
	body_parts_covered = CHEST|GROIN
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/captainparade
	name = "captain's parade uniform"
	desc = "A captain's luxury-wear, for special occasions."
	icon_state = "captain_parade"
	item_state = "by_suit"
	item_color = "captain_parade"
	can_adjust = FALSE

/obj/item/clothing/under/hosparademale
	name = "head of security's parade uniform"
	desc = "A male head of security's luxury-wear, for special occasions."
	icon_state = "hos_parade_male"
	item_state = "r_suit"
	item_color = "hos_parade_male"
	can_adjust = FALSE

/obj/item/clothing/under/hosparadefem
	name = "head of security's parade uniform"
	desc = "A female head of security's luxury-wear, for special occasions."
	icon_state = "hos_parade_fem"
	item_state = "r_suit"
	item_color = "hos_parade_fem"
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/assistantformal
	name = "assistant's formal uniform"
	desc = "An assistant's formal-wear. Why an assistant needs formal-wear is still unknown."
	icon_state = "assistant_formal"
	item_state = "gy_suit"
	item_color = "assistant_formal"
	can_adjust = FALSE

/obj/item/clothing/under/blacktango
	name = "black tango dress"
	desc = "Filled with Latin fire."
	icon_state = "black_tango"
	item_state = "wcoat"
	item_color = "black_tango"
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/stripeddress
	name = "striped dress"
	desc = "Fashion in space."
	icon_state = "striped_dress"
	item_state = "stripeddress"
	item_color = "striped_dress"
	fitted = FEMALE_UNIFORM_FULL
	can_adjust = FALSE

/obj/item/clothing/under/sailordress
	name = "sailor dress"
	desc = "Formal wear for a leading lady."
	icon_state = "sailor_dress"
	item_state = "sailor_dress"
	item_color = "sailor_dress"
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/redeveninggown
	name = "red evening gown"
	desc = "Fancy dress for space bar singers."
	icon_state = "red_evening_gown"
	item_state = "redeveninggown"
	item_color = "red_evening_gown"
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/maid
	name = "maid costume"
	desc = "Maid in China."
	icon_state = "maid"
	item_state = "maid"
	item_color = "maid"
	body_parts_covered = CHEST|GROIN
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/maid/Initialize()
	. = ..()
	var/obj/item/clothing/accessory/maidapron/A = new (src)
	attach_accessory(A)

/obj/item/clothing/under/janimaid
	name = "maid uniform"
	desc = "A simple maid uniform for housekeeping."
	icon_state = "janimaid"
	item_state = "janimaid"
	item_color = "janimaid"
	body_parts_covered = CHEST|GROIN
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/plaid_skirt
	name = "red plaid skirt"
	desc = "A preppy red skirt with a white blouse."
	icon_state = "plaid_red"
	item_state = "plaid_red"
	item_color = "plaid_red"
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = TRUE
	alt_covers_chest = TRUE

/obj/item/clothing/under/plaid_skirt/blue
	name = "blue plaid skirt"
	desc = "A preppy blue skirt with a white blouse."
	icon_state = "plaid_blue"
	item_state = "plaid_blue"
	item_color = "plaid_blue"
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = TRUE
	alt_covers_chest = TRUE

/obj/item/clothing/under/plaid_skirt/purple
	name = "purple plaid skirt"
	desc = "A preppy purple skirt with a white blouse."
	icon_state = "plaid_purple"
	item_state = "plaid_purple"
	item_color = "plaid_purple"
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = TRUE
	alt_covers_chest = TRUE

/obj/item/clothing/under/singery
	name = "yellow performer's outfit"
	desc = "Just looking at this makes you want to sing."
	icon_state = "ysing"
	item_state = "ysing"
	item_color = "ysing"
	fitted = NO_FEMALE_UNIFORM
	alternate_worn_layer = ABOVE_SHOES_LAYER
	can_adjust = FALSE

/obj/item/clothing/under/singerb
	name = "blue performer's outfit"
	desc = "Just looking at this makes you want to sing."
	icon_state = "bsing"
	item_state = "bsing"
	item_color = "bsing"
	fitted = NO_FEMALE_UNIFORM
	alternate_worn_layer = ABOVE_SHOES_LAYER
	can_adjust = FALSE

/obj/item/clothing/under/plaid_skirt/green
	name = "green plaid skirt"
	desc = "A preppy green skirt with a white blouse."
	icon_state = "plaid_green"
	item_state = "plaid_green"
	item_color = "plaid_green"
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = TRUE
	alt_covers_chest = TRUE

/obj/item/clothing/under/jester
	name = "jester suit"
	desc = "A jolly dress, well suited to entertain your master, nuncle."
	icon_state = "jester"
	item_state = "jester"
	item_color = "jester"
	can_adjust = FALSE

/obj/item/clothing/under/jester/alt
	icon_state = "jester2"

/obj/item/clothing/under/jester/dark
	name = "chaos jester suit"
	desc = "Filled with chaos, this outfit makes it feel like you can do anything!"
	icon_state = "d_jester"
	item_state = "dark_jester"
	item_color = "d_jester"

/obj/item/clothing/under/geisha
	name = "geisha suit"
	desc = "Cute space ninja senpai not included."
	icon_state = "geisha"
	item_color = "geisha"
	can_adjust = FALSE

/obj/item/clothing/under/villain
	name = "villain suit"
	desc = "A change of wardrobe is necessary if you ever want to catch a real superhero."
	icon_state = "villain"
	item_state = "villain"
	item_color = "villain"
	can_adjust = FALSE

/obj/item/clothing/under/sailor
	name = "sailor suit"
	desc = "Skipper's in the wardroom drinkin gin'."
	icon_state = "sailor"
	item_state = "sailor"
	item_color = "sailor"
	can_adjust = FALSE

/obj/item/clothing/under/saloon_dress
	name = "saloon dress"
	desc = "A saloon girls outfit"
	icon_state = "dress_saloon_s"
	item_state = "dress_saloon_s"
	item_color = "dress_saloon_s"
	can_adjust = FALSE

/obj/item/clothing/under/weddingdress_blue
	name = "blue wedding dress"
	desc = "An ornate pre-war wedding dress made out of precious materials.  This one is blue."
	icon_state = "bride_blue_s"
	item_state = "bride_blue_s"
	item_color = "bride_blue_s"
	can_adjust = FALSE

/obj/item/clothing/under/weddingdress_orange
	name = "orange wedding dress"
	desc = "An ornate pre-war wedding dress made out of precious materials.  This one is orange."
	icon_state = "bride_orange_s"
	item_state = "bride_orange_s"
	item_color = "bride_orange_s"
	can_adjust = FALSE

/obj/item/clothing/under/weddingdress_purple
	name = "purple wedding dress"
	desc = "An ornate pre-war wedding dress made out of precious materials.  This one is purple."
	icon_state = "bride_purple_s"
	item_state = "bride_purple_s"
	item_color = "bride_purple_s"
	can_adjust = FALSE

/obj/item/clothing/under/weddingdress_red
	name = "red wedding dress"
	desc = "An ornate pre-war wedding dress made out of precious materials.  This one is red."
	icon_state = "bride_red_s"
	item_state = "bride_red_s"
	item_color = "bride_red_s"
	can_adjust = FALSE

/obj/item/clothing/under/orange_dress
	name = "orange dress"
	desc = "An orange pre-war dress. This one has a short-cut."
	icon_state = "dress_orange_s"
	item_state = "dress_orange_s"
	item_color = "dress_orange_s"
	can_adjust = FALSE

/obj/item/clothing/under/yellow_dress
	name = "yellow dress"
	desc = "A yellow pre-war dress. It appears to go below the knees"
	icon_state = "dress_yellow_s"
	item_state = "dress_yellow_s"
	item_color = "dress_yellow_s"
	can_adjust = FALSE

/obj/item/clothing/under/formalblack_dress
	name = "black dress"
	desc = "A formal black dress."
	icon_state = "dress_black"
	item_state = "dress_black"
	item_color = "dress_black"
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = TRUE
	alt_covers_chest = TRUE

/obj/item/clothing/under/cheongsam_dress
	name = "cheongsam"
	desc = "A traditional, form fitting oriental dress."
	icon_state = "cheongsam_s"
	item_state = "cheongsam_s"
	item_color = "cheongsam_s"
	can_adjust = FALSE

/obj/item/clothing/under/orange_skirt
	name = "orange skirt"
	desc = "A formal, orange skirt with blouse."
	icon_state = "huresource_s"
	item_state = "huresource_s"
	item_color = "huresource_s"
	can_adjust = FALSE

/obj/item/clothing/under/brown_skirt
	name = "brown skirt"
	desc = "A formal, brown skirt with blouse."
	icon_state = "dress_rd_s"
	item_state = "dress_rd_s"
	item_color = "dress_rd_s"
	can_adjust = FALSE

/obj/item/clothing/under/businessattire_tanned
	name = "tanned business outfit"
	desc = "A tanned looking outfit with a tie and slacks."
	icon_state = "rdalt_s"
	item_state = "rdalt_s"
	item_color = "rdalt_s"
	can_adjust = FALSE

/obj/item/clothing/under/businessattire_manager
	name = "managers business outfit"
	desc = "A typical outfit worn by a manager pre-war.  This set comes with a long-sleeved shirt with no cuff buttons, slacks, belt, and a clip-on tie."
	icon_state = "manager"
	item_state = "manager"
	item_color = "manager"
	can_adjust = TRUE
	alt_covers_chest = TRUE

/obj/item/clothing/under/emr_dispatch
	name = "emr dispatcher"
	desc = "An emergency medical responder dispatchers outfit. With kahkis and a blue collared shirt."
	icon_state = "dispatch_s"
	item_state = "dispatch_s"
	item_color = "dispatch_s"
	can_adjust = FALSE

/obj/item/clothing/under/flower_dress
	name = "flower dress"
	desc = "A dress made from synthethic flowers, fashioned in a way to make a dress."
	icon_state = "flower_dress"
	item_state = "flower_dress"
	item_color = "flower_dress"
	can_adjust = FALSE

/obj/item/clothing/under/flamenco
	name = "flamenco dress"
	desc = "A traditional, body-hugging flamenco dress."
	icon_state = "flamenco"
	item_state = "flamenco"
	item_color = "flamenco"
	can_adjust = FALSE

/obj/item/clothing/under/western_bustle
	name = "barmaid outfit"
	desc = "A red barmaids outfit, similar to what you'd see at a tavern."
	icon_state = "western_bustle"
	item_state = "western_bustle"
	item_color = "western_bustle"
	can_adjust = FALSE

/obj/item/clothing/under/jeanshorts
	name = "jean shorts"
	desc = "A pair rugged denim shorts."
	icon_state = "jean_shorts"
	item_state = "jean_shorts"
	item_color = "jean_shorts"
	can_adjust = FALSE

/obj/item/clothing/under/jeans_ripped
	name = "ripped jeans"
	desc = "A pair of denim jeans with some holes in them."
	icon_state = "jean_ripped"
	item_state = "jean_ripped"
	item_color = "jean_ripped"
	can_adjust = FALSE

/obj/item/clothing/under/denim_skirt
	name = "denim skirt"
	desc = "A skirt made out of thick denim."
	icon_state = "denim_skirt"
	item_state = "denim_skirt"
	item_color = "denim_skirt"
	can_adjust = FALSE

/obj/item/clothing/under/chaps
	name = "chap"
	desc = "Yeehaw, cowboy."
	icon_state = "chaps"
	item_state = "chaps"
	item_color = "chaps"
	can_adjust = FALSE

/obj/item/clothing/under/sundress/white
	name = "white sundress"
	desc = "A white sundress with a pink decorative flower design"
	icon_state = "sundress_white"
	item_state = "sundress_white"
	item_color = "sundress_white"
	can_adjust = FALSE

/obj/item/clothing/under/dress/green
	name = "green one piece dress"
	desc = "A tight-fitting, one piece dress.  This one is green."
	icon_state = "dress_green"
	item_state = "dress_green"
	item_color = "dress_green"
	can_adjust = FALSE

/obj/item/clothing/under/dress/pink
	name = "pink one piece dress"
	desc = "A tight-fitting, one piece dress.  This one is green."
	icon_state = "dress_pink"
	item_state = "dress_pink"
	item_color = "dress_pink"
	can_adjust = FALSE

/obj/item/clothing/under/skirt/black/swept
	name = "black swept skirt"
	desc = "An angle hemmed skirt. It's rather short."
	icon_state = "skirt_swept"
	item_state = "skirt_swept"
	item_color = "skirt_swept"
	can_adjust = FALSE

/obj/item/clothing/under/croptop
	name = "croptop"
	desc = "A red croptop with denim jeans"
	icon_state = "croptop"
	item_state = "croptop"
	item_color = "croptop"
	can_adjust = FALSE

/obj/item/clothing/under/corset
	name = "corset"
	desc = "A restrictive, tight, black corset"
	icon_state = "corset"
	item_state = "corset"
	item_color = "corset"
	can_adjust = FALSE


/obj/item/clothing/under/jamrock
	name = "Disco-Ass Shirt and Pants"
	desc = "This white satin shirt used to be fancy. It used to really catch the light. Now it smells like someone took a piss in the armpits while the golden brown trousers are flare-cut. Normal bell-bottom trousers would be boot-cut, but these are far from normal. They are someone's piss-soaked, cum-stained party pants. "
	icon_state = "jamrock_uniform"
	item_state = "jamrock_uniform"
	item_color = "jamrock_uniform"
	can_adjust = FALSE

/obj/item/clothing/under/qipao/black
	name = "black qipao"
	desc = "A traditional, form fitting oriental dress. This one is black."
	icon_state = "qipao"
	item_state = "qipao"
	item_color = "qipao"
	can_adjust = FALSE

/obj/item/clothing/under/qipao/red
	name = "red qipao"
	desc = "A traditional, form fitting oriental dress. This one is red."
	icon_state = "qipao_red"
	item_state = "qipao_red"
	item_color = "qipao_red"
	can_adjust = FALSE

/obj/item/clothing/under/qipao/white
	name = "white qipao"
	desc = "A traditional, form fitting oriental dress. This one is white."
	icon_state = "qipao_white"
	item_state = "qipao_white"
	item_color = "qipao_white"
	can_adjust = FALSE

/obj/item/clothing/under/cheon/red
	name = "red cheon"
	desc = "A traditional cheon, worn my men.  This one is red."
	icon_state = "cheongr"
	item_state = "cheongr"
	item_color = "cheongr"
	can_adjust = FALSE

/obj/item/clothing/under/cheon/white
	name = "white cheon"
	desc = "A traditional cheon, worn my men.  This one is white."
	icon_state = "cheongw"
	item_state = "cheongw"
	item_color = "cheongw"
	can_adjust = FALSE

/obj/item/clothing/under/cheon/black
	name = "black cheon"
	desc = "A traditional cheon, worn my men.  This one is black."
	icon_state = "cheong"
	item_state = "cheong"
	item_color = "cheong"
	can_adjust = FALSE

/obj/item/clothing/under/plasmaman
	name = "plasma envirosuit"
	desc = "A special containment suit that allows plasma-based lifeforms to exist safely in an oxygenated environment, and automatically extinguishes them in a crisis. Despite being airtight, it's not spaceworthy."
	icon_state = "plasmaman"
	item_state = "plasmaman"
	item_color = "plasmaman"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 100, "rad" = 0, "fire" = 95, "acid" = 95)
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	can_adjust = FALSE
	strip_delay = 80
	var/next_extinguish = 0
	var/extinguish_cooldown = 100
	var/extinguishes_left = 5


/obj/item/clothing/under/plasmaman/examine(mob/user)
	..()
	to_chat(user, "<span class='notice'>There are [extinguishes_left] extinguisher charges left in this suit.</span>")


/obj/item/clothing/under/plasmaman/proc/Extinguish(mob/living/carbon/human/H)
	if(!istype(H))
		return

	if(H.on_fire)
		if(extinguishes_left)
			if(next_extinguish > world.time)
				return
			next_extinguish = world.time + extinguish_cooldown
			extinguishes_left--
			H.visible_message("<span class='warning'>[H]'s suit automatically extinguishes [H.p_them()]!</span>","<span class='warning'>Your suit automatically extinguishes you.</span>")
			H.ExtinguishMob()
			new /obj/effect/particle_effect/water(get_turf(H))
	return 0

/obj/item/clothing/under/plasmaman/attackby(obj/item/E, mob/user, params)
	..()
	if (istype(E, /obj/item/extinguisher_refill))
		if (extinguishes_left == 5)
			to_chat(user, "<span class='notice'>The inbuilt extinguisher is full.</span>")
			return
		extinguishes_left = 5
		to_chat(user, "<span class='notice'>You refill the suit's built-in extinguisher, using up the cartridge.</span>")
		qdel(E)
		return
	return

/obj/item/extinguisher_refill
	name = "envirosuit extinguisher cartridge"
	desc = "A cartridge loaded with a compressed extinguisher mix, used to refill the automatic extinguisher on plasma envirosuits."
	icon_state = "plasmarefill"
	icon = 'icons/obj/device.dmi'

/obj/item/clothing/under/rank/security/navyblue/russian
	name = "russian officer's uniform"
	desc = "The latest in fashionable russian outfits."
	icon_state = "hostanclothes"
	item_state = "hostanclothes"
	item_color = "hostanclothes"

/obj/item/clothing/under/mummy
	name = "mummy wrapping"
	desc = "Return the slab or suffer my stale references."
	icon_state = "mummy"
	item_state = "mummy"
	item_color = "mummy"
	body_parts_covered = CHEST|GROIN|ARMS|LEGS
	fitted = NO_FEMALE_UNIFORM
	can_adjust = FALSE
	resistance_flags = NONE

/obj/item/clothing/under/scarecrow
	name = "scarecrow clothes"
	desc = "Perfect camouflage for hiding in botany."
	icon_state = "scarecrow"
	item_state = "scarecrow"
	item_color = "scarecrow"
	body_parts_covered = CHEST|GROIN|ARMS|LEGS
	fitted = NO_FEMALE_UNIFORM
	can_adjust = FALSE
	resistance_flags = NONE

/obj/item/clothing/under/draculass
	name = "draculass coat"
	desc = "A dress inspired by the ancient \"Victorian\" era."
	icon_state = "draculass"
	item_state = "draculass"
	item_color = "draculass"
	body_parts_covered = CHEST|GROIN|ARMS
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/drfreeze
	name = "doctor freeze's jumpsuit"
	desc = "A modified scientist jumpsuit to look extra cool."
	icon_state = "drfreeze"
	item_state = "drfreeze"
	item_color = "drfreeze"
	can_adjust = FALSE

/obj/item/clothing/under/lobster
	name = "foam lobster suit"
	desc = "Who beheaded the college mascot?"
	icon_state = "lobster"
	item_state = "lobster"
	item_color = "lobster"
	fitted = NO_FEMALE_UNIFORM
	can_adjust = FALSE

/obj/item/clothing/under/skeleton
	name = "skeleton jumpsuit"
	desc = "A black jumpsuit with a white bone pattern printed on it. Spooky!"
	icon_state = "skeleton"
	item_state = "skeleton"
	item_color = "skeleton"
	body_parts_covered = CHEST|GROIN|ARMS|LEGS
	fitted = NO_FEMALE_UNIFORM
	can_adjust = FALSE
	resistance_flags = NONE
