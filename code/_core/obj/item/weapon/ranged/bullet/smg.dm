/obj/item/weapon/ranged/bullet/magazine/smg
	name = "submachine gun"
	icon = 'icons/obj/items/weapons/ranged/smg.dmi'
	icon_state = "inventory_open"

	projectile = /obj/projectile/bullet/smg/
	ranged_damage_type = /damagetype/ranged/smg_45
	damage_type = /damagetype/sword/

	bullet_speed = 31
	shoot_delay = 1

	automatic = TRUE

	bullet_capacity = 1 //One in the chamber

	bullet_type = ".45"

	shoot_sounds = list('sounds/weapon/ranged/gunshot_saw.ogg')

	can_wield = FALSE

	override_icon_state = TRUE

/obj/item/weapon/ranged/bullet/magazine/smg/update_icon()
	if(stored_magazine)
		var/obj/item/magazine/M = stored_magazine
		switch(length(M.stored_bullets))
			if(0)
				icon_state = "inventory_0"
			if(1 to 4)
				icon_state = "inventory_4"
			if(5 to 8)
				icon_state = "inventory_8"
			if(9 to 12)
				icon_state = "inventory_12"
			if(13 to 16)
				icon_state = "inventory_16"
			if(17 to 20)
				icon_state = "inventory_20"
			if(20 to 23)
				icon_state = "inventory_23"
			if(24)
				icon_state = "inventory_24"
	else
		icon_state = initial(icon_state)

	..()