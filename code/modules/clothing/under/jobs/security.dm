/*
 * Contains:
 *		Security
 *		Detective
 *		Navy uniforms
 */

/*
 * Security
 */

/obj/item/clothing/under/rank/security
	name = "Комбинезон охранника"
	desc = "Тактический защитный комбинезон для офицеров в комплекте с пряжкой ремня."
	icon_state = "rsecurity"
	item_state = "r_suit"
	item_color = "rsecurity"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 30, "acid" = 30)
	strip_delay = 50
	alt_covers_chest = TRUE
	sensor_mode = SENSOR_COORDS
	random_sensor = FALSE

/obj/item/clothing/under/rank/security/grey
	name = "Серый комбинезон охранника"
	desc = "Тактическая реликвия прошлых лет, прежде чем Vault-Tec решил, что дешевле покрасить костюмы в красный цвет вместо того, чтобы смывать кровь."
	icon_state = "security"
	item_state = "gy_suit"
	item_color = "security"

/obj/item/clothing/under/rank/security/skirt
	name = "Платье охранника"
	desc = "\"Тактический\" комбинезон охранника с платьем вместо штанов."
	icon_state = "secskirt"
	item_state = "r_suit"
	item_color = "secskirt"
	can_adjust = FALSE //you know now that i think of it if you adjust the skirt and the sprite disappears isn't that just like flashing everyone


/obj/item/clothing/under/rank/warden
	name = "Костюм охранника"
	desc = "Официальный костюм безопасности для офицеров в комплекте с пряжкой ремня."
	icon_state = "rwarden"
	item_state = "r_suit"
	item_color = "rwarden"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 30, "acid" = 30)
	strip_delay = 50
	alt_covers_chest = TRUE
	sensor_mode = 3
	random_sensor = FALSE

/obj/item/clothing/under/rank/warden/grey
	name = "Серый костюм охранника"
	desc = "Формальная реликвия прошлых лет, прежде чем Vault-Tec решил, что дешевле покрасить костюмы в красный цвет вместо того, чтобы смывать кровь."
	icon_state = "warden"
	item_state = "gy_suit"
	item_color = "warden"

/*
 * Detective
 */
/obj/item/clothing/under/rank/det
	name = "Сильно поношенный костюм"
	desc = "Тот, кто носит это, имеет в виду бизнес."
	icon_state = "detective"
	item_state = "det"
	item_color = "detective"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 30, "acid" = 30)
	strip_delay = 50
	alt_covers_chest = TRUE
	sensor_mode = 3
	random_sensor = FALSE

/obj/item/clothing/under/rank/det/grey
	name = "Нуарный костюм"
	desc = "Строгий серый костюм частного детектива с зажимом для галстука."
	icon_state = "greydet"
	item_state = "greydet"
	item_color = "greydet"
	alt_covers_chest = TRUE

/*
 * Head of Security
 */
/obj/item/clothing/under/rank/head_of_security
	name = "Комбинезон ХОСа"
	desc = "Комбинезон безопасности, украшенный для тех немногих, кто посвятил себя достижению должности главы Службы безопасности."
	icon_state = "rhos"
	item_state = "r_suit"
	item_color = "rhos"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 50)
	strip_delay = 60
	alt_covers_chest = TRUE
	sensor_mode = 3
	random_sensor = FALSE

/obj/item/clothing/under/rank/head_of_security/grey
	name = "Серый комбинеон ХОСа"
	desc = "There are old men, and there are bold men, but there are very few old, bold men."
	icon_state = "hos"
	item_state = "gy_suit"
	item_color = "hos"

/obj/item/clothing/under/rank/head_of_security/alt
	name = "Водолазка ХОСа"
	desc = "Стильная альтернатива обычному комбинезону начальника охраны, дополненному тактическими брюками."
	icon_state = "hosalt"
	item_state = "bl_suit"
	item_color = "hosalt"

/*
 * Navy uniforms
 */

/obj/item/clothing/under/rank/security/navyblue
	name = "Официальная форма офицера Службы безопасности"
	desc = "Самые модные наряды службы безопасности."
	icon_state = "officerblueclothes"
	item_state = "officerblueclothes"
	item_color = "officerblueclothes"
	alt_covers_chest = TRUE

/obj/item/clothing/under/rank/head_of_security/navyblue
	desc = "Знаки отличия на этой форме говорят вам, что эта форма принадлежит начальнику Службы безопасности."
	name = "официальная форма ХОСа"
	icon_state = "hosblueclothes"
	item_state = "hosblueclothes"
	item_color = "hosblueclothes"
	alt_covers_chest = TRUE

/obj/item/clothing/under/rank/warden/navyblue
	desc = "Знаки отличия на этой форме говорят вам, что эта форма принадлежит надзирателю."
	name = "Официальная форма надзирателя"
	icon_state = "wardenblueclothes"
	item_state = "wardenblueclothes"
	item_color = "wardenblueclothes"
	alt_covers_chest = TRUE

/*
 *Blueshirt
 */

/obj/item/clothing/under/rank/security/blueshirt
	desc = "Я сейчас немного занят, Кэлхун."
	icon_state = "blueshift"
	item_state = "blueshift"
	item_color = "blueshift"
	can_adjust = FALSE
