minetest.register_node('metal_carpentry:rusty_iron_block', {
	description = 'Rusty iron block',
	tiles = {'metal_carpentry_rusty_iron.png'},
	groups = {cracky=1, level=2}
})

minetest.register_craft ({
	type = 'shapeless',
	output = 'metal_carpentry:rusty_iron_block 1',
	recipe = {'default:dirt', 'default:steelblock'}
})

minetest.register_node('metal_carpentry:old_bronze_block', {
	description = 'Old bronze block',
	tiles = {'metal_carpentry_old_bronze.png'},
	groups = {cracky=1, level=2}
})

minetest.register_craft ({
	type='shapeless',
	output='metal_carpentry:old_bronze_block 1',
	recipe={'default:dirt', 'default:bronzeblock'}
})
