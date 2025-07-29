## Cr�ditos

- Baseado no framework [vRP](https://github.com/ImagicTheCat/vRP) criado por **ImagicTheCat**
- Efeito visual "scr_clown_death" extra�do do pr�prio GTA V
- Adapta��es, comando e customiza��es feitos pelo vander1000
    
RegisterCommand('nc',function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"chefadmin.permissao") or vRP.hasPermission(user_id,"Funda.permissao") then
        vRPclient.toggleNoclip(source)
        TriggerClientEvent('efeitinhoveipodi',source)
    end
end)
--- client 

RegisterNetEvent('efeitinhoveipodi')
AddEventHandler('efeitinhoveipodi',function()
    local x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(-1)))
    local particleDictionary = "scr_rcbarry2"
    local particleName = "scr_clown_death"
    RequestNamedPtfxAsset(particleDictionary)
    while not HasNamedPtfxAssetLoaded(particleDictionary) do
    Citizen.Wait(0)
    end
    SetPtfxAssetNextCall(particleDictionary)
    local effect = StartParticleFxLoopedOnPedBone("scr_clown_death",v,0.0,0.0,-0.6,0.0,0.0,20.0,GetPedBoneIndex(v,11816),2.0,false,false,false)
end)
