ESX = exports['es_extended']:getSharedObject()
IsAnimated = false

RegisterNetEvent('idrp_uwu:UseItem', function(itemName)
	local ped = GetPlayerPed(-1)
	for _, v in pairs(Config.Models) do
		if v.prop == itemName then
			Prop_name = v.prop
			if DoesEntityExist(ped) and not IsEntityDead(ped) then
				if IsPedOnFoot(ped) then
					if IsAnimated == false then
						IsAnimated = true

						if v.type == 'drink' then
							local animdict = 'amb@world_human_drinking@coffee@male@idle_a'
							local anim = 'idle_c'
							while (not HasAnimDictLoaded(animdict)) do
								RequestAnimDict(animdict)
								Wait(1)
							end
							RequestModel(Prop_name)
							TaskPlayAnim(ped, animdict, anim, 8.0, -8.0, -1, 49, 0.0, false, false, false)
							local x,y,z = table.unpack(GetEntityCoords(ped))
							local uwuItem = CreateObject(GetHashKey(Prop_name), x, y, z + 0.2, true, true, true)
							AttachEntityToEntity(uwuItem, ped, GetPedBoneIndex(ped, v.bone), v.x, v.y, v.z, v.xr, v.yr, v.zr, true, true, false, true, 1, true)
							Citizen.Wait(14000)
							IsAnimated = false
							DeleteObject(uwuItem)
							ClearPedSecondaryTask(ped)

						elseif v.type == 'plate' then
							Prop_name = v.prop2							--right hand single item
							Prop_name2 = v.prop							--left hand plate
							local animdict = 'anim@scripted@island@special_peds@pavel@hs4_pavel_ig5_caviar_p1'
							local anim = 'base_idle'
							local x, y, z = table.unpack(GetEntityCoords(ped))
							local x2, y2, z2 = table.unpack(GetEntityCoords(ped))
							while (not HasAnimDictLoaded(animdict)) do
								RequestAnimDict(animdict)
								Wait(1)
							end
							--right hand single item
							local uwuItem = CreateObject(GetHashKey(Prop_name), x, y, z + 0.2, true, true, true)
							--left hand plate
							local uwuItem2 = CreateObject(GetHashKey(Prop_name2), x2, y2, z2 + 0.2, true, true, true)
							--right hand single item
							AttachEntityToEntity(uwuItem, ped, GetPedBoneIndex(ped, v.bone2), v.x2, v.y2, v.z2, v.xr2, v.yr2, v.zr2, true, true, false, true, 1, true)
							--left hand plate
							AttachEntityToEntity(uwuItem2, ped, GetPedBoneIndex(ped, v.bone), v.x, v.y, v.z, v.xr, v.yr, v.zr, true, true, false, true, 1, true)
							RequestModel(Prop_name)
							RequestModel(Prop_name2)
							TaskPlayAnim(ped, animdict, anim, 8.0, -8.0, -1, 49, 0.0, false, false, false)
							Citizen.Wait(14000)
							IsAnimated = false
							DeleteObject(uwuItem)
							DeleteObject(uwuItem2)
							ClearPedSecondaryTask(ped)

						elseif v.type == 'hand' then
							local animdict = 'mp_player_inteat@burger'
							local anim = 'mp_player_int_eat_burger'
							while (not HasAnimDictLoaded(animdict)) do
								RequestAnimDict(animdict)
								Wait(1)
							end
							RequestModel(Prop_name)
							TaskPlayAnim(ped, animdict, anim, 8.0, -8.0, -1, 49, 0.0, false, false, false)
							local x,y,z = table.unpack(GetEntityCoords(ped))
							local uwuItem = CreateObject(GetHashKey(Prop_name), x, y, z + 0.2, true, true, true)
							AttachEntityToEntity(uwuItem, ped, GetPedBoneIndex(ped, v.bone), v.x, v.y, v.z, v.xr, v.yr, v.zr, true, true, false, true, 1, true)
							Citizen.Wait(14000)
							IsAnimated = false
							DeleteObject(uwuItem)
							ClearPedSecondaryTask(ped)

						elseif v.type == 'hands' then
							local animdict = 'amb@world_human_seat_wall_eating@male@both_hands@idle_a'
							local anim = 'idle_c'
							while (not HasAnimDictLoaded(animdict)) do
								RequestAnimDict(animdict)
								Wait(1)
							end
							RequestModel(Prop_name)
							TaskPlayAnim(ped, animdict, anim, 8.0, -8.0, -1, 49, 0.0, false, false, false)
							local x,y,z = table.unpack(GetEntityCoords(ped))
							local uwuItem = CreateObject(GetHashKey(Prop_name), x, y, z + 0.2, true, true, true)
							AttachEntityToEntity(uwuItem, ped, GetPedBoneIndex(ped, v.bone), v.x, v.y, v.z, v.xr, v.yr, v.zr, true, true, false, true, 1, true)
							Citizen.Wait(14000)
							IsAnimated = false
							DeleteObject(uwuItem)
							ClearPedSecondaryTask(ped)
						end
					end
				end
			end
		end
	end
end)