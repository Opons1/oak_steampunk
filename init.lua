local sides = {
  {x = -1, z = 0},
  {x = 1, z = 0},
  {x = 0, z = -1},
  {x = 0, z = 1},
}

minetest.register_node("oak_steampunk:oak_floor", {
    description = "Oak Floor",
    tiles = {"oak_floor.png"},
    is_ground_content = false,
    groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = "oak_steampunk:oak_floor 5",
	recipe = {
	{"oak:wood", "", "oak:wood"},
	{"", "oak:wood", ""},
	{"oak:wood", "", "oak:wood"}
  }
})

minetest.register_node("oak_steampunk:oak_floor2", {
    description = "Oak Floor 2",
    tiles = {"oak_floor2.png"},
    is_ground_content = false,
    groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = "oak_steampunk:oak_floor2 4",
	recipe = {
	{"oak:wood", "", "oak:wood"},
	{"", "", ""},
	{"oak:wood", "", "oak:wood"}
  }
})

minetest.register_node("oak_steampunk:oak_floor3", {
    description = "Oak Floor 3",
    tiles = {"oak_floor3.png"},
    is_ground_content = false,
    groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = "oak_steampunk:oak_floor3 6",
	recipe = {
	{"oak:wood", "oak:wood", "oak:wood"},
	{"", "oak:wood", ""},
	{"oak:wood", "", "oak:wood"}
  }
})

doors.register("oak_door", {
		tiles = {{ name = "oak_door_wood.png", backface_culling = true }},
		description = "Oak Door",
		inventory_image = "oak_door_wood_inv.png",
		groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
		recipe = {
			{"oak:wood", "oak:wood", ""},
			{"default:steel_ingot", "oak:wood", ""},
			{"oak:wood", "oak:wood", ""},
		}
})

doors.register("oak_door_handweel", {
		tiles = {{ name = "oak_door_wood2.png", backface_culling = true }},
		description = "Oak Door Handweel",
		inventory_image = "oak_door_wood_inv2.png",
		groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
		recipe = {
			{"oak:wood", "oak:wood", ""},
			{"default:bronze_ingot", "oak:wood", ""},
			{"oak:wood", "oak:wood", ""},
		}
})

minetest.register_node("oak_steampunk:oak_frame", {
    description = "Oak Frame",
    tiles = {"oak_frame.png"},
    is_ground_content = false,
    groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
})

doors.register("oak_door_old", {
		tiles = {{ name = "oak_door_wood3.png", backface_culling = true }},
		description = "Oak Door Old",
		inventory_image = "oak_door_wood_inv3.png",
		groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
		recipe = {
			{"oak:wood", "oak:wood", ""},
			{"oak:wood", "oak:wood", ""},
			{"oak:wood", "oak:wood", ""},
		}
})

minetest.register_craft({
	output = "oak_steampunk:oak_frame 4",
	recipe = {
	{"", "oak:wood", ""},
	{"oak:wood", "", "oak:wood"},
	{"", "oak:wood", ""}
  }
})

minetest.register_node("oak_steampunk:oak_fan", {
    description = "Oak Fan",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {
		"oak_floor3.png",
		"oak_floor3.png",
		"oak_floor3.png",
		"oak_floor3.png",
		{name="oak_fan.png",animation={type="vertical_frames", aspect_w=32, aspect_h=32, length=0.50}},
		{name="oak_fan.png",animation={type="vertical_frames", aspect_w=32, aspect_h=32, length=0.50}}
	},
--	tiles = {{name="oak_fan.png",animation={type="vertical_frames", aspect_w=32, aspect_h=32, length=0.50},}},
    is_ground_content = false,
    groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = "oak_steampunk:oak_fan",
	type = "shapeless",
	recipe = {"oak_steampunk:oak_frame", "default:bronze_ingot"},
})

minetest.register_node("oak_steampunk:oak_gear", {
    description = "Oak Gear",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {
		"oak_floor3.png",
		"oak_floor3.png",
		"oak_gear.png",
		"oak_gear.png",
		"oak_gear.png",
		"oak_gear.png",
	},
    is_ground_content = false,
    groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = "oak_steampunk:oak_gear",
	type = "shapeless",
	recipe = {"oak_steampunk:oak_frame", "basic_materials:gear_steel"},
})

minetest.register_node("oak_steampunk:oak_face", {
    description = "Oak Face",
    tiles = {"oak_face.png"},
    is_ground_content = false,
    groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = "oak_steampunk:oak_face 2",
	type = "shapeless",
	recipe = {"oak:trunk", "oak:trunk"},
})

minetest.register_node("oak_steampunk:oak_bubble", {
    description = "Oak Bubble Tube",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {
		"oak_floor3.png",
		"oak_floor3.png",
		{name="oak_bubble.png",animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.50}},
		{name="oak_bubble.png",animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.50}},
		{name="oak_bubble.png",animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.50}},
		{name="oak_bubble.png",animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.50}},
	},
	light_source = 6,
    is_ground_content = false,
    groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = "oak_steampunk:oak_bubble",
	type = "shapeless",
	recipe = {"oak_steampunk:oak_frame", "default:glass", "bucket:bucket_water"},
	replacements = {{"bucket:bucket_water", "bucket:bucket_empty"}}
})

minetest.register_node("oak_steampunk:oak_porthole", {
    description = "Oak Porthole",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {
		"oak_floor3.png",
		"oak_floor3.png",
		"oak_floor3.png",
		"oak_floor3.png",
		"oak_floor3.png",
		"oak_porthole.png",
	},
    is_ground_content = false,
    groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = "oak_steampunk:oak_porthole",
	type = "shapeless",
	recipe = {"oak_steampunk:oak_frame", "dye:blue", "dye:green"},
})

