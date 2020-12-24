/obj/item/prefabs/mould
	name = "Mould"
	desc = ""
	icon_state = "mould"

	var/item_path
	var/obj/item/stack/mould_sheet_type = /obj/item/stack/sheet/metal
	var/sheet_amount = 1

/obj/item/prefabs/mould/examine(mob/user)
	. = ..()
	var/obj/item/stack/sheet/sheet = new mould_sheet_type
	to_chat(user, "It requires [sheet_amount] [sheet.name] and moulding bench")

// Action

/obj/item/prefabs/mould/action/simple
	name = "Simple Action Mould"
	item_path = /obj/item/prefabs/complex/action/simple
	sheet_amount = 1

/obj/item/prefabs/mould/action/auto
	name = "Automatic Action Mould"
	item_path = /obj/item/prefabs/complex/action/auto
	sheet_amount = 2

/obj/item/prefabs/mould/action/autoburst
	name = "Automatic Burst Action Mould"
	item_path = /obj/item/prefabs/complex/action/autoburst
	sheet_amount = 3

/obj/item/prefabs/mould/action/rapid
	name = "Rapid Blowback Action Mould"
	item_path = /obj/item/prefabs/complex/action/rapid
	sheet_amount = 5

// Barrel

/obj/item/prefabs/mould/barrel/short
	name = "Short Barrel Mould"
	item_path = /obj/item/prefabs/complex/barrel/short
	sheet_amount = 1

/obj/item/prefabs/mould/barrel/medium
	name = "Medium Barrel Mould"
	desc = ""
	item_path = /obj/item/prefabs/complex/barrel/medium
	sheet_amount = 2

/obj/item/prefabs/mould/barrel/long
	name = "Long Barrel Mould"
	item_path = /obj/item/prefabs/complex/barrel/long
	sheet_amount = 3

/obj/item/prefabs/mould/barrel/dual
	name = "Multiple barrels Mould"
	item_path = /obj/item/prefabs/complex/barrel/dual
	sheet_amount = 5

// Frame

/obj/item/prefabs/mould/simpleWeaponFrame
	name = "Simple Weapon Frame Mould"
	item_path = /obj/item/prefabs/complex/WeaponFrame/makeshift
	sheet_amount = 2

/obj/item/prefabs/mould/complexWeaponFrame
	name = "Complex Weapon Frame Mould"
	item_path = /obj/item/prefabs/complex/WeaponFrame/standard
	sheet_amount = 5

/obj/item/prefabs/mould/prewarWeaponFrame
	name = "Prewar Weapon Frame Mould"
	item_path = /obj/item/prefabs/complex/WeaponFrame/improved
	sheet_amount = 2
	mould_sheet_type = /obj/item/stack/sheet/plasteel

/obj/item/prefabs/mould/masterworkWeaponFrame
	name = "Masterwork Weapon Frame Mould"
	item_path = /obj/item/prefabs/complex/WeaponFrame/masterwork
	sheet_amount = 4
	mould_sheet_type = /obj/item/stack/sheet/plasteel

// Loader

/obj/item/prefabs/mould/m10mm
	name = "10mm Magazine Ammo Loader Mould"
	item_path = /obj/item/prefabs/complex/ammo_loader/m10mm
	sheet_amount = 2

/obj/item/prefabs/mould/m10mmdouble
	name = "10mm Magazine Double Ammo Loader Mould"
	item_path = /obj/item/prefabs/complex/ammo_loader/m10mmdouble
	sheet_amount = 4

/obj/item/prefabs/mould/m9mm
	name = "9mm Magazine Ammo Loader Mould"
	item_path = /obj/item/prefabs/complex/ammo_loader/m9mm
	sheet_amount = 2

/obj/item/prefabs/mould/m9mmdouble
	name = "9mm Magazine Double Ammo Loader Mould"
	item_path = /obj/item/prefabs/complex/ammo_loader/m9mmdouble
	sheet_amount = 4

/obj/item/prefabs/mould/m9mmext
	name = "9mm Magazine Extended Ammo Loader Mould"
	desc = ""
	item_path = /obj/item/prefabs/complex/ammo_loader/m9mmext
	sheet_amount = 6

