local cfg1 = require("__SchallEndgameEvolution__.config.config-1")

remote.add_interface("Schall Endgame Evolution", {
    milestones_preset_addons = function()
        local maxTier = cfg1.tier_max
        local evoTable = {
            {type="group", name="Kills"},
        }
        for i = 5, maxTier, 1 do
            table.insert(evoTable, {type="kill", name="Schall-category-"..i.."-biter", quantity=1})
        end
        if maxTier >= 12 then
            table.insert(evoTable, {type="kill",       name="Schall-category-10-biter",          quantity=10, next="x10"})
        end
        table.insert(evoTable, {type="kill",       name="Schall-category-"..maxTier.."-biter",          quantity=10, next="x10"})
        return {
            ["Schall Endgame Evolution"] = {
                required_mods = {"SchallEndgameEvolution"},
                milestones = evoTable
            }
        }
    end
})
