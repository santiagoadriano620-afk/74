------------------------------------------------------------------------
-- Dark Rodo â€“ RevScript (NpcsHandler)
-- Converted from: Dark_Rodo.xml + runes.lua
------------------------------------------------------------------------

local npcType = Game.createNpcType("Dark Rodo")
npcType:outfit({lookType = 133, lookHead = 0, lookBody = 86, lookLegs = 0, lookFeet = 38, lookAddons = 1})
npcType:speechBubble(2) -- SPEECHBUBBLE_TRADE
npcType:health(100)
npcType:maxHealth(100)
npcType:walkInterval(2000)
npcType:walkSpeed(100)
npcType:spawnRadius(3)
npcType:defaultBehavior()

local handler = NpcsHandler("Dark Rodo")
handler:setGreetKeywords({"hi", "hello"})
handler:setFarewellKeywords({"bye", "farewell"})
handler:setFarewellResponse({"Farewell, |PLAYERNAME|!"})

local greet = handler:keyword(handler.greetWords)
greet:setGreetResponse({"Hello |PLAYERNAME|. I sell runes, potions, wands and rods."})

greet:keyword({"stuff", "wares", "offer"}):respond("Just ask me for a {trade} to see my offers.")

local trade = greet:keyword({"trade"})
trade:respond("Here is what I offer!")
trade:shop(1)

local vocItems = {[1] = 3074, [2] = 3066, [5] = 3074, [6] = 3066}

local firstItem = greet:keyword({"first rod", "first wand", "first"})
function firstItem:callback(npc, player, message, handler)
    local voc = player:getVocation():getId()
    if not vocItems[voc] then
        return false, "Sorry, you aren't a druid or a sorcerer."
    end
    if player:getStorageValue(PlayerStorageKeys.firstRod) ~= -1 then
        return false, "What? I have already gave you one {" .. ItemType(vocItems[voc]):getName() .. "}!"
    end
    return true, "So you ask me for a {" .. ItemType(vocItems[voc]):getName() .. "} to begin your adventure?"
end

local confirmFirst = firstItem:keyword("yes")
function confirmFirst:callback(npc, player, message, handler)
    local voc = player:getVocation():getId()
    if vocItems[voc] and player:getStorageValue(PlayerStorageKeys.firstRod) == -1 then
        player:addItem(vocItems[voc], 1)
        player:setStorageValue(PlayerStorageKeys.firstRod, 1)
        return true, "Here you are young adept, take care yourself."
    end
    return false, "I already gave you one!"
end

firstItem:keyword("no"):respond("Ok then.")

------------------------------------------------------------------------
-- Shop 1 â€“ All items
------------------------------------------------------------------------
local shop = NpcShop("Dark Rodo", 1)

-- Spellbook / lightwand
shop:addItem(3059, 150, 0)      -- spellbook
shop:addItem(3047, 400, 0)      -- magic lightwand

-- Potions
shop:addItem(266,  45, 0)       -- health potion
shop:addItem(268,  50, 0)       -- mana potion

-- Runes
shop:addItem(3147, 250, 0)      -- blank rune

-- Wands (buy / sell)

-- Rods (buy / sell)
