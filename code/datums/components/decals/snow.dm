/datum/component/decal/snow
	dupe_mode = COMPONENT_DUPE_UNIQUE

/datum/component/decal/snow/Initialize(_icon, _icon_state, _dir, _cleanable=CLEAN_STRENGTH_BLOOD, _color, _layer=ABOVE_OBJ_LAYER)
	if(!isitem(parent))
		return COMPONENT_INCOMPATIBLE
	. = ..()
	RegisterSignal(parent, COMSIG_ATOM_GET_EXAMINE_NAME, .proc/get_examine_name)

/datum/component/decal/snow/generate_appearance(_icon, _icon_state, _dir, _layer, _color)
	var/obj/item/I = parent
	if(!_icon)
		_icon = 'icons/effects/blood.dmi'
	if(!_icon_state)
		_icon_state = "itemblood"
	var/icon = initial(I.icon)
	var/icon_state = initial(I.icon_state)
	if(!icon || !icon_state)
		// It's something which takes on the look of other items, probably
		icon = I.icon
		icon_state = I.icon_state
	var/static/list/snow_splatter_appearances = list()
	var/index = "[REF(icon)]-[icon_state]"
	pic = snow_splatter_appearances[index]

	if(!pic)
		var/icon/snow_splatter_icon = icon(initial(I.icon), initial(I.icon_state), , 1)
		snow_splatter_icon.Blend("#fff", ICON_ADD)
		snow_splatter_icon.Blend(icon(_icon, _icon_state), ICON_MULTIPLY)
		pic = mutable_appearance(snow_splatter_icon, initial(I.icon_state))
		snow_splatter_appearances[index] = pic
	return TRUE

/datum/component/decal/snow/proc/get_examine_name(mob/user, list/override)
	var/atom/A = parent
	override[EXAMINE_POSITION_ARTICLE] = A.gender == PLURAL? "some" : "a"
	override[EXAMINE_POSITION_BEFORE] = " snow-covered "
	return COMPONENT_EXNAME_CHANGED
