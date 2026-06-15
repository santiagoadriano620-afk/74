local mType = Game.createMonsterType("Bonelord's Phylactery")
local monster = {}

monster.description = "a bonelord's phylactery"
monster.experience = 0 -- unknown
monster.outfit = {
	lookTypeEx = 52466,
}

monster.health = 50000 -- nÃ£o confirmado
monster.maxHealth = 50000 -- nÃ£o confirmado
monster.race = "undead"
monster.corpse = 44831 -- nÃ£o confirmado
monster.speed = 0
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10,
}

monster.strategiesTarget = {
	nearest = 100, -- nÃ£o confirmado
}

monster.flags = {
	summonable = false, -- nÃ£o confirmado
	attackable = true, -- nÃ£o confirmado
	hostile = true, -- nÃ£o confirmado
	convinceable = false, -- nÃ£o confirmado
	pushable = false, -- nÃ£o confirmado
	rewardBoss = false, -- nÃ£o confirmado
	illusionable = false, -- nÃ£o confirmado
	canPushItems = false, -- nÃ£o confirmado
	canPushCreatures = false, -- nÃ£o confirmado
	staticAttackChance = 90, -- nÃ£o confirmado
	targetDistance = 1, -- nÃ£o confirmado
	runHealth = 0, -- nÃ£o confirmado
	healthHidden = false, -- nÃ£o confirmado
	isBlockable = false, -- nÃ£o confirmado
	canWalkOnEnergy = true, -- nÃ£o confirmado
	canWalkOnFire = true, -- nÃ£o confirmado
	canWalkOnPoison = true, -- nÃ£o confirmado
}

monster.light = {
	level = 0, -- nÃ£o confirmado
	color = 0, -- nÃ£o confirmado
}

monster.loot = {
	{ name = "crystal coin", chance = 100000, maxCount = 49 }, -- nÃ£o confirmado (chance)
	{ name = "blue gem", chance = 100000, maxCount = 3 }, -- nÃ£o confirmado (chance)
	{ id = 3039, chance = 100000, maxCount = 8 }, -- red gem (nÃ£o confirmado (chance))
	{ name = "yellow gem", chance = 100000, maxCount = 9 }, -- nÃ£o confirmado (chance)
	{ name = "giant ruby", chance = 100000, maxCount = 2 }, -- nÃ£o confirmado (chance)
	{ name = "guardian gem", chance = 100000 }, -- nÃ£o confirmado (chance)
	{ name = "marksman gem", chance = 100000 }, -- nÃ£o confirmado (chance)
	{ name = "mystic gem", chance = 100000 }, -- nÃ£o confirmado (chance)
	{ name = "sage gem", chance = 100000 }, -- nÃ£o confirmado (chance)
	{ name = "spiritualist gem", chance = 100000 }, -- nÃ£o confirmado (chance)
	{ name = "greater guardian gem", chance = 100000 }, -- nÃ£o confirmado (chance)
	{ name = "greater marksman gem", chance = 100000 }, -- nÃ£o confirmado (chance)
	{ name = "greater mystic gem", chance = 100000 }, -- nÃ£o confirmado (chance)
	{ name = "greater sage gem", chance = 100000 }, -- nÃ£o confirmado (chance)
	{ name = "greater spiritualist gem", chance = 100000 }, -- nÃ£o confirmado (chance)
	{ name = "small flask of eyedrops", chance = 100000 }, -- nÃ£o confirmado (chance)
	{ name = "bonelord eye", chance = 100000 }, -- nÃ£o confirmado (chance)
	{ id = 6299, chance = 100000 }, -- death ring (nÃ£o confirmado (chance))
	{ name = "haunted blade", chance = 100000 }, -- nÃ£o confirmado (chance)
	{ name = "bonelord shield", chance = 100000 }, -- nÃ£o confirmado (chance)
	{ name = "skull helmet", chance = 100000 }, -- nÃ£o confirmado (chance)
	-- { name = "bone spikes", chance = 100000 }, -- nÃ£o confirmado (chance)
	-- { name = "ancient scales", chance = 100000 }, -- nÃ£o confirmado (chance)
	-- { name = "soul trap", chance = 100000 }, -- nÃ£o confirmado (chance)
	-- { name = "necromantic crypt rune", chance = 100000 }, -- nÃ£o confirmado (chance)
}

monster.attacks = {
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_DEATHDAMAGE, minDamage = -800, maxDamage = -1200, radius = 5, effect = CONST_ME_MORTAREA, target = false }, -- nÃ£o confirmado
}

monster.defenses = {
	defense = 100, -- nÃ£o confirmado
	armor = 100, -- nÃ£o confirmado
	mitigation = 3.00, -- nÃ£o confirmado
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 }, -- nÃ£o confirmado
	{ type = COMBAT_MANADRAIN, percent = 0 }, -- nÃ£o confirmado
	{ type = COMBAT_DROWNDAMAGE, percent = 0 }, -- nÃ£o confirmado
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = 0 },
}

monster.immunities = {
	{ type = "paralyze", condition = true }, -- nÃ£o confirmado
	{ type = "outfit", condition = true }, -- nÃ£o confirmado
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = true }, -- nÃ£o confirmado
}

mType:register(monster)
