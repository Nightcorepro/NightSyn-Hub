if game.PlaceId == 2753915549 then --Place ID for Sea1
    loadstring(game:HttpGet"https://raw.githubusercontent.com/Nightcorepro/NightSyn-Hub/refs/heads/main/Sea1.lua")()
elseif game.PlaceId == 79091703265657 then --Place ID for Sea2
    return
elseif game.PlaceId == 100117331123089 then --Place ID for Sea3
    return
else
    game.Players.LocalPlayer:Kick("This script is only for Blox Fruits")
    return
end
