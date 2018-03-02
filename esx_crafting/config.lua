Config = {}
Config.Locale = 'en'
Config.EnableHotkey = false

Config.Craftables = {
	
	screw = {
	
		Label = "Ruuvi",
		
		Require = {
			{ Name = "iron", Amount = 3 },
		},
		
		Reward = {Item = "screw", Count = 1, Type = 'item'},
		Time = 2000,
		Scenario = "WORLD_HUMAN_HAMMERING",
	}, 
	
	nail = {
	
		Label = "Naula",
		
		Require = {
			{ Name = "iron", Amount = 2 },
		},
		
		Reward = {Item = "nail", Count = 1, Type = 'item'},
		Time = 1000,
		Scenario = "WORLD_HUMAN_HAMMERING",
	}, 
	
	rope = {
	
		Label = "Naru",
		
		Require = {
			{ Name = "whool", Amount = 2 },
			{ Name = "fabric", Amount = 2 },
		},
		
		Reward = {Item = "rope", Count = 1, Type = 'item'},
		Time = 10000,
		Scenario = "WORLD_HUMAN_HAMMERING",
	}, 
	
	watch = {
	
		Label = "Rannekello",
		
		Require = {
			{ Name = "pointer", Amount = 2 },
			{ Name = "watch_frame", Amount = 1 },
			{ Name = "clothe", Amount = 1 },
			{ Name = "screw", Amount = 1 },
		},
		
		Reward = {Item = "watch", Count = 1 , Type = 'item'},
		Time = 10000,
		Scenario = "WORLD_HUMAN_HAMMERING",
	},
	
	c4 = {
	
		Label = "C4 Räjähde",
		
		Require = {
			{ Name = "fertilizer", Amount = 2 },
			{ Name = "emptybottle", Amount = 2 },
			{ Name = "lighter", Amount = 1 },
			{ Name = "wire", Amount = 3 },
			{ Name = "essence", Amount = 1 },
			{ Name = "watch", Amount = 1},
			{ Name = "ducttape", Amount = 1},
			{ Name = "screw", Amount = 4},
		},
		
		Reward = {Item = "c4", Count = 1 , Type = 'item'},
		Time = 30000,
		Scenario = "WORLD_HUMAN_WELDING",
	},
	
	juicedrink = {
	
		Label = "Mehu",
		
		Require = {
			{ Name = "water", Amount = 3 },
			{ Name = "juice", Amount = 1 },
		},
		
		Reward = {Item = "juicedrink", Count = 3 , Type = 'item'},
		Time = 2000,
		Scenario = "PROP_HUMAN_BBQ",
	},
	
	juicedrink2 = {
	
		Label = "Vauhtihirmu",
		
		Require = {
			{ Name = "water", Amount = 4 },
			{ Name = "juice", Amount = 1 },
			{ Name = "sugar", Amount = 1 },
		},
		
		Reward = {Item = "juicedrink2", Count = 4 , Type = 'item'},
		Time = 2000,
		Scenario = "PROP_HUMAN_BBQ",
	},
	
	healkit = {
	
		Label = "Lääkepakkaus",
		
		Require = {
			{ Name = "cutted_wood", Amount = 2 },
			{ Name = "painkiller", Amount = 1 },
			{ Name = "toiletpaper", Amount = 4 },
			{ Name = "salt", Amount = 1 },
			{ Name = "nail", Amount = 3 },
		},
		
		Reward = {Item = "hm_medikit", Count = 1 , Type = 'item'},
		Time = 7000,
		Scenario = "WORLD_HUMAN_HAMMERING",
	},
	
	bandage = {
		
		Label = "Side",
		
		Require = {
			{ Name = "toiletpaper", Amount = 4 },
			{ Name = "salt", Amount = 1 },
		},
		
		Reward = {Item = "bandage", Count = 1 , Type = 'item'},
		Time = 5000,
		Scenario = "WORLD_HUMAN_HAMMERING",
	
	},
	
	pizza = {
	
		Label = "Kotitekoinen Pizza",
		
		Require = {
			{ Name = "dough", Amount = 1 },
			{ Name = "fish", Amount = 3 },
			{ Name = "cheese", Amount = 4 },
			{ Name = "salt", Amount = 1 },
			{ Name = "lighter", Amount = 1 },
		},
		
		Reward = {Item = "hm_pizza", Count = 1 , Type = 'item'},
		Time = 17000,
		Scenario = "PROP_HUMAN_BBQ",
	},
	
	nakkikeitto = {
	
		Label = "Nakkikeitto",
		
		Require = {
			{ Name = "sausage", Amount = 1 },
			{ Name = "potato", Amount = 4 },
			{ Name = "plate1", Amount = 1 },
			{ Name = "water", Amount = 1 },
		},
		
		Reward = {Item = "hm_food1", Count = 1, Type = 'item'},
		Time = 14000,
		Scenario = "PROP_HUMAN_BBQ",
	},
	
	strongbrew = {
	
		Label = "Kilju",
		
		Require = {
			{ Name = "water", Amount = 5 },
			{ Name = "yeast", Amount = 4 },
			{ Name = "emptybottleglass", Amount = 1 },
			{ Name = "sugar", Amount = 5 },
		},
		
		Reward = {Item = "strongbrew", Count = 1 , Type = 'item'},
		Time = 14000,
		Scenario = "PROP_HUMAN_BBQ",
	},
	
	parachute = {
	
		Label = "Laskuvarjo",
		
		Require = {
			{ Name = "unpacked_chute", Amount = 1},
		},
		
		Reward = {Item = "GADGET_PARACHUTE", Count = 1 , Type = 'weapon'},
		Time = 25000,
		Scenario = "PROP_HUMAN_BUM_BIN",
	},
	
	molotov = {
	
		Label = "Molotov",
		
		Require = {
			{ Name = "toiletpaper", Amount = 5},
			{ Name = "essence", Amount = 3},
			{ Name = "petrol", Amount = 1},
			{ Name = "emptybottleglass", Amount = 1},
			{ Name = "lighter", Amount = 1},
		},
		
		Reward = {Item = "WEAPON_MOLOTOV", Count = 1 , Type = 'weapon'},
		Time = 20000,
		Scenario = "WORLD_HUMAN_STAND_IMPATIENT",
	},
	
	axe = {
	
		Label = "Kirves",
		
		Require = {
			{ Name = "cutted_wood", Amount = 1},
			{ Name = "rope", Amount = 2},
			{ Name = "iron", Amount = 5},
			{ Name = "nail", Amount = 3},
		},
		
		Reward = {Item = "WEAPON_BATTLEAXE", Count = 1 , Type = 'weapon'},
		Time = 20000,
		Scenario = "WORLD_HUMAN_HAMMERING",
	},
	
	pipebomb = {
	
		Label = "Putkipommi",
		
		Require = {
			{ Name = "emptybottle", Amount = 1},
			{ Name = "copper", Amount = 8},
			{ Name = "wire", Amount = 3},
			{ Name = "ducttape", Amount = 1},
			{ Name = "iron", Amount = 5},
			{ Name = "radio", Amount = 1},
			{ Name = "fertilizer", Amount = 2},
			{ Name = "essence", Amount = 9},
			{ Name = "petrol", Amount = 3},
			{ Name = "emptycan", Amount = 1},
			{ Name = "battery", Amount = 1},
		},
		
		Reward = {Item = "WEAPON_PIPEBOMB", Count = 1 , Type = 'weapon'},
		Time = 20000,
		Scenario = "WORLD_HUMAN_WELDING",
	},
	
	silencer = {
	
		Label = "Äänenvaimennin",
		
		Require = {
			{ Name = "emptycan", Amount = 1},
			{ Name = "whool", Amount = 1},
			{ Name = "ducttape", Amount = 1},
			{ Name = "iron", Amount = 5},
		},
		
		Reward = {Item = "silencieux", Count = 1 , Type = 'item'},
		Time = 20000,
		Scenario = "WORLD_HUMAN_WELDING",
	},
	
	grip = {
	
		Label = "Aseen kahva",
		
		Require = {
			{ Name = "cutted_wood", Amount = 1},
			{ Name = "whool", Amount = 1},
			{ Name = "ducttape", Amount = 1},
			{ Name = "screw", Amount = 2},
			{ Name = "iron", Amount = 5},
		},
		
		Reward = {Item = "grip", Count = 1 , Type = 'item'},
		Time = 20000,
		Scenario = "WORLD_HUMAN_HAMMERING",
	},
	
	flashlight = {
	
		Label = "Aseen taskulamppu",
		
		Require = {
			{ Name = "bulb", Amount = 1},
			{ Name = "ducttape", Amount = 1},
			{ Name = "screw", Amount = 2},
			{ Name = "battery", Amount = 2},
		},
		
		Reward = {Item = "flashlight", Count = 1 , Type = 'item'},
		Time = 20000,
		Scenario = "WORLD_HUMAN_WELDING",
	},
	
	gunskin = {
	
		Label = "Aseen skini",
		
		Require = {
			{ Name = "toiletpaper", Amount = 10},
			{ Name = "ducttape", Amount = 1},
			{ Name = "screw", Amount = 2},
			{ Name = "clothe", Amount = 5},
		},
		
		Reward = {Item = "yusuf", Count = 1 , Type = 'item'},
		Time = 20000,
		Scenario = "WORLD_HUMAN_HAMMERING",
	},
	
}
