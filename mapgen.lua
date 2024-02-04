--Map Generation Stuff --



local function register_decorations(index, size)
	--minetest.log("hello1:", "index-size:"..index..size)
	minetest.register_decoration({
		decoration = {
			"rock_piles:loose_rocks_"..size.."_"..index,
		},
		place_on = {
			"default:dirt_with_grass",
			"default:gravel",
			"default:stone",
			"default:permafrost_with_stones",
			"default:sand",
			"default:cobble",
			"default:mossycobble",
			"default:water_source",  -- Add water source node
			"default:river_water_source", 
		},
		--[[noise_params = {
			offset = 0,
			scale = 0.0078125,
			spread = {
				y = 100,
				z = 100,
				x = 100
			},
			seed = 0,
			octaves = 3,
			persist = 0.6,
			flags = "absvalue",
			lacunarity = 2
		},]]
		noise_params = {
			offset = 0,
			scale = 0.00018125,  --0.0028125,
			spread = {
				y = 50,
				z = 50,
				x = 50
			},
			seed = 0,
			octaves = 6,  --9
			persist = 0.9,
			flags = "absvalue",
			lacunarity = 10
		},
		param2 = 0,
		flags = "all_floors",
		deco_type = "simple",
		param2_max = 3,
		y_min = -16000, --  -16
		y_max = 16000   -- 48
	})
	
	
	minetest.register_decoration({
		decoration = {
			"rock_piles:loose_desert_rocks_"..size.."_"..index,
		},
		place_on = {
			"default:desert_sand",
			"default:desert_stone",
			"badlands:red_sand",
			"default:dry_dirt_with_dry_grass",
		},
		--[[noise_params = {
			offset = 0,
			scale = 0.0078125,
			spread = {
					y = 100,
					z = 100,
					x = 100
			},
			seed = 0,
			octaves = 3,
			persist = 0.6,
			flags = "absvalue",
			lacunarity = 2
		},]]
		noise_params = {
			offset = 0,
			scale = 0.00018125,  --0.0028125,
			spread = {
				y = 50,
				z = 50,
				x = 50
			},
			seed = 0,
			octaves = 6,
			persist = 0.9,
			flags = "absvalue",
			lacunarity = 10
		},
		param2 = 0,
		flags = "all_floors",
		--flags = "force_placement",
		deco_type = "simple",
		param2_max = 3,
		y_min = -16000, --  -16
		y_max = 16000   -- 48
	})
end

local rocks_variants = 2
local rocks_sizes = {"small", "medium", "large"}
for _, size in ipairs(rocks_sizes) do
	for i = 1, rocks_variants do
		register_decorations(i, size)
	end
end


--[[minetest.register_decoration({
    name = "rock_piles:guides",
    deco_type = "schematic",
    place_on = {"default:sand"},
    place_offset_y = -1,  -- -29
    sidelen = 16,
    fill_ratio = 0.0005,  --0.00005,
   -- biomes = {"rainforest"},
    y_max = 400.5,
    y_min = 3.5,  --10.5
    schematic = minetest.get_modpath("rock_piles").."/schematics/guides.mts",
    flags = "force_placement",
    rotation = "random",
})]] 