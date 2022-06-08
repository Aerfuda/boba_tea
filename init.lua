local modname = "boba_tea"
local modpath = minetest.get_modpath(modname)
local mg_name = minetest.get_mapgen_setting("mg_name")
local S = minetest.get_translator(minetest.get_current_modname())


--[[
boba_tea:tapioca_ball,
boba_tea:condensed_milk,
boba_tea:brown_sugar,
boba_tea:caramel_boba_tea,
boba_tea:brown_sugar_tea,
boba_tea:fresh_milk_tea,
--]]

minetest.register_craftitem("boba_tea:tapioca_ball", {
    description = S("Tapioca Ball"),
	inventory_image = "tapioca_balls.png",
	on_use = minetest.item_eat(3, "farming:bowl")
})

minetest.register_craftitem("boba_tea:condensed_milk", {
    description = S("Condensed Milk"),
	inventory_image = "condensed_milk.png"
})

minetest.register_craftitem("boba_tea:brown_sugar", {
    description = S("Brown Sugar"),
	inventory_image = "brown_sugar.png",
	on_use = minetest.item_eat(5, "")
})

minetest.register_craftitem("boba_tea:caramel_boba_tea", {
    description = S("Caramel Boba Tea"),
	inventory_image = "caramel_boba_tea.png",
	on_use = minetest.item_eat(8, "vessels:drinking_glass")
})

minetest.register_craftitem("boba_tea:brown_sugar_tea", {
    description = S("Brown Sugar Boba Tea"),
	inventory_image = "brown_sugar_boba_tea.png",
	on_use = minetest.item_eat(8, "vessels:drinking_glass")
})

minetest.register_craftitem("boba_tea:fresh_milk_tea", {
    description = S("Tapioca Ball"),
	inventory_image = "milk_boba_tea.png",
	on_use = minetest.item_eat(8, "vessels:drinking_glass")
})

minetest.register_craft({
    output = "boba_tea:tapioca_ball",
	type = "shapeless",
	recipe =  {
	    "farming:flour",
		"farming:glass_water",
		"farming:bowl"
	},
	replacements = {
	    { "farming:glass_water", "vessels:drinking_glass" },
	}
})

minetest.register_craft({
    output = "boba_tea:condensed_milk",
	type = "shapeless",
	recipe =  {
	    "farming:sugar",
		"mobs:bucket_milk",
	},
	replacements = {
	    { "mobs:bucket_milk", "bucket:bucket_empty" },
	}
})

minetest.register_craft({
    output = "boba_tea:brown_sugar",
	type = "shapeless",
	recipe =  {
	    "farming:sugar",
		"dye:brown"
	}
})

minetest.register_craft({
    output = "boba_tea:caramel_boba_tea",
	type = "shapeless",
	recipe =  {
	    "farming:glass_water",
		"farming:caramel",
		"boba_tea:tapioca_ball",
		"farming:sugar",
		"boba_tea:condensed_milk"
	},
	replacements = {
	    { "farming:glass_water", "vessels:drinking_glass" },
		{ "boba_tea:condensed_milk", "farming:bowl" }
	}
})

minetest.register_craft({
    output = "boba_tea:brown_sugar_tea",
	type = "shapeless",
	recipe =  {
	    "farming:glass_water",
		"boba_tea:brown_sugar",
		"boba_tea:tapioca_ball",
		"farming:sugar",
		"boba_tea:condensed_milk"
	},
	replacements = {
	    { "farming:glass_water", "vessels:drinking_glass" },
		{ "boba_tea:condensed_milk", "farming:bowl" }
	}
})

minetest.register_craft({
    output = "boba_tea:fresh_milk_tea",
	type = "shapeless",
	recipe =  {
	    "farming:glass_water",
		"group:food_milk_glass",
		"boba_tea:tapioca_ball",
		"farming:sugar",
		"boba_tea:condensed_milk"
	},
	replacements = {
	    { "farming:glass_water", "vessels:drinking_glass" },
		{ "group:food_milk_glass", "vessles:drinking_glass" },
		{ "boba_tea:condensed_milk", "farming:bowl" }
	}
})