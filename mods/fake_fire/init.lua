minetest.register_node("fake_fire:fake_fire", {
    description = "fake_fire",
	tiles = {
		{name="fake_fire_animated.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=1.5}},
		},
	paramtype = "light",
	is_ground_content = true,
    inventory_image = 'fake_fire.png',
    wield_image = {
		{name="fake_fire_animated.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=1.5}},
		},
	drawtype = "plantlike",
	light_source = 14,
	drop = '',
	damage_per_second = 2*0.5,
	groups = {dig_immediate=3,attached_node=1},
	paramtype = "light",
	walkable = false,
	sounds = minetest.sound_play("fire_small", {pos=cp, loop=true}),
    on_punch = function (pos,node,puncher)
	minetest.sound_play("fire_extinguish",
	{pos = pos, gain = 1.0, max_hear_distance = 20,})
end
})
 minetest.register_craftitem("fake_fire:old_flint_and_steel", {
	description = "Never ending flint and steel",
	inventory_image = "flint_and_steel.png",
	stack_max = 1,
	liquids_pointable = false,
	on_use = function(itemstack, user, pointed_thing)
		n = minetest.env:get_node(pointed_thing)
		if pointed_thing.type == "node" then
			minetest.env:add_node(pointed_thing.above, {name="fake_fire:fake_fire"})
			minetest.sound_play("",
			{gain = 1.0, max_hear_distance = 20,})
		end
	end,
})

-- new code --

-- found then changed to my likeing from flint mod --
local function get_nodedef_field(nodename, fieldname)
    if not minetest.registered_nodes[nodename] then
        return nil
    end
    return minetest.registered_nodes[nodename][fieldname]
end

local function set_fake_fire(pointed_thing)
		local n = minetest.env:get_node(pointed_thing.above)
		if n.name ~= ""  and n.name == "air" then
			minetest.env:set_node(pointed_thing.above, {name="fake_fire:fake_fire"})
		end
end

-- the flint and steel --
 
minetest.register_tool("fake_fire:flint_and_steel", {
	description = "Flint and steel",
	inventory_image = "flint_and_steel.png",
	liquids_pointable = false,
	stack_max = 1,
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=0,
		groupcaps={
			flamable = {uses=65, maxlevel=1},
		}
	},
	on_use = function(itemstack, user, pointed_thing)
		if pointed_thing.type == "node" then
			set_fake_fire(pointed_thing)
			minetest.sound_play("",
			{gain = 1.0, max_hear_distance = 2,})
			itemstack:add_wear(65535/65)
			return itemstack
		end
	end,

})

-- water and lava puts out fake fire --
minetest.register_abm({
nodenames = {"fake_fire:fake_fire"},
interval = 1,
chance = 1,
action = function(pos, node)
if minetest.env:find_node_near(pos, 1, {"default:water_source", "default:water_flowing","default:lava_source","default:lava_flowing"}) then
	minetest.sound_play("fire_extinguish",
	{gain = 1.0, max_hear_distance = 20,})
node.name = "air"
minetest.env:set_node(pos, node)
end
end,
})

minetest.register_craftitem("fake_fire:flint", {
	description = "flint",
	inventory_image = "flint.png",
	stack_max = 99,
	liquids_pointable = false,
})

minetest.register_craft({
	output = '"fake_fire:flint_and_steel" 1',
	recipe = {
		{"fake_fire:flint", ""},
		{"", "default:steel_ingot"},
	}
})

minetest.register_craft({
	output = '"fake_fire:flint" 1',
	recipe = {
		{"default:gravel"},
	}
})


-- Thanks-

-- Many thanks for addi for his help in coding. --

-- Many thanks for the players on the King Arthur's land server for giving --
-- me support, ideas and allowing me to add the mod to the server itself. --

