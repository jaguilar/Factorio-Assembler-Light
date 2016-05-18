supported_assemblers = {
	-- base game assemblers
	"assembling-machine-1",
	"assembling-machine-2",
	"assembling-machine-3",	
}	

-- reconfigure all supported assemblers to have the light
for i,name in ipairs(supported_assemblers) do
	if	data.raw["assembling-machine"][name] then
		data.raw["assembling-machine"][name].working_visualisations =
		{
			{
			north_position = {0.0, 0.0},
			east_position = {0.0, 0.0},
			south_position = {0.0, 0.0},
			west_position = {0.0, 0.0},
			animation =
				{
				filename = "__assembler-light__/graphics/light.png",
				priority = "extra-high",
				width = 12,
				height = 12,
				frame_count = 16,
				line_length = 8,
				shift = { .75, 1.15 }
				},
			}
		}
	end
end
