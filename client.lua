local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
falldevs = Tunnel.getInterface("lavagem",falldevs)



Citizen.CreateThread( function()
	while true do
		Citizen.Wait(1)
		for _,mark in pairs(config.locais) do
			local x,y,z = table.unpack(mark)
			local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),x,y,z,true)
			local ped = PlayerPedId()
			if distance <= 2.0  then 	
				if IsControlJustPressed(0,38) then
					if falldevs.sexo() then
					if falldevs.lavarsexu() then
				end
			end
		end
	end
end 
end 
end)



Citizen.CreateThread(function()
    for k,v in pairs(config.npcs) do
        RequestModel(GetHashKey(v.hash2))
        while not HasModelLoaded(GetHashKey(v.hash2)) do
            Citizen.Wait(10)
        end

        local ped = CreatePed(4,v.hash,v.x,v.y,v.z-1,v.h,false,true)
        FreezeEntityPosition(ped,true)
        SetEntityInvincible(ped,true)
        SetBlockingOfNonTemporaryEvents(ped,true)
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- DRAWTEXT3D
-----------------------------------------------------------------------------------------------------------------------------------------
DrawText3D = function (x,y,z,text)
	SetTextFont(4)
	SetTextCentre(1)
	SetTextEntry("STRING")
	SetTextScale(0.35,0.35)
	SetTextColour(255,255,255,150)
	AddTextComponentString(text)
	SetDrawOrigin(x,y,z,0)
	DrawText(0.0,0.0)
	local factor = (string.len(text) / 450) + 0.01
	DrawRect(0.0,0.0125,factor,0.03,40,36,52,240)
	ClearDrawOrigin()
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADHOVERFY DEPARTAMENTO
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	local innerTable = {}
	for k,v in pairs(config.locais) do
		table.insert(innerTable,{ v[1],v[2],v[3],2,"E","Lavagem","Pressione para lavar" })
	end

	TriggerEvent("hoverfy:insertTable",innerTable)
end)


