--/!\ Lua n'accepte pas le paramètres nommés !
--Cette fonction particulière attend deux paramètres :
--une chaîne de caractères et un tableau qui est sans doute "parsé" par la suite.
minetest.register_node('metal_carpentry:rusty_iron_block', {
	description = 'Rusty iron block',
	tiles = {'metal_carpentry_rusty_iron.png'},
	groups = {cracky=1, level=2},
	is_ground_content = false,
	sounds = default.node_sound_metal_defaults(),
})

minetest.register_craft({
	type = 'shapeless',
	output = 'metal_carpentry:rusty_iron_block 1',
	recipe = {'default:dirt', 'default:steelblock'},
})

minetest.register_node('metal_carpentry:old_bronze_block', {
	description = 'Old bronze block',
	tiles = {'metal_carpentry_old_bronze.png'},
	groups = {cracky=1, level=2},
	is_ground_content = false,
	sounds = default.node_sound_metal_defaults(),
})

minetest.register_craft({
	type='shapeless',
	output='metal_carpentry:old_bronze_block 1',
	recipe={'default:dirt', 'default:bronzeblock'},
})

minetest.register_node('metal_carpentry:ubeam_steel', {
	description = 'Steel U beam',
	drawtype = 'mesh',
	mesh = 'metal_carpentry_ubeam.obj',
	tiles = {'default_steel_block.png'},
	groups = {cracky=1, level=2},
	is_ground_content = false,
	sounds = default.node_sound_metal_defaults(),
	paramtype = 'light',
	paramtype2 = 'facedir',
	selection_box = {
		type = 'fixed',
		fixed = {
			--right, bottom, back, left, top, front (origine au centre du node)
			{0.25, 0.4, 0.5, -0.25, 0.5, -0.5},
			{0.25, -0.5, 0.5, -0.25, -0.4, -0.5},
			{-0.15, -0.5, 05, -0.25, 0.5, -0.5},
		},
	},
	collision_box = {
		type = 'fixed',
		fixed = {
			--right, bottom, back, left, top, front (origine au centre du node)
			{0.25, 0.4, 0.5, -0.25, 0.5, -0.5},
			{0.25, -0.5, 0.5, -0.25, -0.4, -0.5},
			{-0.15, -0.5, 05, -0.25, 0.5, -0.5},
		},
	},
})

--function stairs.register_stair_and_slab(subname, recipeitem,
--groups, images, desc_stair, desc_slab, sounds)
stairs.register_stair_and_slab(
	"rusty_iron",
	"metal_carpentry:rusty_iron_block",
	{cracky = 1, level = 2},
	{"metal_carpentry_rusty_iron.png"},
	"Rusty iron stair",
	"Rusty iron slab",
	default.node_sound_metal_defaults()
)

stairs.register_stair_and_slab(
	"old_bronze",
	"metal_carpentry:old_bronze_block",
	{cracky = 1, level = 2},
	{"metal_carpentry_old_bronze.png"},
	"Old bronze stair",
	"Old bronze slab",
	default.node_sound_metal_defaults()
)
