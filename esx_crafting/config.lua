Config = {}
Config.Locale = 'en'
Config.Scenario = "WORLD_HUMAN_HAMMERING"

Config.Craftables = {
	
	rope = {
	
		Label = "Naru",
		
		Require = {
			{ Name = "whool", Amount = 2 },
			{ Name = "fabric", Amount = 2 },
		},
		
		Reward = {Item = "rope", Count = 1 },
		Time = 10000,
	}, 
	
	watch = {
	
		Label = "Rannekello",
		
		Require = {
			{ Name = "pointer", Amount = 2 },
			{ Name = "watch_frame", Amount = 2 },
			{ Name = "clothe", Amount = 1 },
		},
		
		Reward = {Item = "watch", Count = 1 },
		Time = 10000,
	},
	
	c4 = {
	
		Label = "C4 Räjähde",
		
		Require = {
			{ Name = "fertilizer", Amount = 3 },
			{ Name = "emptybottle", Amount = 2 },
			{ Name = "lighter", Amount = 1 },
			{ Name = "wire", Amount = 3 },
			{ Name = "watch", Amount = 1},
			{ Name = "ducttape", Amount = 1},
		},
		
		Reward = {Item = "c4", Count = 1 },
		Time = 30000,
	},
	
	juicedrink = {
	
		Label = "Mehu",
		
		Require = {
			{ Name = "water", Amount = 3 },
			{ Name = "juice", Amount = 1 },
		},
		
		Reward = {Item = "juicedrink", Count = 3 },
		Time = 2000,
	},
	
	juicedrink2 = {
	
		Label = "Vauhtihirmu",
		
		Require = {
			{ Name = "water", Amount = 4 },
			{ Name = "juice", Amount = 1 },
			{ Name = "sugar", Amount = 1 },
		},
		
		Reward = {Item = "juicedrink2", Count = 4 },
		Time = 2000,
	},
	
	healkit = {
	
		Label = "Lääkepakkaus",
		
		Require = {
			{ Name = "cutted_wood", Amount = 2 },
			{ Name = "painkiller", Amount = 1 },
			{ Name = "toiletpaper", Amount = 4 },
			{ Name = "salt", Amount = 1 },
		},
		
		Reward = {Item = "hm_medikit", Count = 1 },
		Time = 7000,
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
		
		Reward = {Item = "hm_pizza", Count = 1 },
		Time = 17000,
	},
	
	nakkikeitto = {
	
		Label = "Nakkikeitto",
		
		Require = {
			{ Name = "sausage", Amount = 1 },
			{ Name = "potato", Amount = 4 },
			{ Name = "plate1", Amount = 1 },
			{ Name = "water", Amount = 1 },
		},
		
		Reward = {Item = "hm_food1", Count = 1 },
		Time = 14000,
	},
	
}