minetest.register_node("oak_steampunk:oak_porthole2", {
    description = "Oak Porthole 2",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {
		"oak_floor3.png",
		"oak_floor3.png",
		"oak_floor3.png",
		"oak_floor3.png",
		"oak_floor3.png",
		"oak_porthole2.png",
	},
    is_ground_content = false,
    groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = "oak_steampunk:oak_porthole2",
	type = "shapeless",
	recipe = {"oak_steampunk:oak_frame", "dye:blue", "dye:brown"},
})

minetest.register_node("oak_steampunk:oak_porthole3", {
    description = "Oak Porthole 3",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {
		"oak_floor3.png",
		"oak_floor3.png",
		"oak_floor3.png",
		"oak_floor3.png",
		"oak_floor3.png",
		"oak_porthole3.png",
	},
    is_ground_content = false,
    groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = "oak_steampunk:oak_porthole3",
	type = "shapeless",
	recipe = {"oak_steampunk:oak_frame", "dye:blue", "dye:yellow"},
})

minetest.register_node("oak_steampunk:oak_porthole4", {
    description = "Oak Porthole 4",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {
		"oak_floor3.png",
		"oak_floor3.png",
		"oak_floor3.png",
		"oak_floor3.png",
		"oak_floor3.png",
		"oak_porthole4.png",
	},
    is_ground_content = false,
    groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = "oak_steampunk:oak_porthole4",
	type = "shapeless",
	recipe = {"oak_steampunk:oak_frame", "dye:cyan", "dye:yellow"},
})

minetest.register_node("oak_steampunk:oak_porthole5", {
    description = "Oak Porthole 5",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {
		"oak_floor3.png",
		"oak_floor3.png",
		"oak_floor3.png",
		"oak_floor3.png",
		"oak_floor3.png",
		"oak_porthole5.png",
	},
    is_ground_content = false,
    groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = "oak_steampunk:oak_porthole5",
	type = "shapeless",
	recipe = {"oak_steampunk:oak_frame", "dye:black", "dye:blue"},
})

minetest.register_node("oak_steampunk:oak_plasma", {
    description = "Oak Plasma Lamp",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {
		"oak_floor3.png",
		"oak_floor3.png",
		{name="oak_plasma.png",animation={type="vertical_frames", aspect_w=32, aspect_h=32, length=1.00}},
		{name="oak_plasma.png",animation={type="vertical_frames", aspect_w=32, aspect_h=32, length=1.00}},
		{name="oak_plasma.png",animation={type="vertical_frames", aspect_w=32, aspect_h=32, length=1.00}},
		{name="oak_plasma.png",animation={type="vertical_frames", aspect_w=32, aspect_h=32, length=1.00}},
	},
	light_source = 6,
    is_ground_content = false,
    groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
	on_rightclick = function(pos, node, player, itemstack, pointed_thing)
		-- play sound
		minetest.sound_play("plasma",{
			max_hear_distance = 16,
			pos = pos,
			gain = 1.0
		})
	end,
})

minetest.register_craft({
	output = "oak_steampunk:oak_plasma",
	type = "shapeless",
	recipe = {"oak_steampunk:oak_frame", "default:meselamp", "dye:blue"},
})

minetest.register_node("oak_steampunk:oak_control", {
    description = "Oak Control Panel",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {
		"oak_floor3.png",
		"oak_floor3.png",
		"oak_floor3.png",
		"oak_floor3.png",
		"oak_floor3.png",
		"oak_control.png",
	},
    is_ground_content = false,
    groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = "oak_steampunk:oak_control",
	type = "shapeless",
	recipe = {"oak_steampunk:oak_frame", "default:glass", "default:bronze_ingot"},
})

minetest.register_node("oak_steampunk:oak_glass_green", {
    description = "Oak Glass Green",
    tiles = {"oak_glass_green.png"},
    paramtype = "light",
    light_source = 5,
    is_ground_content = false,
    groups = {cracky = 1, oddly_breakable_by_hand = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_craft({
	output = "oak_steampunk:oak_glass_green",
	type = "shapeless",
	recipe = {"oak:wood", "default:glass", "default:mese_crystal", "dye:green"},
})

minetest.register_node("oak_steampunk:oak_glass_blue", {
    description = "Oak Glass Blue",
    tiles = {"oak_glass_blue.png"},
    paramtype = "light",
    light_source = 5,
    is_ground_content = false,
    groups = {cracky = 1, oddly_breakable_by_hand = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_craft({
	output = "oak_steampunk:oak_glass_blue",
	type = "shapeless",
	recipe = {"oak:wood", "default:glass", "default:mese_crystal", "dye:blue"},
})

minetest.register_node("oak_steampunk:oak_glass_red", {
    description = "Oak Glass Red",
    tiles = {"oak_glass_red.png"},
    paramtype = "light",
    light_source = 5,
    is_ground_content = false,
    groups = {cracky = 1, oddly_breakable_by_hand = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_craft({
	output = "oak_steampunk:oak_glass_red",
	type = "shapeless",
	recipe = {"oak:wood", "default:glass", "default:mese_crystal", "dye:red"},
})

minetest.register_node("oak_steampunk:oak_wood_armed", {
    description = "Armed Oak Wood",
    tiles = {"oak_wood_armed.png"},
    is_ground_content = false,
    groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = "oak_steampunk:oak_wood_armed 2",
	type = "shapeless",
	recipe = {"oak:wood", "oak:wood", "default:bronze_ingot"},
})