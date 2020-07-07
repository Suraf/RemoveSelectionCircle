-- from https://www.mmo-champion.com/threads/2033138-Self-targeting-floor-circle?p=41527606&viewfull=1#post41527606
-- credits to Ketho (thanks)
-- modified to apply to the target (remove the selection circle from the NPCs) to take better screenshots for Wowpedia

-- todo: add options

local f = CreateFrame("Frame")

function f:OnEvent(event)
	SetCVar("ObjectSelectionCircle", UnitIsUnit("target", "target") and 0 or 1)
end

f:RegisterEvent("PLAYER_TARGET_CHANGED")
f:SetScript("OnEvent", f.OnEvent)