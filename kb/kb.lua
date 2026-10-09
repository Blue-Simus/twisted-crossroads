NOT_A_STATE = "not a state"

STORY_SWITCH = {
    ['intro'] = {"main menu"},
    ["main menu"] = {"very beginning", NOT_A_STATE, "options"},
    ['options'] = {"main menu"},

    ["very beginning"] = {"initial 1"},
    ["initial 1"] = {"initial 2"},
    ["initial 2"] = {"initial 3"},
    ["initial 3"] = {"initial 4"},
    ["initial 4"] = {"initial 5"},
    ["initial 5"] = {"initial 6"},
    ["initial 6"] = {"initial 7"},
    ["initial 7"] = {"start loc"},

    ["start loc"] = {"castle room", "castle window", "room closet 1", "base of tower"},
    ["castle room"] = {"start loc"},
    ["castle window"] = {"start loc"},
    ["room closet 1"] = {"room closet 2"},
    ["room closet 2"] = {"start loc"},
    ["base of tower"] = {"start loc", "castle corridor 1t"},
    ["castle corridor 1t"] = {"corridor of castle"},

    ["corridor of castle"] = {
		"throne door", 
		"ruling cabinet", 
		"castle library", 
		"castle forge", 
		"castle exit 1"},
    ["throne door"] = {"corridor of castle"},
    ["ruling cabinet"] = {"corridor of castle"},
    ["castle library"] = {"corridor of castle"},
    ["castle forge"] = {"corridor of castle"},

    ["castle exit 1"] = {"castle exit 2"},
    ["castle exit 2"] = {"castle outskirts 1t"},
    ["castle outskirts 1t"] = {"outskirts start"},

    ["outskirts start"] = {"outskirts what", "dark forest"},
    ["outskirts what"] = {"outskirts start"},

    ["dark forest"] = {"dark swamp", "dark settlement"},
    ["dark swamp"] = {"dark settlement", "dark forest"},
    ["dark settlement"] = {"dark forest", "dark swamp", "dark settlement save"},
    
    ["dark settlement save 1t 1"] = {"dark settlement save 1t 2"},
    ["dark settlement save 1t 2"] = {"dark settlement save"},
    ["dark settlement save"] = {"dark settlement"}	
}

SWITCH_CONDITIONS = {
	["brunhilda safehouse met"] = false
}

MAIN_MENU_CHOICES = {"1) Начать.", "2) Продолжить.", "3) Выход."}
MOVE_ON = {"1) Вперёд."}
SAFEHOUSE_CHOICES = {
		"0) [Выйти в главное меню]",
        "1) [Сохранить]",
        "2) [Статус]",
        "3) [Осмотр]",
        "4) [Назад]"}

DIGITS = {
    ["1"]=true, 
    ["2"]=true, 
    ["3"]=true, 
    ["4"]=true, 
    ["5"]=true, 
    ["6"]=true, 
    ["7"]=true, 
    ["8"]=true, 
    ["9"]=true, 
    ["0"]=true}

function one_time_state_check(current_state, key_pressed)
	local next_state = STORY_SWITCH[current_state][tonumber(key_pressed)]
	if current_state == "dark settlement"  
		and key_pressed == "3"
		and not SWITCH_CONDITIONS['brunhilda safehouse met'] 
		then
		next_state = "dark settlement save 1t 1"
		SWITCH_CONDITIONS['brunhilda safehouse met'] = true
	end
	return next_state	
end

function get_new_state(current_state, key_pressed)
	local next_state = current_state
	local switch_res = STORY_SWITCH[current_state]
    if not switch_res == nil 
		and DIGITS[key_pressed] 
		and #switch_res > tonumber(key_pressed)
		then
		next_state = one_time_state_check(current_state, key_pressed) 
	end
	return next_state
end
