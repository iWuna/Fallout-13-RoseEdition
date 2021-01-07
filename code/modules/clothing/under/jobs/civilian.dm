//Alphabetical order of civilian jobs.

/obj/item/clothing/under/rank/bartender
	desc = "Похоже, ему не помешало бы еще немного таланта."
	name = "Униформа бармена"
	icon_state = "barman"
	item_state = "bar_suit"
	item_color = "barman"
	alt_covers_chest = TRUE

/obj/item/clothing/under/rank/bartender/purple
	desc = "Похоже, он крайне талантлив!"
	name = "Фиолетовая униформа бармена"
	icon_state = "purplebartender"
	item_state = "purplebartender"
	item_color = "purplebartender"
	can_adjust = FALSE

/obj/item/clothing/under/rank/captain //Alright, technically not a 'civilian' but its better then giving a .dm file for a single define.
	desc = "Это синий комбинезон с какими-то золотыми отметинами, обозначающими звание \"капитан\"."
	name = "Комбинезон капитана"
	icon_state = "captain"
	item_state = "b_suit"
	item_color = "captain"
	sensor_mode = SENSOR_COORDS
	random_sensor = FALSE

/obj/item/clothing/under/rank/cargo
	name = "Комбинезон завхоза"
	desc = "Это комбинезон, который носит завхоз. Он специально разработан для предотвращения травм спины, вызванных толчком бумаги."
	icon_state = "qm"
	item_state = "lb_suit"
	item_color = "qm"

/obj/item/clothing/under/rank/cargotech
	name = "Комбинезон грузчика"
	desc = "Шооооорты! Они очень комфортные и их так легко носить!"
	icon_state = "cargotech"
	item_state = "lb_suit"
	item_color = "cargo"
	body_parts_covered = CHEST|GROIN|ARMS
	mutantrace_variation = MUTANTRACE_VARIATION
	alt_covers_chest = TRUE


/obj/item/clothing/under/rank/chaplain
	desc = "Это черный комбинезон, который часто носят религиозные люди."
	name = "Комбинезон капитана"
	icon_state = "chaplain"
	item_state = "bl_suit"
	item_color = "chapblack"
	can_adjust = FALSE

/obj/item/clothing/under/rank/chef
	name = "Костюм повара"
	desc = "Такие костюмы выдаются только самым <b>жестким</b> поварам в космосе."
	icon_state = "chef"
	item_color = "chef"
	alt_covers_chest = TRUE

/obj/item/clothing/under/rank/clown
	name = "Костюм клоуна"
	desc = "<i>'ХОНК!'</i>"
	icon_state = "clown"
	item_state = "clown"
	item_color = "clown"
	fitted = FEMALE_UNIFORM_TOP
	can_adjust = FALSE

/obj/item/clothing/under/rank/clown/hit_reaction(mob/living/carbon/human/owner, atom/movable/hitby, attack_text = "the attack", final_block_chance = 0, damage = 0, attack_type = MELEE_ATTACK)
	playsound(loc, 'sound/items/bikehorn.ogg', 50, 1, -1)
	return 0

/obj/item/clothing/under/rank/head_of_personnel
	desc = "Такие костюмы носят сотрудники, занимающие должность \"Главы персонала\"."
	name = "Комбинезон главы персонала"
	icon_state = "hop"
	item_state = "b_suit"
	item_color = "hop"
	can_adjust = FALSE

/obj/item/clothing/under/rank/hydroponics
	desc = "Это комбинезон, предназначенный для защиты от незначительных опасностей, связанных с растениями."
	name = "Комбинезон ботаника"
	icon_state = "hydroponics"
	item_state = "g_suit"
	item_color = "hydroponics"
	permeability_coefficient = 0.5

/obj/item/clothing/under/rank/janitor
	desc = "Это официальная форма уборщика станции. Она имеет незначительную защиту от биологических опасностей."
	name = "Комбинезон уборщика"
	icon_state = "janitor"
	item_color = "janitor"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 10, "rad" = 0, "fire" = 0, "acid" = 0)

/obj/item/clothing/under/lawyer
	desc = "Скользкие нити."
	name = "Костюм адвоката"
	can_adjust = FALSE

/obj/item/clothing/under/lawyer/black
	icon_state = "lawyer_black"
	item_state = "lawyer_black"
	item_color = "lawyer_black"

/obj/item/clothing/under/lawyer/female
	icon_state = "black_suit_fem"
	item_state = "black_suit_fem"
	item_color = "black_suit_fem"

/obj/item/clothing/under/lawyer/red
	icon_state = "lawyer_red"
	item_state = "lawyer_red"
	item_color = "lawyer_red"

/obj/item/clothing/under/lawyer/blue
	icon_state = "lawyer_blue"
	item_state = "lawyer_blue"
	item_color = "lawyer_blue"

/obj/item/clothing/under/lawyer/bluesuit
	name = "Синий костюм"
	desc = "Классический костюм с галстуком."
	icon_state = "bluesuit"
	item_state = "bluesuit"
	item_color = "bluesuit"
	can_adjust = TRUE
	alt_covers_chest = TRUE

/obj/item/clothing/under/lawyer/purpsuit
	name = "Фиолетовый костбм"
	icon_state = "lawyer_purp"
	item_state = "lawyer_purp"
	item_color = "lawyer_purp"
	fitted = NO_FEMALE_UNIFORM
	can_adjust = TRUE
	alt_covers_chest = TRUE

/obj/item/clothing/under/lawyer/blacksuit
	name = "Черный костюм"
	desc = "Профессиональный черный костюм. Одобрен бюро расследований Vault-Tec!"
	icon_state = "blacksuit"
	item_state = "bar_suit"
	item_color = "blacksuit"
	can_adjust = TRUE
	alt_covers_chest = TRUE

/obj/item/clothing/under/rank/curator
	name = "Разумный костюм"
	desc = "Слишком... разумный."
	icon_state = "red_suit"
	item_state = "red_suit"
	item_color = "red_suit"
	can_adjust = FALSE

/obj/item/clothing/under/rank/curator/treasure_hunter
	name = "Униформа охотника за сокровищами"
	desc = "Прочная униформа, подходящая для охоты за сокровищами."
	icon_state = "curator"
	item_state = "curator"
	item_color = "curator"

/obj/item/clothing/under/rank/mime
	name = "Костюм мима"
	desc = "Не слишком цветастый."
	icon_state = "mime"
	item_state = "mime"
	item_color = "mime"

/obj/item/clothing/under/rank/miner
	desc = "Это шикарный укреплённый комбинезон. Очень грязный."
	name = "Комюбинезон шахтера"
	icon_state = "miner"
	item_state = "miner"
	item_color = "miner"

/obj/item/clothing/under/rank/miner/lavaland
	desc = "Зеленая униформа для работы в опасных условиях."
	name = "Комбинезон шахтера"
	icon_state = "explorer"
	item_state = "explorer"
	item_color = "explorer"
	can_adjust = FALSE
