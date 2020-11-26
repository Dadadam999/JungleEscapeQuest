local M = {}

M.GAME_OVER = false

M.LEVEL1_OBJ = {}




function M.reset()
	for i=1, #M.ADEPTS  do
		M.ADEPTS[i] = nil
	end
end


return M