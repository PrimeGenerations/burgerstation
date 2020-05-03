/obj/item/weapon/ranged/energy/recharging/captain
	name = "captain's laser pistol"
	icon = 'icons/obj/items/weapons/ranged/laser/captain.dmi'

	projectile = /obj/projectile/bullet/laser
	damage_type = /damagetype/ranged/laser/carbine

	projectile_speed = 31
	shoot_delay = 5

	automatic = FALSE

	shoot_sounds = list('sounds/weapons/laser_carbine/kill.ogg')

	charge_max = 8000
	charge_current = 8000
	charge_cost = 1000

	override_icon_state = TRUE

	view_punch = 4

	heat_per_shot = 0.07
	heat_max = 0.2

/obj/item/weapon/ranged/energy/recharging/captain/update_icon()

	icon_state = initial(icon_state)
	icon = initial(icon)

	var/icon/I = new/icon(icon,icon_state)
	var/icon/I2 = new/icon(icon,"charge[FLOOR((charge_current/charge_max) * 4, 1)]")

	I.Blend(I2,ICON_OVERLAY)

	icon = I

	return ..()

/obj/item/weapon/ranged/energy/recharging/captain/get_static_spread() //Base spread
	return 0.02

/obj/item/weapon/ranged/energy/recharging/captain/get_skill_spread(var/mob/living/L) //Base spread
	return max(0,0.03 - (0.6 * L.get_skill_power(SKILL_RANGED)))
