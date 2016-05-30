for _, assy_mac in pairs(data.raw["assembling-machine"]) do
    if not assy_mac.working_visualisations then
        assy_mac.working_visualisations = {}
    end

    local shift_y = assy_mac.selection_box[2][1] / 2 + 0.2
    local shift_x = assy_mac.selection_box[2][2] - 0.35

    table.insert(assy_mac.working_visualisations, {
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
            shift = { shift_y, shift_x }
        },
    })
end
