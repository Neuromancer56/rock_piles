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
			"default:mossycobble"
		},
		noise_params = {
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
			"default:desert_stone"
		},
		noise_params = {
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
		},
		param2 = 0,
		flags = "all_floors",
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