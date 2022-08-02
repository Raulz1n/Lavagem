local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
local Tools = module("vrp","lib/Tools")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
falldevs = {}
Tunnel.bindInterface("lavagem",falldevs)
local idgens = Tools.newIDGenerator()
local blips = {} 


-- funcao para lavar o dinheiro

function falldevs.lavarsexu()
	local source = source 
	local user_id = vRP.getUserId(source)
	local dinheiro  = vRP.prompt(source, "Insira a quantidade que deseja lavar:", "")
	if user_id then
			if parseInt(dinheiro) < parseInt(100000) then 
			--print(dinheiro)
			TriggerClientEvent("Notify",source,"negado","negado","Você precisa pelo menos de 100.000 $")
			return 
		end

		if parseInt(dinheiro) > parseInt(10000000) then 
			--print(dinheiro)
			TriggerClientEvent("Notify",source,"negado","negado","Você precisa colocar menos de 10.000.000 $")
			return 
		end
		
		if vRP.request(source,"Você tem certeza que deseja lavar <b>"..dinheiro.."</b> de dinheiro sujo à 50%?",30) then

		local dinheiroparareceber = math.floor(dinheiro/2*1.0) 
		

		if vRP.tryGetInventoryItem(user_id,"dinheirosujo",parseInt(dinheiro)) then

			vRP.giveMoney(user_id,parseInt(dinheiroparareceber)) 
			TriggerClientEvent("Notify",source,"sucesso","Sucesso","Você recebeu " ..dinheiroparareceber.. " obrigado pelos 50% ")
		else 
			TriggerClientEvent("Notify",source,"negado","negado","Dinheiro invalido")
		end
	end
end 
end

-- funcao para Checar se tem pessoas com set de lavagem online
 
function falldevs.sexo(madruga157)
	local source = source 
	local fac = vRP.getUsersByPermission("lavagem.permissao")

	if #fac == 0 then
		return true 
	else
		TriggerClientEvent('Notify',source, 'negado',"negado", 'existe pessoas encarregadas pela lavagem no momento')
		return false 
	end
end 

