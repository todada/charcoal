--[[
Charcoal Mod
========

Version: 0.1

Depends: default

License: see README

--]]

local modname = "charcoal"

--
-- Crafting definition
--

minetest.register_craft({
        output = 'default:torch 4',
        recipe = {
                {'charcoal:charcoal_lump'},
                {'default:stick'},
        }
})

minetest.register_craft({
   output = 'charcoal:charcoalblock',
   recipe = {
      {'charcoal:charcoal_lump', 'charcoal:charcoal_lump', 'charcoal:charcoal_lump'},
      {'charcoal:charcoal_lump', 'charcoal:charcoal_lump', 'charcoal:charcoal_lump'},
      {'charcoal:charcoal_lump', 'charcoal:charcoal_lump', 'charcoal:charcoal_lump'},
   }
})

minetest.register_craft({
   output = 'charcoal:charcoal_lump 9',
   recipe = {
      {'charcoal:charcoalblock'},
   }
})

minetest.register_craft({
        type = "fuel",
        recipe = "charcoal:charcoal_lump",
        burntime = 40,
})

minetest.register_craft({
   type = "fuel",
   recipe = "charcoal:charcoalblock",
   burntime = 370,
})

--
-- Cooking recipes
--

minetest.register_craft({
        type = "cooking",
        output = "charcoal:charcoal_lump",
        recipe = "group:tree",
})

--
-- Crafting items and node blocks
--

minetest.register_craftitem("charcoal:charcoal_lump", {
        description = "Charcoal lump",
        inventory_image = "charcoal_lump.png",
        groups = {coal = 1, flammable = 1},
})

--
-- same as coalblock, but charcoal block is flammable and does not support 'permanent' flame
-- (see fire mod)
minetest.register_node("charcoal:charcoalblock", {
   description = "Charcoal Block",
   tiles = {"charcoal_charcoal_block.png"},
   is_ground_content = false,
   groups = {cracky = 3, flammable = 2},
   sounds = default.node_sound_stone_defaults(),
})

