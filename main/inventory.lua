local M = {}
M.ROADSWORD = hash("broadsword")
M.DAGGER = hash("dagger")
M.ITEMS = {
	[M.BROADSWORD] = {
		damage = 12,
		weight = 5,
	},
	[M.DAGGER] = {
		damage = 6,
		weight = 2,
	},
}

-- the player inventory
-- we track the current weight of the items in the inventory as well as the
-- maximum number of items
local M.inventory = {
	current_weight = 0,
	max_weight = 35,
	items = {},
}

-- pick-up an item and add it to the inventory
-- @param item_id Id of the item to pick up
-- @return success true if picked up
-- @return error_message Error message if it wasn't possible to pick up the item
local function M.pick_up(item_id)
	-- get the item to pick up
	local item = ITEMS[item_id]

	-- check if the item weighs too much
	if inventory.current_weight + item.weight > inventory.max_weight then
		return false, "You can't carry that much!"
	end

	-- add it!
	table.insert(inventory.items, item)
	inventory.current_weight = inventory.current_weight + item.weight
	return true
end


-- USE IT LIKE THIS:
-- pick up an item
-- show an error if it fails
-- update inventory gui if ok
local ok, err = pick_up(BROADSWORD)
if not ok then
	show_popup(err)
else
	update_inventory_gui()
end

return M