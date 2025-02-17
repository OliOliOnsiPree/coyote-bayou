/datum/movespeed_modifier/obesity
	multiplicative_slowdown = 0.3

/datum/movespeed_modifier/radiation //Default slowsies for rads
	multiplicative_slowdown = 0.5

/datum/movespeed_modifier/monkey_reagent_speedmod
	blacklisted_movetypes = FLOATING
	variable = TRUE

/datum/movespeed_modifier/monkey_health_speedmod
	blacklisted_movetypes = FLOATING
	variable = TRUE

/datum/movespeed_modifier/monkey_temperature_speedmod
	blacklisted_movetypes = FLOATING
	variable = TRUE

/datum/movespeed_modifier/hunger
	variable = TRUE

/datum/movespeed_modifier/slaughter
	multiplicative_slowdown = -1

/datum/movespeed_modifier/wound_slowdown
	variable = TRUE

/datum/movespeed_modifier/damage_slowdown
	blacklisted_movetypes = FLOATING|FLYING
	variable = TRUE

/datum/movespeed_modifier/damage_slowdown_flying
	movetypes = FLYING
	blacklisted_movetypes = FLOATING
	variable = TRUE

/datum/movespeed_modifier/equipment_speedmod
	variable = TRUE
	blacklisted_movetypes = FLOATING

/datum/movespeed_modifier/grab_slowdown
	id = MOVESPEED_ID_MOB_GRAB_STATE
	blacklisted_movetypes = FLOATING

/datum/movespeed_modifier/grab_slowdown/aggressive
	multiplicative_slowdown = 3

/datum/movespeed_modifier/grab_slowdown/neck
	multiplicative_slowdown = 6

/datum/movespeed_modifier/grab_slowdown/kill
	multiplicative_slowdown = 9

/datum/movespeed_modifier/slime_reagentmod
	variable = TRUE

/datum/movespeed_modifier/slime_healthmod
	variable = TRUE

/datum/movespeed_modifier/config_walk_run
	multiplicative_slowdown = 1
	id = MOVESPEED_ID_MOB_WALK_RUN
	flags = IGNORE_NOSLOW

/datum/movespeed_modifier/config_walk_run/proc/sync()

/datum/movespeed_modifier/config_walk_run/walk/sync()
	var/mod = CONFIG_GET(number/movedelay/walk_delay)
	multiplicative_slowdown = isnum(mod)? mod : initial(multiplicative_slowdown)

/datum/movespeed_modifier/config_walk_run/run/sync()
	var/mod = CONFIG_GET(number/movedelay/run_delay)
	multiplicative_slowdown = isnum(mod)? mod : initial(multiplicative_slowdown)

/datum/movespeed_modifier/special_speed//SPECIAL Integration
	variable = TRUE

/datum/movespeed_modifier/turf_slowdown
	movetypes = GROUND
	blacklisted_movetypes = (FLYING|FLOATING)
	variable = TRUE

/datum/movespeed_modifier/bulky_drag
	variable = TRUE

/datum/movespeed_modifier/cold
	blacklisted_movetypes = FLOATING
	variable = TRUE

/datum/movespeed_modifier/human_carry
	variable = TRUE

/datum/movespeed_modifier/limbless
	variable = TRUE
	movetypes = GROUND
	flags = IGNORE_NOSLOW

/datum/movespeed_modifier/simplemob_varspeed
	variable = TRUE
	flags = IGNORE_NOSLOW

/datum/movespeed_modifier/tarantula_web
	multiplicative_slowdown = 3

/datum/movespeed_modifier/gravity
	blacklisted_movetypes = FLOATING
	variable = TRUE
	flags = IGNORE_NOSLOW

/datum/movespeed_modifier/scoped_in
	multiplicative_slowdown = SCOPED_IN_ADD_SLOWDOWN

/datum/movespeed_modifier/carbon_softcrit
	multiplicative_slowdown = SOFTCRIT_ADD_SLOWDOWN

/datum/movespeed_modifier/slime_tempmod
	variable = TRUE

/datum/movespeed_modifier/carbon_crawling
	multiplicative_slowdown = CRAWLING_ADD_SLOWDOWN
	movetypes = CRAWLING
	flags = IGNORE_NOSLOW

/datum/movespeed_modifier/mob_config_speedmod
	variable = TRUE
	flags = IGNORE_NOSLOW

/datum/movespeed_modifier/liver_cirrhosis
	blacklisted_movetypes = FLOATING
	variable = TRUE

/datum/movespeed_modifier/active_block
	variable = TRUE
	flags = IGNORE_NOSLOW

/datum/movespeed_modifier/super_stimpak_slowdown
	flags = IGNORE_NOSLOW
	multiplicative_slowdown = 0.8

/datum/movespeed_modifier/healing_poultice_slowdown
	flags = IGNORE_NOSLOW
	multiplicative_slowdown = 0.8

/datum/movespeed_modifier/bloodloss_slowdown
	flags = IGNORE_NOSLOW
	variable = TRUE

/datum/movespeed_modifier/shared_slowdown
	flags = IGNORE_NOSLOW
	variable = TRUE

/datum/movespeed_modifier/artifact
	flags = IGNORE_NOSLOW
	variable = TRUE
