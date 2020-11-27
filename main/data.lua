local M = {}

M.GAME_OVER = false
M.CURRENT_LEVEL = "level1"

-- нашли ли предметы на первом лвле
M.LEVEL1_OBJECT1_SEARCHED = false
M.LEVEL1_OBJECT2_SEARCHED = false
--правильные или не правильные ответы на первом лвле
M.LEVEL1_SELECT1 = false
M.LEVEL1_SELECT2 = true
M.LEVEL1_SELECT3 = false

-- нашли ли предметы на втором лвле
M.LEVEL2_OBJECT1_SEARCHED = false
M.LEVEL2_OBJECT2_SEARCHED = false
--правильные или не правильные ответы на втором лвле
M.LEVEL2_SELECT1 = true
M.LEVEL2_SELECT2 = false
M.LEVEL2_SELECT3 = false

function M.reset()
	M.GAME_OVER = false

	M.LEVEL1_OBJECT1_SEARCHED = false
	M.LEVEL1_OBJECT2_SEARCHED = false

	M.LEVEL2_OBJECT1_SEARCHED = false
	M.LEVEL2_OBJECT2_SEARCHED = false
end

return M