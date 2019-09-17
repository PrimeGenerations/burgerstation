/obj/item/magazine/pistol_50ae
	name = "\improper .50 action express pistol magazine"
	bullet_type = ".50ae"
	icon = 'icons/obj/items/magazine/50aepistol.dmi'
	icon_state = "50aepistol"
	bullet_count_max = 7

	weapon_whitelist = list(
		/obj/item/weapon/ranged/bullet/magazine/pistol/gold_eagle
	)

/obj/item/magazine/pistol_50ae/on_spawn()
	for(var/i=1, i <= bullet_count_max, i++)
		stored_bullets += new /obj/item/bullet/pistol_50ae(src)
	update_icon()

/obj/item/magazine/pistol_50ae/update_icon()
	if(length(stored_bullets))
		icon_state = "[initial(icon_state)]_1"
	else
		icon_state = "[initial(icon_state)]"

	..()