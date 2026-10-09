
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

SAFEHOUSE_KEY = "save"
ONE_TIME_KEY = "1t"

MAIN_MENU_CHOICES = {"1) Начать.", "2) Продолжить.", "3) Выход."}
MOVE_ON = {"1) Вперёд."}
SAFEHOUSE_CHOICES = {
		"0) [Выйти в главное меню]",
        "1) [Сохранить]",
        "2) [Статус]",
        "3) [Осмотр]",
        "4) [Назад]"}