/obj/item/prefabs/mould/m556
	name = "556 Magazine Ammo Loader Mould"
	item_path = /obj/item/prefabs/complex/ammo_loader/m556
	sheet_amount = 6

/obj/item/prefabs/mould/m762
	name = "762 Magazine Loader Mould"
	item_path = /obj/item/prefabs/complex/ammo_loader/m762
	sheet_amount = 6

/obj/item/prefabs/mould/m45mm
	name = ".45 Simple Magazine Loader Mould"
	item_path = /obj/item/prefabs/complex/ammo_loader/m45mm
	sheet_amount = 2

/obj/item/prefabs/mould/m45mmdouble
	name = ".45 Simple Magazine Loader Mould"
	item_path = /obj/item/prefabs/complex/ammo_loader/m45mmdouble
	sheet_amount = 4

/obj/item/prefabs/mould/tommygunm45
	name = ".45 Extended Magazine Loader Mould"
	item_path = /obj/item/ammo_box/magazine/tommygunm45
	sheet_amount = 6

/obj/item/prefabs/mould/a50
	name = ".45 Extended Magazine Loader Mould"
	item_path = /obj/item/ammo_box/magazine/a50
	sheet_amount = 8

/obj/item/prefabs/mould/d12g
	name = "12g Drum Magazine Loader Mould"
	item_path = /obj/item/ammo_box/magazine/d12g
	sheet_amount = 10

/obj/item/prefabs/mould/tube4570
	name = "45-70 Internal Magazine Loader Mould"
	item_path = /obj/item/ammo_box/magazine/internal/shot/tube4570
	sheet_amount = 8

/obj/item/prefabs/mould/tube44
	name = ".44 Internal Magazine Loader Mould"
	item_path = /obj/item/ammo_box/magazine/internal/shot/tube44
	sheet_amount = 4

/obj/item/prefabs/mould/tube357
	name = ".357 Internal Magazine Loader Mould"
	item_path = /obj/item/ammo_box/magazine/internal/shot/tube357
	sheet_amount = 2

/obj/item/prefabs/mould/antimateriel
	name = ".50MG Internal Magazine Loader Mould"
	item_path = /obj/item/ammo_box/magazine/internal/boltaction/antimateriel
	sheet_amount = 20

// Bolt

/obj/item/prefabs/mould/bolt/simple
	name = "Simple Bolt Mould"
	desc = ""
	item_path = /obj/item/prefabs/complex/bolt/simple
	sheet_amount = 2

/obj/item/prefabs/mould/bolt/high
	name = "Advanced Bolt Mould"
	desc = ""
	item_path = /obj/item/prefabs/complex/bolt/high
	sheet_amount = 2

// Trigger

/obj/item/prefabs/mould/trigger
	name = "Simple Trigger Mould"
	item_path = /obj/item/prefabs/complex/trigger/simple
	sheet_amount = 1

/obj/item/prefabs/mould/hair
	name = "Hair Trigger Mould"
	item_path = /obj/item/prefabs/complex/trigger/hair
	sheet_amount = 3

/obj/item/prefabs/mould/advhair
	name = "Advanced Hair Trigger Mould"
	item_path = /obj/item/prefabs/complex/trigger/advhair
	sheet_amount = 5

// Stock

/obj/item/prefabs/mould/stock
	name = "Stock Mould"
	item_path = /obj/item/prefabs/complex/stock
	sheet_amount = 2

/obj/item/prefabs/mould/wstock
	name = "Wooden Stock Mould"
	item_path = /obj/item/prefabs/complex/stock/low
	sheet_amount = 2
	mould_sheet_type = /obj/item/stack/sheet/mineral/wood

/obj/item/prefabs/mould/pstock
	name = "Plastic Stock Mould"
	item_path = /obj/item/prefabs/complex/stock/mid
	sheet_amount = 2
	mould_sheet_type = /obj/item/stack/sheet/plastic

/obj/item/prefabs/mould/screw
	name = "Screw Mould"
	item_path = /obj/item/prefabs/complex/screw
	sheet_amount = 1
