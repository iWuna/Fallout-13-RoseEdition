// BARRELS
/obj/item/prefabs/complex/ebarrel
	part_type = "ebarrel"
	icon_state = "flux"
	desc = "Energy Emitter"


/obj/item/prefabs/complex/ebarrel/laser/weak
	name = "Weak Laser Emitter"
	energyProjType = list(/obj/item/ammo_casing/energy/laser/pistol)
	complexity = 25


/obj/item/prefabs/complex/ebarrel/laser/avg
	name = "Laser Emitter"
	energyProjType = list(/obj/item/ammo_casing/energy/laser/lasgun)
	complexity = 50


/obj/item/prefabs/complex/ebarrel/laser/strong
	name = "Strong Laser Emitter"
	energyProjType = list(/obj/item/ammo_casing/energy/laser/musket)
	complexity = 60


/obj/item/prefabs/complex/ebarrel/laser/scatter
	name = "Scatter Laser Emitter"
	energyProjType = list(/obj/item/ammo_casing/energy/laser/scatter)
	complexity = 100


/obj/item/prefabs/complex/ebarrel/plasma/weak
	name = "Weak Plasma Emitter"
	energyProjType = list(/obj/item/ammo_casing/energy/plasma/pistol)
	complexity = 50

/obj/item/prefabs/complex/ebarrel/plasma/avg
	name = "Plasma Emitter"
	energyProjType = list(/obj/item/ammo_casing/energy/plasma)
	complexity = 100

/obj/item/prefabs/complex/ebarrel/ion
	name = "Weak Ion Emitter"
	energyProjType = list(/obj/item/ammo_casing/energy/ion/pistol)
	complexity = 75

/obj/item/prefabs/complex/ebarrel/ion/strong
	name = "Strong Ion Emitter"
	energyProjType = list(/obj/item/ammo_casing/energy/ion)
	complexity = 125

// BURST
/obj/item/prefabs/complex/eburst
	part_type = "eburst"
	icon_state = "flux"
	desc = "Energy Stream Adapter"


/obj/item/prefabs/complex/eburst/simple
	name = "Single Stream"
	burst_mod = 0
	complexity = 25


/obj/item/prefabs/complex/eburst/dual
	name = "Dual Stream"
	burst_mod = 1
	burst_delay_mod = -0.5
	complexity = 75


/obj/item/prefabs/complex/eburst/fast
	name = "Fast Dual Stream"
	burst_mod = 1
	burst_delay_mod = -2
	dam_mod = -3
	armorpen_mod = -3
	complexity = 100


/obj/item/prefabs/complex/eburst/triple
	name = "Triple Stream"
	burst_mod = 2
	burst_delay_mod = -0.5
	dam_mod = -5
	armorpen_mod = -5
	complexity = 100


/obj/item/prefabs/complex/ecell
	part_type = "ecell"
	icon_state = "flux"
	desc = "Power Source Adapater"


// POWER CELL
/obj/item/prefabs/complex/ecell/ec
	name = "EC Adapter"
	energyAmmoType = /obj/item/stock_parts/cell/ammo/ec
	dam_mod = -7
	armorpen_mod = -7
	complexity = 25


/obj/item/prefabs/complex/ecell/mfc
	name = "MFC Adapter"
	energyAmmoType = /obj/item/stock_parts/cell/ammo/mfc
	dam_mod = 3
	armorpen_mod = 3
	complexity = 50


/obj/item/prefabs/complex/ecell/ecp
	name = "ECP Adapter"
	energyAmmoType = /obj/item/stock_parts/cell/ammo/ecp
	dam_mod = 5
	armorpen_mod = 5
	complexity = 50


// FRAMES
/obj/item/prefabs/complex/eWeaponFrame/pistol
	name = "Energy Pistol Frame"
	desc = "An unfinished energy gun."
	icon_state = "gunframe"
	max_complexity = 125


/obj/item/prefabs/complex/eWeaponFrame/rifle
	name = "Energy Rifle Frame"
	desc = "An unfinished energy gun."
	icon_state = "gunframe"
	max_complexity = 200


/obj/item/prefabs/complex/eWeaponFrame/hqrifle
	name = "Advanced Energy Rifle Frame"
	desc = "An unfinished energy gun."
	icon_state = "gunframe"
	max_complexity = 250


// COMPONENTS
/obj/item/advanced_crafting_components/flux
	name = "Flux capacitator"
	desc = "An energy weapon part, a craftsman might want to have this."
	icon_state = "flux"


/obj/item/advanced_crafting_components/lenses
	name = "Focused crystal lenses"
	desc = "An energy weapon part, a craftsman might want to have this."
	icon_state = "lenses"


/obj/item/advanced_crafting_components/conductors
	name = "Superconductor coil"
	desc = "An energy weapon part, a craftsman might want to have this."
	icon_state = "conductor"