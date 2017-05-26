minetest.register_node('metal_carpentry:rusty_iron_block', {
	tiles = {'metal_carpentry_rusty_iron.png'},
	group = {oddly_breakable_by_hand=2},
})

minetest.register_craft ({
	type='shapeless',
	output='metal_carpentry:rusty_iron_block 1',
	recipe={'default:dirt', 'default:steelblock'}
})

minetest.register_node('metal_carpentry:old_bronze_block', {
	tiles = {'metal_carpentry_old_bronze.png'},
	group = {oddly_breakable_by_hand=2}
})

minetest.register_craft ({
	type='shapeless',
	output='metal_carpentry:old_bronze_block 1',
	recipe={'default:dirt', 'default:bronzeblock'}
})
