script_version("1.1")

local var_0_0 = require("lib.samp.events")
local var_0_1 = require("inicfg")

require("lib.moonloader")

local var_0_2 = require("moonloader").download_status
local var_0_3 = require("memory")

function main()
	while not isSampAvailable() do
		wait(3800)
	end

	sampfuncsLog(os.date("{FFFFFF}" .. "[%H:%M:%S] ") .. "{00B4FF}Recon v" .. thisScript().version .. "{55FF55} \xE7\xE0\xE3\xF0\xF3\xE6\xE5\xED{FFFFFF}.")

	if not doesDirectoryExist("moonloader/config") then
		createDirectory("moonloader/config")
	end

	Data = var_0_1.load({
		Settings = {
			ArSaintRoseN = " ",
			AdvGREENP = " ",
			AdvBLUEP = " ",
			ArSaintRoseP = " ",
			ArPhoenixP = " ",
			ArChandlerN = " ",
			AdvWHITEP = " ",
			AdvPURPLEP = " ",
			ArRedRockP = " ",
			AdvGREENN = " ",
			AdvREDN = " ",
			ArScottdaleP = " ",
			AdvCHOCOLATEN = " ",
			ArMesaN = " ",
			AdvREDP = " ",
			AdvBLUEN = " ",
			AdvSILVERN = " ",
			AdvPURPLEN = " ",
			ArTucsonN = " ",
			ArTucsonP = " ",
			AdvYELLOWP = " ",
			ArBrainburgN = " ",
			Activation = true,
			AdvCHOCOLATEP = " ",
			ArMesaP = " ",
			ArChandlerP = " ",
			ArPhoenixN = " ",
			ArBrainburgP = " ",
			ArRedRockN = " ",
			AdvYELLOWN = " ",
			AdvORANGEP = " ",
			ArScottdaleN = " ",
			AdvWHITEN = " ",
			AdvSILVERP = " ",
			AdvORANGEN = " "
		}
	}, "Recon")

	var_0_1.save(Data, "Recon")

	perezahod = false
	ArPhoenixN = {}
	ArPhoenixP = {}
	i = 1

	for iter_1_0 in Data.Settings.ArPhoenixN:gmatch("(%S+)") do
		ArPhoenixN[i] = iter_1_0
		i = i + 1
	end

	i = 1

	for iter_1_1 in Data.Settings.ArPhoenixP:gmatch("(%S+)") do
		ArPhoenixP[i] = iter_1_1
		i = i + 1
	end

	ArTucsonN = {}
	ArTucsonP = {}
	i = 1

	for iter_1_2 in Data.Settings.ArTucsonN:gmatch("(%S+)") do
		ArTucsonN[i] = iter_1_2
		i = i + 1
	end

	i = 1

	for iter_1_3 in Data.Settings.ArTucsonP:gmatch("(%S+)") do
		ArTucsonP[i] = iter_1_3
		i = i + 1
	end

	ArScottdaleN = {}
	ArScottdaleP = {}
	i = 1

	for iter_1_4 in Data.Settings.ArScottdaleN:gmatch("(%S+)") do
		ArScottdaleN[i] = iter_1_4
		i = i + 1
	end

	i = 1

	for iter_1_5 in Data.Settings.ArScottdaleP:gmatch("(%S+)") do
		ArScottdaleP[i] = iter_1_5
		i = i + 1
	end

	ArChandlerN = {}
	ArChandlerP = {}
	i = 1

	for iter_1_6 in Data.Settings.ArChandlerN:gmatch("(%S+)") do
		ArChandlerN[i] = iter_1_6
		i = i + 1
	end

	i = 1

	for iter_1_7 in Data.Settings.ArChandlerP:gmatch("(%S+)") do
		ArChandlerP[i] = iter_1_7
		i = i + 1
	end

	ArBrainburgN = {}
	ArBrainburgP = {}
	i = 1

	for iter_1_8 in Data.Settings.ArBrainburgN:gmatch("(%S+)") do
		ArBrainburgN[i] = iter_1_8
		i = i + 1
	end

	i = 1

	for iter_1_9 in Data.Settings.ArBrainburgP:gmatch("(%S+)") do
		ArBrainburgP[i] = iter_1_9
		i = i + 1
	end

	ArSaintRoseN = {}
	ArSaintRoseP = {}
	i = 1

	for iter_1_10 in Data.Settings.ArSaintRoseN:gmatch("(%S+)") do
		ArSaintRoseN[i] = iter_1_10
		i = i + 1
	end

	i = 1

	for iter_1_11 in Data.Settings.ArSaintRoseP:gmatch("(%S+)") do
		ArSaintRoseP[i] = iter_1_11
		i = i + 1
	end

	ArMesaN = {}
	ArMesaP = {}
	i = 1

	for iter_1_12 in Data.Settings.ArMesaN:gmatch("(%S+)") do
		ArMesaN[i] = iter_1_12
		i = i + 1
	end

	i = 1

	for iter_1_13 in Data.Settings.ArMesaP:gmatch("(%S+)") do
		ArMesaP[i] = iter_1_13
		i = i + 1
	end

	ArRedRockN = {}
	ArRedRockP = {}
	i = 1

	for iter_1_14 in Data.Settings.ArRedRockN:gmatch("(%S+)") do
		ArRedRockN[i] = iter_1_14
		i = i + 1
	end

	i = 1

	for iter_1_15 in Data.Settings.ArRedRockP:gmatch("(%S+)") do
		ArRedRockP[i] = iter_1_15
		i = i + 1
	end

	AdvREDN = {}
	AdvREDP = {}
	i = 1

	for iter_1_16 in Data.Settings.AdvREDN:gmatch("(%S+)") do
		AdvREDN[i] = iter_1_16
		i = i + 1
	end

	i = 1

	for iter_1_17 in Data.Settings.AdvREDP:gmatch("(%S+)") do
		AdvREDP[i] = iter_1_17
		i = i + 1
	end

	AdvGREENN = {}
	AdvGREENP = {}
	i = 1

	for iter_1_18 in Data.Settings.AdvGREENN:gmatch("(%S+)") do
		AdvGREENN[i] = iter_1_18
		i = i + 1
	end

	i = 1

	for iter_1_19 in Data.Settings.AdvGREENP:gmatch("(%S+)") do
		AdvGREENP[i] = iter_1_19
		i = i + 1
	end

	AdvYELLOWN = {}
	AdvYELLOWP = {}
	i = 1

	for iter_1_20 in Data.Settings.AdvYELLOWN:gmatch("(%S+)") do
		AdvYELLOWN[i] = iter_1_20
		i = i + 1
	end

	i = 1

	for iter_1_21 in Data.Settings.AdvYELLOWP:gmatch("(%S+)") do
		AdvYELLOWP[i] = iter_1_21
		i = i + 1
	end

	AdvORANGEN = {}
	AdvORANGEP = {}
	i = 1

	for iter_1_22 in Data.Settings.AdvORANGEN:gmatch("(%S+)") do
		AdvORANGEN[i] = iter_1_22
		i = i + 1
	end

	i = 1

	for iter_1_23 in Data.Settings.AdvORANGEP:gmatch("(%S+)") do
		AdvORANGEP[i] = iter_1_23
		i = i + 1
	end

	AdvBLUEN = {}
	AdvBLUEP = {}
	i = 1

	for iter_1_24 in Data.Settings.AdvBLUEN:gmatch("(%S+)") do
		AdvBLUEN[i] = iter_1_24
		i = i + 1
	end

	i = 1

	for iter_1_25 in Data.Settings.AdvBLUEP:gmatch("(%S+)") do
		AdvBLUEP[i] = iter_1_25
		i = i + 1
	end

	AdvWHITEN = {}
	AdvWHITEP = {}
	i = 1

	for iter_1_26 in Data.Settings.AdvWHITEN:gmatch("(%S+)") do
		AdvWHITEN[i] = iter_1_26
		i = i + 1
	end

	i = 1

	for iter_1_27 in Data.Settings.AdvWHITEP:gmatch("(%S+)") do
		AdvWHITEP[i] = iter_1_27
		i = i + 1
	end

	AdvSILVERN = {}
	AdvSILVERP = {}
	i = 1

	for iter_1_28 in Data.Settings.AdvSILVERN:gmatch("(%S+)") do
		AdvSILVERN[i] = iter_1_28
		i = i + 1
	end

	i = 1

	for iter_1_29 in Data.Settings.AdvSILVERP:gmatch("(%S+)") do
		AdvSILVERP[i] = iter_1_29
		i = i + 1
	end

	AdvPURPLEN = {}
	AdvPURPLEP = {}
	i = 1

	for iter_1_30 in Data.Settings.AdvPURPLEN:gmatch("(%S+)") do
		AdvPURPLEN[i] = iter_1_30
		i = i + 1
	end

	i = 1

	for iter_1_31 in Data.Settings.AdvPURPLEP:gmatch("(%S+)") do
		AdvPURPLEP[i] = iter_1_31
		i = i + 1
	end

	AdvCHOCOLATEP = {}
	AdvCHOCOLATEN = {}
	i = 1

	for iter_1_32 in Data.Settings.AdvCHOCOLATEN:gmatch("(%S+)") do
		AdvCHOCOLATEN[i] = iter_1_32
		i = i + 1
	end

	i = 1

	for iter_1_33 in Data.Settings.AdvCHOCOLATEP:gmatch("(%S+)") do
		AdvCHOCOLATEP[i] = iter_1_33
		i = i + 1
	end

	Dialog = lua_thread.create_suspended(DialogFunc)
	FUNC = lua_thread.create(func)

	sampRegisterChatCommand("recon", RECON)
	sampRegisterChatCommand("updrecon", UpdRecon)
	update()

	while update ~= false do
		wait(100)
	end
end

function func()
	while true do
		wait(0)
		var_0_3.fill(sampGetBase() + 2964549, 0, 2, true)

		ip, p = sampGetCurrentServerAddress()

		if ip == "185.169.134.3" and sampIsDialogActive() and sampGetCurrentDialogId() == 2 then
			_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)
			Nick = sampGetPlayerNickname(id)

			for iter_2_0 = 1, #ArPhoenixN do
				if Nick == ArPhoenixN[iter_2_0] then
					sampSetCurrentDialogEditboxText(ArPhoenixP[iter_2_0])
					sampCloseCurrentDialogWithButton(1)
				end
			end
		end

		if ip == "185.169.134.4" and sampIsDialogActive() and sampGetCurrentDialogId() == 2 then
			_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)
			Nick = sampGetPlayerNickname(id)

			for iter_2_1 = 1, #ArTucsonN do
				if Nick == ArTucsonN[iter_2_1] then
					sampSetCurrentDialogEditboxText(ArTucsonP[iter_2_1])
					sampCloseCurrentDialogWithButton(1)
				end
			end
		end

		if ip == "185.169.134.43" and sampIsDialogActive() and sampGetCurrentDialogId() == 2 then
			_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)
			Nick = sampGetPlayerNickname(id)

			for iter_2_2 = 1, #ArScottdaleN do
				if Nick == ArScottdaleN[iter_2_2] then
					sampSetCurrentDialogEditboxText(ArScottdaleP[iter_2_2])
					sampCloseCurrentDialogWithButton(1)
				end
			end
		end

		if ip == "185.169.134.44" and sampIsDialogActive() and sampGetCurrentDialogId() == 2 then
			_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)
			Nick = sampGetPlayerNickname(id)

			for iter_2_3 = 1, #ArChandlerN do
				if Nick == ArChandlerN[iter_2_3] then
					sampSetCurrentDialogEditboxText(ArChandlerP[iter_2_3])
					sampCloseCurrentDialogWithButton(1)
				end
			end
		end

		if ip == "185.169.134.45" and sampIsDialogActive() and sampGetCurrentDialogId() == 2 then
			_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)
			Nick = sampGetPlayerNickname(id)

			for iter_2_4 = 1, #ArBrainburgN do
				if Nick == ArBrainburgN[iter_2_4] then
					sampSetCurrentDialogEditboxText(ArBrainburgP[iter_2_4])
					sampCloseCurrentDialogWithButton(1)
				end
			end
		end

		if ip == "185.169.134.5" and sampIsDialogActive() and sampGetCurrentDialogId() == 2 then
			_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)
			Nick = sampGetPlayerNickname(id)

			for iter_2_5 = 1, #ArSaintRoseN do
				if Nick == ArSaintRoseN[iter_2_5] then
					sampSetCurrentDialogEditboxText(ArSaintRoseP[iter_2_5])
					sampCloseCurrentDialogWithButton(1)
				end
			end
		end

		if ip == "185.169.134.59" and sampIsDialogActive() and sampGetCurrentDialogId() == 2 then
			_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)
			Nick = sampGetPlayerNickname(id)

			for iter_2_6 = 1, #ArMesaN do
				if Nick == ArMesaN[iter_2_6] then
					sampSetCurrentDialogEditboxText(ArMesaP[iter_2_6])
					sampCloseCurrentDialogWithButton(1)
				end
			end
		end

		if ip == "185.169.134.61" and sampIsDialogActive() and sampGetCurrentDialogId() == 2 then
			_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)
			Nick = sampGetPlayerNickname(id)

			for iter_2_7 = 1, #ArRedRockN do
				if Nick == ArRedRockN[iter_2_7] then
					sampSetCurrentDialogEditboxText(ArRedRockP[iter_2_7])
					sampCloseCurrentDialogWithButton(1)
				end
			end
		end

		if ip == "5.254.104.131" and sampIsDialogActive() and sampGetCurrentDialogId() == 1 then
			_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)
			Nick = sampGetPlayerNickname(id)

			for iter_2_8 = 1, #AdvREDN do
				if Nick == AdvREDN[iter_2_8] then
					sampSetCurrentDialogEditboxText(AdvREDP[iter_2_8])
					sampCloseCurrentDialogWithButton(1)
				end
			end
		end

		if ip == "5.254.104.132" and sampIsDialogActive() and sampGetCurrentDialogId() == 1 then
			_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)
			Nick = sampGetPlayerNickname(id)

			for iter_2_9 = 1, #AdvGREENN do
				if Nick == AdvGREENN[iter_2_9] then
					sampSetCurrentDialogEditboxText(AdvGREENP[iter_2_9])
					sampCloseCurrentDialogWithButton(1)
				end
			end
		end

		if ip == "5.254.104.133" and sampIsDialogActive() and sampGetCurrentDialogId() == 1 then
			_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)
			Nick = sampGetPlayerNickname(id)

			for iter_2_10 = 1, #AdvYELLOWN do
				if Nick == AdvYELLOWN[iter_2_10] then
					sampSetCurrentDialogEditboxText(AdvYELLOWP[iter_2_10])
					sampCloseCurrentDialogWithButton(1)
				end
			end
		end

		if ip == "5.254.104.134" and sampIsDialogActive() and sampGetCurrentDialogId() == 1 then
			_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)
			Nick = sampGetPlayerNickname(id)

			for iter_2_11 = 1, #AdvORANGEN do
				if Nick == AdvORANGEN[iter_2_11] then
					sampSetCurrentDialogEditboxText(AdvORANGEP[iter_2_11])
					sampCloseCurrentDialogWithButton(1)
				end
			end
		end

		if ip == "5.254.104.135" and sampIsDialogActive() and sampGetCurrentDialogId() == 1 then
			_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)
			Nick = sampGetPlayerNickname(id)

			for iter_2_12 = 1, #AdvBLUEN do
				if Nick == AdvBLUEN[iter_2_12] then
					sampSetCurrentDialogEditboxText(AdvBLUEP[iter_2_12])
					sampCloseCurrentDialogWithButton(1)
				end
			end
		end

		if ip == "5.254.104.136" and sampIsDialogActive() and sampGetCurrentDialogId() == 1 then
			_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)
			Nick = sampGetPlayerNickname(id)

			for iter_2_13 = 1, #AdvWHITEN do
				if Nick == AdvWHITEN[iter_2_13] then
					sampSetCurrentDialogEditboxText(AdvWHITEP[iter_2_13])
					sampCloseCurrentDialogWithButton(1)
				end
			end
		end

		if ip == "5.254.104.137" and sampIsDialogActive() and sampGetCurrentDialogId() == 1 then
			_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)
			Nick = sampGetPlayerNickname(id)

			for iter_2_14 = 1, #AdvSILVERN do
				if Nick == AdvSILVERN[iter_2_14] then
					sampSetCurrentDialogEditboxText(AdvSILVERP[iter_2_14])
					sampCloseCurrentDialogWithButton(1)
				end
			end
		end

		if ip == "5.254.104.138" and sampIsDialogActive() and sampGetCurrentDialogId() == 1 then
			_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)
			Nick = sampGetPlayerNickname(id)

			for iter_2_15 = 1, #AdvPURPLEN do
				if Nick == AdvPURPLEN[iter_2_15] then
					sampSetCurrentDialogEditboxText(AdvPURPLEP[iter_2_15])
					sampCloseCurrentDialogWithButton(1)
				end
			end
		end

		if ip == "5.254.104.139" and sampIsDialogActive() and sampGetCurrentDialogId() == 1 then
			_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)
			Nick = sampGetPlayerNickname(id)

			for iter_2_16 = 1, #AdvCHOCOLATEN do
				if Nick == AdvCHOCOLATEN[iter_2_16] then
					sampSetCurrentDialogEditboxText(AdvCHOCOLATEP[iter_2_16])
					sampCloseCurrentDialogWithButton(1)
				end
			end
		end

		if perezahod == true then
			if string.find(sampGetChatString(99), "Server closed the connection.") or string.find(sampGetChatString(99), "You are banned from this server.") or string.find(sampGetChatString(99), "Use /quit to exit or press ESC and select Quit Game") or sampGetChatString(98) == "The server didn't respond. Retrying.." or string.find(sampGetChatString(99), "Wrong server password.") then
				_, myId = sampGetPlayerIdByCharHandle(PLAYER_PED)
				nop = true
				ip, p = sampGetCurrentServerAddress()

				sampSetLocalPlayerName(sampGetPlayerNickname(myId))
				wait(1000)
				sampConnectToServer(ip, p)
			end

			if sampIsDialogActive() and sampGetCurrentDialogId() == 1 then
				_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)
				Nick = sampGetPlayerNickname(id)

				if Nick:lower() == string.lower(Data.Settings.nick) then
					sampSetCurrentDialogEditboxText(Data.Settings.password)
					sampCloseCurrentDialogWithButton(1)
				end
			end
		end
	end
end

function var_0_0.onRemoveBuilding()
	if nop then
		return false
	end
end

function RECON()
	Dialog:run()
end

function DialogFunc()
	::label_5_0::

	if Data.Settings.Activation then
		ActivationStr = "{55FF55}\xC2\xEA\xEB\xFE\xF7\xE5\xED"
	else
		ActivationStr = "{FF5555}\xC2\xFB\xEA\xEB\xFE\xF7\xE5\xED"
	end

	local var_5_0 = string.format("{F6DB6A}\xC0\xE2\xF2\xEE\xEB\xEE\xE3\xE8\xED:\t%s\n{F6DB6A}Reconnect\n{F6DB6A}Arizona RP [AutoLogin]\n{F6DB6A}Advance RP [AutoLogin]", ActivationStr)

	dialogId = 1000
	dialogButton = nil
	dialogListItem = nil
	dialogInput = nil
	dialogBool = false

	sampShowDialog(dialogId, "{00FA9A}GW Connect{FFD700} | {00FA9A}Steave Gross", var_5_0, "\xC2\xFB\xE1\xEE\xF0", "\xC2\xFB\xF5\xEE\xE4", 4)

	while not dialogBool do
		wait(0)

		dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
	end

	if dialogButton ~= 0 then
		if dialogListItem == 0 then
			if Data.Settings.Activation then
				Data.Settings.Activation = false
			else
				Data.Settings.Activation = true
			end

			var_0_1.save(Data, "Recon")

			goto label_5_0
		end

		if dialogListItem == 1 then
			::label_5_1::

			local var_5_1 = string.format("{F6DB6A}\xD0\xE5\xEA\xEE\xED\xED\xE5\xEA\xF2\n{F6DB6A}\xD0\xE5\xEA\xEE\xED\xED\xE5\xEA\xF2 \xF1\xEE \xF1\xEC\xE5\xED\xEE\xE9 \xED\xE8\xEA\xE0\n{F6DB6A}\xD0\xE5\xEA\xEE\xED\xED\xE5\xEA\xF2 \xED\xE0 \xE4\xF0\xF3\xE3\xEE\xE9 \xF1\xE5\xF0\xE2\xE5\xF0\n{F6DB6A}\xD0\xE5\xEA\xEE\xED\xED\xE5\xEA\xF2 \xED\xE0 \xE4\xF0\xF3\xE3\xEE\xE9 \xF1\xE5\xF0\xE2\xE5\xF0 \xF1\xEE \xF1\xEC\xE5\xED\xEE\xE9 \xED\xE8\xEA\xE0")

			dialogId = 1000
			dialogButton = nil
			dialogListItem = nil
			dialogInput = nil
			dialogBool = false

			sampShowDialog(dialogId, "{00FA9A}GW Connect{FFD700} | {00FA9A}Steave Gross", var_5_1, "\xC2\xFB\xE1\xEE\xF0", "\xC2\xFB\xF5\xEE\xE4", 4)

			while not dialogBool do
				wait(0)

				dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
			end

			if dialogButton ~= 0 then
				if dialogListItem == 0 then
					::label_5_2::

					local var_5_2 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xE2\xF0\xE5\xEC\xFF, \xF7\xE5\xF0\xE5\xE7 \xEA\xEE\xF2\xEE\xF0\xEE\xE5 \xED\xF3\xE6\xED\xEE \xEF\xE5\xF0\xE5\xE7\xE0\xE9\xF2\xE8.\n{F6DB6A}[0-20\xF1\xE5\xEA]\n"

					dialogId = 1003
					dialogButton = nil
					dialogListItem = nil
					dialogInput = nil
					dialogBool = false

					sampShowDialog(dialogId, "{FFFFFF}Reconnect.", var_5_2, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)
					sampSetCurrentDialogEditboxText("0")

					while not dialogBool do
						wait(0)

						dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
					end

					if dialogButton ~= 0 then
						if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%d+") then
							dialogInput = tonumber(string.match(dialogInput, "^%D*(%d+)%D*"))

							if dialogInput >= 0 and dialogInput <= 20 then
								dialogInput = dialogInput * 1000

								sampSetGamestate(0)
								wait(dialogInput)

								_, myId = sampGetPlayerIdByCharHandle(PLAYER_PED)
								nop = true
								ip, p = sampGetCurrentServerAddress()

								sampSetLocalPlayerName(sampGetPlayerNickname(myId))
								sampConnectToServer(ip, p)

								goto label_5_0
							elseif dialogInput > 20 then
								sampAddChatMessage(string.format("{00FA9A}[Recon]{ff5555} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xE7\xED\xE0\xF7\xE5\xED\xE8\xE5 \xEE\xF2 1 \xF1\xE5\xEA\xF3\xED\xE4\xFB \xE4\xEE 20 \xF1\xE5\xEA\xF3\xED\xE4."), 16733525)

								goto label_5_2
							end
						elseif dialogInput == "" then
							sampAddChatMessage(string.format("{00FA9A}[Recon]{ff5555} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xE7\xED\xE0\xF7\xE5\xED\xE8\xE5 \xEE\xF2 1 \xF1\xE5\xEA\xF3\xED\xE4\xFB \xE4\xEE 20 \xF1\xE5\xEA\xF3\xED\xE4."), 16733525)

							goto label_5_2
						end
					else
						goto label_5_1
					end
				end

				if dialogListItem == 1 then
					::label_5_3::

					local var_5_3 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA, \xF1 \xEA\xEE\xF2\xEE\xF0\xFB\xEC \xED\xF3\xE6\xED\xEE \xEF\xE5\xF0\xE5\xE7\xE0\xE9\xF2\xE8.\n"

					dialogId = 1004
					dialogButton = nil
					dialogListItem = nil
					dialogInput = nil
					dialogBool = false

					sampShowDialog(dialogId, "{FFFFFF}Reconnect \xF1\xEE \xF1\xEC\xE5\xED\xEE\xE9 \xED\xE8\xEA\xE0.", var_5_3, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)
					sampSetCurrentDialogEditboxText()

					while not dialogBool do
						wait(0)

						dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
					end

					if dialogButton ~= 0 then
						if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
							dialogInput = tostring(string.match(dialogInput, "(%S+)"))
							NickRec = dialogInput

							::label_5_4::

							local var_5_4 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xE2\xF0\xE5\xEC\xFF, \xF7\xE5\xF0\xE5\xE7 \xEA\xEE\xF2\xEE\xF0\xEE\xE5 \xED\xF3\xE6\xED\xEE \xEF\xE5\xF0\xE5\xE7\xE0\xE9\xF2\xE8.\n{F6DB6A}[0-20\xF1\xE5\xEA]\n"

							dialogId = 1005
							dialogButton = nil
							dialogListItem = nil
							dialogInput = nil
							dialogBool = false

							sampShowDialog(dialogId, "{FFFFFF}Reconnect \xF1\xEE \xF1\xEC\xE5\xED\xEE\xE9 \xED\xE8\xEA\xE0.", var_5_4, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)
							sampSetCurrentDialogEditboxText("0")

							while not dialogBool do
								wait(0)

								dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
							end

							if dialogButton ~= 0 then
								if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%d+") then
									dialogInput = tonumber(string.match(dialogInput, "^%D*(%d+)%D*"))

									if dialogInput >= 0 and dialogInput <= 20 then
										dialogInput = dialogInput * 1000

										sampSetGamestate(0)
										wait(dialogInput)

										nop = true
										ip, p = sampGetCurrentServerAddress()

										sampSetLocalPlayerName(NickRec)
										sampConnectToServer(ip, p)

										goto label_5_0
									elseif dialogInput > 20 then
										sampAddChatMessage(string.format("{00FA9A}[Recon]{ff5555} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xE7\xED\xE0\xF7\xE5\xED\xE8\xE5 \xEE\xF2 1 \xF1\xE5\xEA\xF3\xED\xE4\xFB \xE4\xEE 20 \xF1\xE5\xEA\xF3\xED\xE4."), 16733525)

										goto label_5_4
									end
								elseif dialogInput == "" then
									sampAddChatMessage(string.format("{00FA9A}[Recon]{ff5555} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xE7\xED\xE0\xF7\xE5\xED\xE8\xE5 \xEE\xF2 1 \xF1\xE5\xEA\xF3\xED\xE4\xFB \xE4\xEE 20 \xF1\xE5\xEA\xF3\xED\xE4."), 16733525)

									goto label_5_4
								end
							else
								goto label_5_3
							end
						else
							sampAddChatMessage(string.format("{00FA9A}[Recon]{ff5555} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA, \xF1 \xEA\xEE\xF2\xEE\xF0\xFB\xEC \xF5\xEE\xF2\xE8\xF2\xE5 \xEF\xE5\xF0\xE5\xE7\xE0\xE9\xF2\xE8 \xED\xE0 \xF1\xE5\xF0\xE2\xE5\xF0."), 16733525)

							goto label_5_3
						end
					else
						goto label_5_1
					end
				end

				if dialogListItem == 2 then
					::label_5_5::

					local var_5_5 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xF1\xE5\xF0\xE2\xE5\xF0, \xED\xE0 \xEA\xEE\xF2\xEE\xF0\xFB\xE9 \xED\xF3\xE6\xED\xEE \xEF\xE5\xF0\xE5\xE7\xE0\xE9\xF2\xE8.\n"

					dialogId = 1004
					dialogButton = nil
					dialogListItem = nil
					dialogInput = nil
					dialogBool = false

					sampShowDialog(dialogId, "{FFFFFF}Reconnect \xED\xE0 \xE4\xF0\xF3\xE3\xEE\xE9 \xF1\xE5\xF0\xE2\xE5\xF0.", var_5_5, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)
					sampSetCurrentDialogEditboxText()

					while not dialogBool do
						wait(0)

						dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
					end

					if dialogButton ~= 0 then
						if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%d+%.%d+%.%d+%.%d+%:%d") then
							dialogInput = tostring(string.match(dialogInput, "(%S+)"))
							ServerRec = dialogInput

							::label_5_6::

							local var_5_6 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xE2\xF0\xE5\xEC\xFF, \xF7\xE5\xF0\xE5\xE7 \xEA\xEE\xF2\xEE\xF0\xEE\xE5 \xED\xF3\xE6\xED\xEE \xEF\xE5\xF0\xE5\xE7\xE0\xE9\xF2\xE8.\n{F6DB6A}[0-20\xF1\xE5\xEA]\n"

							dialogId = 1005
							dialogButton = nil
							dialogListItem = nil
							dialogInput = nil
							dialogBool = false

							sampShowDialog(dialogId, "{FFFFFF}Reconnect \xED\xE0 \xE4\xF0\xF3\xE3\xEE\xE9 \xF1\xE5\xF0\xE2\xE5\xF0.", var_5_6, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)
							sampSetCurrentDialogEditboxText("0")

							while not dialogBool do
								wait(0)

								dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
							end

							if dialogButton ~= 0 then
								if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%d+") then
									dialogInput = tonumber(string.match(dialogInput, "^%D*(%d+)%D*"))

									if dialogInput >= 0 and dialogInput <= 20 then
										dialogInput = dialogInput * 1000

										sampSetGamestate(0)
										wait(dialogInput)

										_, myId = sampGetPlayerIdByCharHandle(PLAYER_PED)
										nop = true
										ip, p = sampGetCurrentServerAddress()

										sampSetLocalPlayerName(sampGetPlayerNickname(myId))
										sampConnectToServer(string.match(ServerRec, "(%S+)%:%S+"), string.match(ServerRec, "%S+%:(%S+)"))

										goto label_5_0
									elseif dialogInput > 20 then
										sampAddChatMessage(string.format("{00FA9A}[Recon]{ff5555} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xE7\xED\xE0\xF7\xE5\xED\xE8\xE5 \xEE\xF2 1 \xF1\xE5\xEA\xF3\xED\xE4\xFB \xE4\xEE 20 \xF1\xE5\xEA\xF3\xED\xE4."), 16733525)

										goto label_5_6
									end
								elseif dialogInput == "" then
									sampAddChatMessage(string.format("{00FA9A}[Recon]{ff5555} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xE7\xED\xE0\xF7\xE5\xED\xE8\xE5 \xEE\xF2 1 \xF1\xE5\xEA\xF3\xED\xE4\xFB \xE4\xEE 20 \xF1\xE5\xEA\xF3\xED\xE4."), 16733525)

									goto label_5_6
								end
							else
								goto label_5_5
							end
						elseif not string.find(dialogInput, "%d+%.%d+%.%d+%.%d+%:%d") then
							sampAddChatMessage(string.format("{00FA9A}[Recon]{ff5555} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 ip \xE2 \xF4\xEE\xF0\xEC\xE0\xF2\xE5 1.2.3.4:5555."), 16733525)

							goto label_5_5
						elseif dialogInput == nil then
							sampAddChatMessage(string.format("{00FA9A}[Recon]{ff5555} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 ip \xE0\xE4\xF0\xE5\xF1 \xF1\xE5\xF0\xE2\xE5\xF0\xE0."), 16733525)

							goto label_5_5
						end
					else
						goto label_5_1
					end
				end

				if dialogListItem == 3 then
					::label_5_7::

					local var_5_7 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA, \xF1 \xEA\xEE\xF2\xEE\xF0\xFB\xEC \xED\xF3\xE6\xED\xEE \xEF\xE5\xF0\xE5\xE7\xE0\xE9\xF2\xE8.\n"

					dialogId = 1004
					dialogButton = nil
					dialogListItem = nil
					dialogInput = nil
					dialogBool = false

					sampShowDialog(dialogId, "{FFFFFF}Reconnect \xED\xE0 \xE4\xF0\xF3\xE3\xEE\xE9 \xF1\xE5\xF0\xE2\xE5\xF0 \xF1\xEE \xF1\xEC\xE5\xED\xEE\xE9 \xED\xE8\xEA\xE0.", var_5_7, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)
					sampSetCurrentDialogEditboxText()

					while not dialogBool do
						wait(0)

						dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
					end

					if dialogButton ~= 0 then
						if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
							dialogInput = tostring(string.match(dialogInput, "(%S+)"))
							NickRec = dialogInput

							::label_5_8::

							local var_5_8 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xF1\xE5\xF0\xE2\xE5\xF0, \xED\xE0 \xEA\xEE\xF2\xEE\xF0\xFB\xE9 \xED\xF3\xE6\xED\xEE \xEF\xE5\xF0\xE5\xE7\xE0\xE9\xF2\xE8.\n"

							dialogId = 1004
							dialogButton = nil
							dialogListItem = nil
							dialogInput = nil
							dialogBool = false

							sampShowDialog(dialogId, "{FFFFFF}Reconnect \xED\xE0 \xE4\xF0\xF3\xE3\xEE\xE9 \xF1\xE5\xF0\xE2\xE5\xF0 \xF1\xEE \xF1\xEC\xE5\xED\xEE\xE9 \xED\xE8\xEA\xE0.", var_5_8, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)
							sampSetCurrentDialogEditboxText()

							while not dialogBool do
								wait(0)

								dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
							end

							if dialogButton ~= 0 then
								if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%d+%.%d+%.%d+%.%d+%:%d") then
									dialogInput = tostring(string.match(dialogInput, "(%S+)"))
									ServerRec = dialogInput

									::label_5_9::

									local var_5_9 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xE2\xF0\xE5\xEC\xFF, \xF7\xE5\xF0\xE5\xE7 \xEA\xEE\xF2\xEE\xF0\xEE\xE5 \xED\xF3\xE6\xED\xEE \xEF\xE5\xF0\xE5\xE7\xE0\xE9\xF2\xE8.\n{F6DB6A}[0-20\xF1\xE5\xEA]\n"

									dialogId = 1006
									dialogButton = nil
									dialogListItem = nil
									dialogInput = nil
									dialogBool = false

									sampShowDialog(dialogId, "{FFFFFF}Reconnect \xED\xE0 \xE4\xF0\xF3\xE3\xEE\xE9 \xF1\xE5\xF0\xE2\xE5\xF0 \xF1\xEE \xF1\xEC\xE5\xED\xEE\xE9 \xED\xE8\xEA\xE0.", var_5_9, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)
									sampSetCurrentDialogEditboxText("0")

									while not dialogBool do
										wait(0)

										dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
									end

									if dialogButton ~= 0 then
										if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%d+") then
											dialogInput = tonumber(string.match(dialogInput, "^%D*(%d+)%D*"))

											if dialogInput >= 0 and dialogInput <= 20 then
												dialogInput = dialogInput * 1000

												sampSetGamestate(0)
												wait(dialogInput)

												nop = true
												ip, p = sampGetCurrentServerAddress()

												sampSetLocalPlayerName(NickRec)
												sampConnectToServer(string.match(ServerRec, "(%S+)%:%S+"), string.match(ServerRec, "%S+%:(%S+)"))

												goto label_5_0
											elseif dialogInput > 20 then
												sampAddChatMessage(string.format("{00FA9A}[Recon]{ff5555} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xE7\xED\xE0\xF7\xE5\xED\xE8\xE5 \xEE\xF2 1 \xF1\xE5\xEA\xF3\xED\xE4\xFB \xE4\xEE 20 \xF1\xE5\xEA\xF3\xED\xE4."), 16733525)

												goto label_5_9
											end
										elseif dialogInput == "" then
											sampAddChatMessage(string.format("{00FA9A}[Recon]{ff5555} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xE7\xED\xE0\xF7\xE5\xED\xE8\xE5 \xEE\xF2 1 \xF1\xE5\xEA\xF3\xED\xE4\xFB \xE4\xEE 20 \xF1\xE5\xEA\xF3\xED\xE4."), 16733525)

											goto label_5_9
										end
									else
										goto label_5_8
									end
								elseif not string.find(dialogInput, "%d+%.%d+%.%d+%.%d+%:%d") then
									sampAddChatMessage(string.format("{00FA9A}[Recon]{ff5555} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 ip \xE2 \xF4\xEE\xF0\xEC\xE0\xF2\xE5 1.2.3.4:5555."), 16733525)

									goto label_5_8
								elseif dialogInput == nil then
									sampAddChatMessage(string.format("{00FA9A}[Recon]{ff5555} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 ip \xE0\xE4\xF0\xE5\xF1 \xF1\xE5\xF0\xE2\xE5\xF0\xE0."), 16733525)

									goto label_5_8
								end
							else
								goto label_5_7
							end
						else
							sampAddChatMessage(string.format("{00FA9A}[Recon]{ff5555} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA, \xF1 \xEA\xEE\xF2\xEE\xF0\xFB\xEC \xF5\xEE\xF2\xE8\xF2\xE5 \xEF\xE5\xF0\xE5\xE7\xE0\xE9\xF2\xE8 \xED\xE0 \xF1\xE5\xF0\xE2\xE5\xF0."), 16733525)

							goto label_5_7
						end
					else
						goto label_5_1
					end
				end
			else
				goto label_5_0
			end
		end

		if dialogListItem == 2 then
			::label_5_10::

			local var_5_10 = string.format("{F6DB6A}Phoenix\n{F6DB6A}Tucson\n{F6DB6A}Scottdale\n{F6DB6A}Chandler\n{F6DB6A}Brainburg\n{F6DB6A}Saint Rose\n{F6DB6A}Mesa\n{F6DB6A}Red-Rock")

			dialogId = 1001
			dialogButton = nil
			dialogListItem = nil
			dialogInput = nil
			dialogBool = false

			sampShowDialog(dialogId, "{00FA9A}Arizona RP{FFD700} | {00FA9A}Steave Gross", var_5_10, "\xC2\xFB\xE1\xEE\xF0", "\xC2\xFB\xF5\xEE\xE4", 4)

			while not dialogBool do
				wait(0)

				dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
			end

			if dialogButton ~= 0 then
				if dialogListItem == 0 then
					::label_5_11::

					local var_5_11 = tostring(string.format("\xD1\xEE\xE7\xE4\xE0\xF2\xFC..\n%s", table.concat(ArPhoenixN, "\n")))

					dialogId = 1001
					dialogButton = nil
					dialogListItem = nil
					dialogInput = nil
					dialogBool = false

					sampShowDialog(dialogId, "{00FA9A}Phoenix{FFD700} | {00FA9A}Steave Gross", var_5_11, "\xC2\xFB\xE1\xEE\xF0", "\xC2\xFB\xF5\xEE\xE4", 4)

					while not dialogBool do
						wait(0)

						dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
					end

					if dialogButton ~= 0 then
						if dialogListItem == 0 then
							::label_5_12::

							local var_5_12 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC\n"

							dialogId = 10011
							dialogButton = nil
							dialogListItem = nil
							dialogInput = nil
							dialogBool = false

							sampShowDialog(dialogId, "{FFFFFF}Nickname", var_5_12, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)

							_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)

							sampSetCurrentDialogEditboxText(sampGetPlayerNickname(id))

							while not dialogBool do
								wait(0)

								dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
							end

							if dialogButton ~= 0 then
								if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
									dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
									ArPhoenixN[#ArPhoenixN + 1] = dialogInput
									Data.Settings.ArPhoenixN = table.concat(ArPhoenixN, " ")

									var_0_1.save(Data, "Recon")

									::label_5_13::

									local var_5_13 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC\n"

									dialogId = 10012
									dialogButton = nil
									dialogListItem = nil
									dialogInput = nil
									dialogBool = false

									sampShowDialog(dialogId, "{FFFFFF}Password", var_5_13, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)
									sampSetCurrentDialogEditboxText("123abc")

									while not dialogBool do
										wait(0)

										dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
									end

									if dialogButton ~= 0 then
										if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
											dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
											ArPhoenixP[#ArPhoenixP + 1] = dialogInput
											Data.Settings.ArPhoenixP = table.concat(ArPhoenixP, " ")

											var_0_1.save(Data, "Recon")
										else
											sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC \xEE\xF2 \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

											goto label_5_13
										end
									else
										goto label_5_12
									end

									goto label_5_11
								else
									sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC \xE2\xE0\xF8\xE5\xE3\xEE \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

									goto label_5_12
								end
							else
								ArPhoenixN[#ArPhoenixN] = ""
								Data.Settings.ArPhoenixN = table.concat(ArPhoenixN, " ")

								var_0_1.save(Data, "Recon")

								goto label_5_11
							end
						else
							for iter_5_0 = 1, #ArPhoenixN do
								if dialogListItem == iter_5_0 then
									local var_5_14 = string.format("{F6DB6A}\xCD\xE8\xEA\xED\xE5\xE9\xEC: %s\n{F6DB6A}\xCF\xE0\xF0\xEE\xEB\xFC: %s\n", ArPhoenixN[iter_5_0], ArPhoenixP[iter_5_0])

									dialogId = 10012
									dialogButton = nil
									dialogListItem = nil
									dialogInput = nil
									dialogBool = false

									sampShowDialog(dialogId, "{FFFFFF}Password", var_5_14, "\xD0\xE5\xE4.", "\xCD\xE0\xE7\xE0\xE4", 0)
									sampSetCurrentDialogEditboxText("123abc")

									while not dialogBool do
										wait(0)

										dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
									end

									if dialogButton ~= 0 then
										::label_5_14::

										local var_5_15 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC\n"

										dialogId = 10011
										dialogButton = nil
										dialogListItem = nil
										dialogInput = nil
										dialogBool = false

										sampShowDialog(dialogId, "{FFFFFF}Nickname", var_5_15, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)

										_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)

										sampSetCurrentDialogEditboxText(ArPhoenixN[iter_5_0])

										while not dialogBool do
											wait(0)

											dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
										end

										if dialogButton ~= 0 then
											if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
												dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
												ArPhoenixN[iter_5_0] = dialogInput
												Data.Settings.ArPhoenixN = table.concat(ArPhoenixN, " ")

												var_0_1.save(Data, "Recon")

												::label_5_15::

												local var_5_16 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC\n"

												dialogId = 10012
												dialogButton = nil
												dialogListItem = nil
												dialogInput = nil
												dialogBool = false

												sampShowDialog(dialogId, "{FFFFFF}Password", var_5_16, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)
												sampSetCurrentDialogEditboxText(ArPhoenixP[iter_5_0])

												while not dialogBool do
													wait(0)

													dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
												end

												if dialogButton ~= 0 then
													if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
														dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
														ArPhoenixP[iter_5_0] = dialogInput
														Data.Settings.ArPhoenixP = table.concat(ArPhoenixP, " ")

														var_0_1.save(Data, "Recon")
													else
														sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC \xEE\xF2 \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

														goto label_5_15
													end
												else
													goto label_5_14
												end

												goto label_5_11
												goto label_5_16
											end

											if dialogInput == "" then
												sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC4\xE0\xED\xED\xFB\xE5 \xF3\xE4\xE0\xEB\xE5\xED\xFB.", 64154)

												ArPhoenixN[iter_5_0] = ""
												Data.Settings.ArPhoenixN = table.concat(ArPhoenixN, " ")
												ArPhoenixP[iter_5_0] = ""
												Data.Settings.ArPhoenixP = table.concat(ArPhoenixP, " ")

												var_0_1.save(Data, "Recon")

												ArPhoenixN = {}
												ArPhoenixP = {}
												iter_5_0 = 1

												for iter_5_1 in Data.Settings.ArPhoenixN:gmatch("(%S+)") do
													ArPhoenixN[iter_5_0] = iter_5_1
													iter_5_0 = iter_5_0 + 1
												end

												iter_5_0 = 1

												for iter_5_2 in Data.Settings.ArPhoenixP:gmatch("(%S+)") do
													ArPhoenixP[iter_5_0] = iter_5_2
													iter_5_0 = iter_5_0 + 1
												end
											else
												goto label_5_16
											end
										end
									end
								else
									goto label_5_16
								end

								goto label_5_11

								::label_5_16::
							end
						end
					else
						goto label_5_10
					end
				end

				if dialogListItem == 1 then
					::label_5_17::

					local var_5_17 = tostring(string.format("\xD1\xEE\xE7\xE4\xE0\xF2\xFC..\n%s", table.concat(ArTucsonN, "\n")))

					dialogId = 1001
					dialogButton = nil
					dialogListItem = nil
					dialogInput = nil
					dialogBool = false

					sampShowDialog(dialogId, "{00FA9A}Tucson{FFD700} | {00FA9A}Steave Gross", var_5_17, "\xC2\xFB\xE1\xEE\xF0", "\xC2\xFB\xF5\xEE\xE4", 4)

					while not dialogBool do
						wait(0)

						dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
					end

					if dialogButton ~= 0 then
						if dialogListItem == 0 then
							::label_5_18::

							local var_5_18 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC\n"

							dialogId = 10011
							dialogButton = nil
							dialogListItem = nil
							dialogInput = nil
							dialogBool = false

							sampShowDialog(dialogId, "{FFFFFF}Nickname", var_5_18, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)

							_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)

							sampSetCurrentDialogEditboxText(sampGetPlayerNickname(id))

							while not dialogBool do
								wait(0)

								dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
							end

							if dialogButton ~= 0 then
								if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
									dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
									ArTucsonN[#ArTucsonN + 1] = dialogInput
									Data.Settings.ArTucsonN = table.concat(ArTucsonN, " ")

									var_0_1.save(Data, "Recon")

									::label_5_19::

									local var_5_19 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC\n"

									dialogId = 10012
									dialogButton = nil
									dialogListItem = nil
									dialogInput = nil
									dialogBool = false

									sampShowDialog(dialogId, "{FFFFFF}Password", var_5_19, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)
									sampSetCurrentDialogEditboxText("123abc")

									while not dialogBool do
										wait(0)

										dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
									end

									if dialogButton ~= 0 then
										if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
											dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
											ArTucsonP[#ArTucsonP + 1] = dialogInput
											Data.Settings.ArTucsonP = table.concat(ArTucsonP, " ")

											var_0_1.save(Data, "Recon")
										else
											sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC \xEE\xF2 \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

											goto label_5_19
										end
									else
										goto label_5_18
									end

									goto label_5_17
								else
									sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC \xE2\xE0\xF8\xE5\xE3\xEE \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

									goto label_5_18
								end
							else
								ArTucsonN[#ArTucsonN] = ""
								Data.Settings.ArTucsonN = table.concat(ArTucsonN, " ")

								var_0_1.save(Data, "Recon")

								goto label_5_17
							end
						else
							for iter_5_3 = 1, #ArTucsonN do
								if dialogListItem == iter_5_3 then
									local var_5_20 = string.format("{F6DB6A}\xCD\xE8\xEA\xED\xE5\xE9\xEC: %s\n{F6DB6A}\xCF\xE0\xF0\xEE\xEB\xFC: %s\n", ArTucsonN[iter_5_3], ArTucsonP[iter_5_3])

									dialogId = 10012
									dialogButton = nil
									dialogListItem = nil
									dialogInput = nil
									dialogBool = false

									sampShowDialog(dialogId, "{FFFFFF}Password", var_5_20, "\xD0\xE5\xE4.", "\xCD\xE0\xE7\xE0\xE4", 0)
									sampSetCurrentDialogEditboxText("123abc")

									while not dialogBool do
										wait(0)

										dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
									end

									if dialogButton ~= 0 then
										::label_5_20::

										local var_5_21 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC\n"

										dialogId = 10011
										dialogButton = nil
										dialogListItem = nil
										dialogInput = nil
										dialogBool = false

										sampShowDialog(dialogId, "{FFFFFF}Nickname", var_5_21, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)

										_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)

										sampSetCurrentDialogEditboxText(ArTucsonN[iter_5_3])

										while not dialogBool do
											wait(0)

											dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
										end

										if dialogButton ~= 0 then
											if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
												dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
												ArTucsonN[iter_5_3] = dialogInput
												Data.Settings.ArTucsonN = table.concat(ArTucsonN, " ")

												var_0_1.save(Data, "Recon")

												::label_5_21::

												local var_5_22 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC\n"

												dialogId = 10012
												dialogButton = nil
												dialogListItem = nil
												dialogInput = nil
												dialogBool = false

												sampShowDialog(dialogId, "{FFFFFF}Password", var_5_22, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)
												sampSetCurrentDialogEditboxText(ArTucsonP[iter_5_3])

												while not dialogBool do
													wait(0)

													dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
												end

												if dialogButton ~= 0 then
													if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
														dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
														ArTucsonP[iter_5_3] = dialogInput
														Data.Settings.ArTucsonP = table.concat(ArTucsonP, " ")

														var_0_1.save(Data, "Recon")
													else
														sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC \xEE\xF2 \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

														goto label_5_21
													end
												else
													goto label_5_20
												end

												goto label_5_17
												goto label_5_22
											end

											if dialogInput == "" then
												sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC4\xE0\xED\xED\xFB\xE5 \xF3\xE4\xE0\xEB\xE5\xED\xFB.", 64154)

												ArTucsonN[iter_5_3] = ""
												Data.Settings.ArTucsonN = table.concat(ArTucsonN, " ")
												ArTucsonP[iter_5_3] = ""
												Data.Settings.ArTucsonP = table.concat(ArTucsonP, " ")

												var_0_1.save(Data, "Recon")

												ArTucsonN = {}
												ArTucsonP = {}
												iter_5_3 = 1

												for iter_5_4 in Data.Settings.ArTucsonN:gmatch("(%S+)") do
													ArTucsonN[iter_5_3] = iter_5_4
													iter_5_3 = iter_5_3 + 1
												end

												iter_5_3 = 1

												for iter_5_5 in Data.Settings.ArTucsonP:gmatch("(%S+)") do
													ArTucsonP[iter_5_3] = iter_5_5
													iter_5_3 = iter_5_3 + 1
												end
											else
												goto label_5_22
											end
										end
									end
								else
									goto label_5_22
								end

								goto label_5_17

								::label_5_22::
							end
						end
					else
						goto label_5_10
					end
				end

				if dialogListItem == 2 then
					::label_5_23::

					local var_5_23 = tostring(string.format("\xD1\xEE\xE7\xE4\xE0\xF2\xFC..\n%s", table.concat(ArScottdaleN, "\n")))

					dialogId = 1001
					dialogButton = nil
					dialogListItem = nil
					dialogInput = nil
					dialogBool = false

					sampShowDialog(dialogId, "{00FA9A}Scottdale{FFD700} | {00FA9A}Steave Gross", var_5_23, "\xC2\xFB\xE1\xEE\xF0", "\xC2\xFB\xF5\xEE\xE4", 4)

					while not dialogBool do
						wait(0)

						dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
					end

					if dialogButton ~= 0 then
						if dialogListItem == 0 then
							::label_5_24::

							local var_5_24 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC\n"

							dialogId = 10011
							dialogButton = nil
							dialogListItem = nil
							dialogInput = nil
							dialogBool = false

							sampShowDialog(dialogId, "{FFFFFF}Nickname", var_5_24, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)

							_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)

							sampSetCurrentDialogEditboxText(sampGetPlayerNickname(id))

							while not dialogBool do
								wait(0)

								dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
							end

							if dialogButton ~= 0 then
								if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
									dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
									ArScottdaleN[#ArScottdaleN + 1] = dialogInput
									Data.Settings.ArScottdaleN = table.concat(ArScottdaleN, " ")

									var_0_1.save(Data, "Recon")

									::label_5_25::

									local var_5_25 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC\n"

									dialogId = 10012
									dialogButton = nil
									dialogListItem = nil
									dialogInput = nil
									dialogBool = false

									sampShowDialog(dialogId, "{FFFFFF}Password", var_5_25, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)
									sampSetCurrentDialogEditboxText("123abc")

									while not dialogBool do
										wait(0)

										dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
									end

									if dialogButton ~= 0 then
										if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
											dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
											ArScottdaleP[#ArScottdaleP + 1] = dialogInput
											Data.Settings.ArScottdaleP = table.concat(ArScottdaleP, " ")

											var_0_1.save(Data, "Recon")
										else
											sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC \xEE\xF2 \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

											goto label_5_25
										end
									else
										goto label_5_24
									end

									goto label_5_23
								else
									sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC \xE2\xE0\xF8\xE5\xE3\xEE \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

									goto label_5_24
								end
							else
								ArScottdaleN[#ArScottdaleN] = ""
								Data.Settings.ArScottdaleN = table.concat(ArScottdaleN, " ")

								var_0_1.save(Data, "Recon")

								goto label_5_23
							end
						else
							for iter_5_6 = 1, #ArScottdaleN do
								if dialogListItem == iter_5_6 then
									local var_5_26 = string.format("{F6DB6A}\xCD\xE8\xEA\xED\xE5\xE9\xEC: %s\n{F6DB6A}\xCF\xE0\xF0\xEE\xEB\xFC: %s\n", ArScottdaleN[iter_5_6], ArScottdaleP[iter_5_6])

									dialogId = 10012
									dialogButton = nil
									dialogListItem = nil
									dialogInput = nil
									dialogBool = false

									sampShowDialog(dialogId, "{FFFFFF}Password", var_5_26, "\xD0\xE5\xE4.", "\xCD\xE0\xE7\xE0\xE4", 0)
									sampSetCurrentDialogEditboxText("123abc")

									while not dialogBool do
										wait(0)

										dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
									end

									if dialogButton ~= 0 then
										::label_5_26::

										local var_5_27 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC\n"

										dialogId = 10011
										dialogButton = nil
										dialogListItem = nil
										dialogInput = nil
										dialogBool = false

										sampShowDialog(dialogId, "{FFFFFF}Nickname", var_5_27, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)

										_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)

										sampSetCurrentDialogEditboxText(ArScottdaleN[iter_5_6])

										while not dialogBool do
											wait(0)

											dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
										end

										if dialogButton ~= 0 then
											if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
												dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
												ArScottdaleN[iter_5_6] = dialogInput
												Data.Settings.ArScottdaleN = table.concat(ArScottdaleN, " ")

												var_0_1.save(Data, "Recon")

												::label_5_27::

												local var_5_28 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC\n"

												dialogId = 10012
												dialogButton = nil
												dialogListItem = nil
												dialogInput = nil
												dialogBool = false

												sampShowDialog(dialogId, "{FFFFFF}Password", var_5_28, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)
												sampSetCurrentDialogEditboxText(ArScottdaleP[iter_5_6])

												while not dialogBool do
													wait(0)

													dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
												end

												if dialogButton ~= 0 then
													if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
														dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
														ArScottdaleP[iter_5_6] = dialogInput
														Data.Settings.ArScottdaleP = table.concat(ArScottdaleP, " ")

														var_0_1.save(Data, "Recon")
													else
														sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC \xEE\xF2 \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

														goto label_5_27
													end
												else
													goto label_5_26
												end

												goto label_5_23
												goto label_5_28
											end

											if dialogInput == "" then
												sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC4\xE0\xED\xED\xFB\xE5 \xF3\xE4\xE0\xEB\xE5\xED\xFB.", 64154)

												ArScottdaleN[iter_5_6] = ""
												Data.Settings.ArScottdaleN = table.concat(ArScottdaleN, " ")
												ArScottdaleP[iter_5_6] = ""
												Data.Settings.ArScottdaleP = table.concat(ArScottdaleP, " ")

												var_0_1.save(Data, "Recon")

												ArScottdaleN = {}
												ArScottdaleP = {}
												iter_5_6 = 1

												for iter_5_7 in Data.Settings.ArScottdaleN:gmatch("(%S+)") do
													ArScottdaleN[iter_5_6] = iter_5_7
													iter_5_6 = iter_5_6 + 1
												end

												iter_5_6 = 1

												for iter_5_8 in Data.Settings.ArScottdaleP:gmatch("(%S+)") do
													ArScottdaleP[iter_5_6] = iter_5_8
													iter_5_6 = iter_5_6 + 1
												end
											else
												goto label_5_28
											end
										end
									end
								else
									goto label_5_28
								end

								goto label_5_23

								::label_5_28::
							end
						end
					else
						goto label_5_10
					end
				end

				if dialogListItem == 3 then
					::label_5_29::

					local var_5_29 = tostring(string.format("\xD1\xEE\xE7\xE4\xE0\xF2\xFC..\n%s", table.concat(ArChandlerN, "\n")))

					dialogId = 1001
					dialogButton = nil
					dialogListItem = nil
					dialogInput = nil
					dialogBool = false

					sampShowDialog(dialogId, "{00FA9A}Chandler{FFD700} | {00FA9A}Steave Gross", var_5_29, "\xC2\xFB\xE1\xEE\xF0", "\xC2\xFB\xF5\xEE\xE4", 4)

					while not dialogBool do
						wait(0)

						dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
					end

					if dialogButton ~= 0 then
						if dialogListItem == 0 then
							::label_5_30::

							local var_5_30 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC\n"

							dialogId = 10011
							dialogButton = nil
							dialogListItem = nil
							dialogInput = nil
							dialogBool = false

							sampShowDialog(dialogId, "{FFFFFF}Nickname", var_5_30, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)

							_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)

							sampSetCurrentDialogEditboxText(sampGetPlayerNickname(id))

							while not dialogBool do
								wait(0)

								dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
							end

							if dialogButton ~= 0 then
								if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
									dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
									ArChandlerN[#ArChandlerN + 1] = dialogInput
									Data.Settings.ArChandlerN = table.concat(ArChandlerN, " ")

									var_0_1.save(Data, "Recon")

									::label_5_31::

									local var_5_31 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC\n"

									dialogId = 10012
									dialogButton = nil
									dialogListItem = nil
									dialogInput = nil
									dialogBool = false

									sampShowDialog(dialogId, "{FFFFFF}Password", var_5_31, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)
									sampSetCurrentDialogEditboxText("123abc")

									while not dialogBool do
										wait(0)

										dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
									end

									if dialogButton ~= 0 then
										if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
											dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
											ArChandlerP[#ArChandlerP + 1] = dialogInput
											Data.Settings.ArChandlerP = table.concat(ArChandlerP, " ")

											var_0_1.save(Data, "Recon")
										else
											sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC \xEE\xF2 \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

											goto label_5_31
										end
									else
										goto label_5_30
									end

									goto label_5_29
								else
									sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC \xE2\xE0\xF8\xE5\xE3\xEE \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

									goto label_5_30
								end
							else
								ArChandlerN[#ArChandlerN] = ""
								Data.Settings.ArChandlerN = table.concat(ArChandlerN, " ")

								var_0_1.save(Data, "Recon")

								goto label_5_29
							end
						else
							for iter_5_9 = 1, #ArChandlerN do
								if dialogListItem == iter_5_9 then
									local var_5_32 = string.format("{F6DB6A}\xCD\xE8\xEA\xED\xE5\xE9\xEC: %s\n{F6DB6A}\xCF\xE0\xF0\xEE\xEB\xFC: %s\n", ArChandlerN[iter_5_9], ArChandlerP[iter_5_9])

									dialogId = 10012
									dialogButton = nil
									dialogListItem = nil
									dialogInput = nil
									dialogBool = false

									sampShowDialog(dialogId, "{FFFFFF}Password", var_5_32, "\xD0\xE5\xE4.", "\xCD\xE0\xE7\xE0\xE4", 0)
									sampSetCurrentDialogEditboxText("123abc")

									while not dialogBool do
										wait(0)

										dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
									end

									if dialogButton ~= 0 then
										::label_5_32::

										local var_5_33 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC\n"

										dialogId = 10011
										dialogButton = nil
										dialogListItem = nil
										dialogInput = nil
										dialogBool = false

										sampShowDialog(dialogId, "{FFFFFF}Nickname", var_5_33, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)

										_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)

										sampSetCurrentDialogEditboxText(ArChandlerN[iter_5_9])

										while not dialogBool do
											wait(0)

											dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
										end

										if dialogButton ~= 0 then
											if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
												dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
												ArChandlerN[iter_5_9] = dialogInput
												Data.Settings.ArChandlerN = table.concat(ArChandlerN, " ")

												var_0_1.save(Data, "Recon")

												::label_5_33::

												local var_5_34 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC\n"

												dialogId = 10012
												dialogButton = nil
												dialogListItem = nil
												dialogInput = nil
												dialogBool = false

												sampShowDialog(dialogId, "{FFFFFF}Password", var_5_34, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)
												sampSetCurrentDialogEditboxText(ArChandlerP[iter_5_9])

												while not dialogBool do
													wait(0)

													dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
												end

												if dialogButton ~= 0 then
													if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
														dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
														ArChandlerP[iter_5_9] = dialogInput
														Data.Settings.ArChandlerP = table.concat(ArChandlerP, " ")

														var_0_1.save(Data, "Recon")
													else
														sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC \xEE\xF2 \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

														goto label_5_33
													end
												else
													goto label_5_32
												end

												goto label_5_29
												goto label_5_34
											end

											if dialogInput == "" then
												sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC4\xE0\xED\xED\xFB\xE5 \xF3\xE4\xE0\xEB\xE5\xED\xFB.", 64154)

												ArChandlerN[iter_5_9] = ""
												Data.Settings.ArChandlerN = table.concat(ArChandlerN, " ")
												ArChandlerP[iter_5_9] = ""
												Data.Settings.ArChandlerP = table.concat(ArChandlerP, " ")

												var_0_1.save(Data, "Recon")

												ArChandlerN = {}
												ArChandlerP = {}
												iter_5_9 = 1

												for iter_5_10 in Data.Settings.ArChandlerN:gmatch("(%S+)") do
													ArChandlerN[iter_5_9] = iter_5_10
													iter_5_9 = iter_5_9 + 1
												end

												iter_5_9 = 1

												for iter_5_11 in Data.Settings.ArChandlerP:gmatch("(%S+)") do
													ArChandlerP[iter_5_9] = iter_5_11
													iter_5_9 = iter_5_9 + 1
												end
											else
												goto label_5_34
											end
										end
									end
								else
									goto label_5_34
								end

								goto label_5_29

								::label_5_34::
							end
						end
					else
						goto label_5_10
					end
				end

				if dialogListItem == 4 then
					::label_5_35::

					local var_5_35 = tostring(string.format("\xD1\xEE\xE7\xE4\xE0\xF2\xFC..\n%s", table.concat(ArBrainburgN, "\n")))

					dialogId = 1001
					dialogButton = nil
					dialogListItem = nil
					dialogInput = nil
					dialogBool = false

					sampShowDialog(dialogId, "{00FA9A}Brainburg{FFD700} | {00FA9A}Steave Gross", var_5_35, "\xC2\xFB\xE1\xEE\xF0", "\xC2\xFB\xF5\xEE\xE4", 4)

					while not dialogBool do
						wait(0)

						dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
					end

					if dialogButton ~= 0 then
						if dialogListItem == 0 then
							::label_5_36::

							local var_5_36 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC\n"

							dialogId = 10011
							dialogButton = nil
							dialogListItem = nil
							dialogInput = nil
							dialogBool = false

							sampShowDialog(dialogId, "{FFFFFF}Nickname", var_5_36, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)

							_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)

							sampSetCurrentDialogEditboxText(sampGetPlayerNickname(id))

							while not dialogBool do
								wait(0)

								dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
							end

							if dialogButton ~= 0 then
								if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
									dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
									ArBrainburgN[#ArBrainburgN + 1] = dialogInput
									Data.Settings.ArBrainburgN = table.concat(ArBrainburgN, " ")

									var_0_1.save(Data, "Recon")

									::label_5_37::

									local var_5_37 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC\n"

									dialogId = 10012
									dialogButton = nil
									dialogListItem = nil
									dialogInput = nil
									dialogBool = false

									sampShowDialog(dialogId, "{FFFFFF}Password", var_5_37, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)
									sampSetCurrentDialogEditboxText("123abc")

									while not dialogBool do
										wait(0)

										dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
									end

									if dialogButton ~= 0 then
										if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
											dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
											ArBrainburgP[#ArBrainburgP + 1] = dialogInput
											Data.Settings.ArBrainburgP = table.concat(ArBrainburgP, " ")

											var_0_1.save(Data, "Recon")
										else
											sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC \xEE\xF2 \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

											goto label_5_37
										end
									else
										goto label_5_36
									end

									goto label_5_35
								else
									sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC \xE2\xE0\xF8\xE5\xE3\xEE \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

									goto label_5_36
								end
							else
								ArBrainburgN[#ArBrainburgN] = ""
								Data.Settings.ArBrainburgN = table.concat(ArBrainburgN, " ")

								var_0_1.save(Data, "Recon")

								goto label_5_35
							end
						else
							for iter_5_12 = 1, #ArBrainburgN do
								if dialogListItem == iter_5_12 then
									local var_5_38 = string.format("{F6DB6A}\xCD\xE8\xEA\xED\xE5\xE9\xEC: %s\n{F6DB6A}\xCF\xE0\xF0\xEE\xEB\xFC: %s\n", ArBrainburgN[iter_5_12], ArBrainburgP[iter_5_12])

									dialogId = 10012
									dialogButton = nil
									dialogListItem = nil
									dialogInput = nil
									dialogBool = false

									sampShowDialog(dialogId, "{FFFFFF}Password", var_5_38, "\xD0\xE5\xE4.", "\xCD\xE0\xE7\xE0\xE4", 0)
									sampSetCurrentDialogEditboxText("123abc")

									while not dialogBool do
										wait(0)

										dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
									end

									if dialogButton ~= 0 then
										::label_5_38::

										local var_5_39 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC\n"

										dialogId = 10011
										dialogButton = nil
										dialogListItem = nil
										dialogInput = nil
										dialogBool = false

										sampShowDialog(dialogId, "{FFFFFF}Nickname", var_5_39, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)

										_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)

										sampSetCurrentDialogEditboxText(ArBrainburgN[iter_5_12])

										while not dialogBool do
											wait(0)

											dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
										end

										if dialogButton ~= 0 then
											if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
												dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
												ArBrainburgN[iter_5_12] = dialogInput
												Data.Settings.ArBrainburgN = table.concat(ArBrainburgN, " ")

												var_0_1.save(Data, "Recon")

												::label_5_39::

												local var_5_40 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC\n"

												dialogId = 10012
												dialogButton = nil
												dialogListItem = nil
												dialogInput = nil
												dialogBool = false

												sampShowDialog(dialogId, "{FFFFFF}Password", var_5_40, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)
												sampSetCurrentDialogEditboxText(ArBrainburgP[iter_5_12])

												while not dialogBool do
													wait(0)

													dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
												end

												if dialogButton ~= 0 then
													if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
														dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
														ArBrainburgP[iter_5_12] = dialogInput
														Data.Settings.ArBrainburgP = table.concat(ArBrainburgP, " ")

														var_0_1.save(Data, "Recon")
													else
														sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC \xEE\xF2 \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

														goto label_5_39
													end
												else
													goto label_5_38
												end

												goto label_5_35
												goto label_5_40
											end

											if dialogInput == "" then
												sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC4\xE0\xED\xED\xFB\xE5 \xF3\xE4\xE0\xEB\xE5\xED\xFB.", 64154)

												ArBrainburgN[iter_5_12] = ""
												Data.Settings.ArBrainburgN = table.concat(ArBrainburgN, " ")
												ArBrainburgP[iter_5_12] = ""
												Data.Settings.ArBrainburgP = table.concat(ArBrainburgP, " ")

												var_0_1.save(Data, "Recon")

												ArBrainburgN = {}
												ArBrainburgP = {}
												iter_5_12 = 1

												for iter_5_13 in Data.Settings.ArBrainburgN:gmatch("(%S+)") do
													ArBrainburgN[iter_5_12] = iter_5_13
													iter_5_12 = iter_5_12 + 1
												end

												iter_5_12 = 1

												for iter_5_14 in Data.Settings.ArBrainburgP:gmatch("(%S+)") do
													ArBrainburgP[iter_5_12] = iter_5_14
													iter_5_12 = iter_5_12 + 1
												end
											else
												goto label_5_40
											end
										end
									end
								else
									goto label_5_40
								end

								goto label_5_35

								::label_5_40::
							end
						end
					else
						goto label_5_10
					end
				end

				if dialogListItem == 5 then
					::label_5_41::

					local var_5_41 = tostring(string.format("\xD1\xEE\xE7\xE4\xE0\xF2\xFC..\n%s", table.concat(ArSaintRoseN, "\n")))

					dialogId = 1001
					dialogButton = nil
					dialogListItem = nil
					dialogInput = nil
					dialogBool = false

					sampShowDialog(dialogId, "{00FA9A}Saint Rose{FFD700} | {00FA9A}Steave Gross", var_5_41, "\xC2\xFB\xE1\xEE\xF0", "\xC2\xFB\xF5\xEE\xE4", 4)

					while not dialogBool do
						wait(0)

						dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
					end

					if dialogButton ~= 0 then
						if dialogListItem == 0 then
							::label_5_42::

							local var_5_42 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC\n"

							dialogId = 10011
							dialogButton = nil
							dialogListItem = nil
							dialogInput = nil
							dialogBool = false

							sampShowDialog(dialogId, "{FFFFFF}Nickname", var_5_42, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)

							_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)

							sampSetCurrentDialogEditboxText(sampGetPlayerNickname(id))

							while not dialogBool do
								wait(0)

								dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
							end

							if dialogButton ~= 0 then
								if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
									dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
									ArSaintRoseN[#ArSaintRoseN + 1] = dialogInput
									Data.Settings.ArSaintRoseN = table.concat(ArSaintRoseN, " ")

									var_0_1.save(Data, "Recon")

									::label_5_43::

									local var_5_43 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC\n"

									dialogId = 10012
									dialogButton = nil
									dialogListItem = nil
									dialogInput = nil
									dialogBool = false

									sampShowDialog(dialogId, "{FFFFFF}Password", var_5_43, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)
									sampSetCurrentDialogEditboxText("123abc")

									while not dialogBool do
										wait(0)

										dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
									end

									if dialogButton ~= 0 then
										if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
											dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
											ArSaintRoseP[#ArSaintRoseP + 1] = dialogInput
											Data.Settings.ArSaintRoseP = table.concat(ArSaintRoseP, " ")

											var_0_1.save(Data, "Recon")
										else
											sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC \xEE\xF2 \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

											goto label_5_43
										end
									else
										goto label_5_42
									end

									goto label_5_41
								else
									sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC \xE2\xE0\xF8\xE5\xE3\xEE \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

									goto label_5_42
								end
							else
								ArSaintRoseN[#ArSaintRoseN] = ""
								Data.Settings.ArSaintRoseN = table.concat(ArSaintRoseN, " ")

								var_0_1.save(Data, "Recon")

								goto label_5_41
							end
						else
							for iter_5_15 = 1, #ArSaintRoseN do
								if dialogListItem == iter_5_15 then
									local var_5_44 = string.format("{F6DB6A}\xCD\xE8\xEA\xED\xE5\xE9\xEC: %s\n{F6DB6A}\xCF\xE0\xF0\xEE\xEB\xFC: %s\n", ArSaintRoseN[iter_5_15], ArSaintRoseP[iter_5_15])

									dialogId = 10012
									dialogButton = nil
									dialogListItem = nil
									dialogInput = nil
									dialogBool = false

									sampShowDialog(dialogId, "{FFFFFF}Password", var_5_44, "\xD0\xE5\xE4.", "\xCD\xE0\xE7\xE0\xE4", 0)
									sampSetCurrentDialogEditboxText("123abc")

									while not dialogBool do
										wait(0)

										dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
									end

									if dialogButton ~= 0 then
										::label_5_44::

										local var_5_45 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC\n"

										dialogId = 10011
										dialogButton = nil
										dialogListItem = nil
										dialogInput = nil
										dialogBool = false

										sampShowDialog(dialogId, "{FFFFFF}Nickname", var_5_45, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)

										_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)

										sampSetCurrentDialogEditboxText(ArSaintRoseN[iter_5_15])

										while not dialogBool do
											wait(0)

											dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
										end

										if dialogButton ~= 0 then
											if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
												dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
												ArSaintRoseN[iter_5_15] = dialogInput
												Data.Settings.ArSaintRoseN = table.concat(ArSaintRoseN, " ")

												var_0_1.save(Data, "Recon")

												::label_5_45::

												local var_5_46 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC\n"

												dialogId = 10012
												dialogButton = nil
												dialogListItem = nil
												dialogInput = nil
												dialogBool = false

												sampShowDialog(dialogId, "{FFFFFF}Password", var_5_46, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)
												sampSetCurrentDialogEditboxText(ArSaintRoseP[iter_5_15])

												while not dialogBool do
													wait(0)

													dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
												end

												if dialogButton ~= 0 then
													if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
														dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
														ArSaintRoseP[iter_5_15] = dialogInput
														Data.Settings.ArSaintRoseP = table.concat(ArSaintRoseP, " ")

														var_0_1.save(Data, "Recon")
													else
														sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC \xEE\xF2 \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

														goto label_5_45
													end
												else
													goto label_5_44
												end

												goto label_5_41
												goto label_5_46
											end

											if dialogInput == "" then
												sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC4\xE0\xED\xED\xFB\xE5 \xF3\xE4\xE0\xEB\xE5\xED\xFB.", 64154)

												ArSaintRoseN[iter_5_15] = ""
												Data.Settings.ArSaintRoseN = table.concat(ArSaintRoseN, " ")
												ArSaintRoseP[iter_5_15] = ""
												Data.Settings.ArSaintRoseP = table.concat(ArSaintRoseP, " ")

												var_0_1.save(Data, "Recon")

												ArSaintRoseN = {}
												ArSaintRoseP = {}
												iter_5_15 = 1

												for iter_5_16 in Data.Settings.ArSaintRoseN:gmatch("(%S+)") do
													ArSaintRoseN[iter_5_15] = iter_5_16
													iter_5_15 = iter_5_15 + 1
												end

												iter_5_15 = 1

												for iter_5_17 in Data.Settings.ArSaintRoseP:gmatch("(%S+)") do
													ArSaintRoseP[iter_5_15] = iter_5_17
													iter_5_15 = iter_5_15 + 1
												end
											else
												goto label_5_46
											end
										end
									end
								else
									goto label_5_46
								end

								goto label_5_41

								::label_5_46::
							end
						end
					else
						goto label_5_10
					end
				end

				if dialogListItem == 6 then
					::label_5_47::

					local var_5_47 = tostring(string.format("\xD1\xEE\xE7\xE4\xE0\xF2\xFC..\n%s", table.concat(ArMesaN, "\n")))

					dialogId = 1001
					dialogButton = nil
					dialogListItem = nil
					dialogInput = nil
					dialogBool = false

					sampShowDialog(dialogId, "{00FA9A}Mesa{FFD700} | {00FA9A}Steave Gross", var_5_47, "\xC2\xFB\xE1\xEE\xF0", "\xC2\xFB\xF5\xEE\xE4", 4)

					while not dialogBool do
						wait(0)

						dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
					end

					if dialogButton ~= 0 then
						if dialogListItem == 0 then
							::label_5_48::

							local var_5_48 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC\n"

							dialogId = 10011
							dialogButton = nil
							dialogListItem = nil
							dialogInput = nil
							dialogBool = false

							sampShowDialog(dialogId, "{FFFFFF}Nickname", var_5_48, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)

							_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)

							sampSetCurrentDialogEditboxText(sampGetPlayerNickname(id))

							while not dialogBool do
								wait(0)

								dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
							end

							if dialogButton ~= 0 then
								if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
									dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
									ArMesaN[#ArMesaN + 1] = dialogInput
									Data.Settings.ArMesaN = table.concat(ArMesaN, " ")

									var_0_1.save(Data, "Recon")

									::label_5_49::

									local var_5_49 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC\n"

									dialogId = 10012
									dialogButton = nil
									dialogListItem = nil
									dialogInput = nil
									dialogBool = false

									sampShowDialog(dialogId, "{FFFFFF}Password", var_5_49, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)
									sampSetCurrentDialogEditboxText("123abc")

									while not dialogBool do
										wait(0)

										dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
									end

									if dialogButton ~= 0 then
										if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
											dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
											ArMesaP[#ArMesaP + 1] = dialogInput
											Data.Settings.ArMesaP = table.concat(ArMesaP, " ")

											var_0_1.save(Data, "Recon")
										else
											sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC \xEE\xF2 \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

											goto label_5_49
										end
									else
										goto label_5_48
									end

									goto label_5_47
								else
									sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC \xE2\xE0\xF8\xE5\xE3\xEE \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

									goto label_5_48
								end
							else
								ArMesaN[#ArMesaN] = ""
								Data.Settings.ArMesaN = table.concat(ArMesaN, " ")

								var_0_1.save(Data, "Recon")

								goto label_5_47
							end
						else
							for iter_5_18 = 1, #ArMesaN do
								if dialogListItem == iter_5_18 then
									local var_5_50 = string.format("{F6DB6A}\xCD\xE8\xEA\xED\xE5\xE9\xEC: %s\n{F6DB6A}\xCF\xE0\xF0\xEE\xEB\xFC: %s\n", ArMesaN[iter_5_18], ArMesaP[iter_5_18])

									dialogId = 10012
									dialogButton = nil
									dialogListItem = nil
									dialogInput = nil
									dialogBool = false

									sampShowDialog(dialogId, "{FFFFFF}Password", var_5_50, "\xD0\xE5\xE4.", "\xCD\xE0\xE7\xE0\xE4", 0)
									sampSetCurrentDialogEditboxText("123abc")

									while not dialogBool do
										wait(0)

										dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
									end

									if dialogButton ~= 0 then
										::label_5_50::

										local var_5_51 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC\n"

										dialogId = 10011
										dialogButton = nil
										dialogListItem = nil
										dialogInput = nil
										dialogBool = false

										sampShowDialog(dialogId, "{FFFFFF}Nickname", var_5_51, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)

										_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)

										sampSetCurrentDialogEditboxText(ArMesaN[iter_5_18])

										while not dialogBool do
											wait(0)

											dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
										end

										if dialogButton ~= 0 then
											if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
												dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
												ArMesaN[iter_5_18] = dialogInput
												Data.Settings.ArMesaN = table.concat(ArMesaN, " ")

												var_0_1.save(Data, "Recon")

												::label_5_51::

												local var_5_52 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC\n"

												dialogId = 10012
												dialogButton = nil
												dialogListItem = nil
												dialogInput = nil
												dialogBool = false

												sampShowDialog(dialogId, "{FFFFFF}Password", var_5_52, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)
												sampSetCurrentDialogEditboxText(ArMesaP[iter_5_18])

												while not dialogBool do
													wait(0)

													dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
												end

												if dialogButton ~= 0 then
													if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
														dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
														ArMesaP[iter_5_18] = dialogInput
														Data.Settings.ArMesaP = table.concat(ArMesaP, " ")

														var_0_1.save(Data, "Recon")
													else
														sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC \xEE\xF2 \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

														goto label_5_51
													end
												else
													goto label_5_50
												end

												goto label_5_47
												goto label_5_52
											end

											if dialogInput == "" then
												sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC4\xE0\xED\xED\xFB\xE5 \xF3\xE4\xE0\xEB\xE5\xED\xFB.", 64154)

												ArMesaN[iter_5_18] = ""
												Data.Settings.ArMesaN = table.concat(ArMesaN, " ")
												ArMesaP[iter_5_18] = ""
												Data.Settings.ArMesaP = table.concat(ArMesaP, " ")

												var_0_1.save(Data, "Recon")

												ArMesaN = {}
												ArMesaP = {}
												iter_5_18 = 1

												for iter_5_19 in Data.Settings.ArMesaN:gmatch("(%S+)") do
													ArMesaN[iter_5_18] = iter_5_19
													iter_5_18 = iter_5_18 + 1
												end

												iter_5_18 = 1

												for iter_5_20 in Data.Settings.ArMesaP:gmatch("(%S+)") do
													ArMesaP[iter_5_18] = iter_5_20
													iter_5_18 = iter_5_18 + 1
												end
											else
												goto label_5_52
											end
										end
									end
								else
									goto label_5_52
								end

								goto label_5_47

								::label_5_52::
							end
						end
					else
						goto label_5_10
					end
				end

				if dialogListItem == 7 then
					::label_5_53::

					local var_5_53 = tostring(string.format("\xD1\xEE\xE7\xE4\xE0\xF2\xFC..\n%s", table.concat(ArRedRockN, "\n")))

					dialogId = 1001
					dialogButton = nil
					dialogListItem = nil
					dialogInput = nil
					dialogBool = false

					sampShowDialog(dialogId, "{00FA9A}Red-Rock{FFD700} | {00FA9A}Steave Gross", var_5_53, "\xC2\xFB\xE1\xEE\xF0", "\xC2\xFB\xF5\xEE\xE4", 4)

					while not dialogBool do
						wait(0)

						dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
					end

					if dialogButton ~= 0 then
						if dialogListItem == 0 then
							::label_5_54::

							local var_5_54 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC\n"

							dialogId = 10011
							dialogButton = nil
							dialogListItem = nil
							dialogInput = nil
							dialogBool = false

							sampShowDialog(dialogId, "{FFFFFF}Nickname", var_5_54, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)

							_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)

							sampSetCurrentDialogEditboxText(sampGetPlayerNickname(id))

							while not dialogBool do
								wait(0)

								dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
							end

							if dialogButton ~= 0 then
								if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
									dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
									ArRedRockN[#ArRedRockN + 1] = dialogInput
									Data.Settings.ArRedRockN = table.concat(ArRedRockN, " ")

									var_0_1.save(Data, "Recon")

									::label_5_55::

									local var_5_55 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC\n"

									dialogId = 10012
									dialogButton = nil
									dialogListItem = nil
									dialogInput = nil
									dialogBool = false

									sampShowDialog(dialogId, "{FFFFFF}Password", var_5_55, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)
									sampSetCurrentDialogEditboxText("123abc")

									while not dialogBool do
										wait(0)

										dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
									end

									if dialogButton ~= 0 then
										if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
											dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
											ArRedRockP[#ArRedRockP + 1] = dialogInput
											Data.Settings.ArRedRockP = table.concat(ArRedRockP, " ")

											var_0_1.save(Data, "Recon")
										else
											sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC \xEE\xF2 \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

											goto label_5_55
										end
									else
										goto label_5_54
									end

									goto label_5_53
								else
									sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC \xE2\xE0\xF8\xE5\xE3\xEE \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

									goto label_5_54
								end
							else
								ArRedRockN[#ArRedRockN] = ""
								Data.Settings.ArRedRockN = table.concat(ArRedRockN, " ")

								var_0_1.save(Data, "Recon")

								goto label_5_53
							end
						else
							for iter_5_21 = 1, #ArRedRockN do
								if dialogListItem == iter_5_21 then
									local var_5_56 = string.format("{F6DB6A}\xCD\xE8\xEA\xED\xE5\xE9\xEC: %s\n{F6DB6A}\xCF\xE0\xF0\xEE\xEB\xFC: %s\n", ArRedRockN[iter_5_21], ArRedRockP[iter_5_21])

									dialogId = 10012
									dialogButton = nil
									dialogListItem = nil
									dialogInput = nil
									dialogBool = false

									sampShowDialog(dialogId, "{FFFFFF}Password", var_5_56, "\xD0\xE5\xE4.", "\xCD\xE0\xE7\xE0\xE4", 0)
									sampSetCurrentDialogEditboxText("123abc")

									while not dialogBool do
										wait(0)

										dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
									end

									if dialogButton ~= 0 then
										::label_5_56::

										local var_5_57 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC\n"

										dialogId = 10011
										dialogButton = nil
										dialogListItem = nil
										dialogInput = nil
										dialogBool = false

										sampShowDialog(dialogId, "{FFFFFF}Nickname", var_5_57, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)

										_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)

										sampSetCurrentDialogEditboxText(ArRedRockN[iter_5_21])

										while not dialogBool do
											wait(0)

											dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
										end

										if dialogButton ~= 0 then
											if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
												dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
												ArRedRockN[iter_5_21] = dialogInput
												Data.Settings.ArRedRockN = table.concat(ArRedRockN, " ")

												var_0_1.save(Data, "Recon")

												::label_5_57::

												local var_5_58 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC\n"

												dialogId = 10012
												dialogButton = nil
												dialogListItem = nil
												dialogInput = nil
												dialogBool = false

												sampShowDialog(dialogId, "{FFFFFF}Password", var_5_58, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)
												sampSetCurrentDialogEditboxText(ArRedRockP[iter_5_21])

												while not dialogBool do
													wait(0)

													dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
												end

												if dialogButton ~= 0 then
													if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
														dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
														ArRedRockP[iter_5_21] = dialogInput
														Data.Settings.ArRedRockP = table.concat(ArRedRockP, " ")

														var_0_1.save(Data, "Recon")
													else
														sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC \xEE\xF2 \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

														goto label_5_57
													end
												else
													goto label_5_56
												end

												goto label_5_53
												goto label_5_58
											end

											if dialogInput == "" then
												sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC4\xE0\xED\xED\xFB\xE5 \xF3\xE4\xE0\xEB\xE5\xED\xFB.", 64154)

												ArRedRockN[iter_5_21] = ""
												Data.Settings.ArRedRockN = table.concat(ArRedRockN, " ")
												ArRedRockP[iter_5_21] = ""
												Data.Settings.ArRedRockP = table.concat(ArRedRockP, " ")

												var_0_1.save(Data, "Recon")

												ArRedRockN = {}
												ArRedRockP = {}
												iter_5_21 = 1

												for iter_5_22 in Data.Settings.ArRedRockN:gmatch("(%S+)") do
													ArRedRockN[iter_5_21] = iter_5_22
													iter_5_21 = iter_5_21 + 1
												end

												iter_5_21 = 1

												for iter_5_23 in Data.Settings.ArRedRockP:gmatch("(%S+)") do
													ArRedRockP[iter_5_21] = iter_5_23
													iter_5_21 = iter_5_21 + 1
												end
											else
												goto label_5_58
											end
										end
									end
								else
									goto label_5_58
								end

								goto label_5_53

								::label_5_58::
							end
						end
					else
						goto label_5_10
					end
				end
			else
				goto label_5_0
			end
		end

		if dialogListItem == 3 then
			::label_5_59::

			local var_5_59 = string.format("{F6DB6A}RED\n{F6DB6A}GREEN\n{F6DB6A}YELLOW\n{F6DB6A}ORANGE\n{F6DB6A}BLUE\n{F6DB6A}WHITE\n{F6DB6A}SILVER\n{F6DB6A}PURPLE\n{F6DB6A}CHOCOLATE")

			dialogId = 1001
			dialogButton = nil
			dialogListItem = nil
			dialogInput = nil
			dialogBool = false

			sampShowDialog(dialogId, "{00FA9A}Advance RP{FFD700} | {00FA9A}Steave Gross", var_5_59, "\xC2\xFB\xE1\xEE\xF0", "\xC2\xFB\xF5\xEE\xE4", 4)

			while not dialogBool do
				wait(0)

				dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
			end

			if dialogButton ~= 0 then
				if dialogListItem == 0 then
					::label_5_60::

					local var_5_60 = tostring(string.format("\xD1\xEE\xE7\xE4\xE0\xF2\xFC..\n%s", table.concat(AdvREDN, "\n")))

					dialogId = 1001
					dialogButton = nil
					dialogListItem = nil
					dialogInput = nil
					dialogBool = false

					sampShowDialog(dialogId, "{00FA9A}RED{FFD700} | {00FA9A}Steave Gross", var_5_60, "\xC2\xFB\xE1\xEE\xF0", "\xC2\xFB\xF5\xEE\xE4", 4)

					while not dialogBool do
						wait(0)

						dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
					end

					if dialogButton ~= 0 then
						if dialogListItem == 0 then
							::label_5_61::

							local var_5_61 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC\n"

							dialogId = 10011
							dialogButton = nil
							dialogListItem = nil
							dialogInput = nil
							dialogBool = false

							sampShowDialog(dialogId, "{FFFFFF}Nickname", var_5_61, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)

							_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)

							sampSetCurrentDialogEditboxText(sampGetPlayerNickname(id))

							while not dialogBool do
								wait(0)

								dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
							end

							if dialogButton ~= 0 then
								if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
									dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
									AdvREDN[#AdvREDN + 1] = dialogInput
									Data.Settings.AdvREDN = table.concat(AdvREDN, " ")

									var_0_1.save(Data, "Recon")

									::label_5_62::

									local var_5_62 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC\n"

									dialogId = 10012
									dialogButton = nil
									dialogListItem = nil
									dialogInput = nil
									dialogBool = false

									sampShowDialog(dialogId, "{FFFFFF}Password", var_5_62, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)
									sampSetCurrentDialogEditboxText("123abc")

									while not dialogBool do
										wait(0)

										dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
									end

									if dialogButton ~= 0 then
										if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
											dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
											AdvREDP[#AdvREDP + 1] = dialogInput
											Data.Settings.AdvREDP = table.concat(AdvREDP, " ")

											var_0_1.save(Data, "Recon")
										else
											sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC \xEE\xF2 \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

											goto label_5_62
										end
									else
										goto label_5_61
									end

									goto label_5_60
								else
									sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC \xE2\xE0\xF8\xE5\xE3\xEE \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

									goto label_5_61
								end
							else
								AdvREDN[#AdvREDN] = ""
								Data.Settings.AdvREDN = table.concat(AdvREDN, " ")

								var_0_1.save(Data, "Recon")

								goto label_5_60
							end
						else
							for iter_5_24 = 1, #AdvREDN do
								if dialogListItem == iter_5_24 then
									local var_5_63 = string.format("{F6DB6A}\xCD\xE8\xEA\xED\xE5\xE9\xEC: %s\n{F6DB6A}\xCF\xE0\xF0\xEE\xEB\xFC: %s\n", AdvREDN[iter_5_24], AdvREDP[iter_5_24])

									dialogId = 10012
									dialogButton = nil
									dialogListItem = nil
									dialogInput = nil
									dialogBool = false

									sampShowDialog(dialogId, "{FFFFFF}Password", var_5_63, "\xD0\xE5\xE4.", "\xCD\xE0\xE7\xE0\xE4", 0)
									sampSetCurrentDialogEditboxText("123abc")

									while not dialogBool do
										wait(0)

										dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
									end

									if dialogButton ~= 0 then
										::label_5_63::

										local var_5_64 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC\n"

										dialogId = 10011
										dialogButton = nil
										dialogListItem = nil
										dialogInput = nil
										dialogBool = false

										sampShowDialog(dialogId, "{FFFFFF}Nickname", var_5_64, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)

										_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)

										sampSetCurrentDialogEditboxText(AdvREDN[iter_5_24])

										while not dialogBool do
											wait(0)

											dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
										end

										if dialogButton ~= 0 then
											if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
												dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
												AdvREDN[iter_5_24] = dialogInput
												Data.Settings.AdvREDN = table.concat(AdvREDN, " ")

												var_0_1.save(Data, "Recon")

												::label_5_64::

												local var_5_65 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC\n"

												dialogId = 10012
												dialogButton = nil
												dialogListItem = nil
												dialogInput = nil
												dialogBool = false

												sampShowDialog(dialogId, "{FFFFFF}Password", var_5_65, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)
												sampSetCurrentDialogEditboxText(AdvREDP[iter_5_24])

												while not dialogBool do
													wait(0)

													dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
												end

												if dialogButton ~= 0 then
													if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
														dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
														AdvREDP[iter_5_24] = dialogInput
														Data.Settings.AdvREDP = table.concat(AdvREDP, " ")

														var_0_1.save(Data, "Recon")
													else
														sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC \xEE\xF2 \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

														goto label_5_64
													end
												else
													goto label_5_63
												end

												goto label_5_60
												goto label_5_65
											end

											if dialogInput == "" then
												sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC4\xE0\xED\xED\xFB\xE5 \xF3\xE4\xE0\xEB\xE5\xED\xFB.", 64154)

												AdvREDN[iter_5_24] = ""
												Data.Settings.AdvREDN = table.concat(AdvREDN, " ")
												AdvREDP[iter_5_24] = ""
												Data.Settings.AdvREDP = table.concat(AdvREDP, " ")

												var_0_1.save(Data, "Recon")

												AdvREDN = {}
												AdvREDP = {}
												iter_5_24 = 1

												for iter_5_25 in Data.Settings.AdvREDN:gmatch("(%S+)") do
													AdvREDN[iter_5_24] = iter_5_25
													iter_5_24 = iter_5_24 + 1
												end

												iter_5_24 = 1

												for iter_5_26 in Data.Settings.AdvREDP:gmatch("(%S+)") do
													AdvREDP[iter_5_24] = iter_5_26
													iter_5_24 = iter_5_24 + 1
												end
											else
												goto label_5_65
											end
										end
									end
								else
									goto label_5_65
								end

								goto label_5_60

								::label_5_65::
							end
						end
					else
						goto label_5_59
					end
				end

				if dialogListItem == 1 then
					::label_5_66::

					local var_5_66 = tostring(string.format("\xD1\xEE\xE7\xE4\xE0\xF2\xFC..\n%s", table.concat(AdvGREENN, "\n")))

					dialogId = 1001
					dialogButton = nil
					dialogListItem = nil
					dialogInput = nil
					dialogBool = false

					sampShowDialog(dialogId, "{00FA9A}GREEN{FFD700} | {00FA9A}Steave Gross", var_5_66, "\xC2\xFB\xE1\xEE\xF0", "\xC2\xFB\xF5\xEE\xE4", 4)

					while not dialogBool do
						wait(0)

						dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
					end

					if dialogButton ~= 0 then
						if dialogListItem == 0 then
							::label_5_67::

							local var_5_67 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC\n"

							dialogId = 10011
							dialogButton = nil
							dialogListItem = nil
							dialogInput = nil
							dialogBool = false

							sampShowDialog(dialogId, "{FFFFFF}Nickname", var_5_67, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)

							_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)

							sampSetCurrentDialogEditboxText(sampGetPlayerNickname(id))

							while not dialogBool do
								wait(0)

								dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
							end

							if dialogButton ~= 0 then
								if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
									dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
									AdvGREENN[#AdvGREENN + 1] = dialogInput
									Data.Settings.AdvGREENN = table.concat(AdvGREENN, " ")

									var_0_1.save(Data, "Recon")

									::label_5_68::

									local var_5_68 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC\n"

									dialogId = 10012
									dialogButton = nil
									dialogListItem = nil
									dialogInput = nil
									dialogBool = false

									sampShowDialog(dialogId, "{FFFFFF}Password", var_5_68, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)
									sampSetCurrentDialogEditboxText("123abc")

									while not dialogBool do
										wait(0)

										dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
									end

									if dialogButton ~= 0 then
										if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
											dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
											AdvGREENP[#AdvGREENP + 1] = dialogInput
											Data.Settings.AdvGREENP = table.concat(AdvGREENP, " ")

											var_0_1.save(Data, "Recon")
										else
											sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC \xEE\xF2 \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

											goto label_5_68
										end
									else
										goto label_5_67
									end

									goto label_5_66
								else
									sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC \xE2\xE0\xF8\xE5\xE3\xEE \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

									goto label_5_67
								end
							else
								AdvGREENN[#AdvGREENN] = ""
								Data.Settings.AdvGREENN = table.concat(AdvGREENN, " ")

								var_0_1.save(Data, "Recon")

								goto label_5_66
							end
						else
							for iter_5_27 = 1, #AdvGREENN do
								if dialogListItem == iter_5_27 then
									local var_5_69 = string.format("{F6DB6A}\xCD\xE8\xEA\xED\xE5\xE9\xEC: %s\n{F6DB6A}\xCF\xE0\xF0\xEE\xEB\xFC: %s\n", AdvGREENN[iter_5_27], AdvGREENP[iter_5_27])

									dialogId = 10012
									dialogButton = nil
									dialogListItem = nil
									dialogInput = nil
									dialogBool = false

									sampShowDialog(dialogId, "{FFFFFF}Password", var_5_69, "\xD0\xE5\xE4.", "\xCD\xE0\xE7\xE0\xE4", 0)
									sampSetCurrentDialogEditboxText("123abc")

									while not dialogBool do
										wait(0)

										dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
									end

									if dialogButton ~= 0 then
										::label_5_69::

										local var_5_70 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC\n"

										dialogId = 10011
										dialogButton = nil
										dialogListItem = nil
										dialogInput = nil
										dialogBool = false

										sampShowDialog(dialogId, "{FFFFFF}Nickname", var_5_70, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)

										_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)

										sampSetCurrentDialogEditboxText(AdvGREENN[iter_5_27])

										while not dialogBool do
											wait(0)

											dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
										end

										if dialogButton ~= 0 then
											if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
												dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
												AdvGREENN[iter_5_27] = dialogInput
												Data.Settings.AdvGREENN = table.concat(AdvGREENN, " ")

												var_0_1.save(Data, "Recon")

												::label_5_70::

												local var_5_71 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC\n"

												dialogId = 10012
												dialogButton = nil
												dialogListItem = nil
												dialogInput = nil
												dialogBool = false

												sampShowDialog(dialogId, "{FFFFFF}Password", var_5_71, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)
												sampSetCurrentDialogEditboxText(AdvGREENP[iter_5_27])

												while not dialogBool do
													wait(0)

													dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
												end

												if dialogButton ~= 0 then
													if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
														dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
														AdvGREENP[iter_5_27] = dialogInput
														Data.Settings.AdvGREENP = table.concat(AdvGREENP, " ")

														var_0_1.save(Data, "Recon")
													else
														sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC \xEE\xF2 \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

														goto label_5_70
													end
												else
													goto label_5_69
												end

												goto label_5_66
												goto label_5_71
											end

											if dialogInput == "" then
												sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC4\xE0\xED\xED\xFB\xE5 \xF3\xE4\xE0\xEB\xE5\xED\xFB.", 64154)

												AdvGREENN[iter_5_27] = ""
												Data.Settings.AdvGREENN = table.concat(AdvGREENN, " ")
												AdvGREENP[iter_5_27] = ""
												Data.Settings.AdvGREENP = table.concat(AdvGREENP, " ")

												var_0_1.save(Data, "Recon")

												AdvGREENN = {}
												AdvGREENP = {}
												iter_5_27 = 1

												for iter_5_28 in Data.Settings.AdvGREENN:gmatch("(%S+)") do
													AdvGREENN[iter_5_27] = iter_5_28
													iter_5_27 = iter_5_27 + 1
												end

												iter_5_27 = 1

												for iter_5_29 in Data.Settings.AdvGREENP:gmatch("(%S+)") do
													AdvGREENP[iter_5_27] = iter_5_29
													iter_5_27 = iter_5_27 + 1
												end
											else
												goto label_5_71
											end
										end
									end
								else
									goto label_5_71
								end

								goto label_5_66

								::label_5_71::
							end
						end
					else
						goto label_5_59
					end
				end

				if dialogListItem == 2 then
					::label_5_72::

					local var_5_72 = tostring(string.format("\xD1\xEE\xE7\xE4\xE0\xF2\xFC..\n%s", table.concat(AdvYELLOWN, "\n")))

					dialogId = 1001
					dialogButton = nil
					dialogListItem = nil
					dialogInput = nil
					dialogBool = false

					sampShowDialog(dialogId, "{00FA9A}YELLOW{FFD700} | {00FA9A}Steave Gross", var_5_72, "\xC2\xFB\xE1\xEE\xF0", "\xC2\xFB\xF5\xEE\xE4", 4)

					while not dialogBool do
						wait(0)

						dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
					end

					if dialogButton ~= 0 then
						if dialogListItem == 0 then
							::label_5_73::

							local var_5_73 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC\n"

							dialogId = 10011
							dialogButton = nil
							dialogListItem = nil
							dialogInput = nil
							dialogBool = false

							sampShowDialog(dialogId, "{FFFFFF}Nickname", var_5_73, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)

							_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)

							sampSetCurrentDialogEditboxText(sampGetPlayerNickname(id))

							while not dialogBool do
								wait(0)

								dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
							end

							if dialogButton ~= 0 then
								if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
									dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
									AdvYELLOWN[#AdvYELLOWN + 1] = dialogInput
									Data.Settings.AdvYELLOWN = table.concat(AdvYELLOWN, " ")

									var_0_1.save(Data, "Recon")

									::label_5_74::

									local var_5_74 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC\n"

									dialogId = 10012
									dialogButton = nil
									dialogListItem = nil
									dialogInput = nil
									dialogBool = false

									sampShowDialog(dialogId, "{FFFFFF}Password", var_5_74, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)
									sampSetCurrentDialogEditboxText("123abc")

									while not dialogBool do
										wait(0)

										dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
									end

									if dialogButton ~= 0 then
										if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
											dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
											AdvYELLOWP[#AdvYELLOWP + 1] = dialogInput
											Data.Settings.AdvYELLOWP = table.concat(AdvYELLOWP, " ")

											var_0_1.save(Data, "Recon")
										else
											sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC \xEE\xF2 \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

											goto label_5_74
										end
									else
										goto label_5_73
									end

									goto label_5_72
								else
									sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC \xE2\xE0\xF8\xE5\xE3\xEE \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

									goto label_5_73
								end
							else
								AdvYELLOWN[#AdvYELLOWN] = ""
								Data.Settings.AdvYELLOWN = table.concat(AdvYELLOWN, " ")

								var_0_1.save(Data, "Recon")

								goto label_5_72
							end
						else
							for iter_5_30 = 1, #AdvYELLOWN do
								if dialogListItem == iter_5_30 then
									local var_5_75 = string.format("{F6DB6A}\xCD\xE8\xEA\xED\xE5\xE9\xEC: %s\n{F6DB6A}\xCF\xE0\xF0\xEE\xEB\xFC: %s\n", AdvYELLOWN[iter_5_30], AdvYELLOWP[iter_5_30])

									dialogId = 10012
									dialogButton = nil
									dialogListItem = nil
									dialogInput = nil
									dialogBool = false

									sampShowDialog(dialogId, "{FFFFFF}Password", var_5_75, "\xD0\xE5\xE4.", "\xCD\xE0\xE7\xE0\xE4", 0)
									sampSetCurrentDialogEditboxText("123abc")

									while not dialogBool do
										wait(0)

										dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
									end

									if dialogButton ~= 0 then
										::label_5_75::

										local var_5_76 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC\n"

										dialogId = 10011
										dialogButton = nil
										dialogListItem = nil
										dialogInput = nil
										dialogBool = false

										sampShowDialog(dialogId, "{FFFFFF}Nickname", var_5_76, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)

										_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)

										sampSetCurrentDialogEditboxText(AdvYELLOWN[iter_5_30])

										while not dialogBool do
											wait(0)

											dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
										end

										if dialogButton ~= 0 then
											if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
												dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
												AdvYELLOWN[iter_5_30] = dialogInput
												Data.Settings.AdvYELLOWN = table.concat(AdvYELLOWN, " ")

												var_0_1.save(Data, "Recon")

												::label_5_76::

												local var_5_77 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC\n"

												dialogId = 10012
												dialogButton = nil
												dialogListItem = nil
												dialogInput = nil
												dialogBool = false

												sampShowDialog(dialogId, "{FFFFFF}Password", var_5_77, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)
												sampSetCurrentDialogEditboxText(AdvYELLOWP[iter_5_30])

												while not dialogBool do
													wait(0)

													dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
												end

												if dialogButton ~= 0 then
													if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
														dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
														AdvYELLOWP[iter_5_30] = dialogInput
														Data.Settings.AdvYELLOWP = table.concat(AdvYELLOWP, " ")

														var_0_1.save(Data, "Recon")
													else
														sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC \xEE\xF2 \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

														goto label_5_76
													end
												else
													goto label_5_75
												end

												goto label_5_72
												goto label_5_77
											end

											if dialogInput == "" then
												sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC4\xE0\xED\xED\xFB\xE5 \xF3\xE4\xE0\xEB\xE5\xED\xFB.", 64154)

												AdvYELLOWN[iter_5_30] = ""
												Data.Settings.AdvYELLOWN = table.concat(AdvYELLOWN, " ")
												AdvYELLOWP[iter_5_30] = ""
												Data.Settings.AdvYELLOWP = table.concat(AdvYELLOWP, " ")

												var_0_1.save(Data, "Recon")

												AdvYELLOWN = {}
												AdvYELLOWP = {}
												iter_5_30 = 1

												for iter_5_31 in Data.Settings.AdvYELLOWN:gmatch("(%S+)") do
													AdvYELLOWN[iter_5_30] = iter_5_31
													iter_5_30 = iter_5_30 + 1
												end

												iter_5_30 = 1

												for iter_5_32 in Data.Settings.AdvYELLOWP:gmatch("(%S+)") do
													AdvYELLOWP[iter_5_30] = iter_5_32
													iter_5_30 = iter_5_30 + 1
												end
											else
												goto label_5_77
											end
										end
									end
								else
									goto label_5_77
								end

								goto label_5_72

								::label_5_77::
							end
						end
					else
						goto label_5_59
					end
				end

				if dialogListItem == 3 then
					::label_5_78::

					local var_5_78 = tostring(string.format("\xD1\xEE\xE7\xE4\xE0\xF2\xFC..\n%s", table.concat(AdvORANGEN, "\n")))

					dialogId = 1001
					dialogButton = nil
					dialogListItem = nil
					dialogInput = nil
					dialogBool = false

					sampShowDialog(dialogId, "{00FA9A}ORANGE{FFD700} | {00FA9A}Steave Gross", var_5_78, "\xC2\xFB\xE1\xEE\xF0", "\xC2\xFB\xF5\xEE\xE4", 4)

					while not dialogBool do
						wait(0)

						dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
					end

					if dialogButton ~= 0 then
						if dialogListItem == 0 then
							::label_5_79::

							local var_5_79 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC\n"

							dialogId = 10011
							dialogButton = nil
							dialogListItem = nil
							dialogInput = nil
							dialogBool = false

							sampShowDialog(dialogId, "{FFFFFF}Nickname", var_5_79, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)

							_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)

							sampSetCurrentDialogEditboxText(sampGetPlayerNickname(id))

							while not dialogBool do
								wait(0)

								dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
							end

							if dialogButton ~= 0 then
								if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
									dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
									AdvORANGEN[#AdvORANGEN + 1] = dialogInput
									Data.Settings.AdvORANGEN = table.concat(AdvORANGEN, " ")

									var_0_1.save(Data, "Recon")

									::label_5_80::

									local var_5_80 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC\n"

									dialogId = 10012
									dialogButton = nil
									dialogListItem = nil
									dialogInput = nil
									dialogBool = false

									sampShowDialog(dialogId, "{FFFFFF}Password", var_5_80, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)
									sampSetCurrentDialogEditboxText("123abc")

									while not dialogBool do
										wait(0)

										dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
									end

									if dialogButton ~= 0 then
										if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
											dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
											AdvORANGEP[#AdvORANGEP + 1] = dialogInput
											Data.Settings.AdvORANGEP = table.concat(AdvORANGEP, " ")

											var_0_1.save(Data, "Recon")
										else
											sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC \xEE\xF2 \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

											goto label_5_80
										end
									else
										goto label_5_79
									end

									goto label_5_78
								else
									sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC \xE2\xE0\xF8\xE5\xE3\xEE \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

									goto label_5_79
								end
							else
								AdvORANGEN[#AdvORANGEN] = ""
								Data.Settings.AdvORANGEN = table.concat(AdvORANGEN, " ")

								var_0_1.save(Data, "Recon")

								goto label_5_78
							end
						else
							for iter_5_33 = 1, #AdvORANGEN do
								if dialogListItem == iter_5_33 then
									local var_5_81 = string.format("{F6DB6A}\xCD\xE8\xEA\xED\xE5\xE9\xEC: %s\n{F6DB6A}\xCF\xE0\xF0\xEE\xEB\xFC: %s\n", AdvORANGEN[iter_5_33], AdvORANGEP[iter_5_33])

									dialogId = 10012
									dialogButton = nil
									dialogListItem = nil
									dialogInput = nil
									dialogBool = false

									sampShowDialog(dialogId, "{FFFFFF}Password", var_5_81, "\xD0\xE5\xE4.", "\xCD\xE0\xE7\xE0\xE4", 0)
									sampSetCurrentDialogEditboxText("123abc")

									while not dialogBool do
										wait(0)

										dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
									end

									if dialogButton ~= 0 then
										::label_5_81::

										local var_5_82 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC\n"

										dialogId = 10011
										dialogButton = nil
										dialogListItem = nil
										dialogInput = nil
										dialogBool = false

										sampShowDialog(dialogId, "{FFFFFF}Nickname", var_5_82, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)

										_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)

										sampSetCurrentDialogEditboxText(AdvORANGEN[iter_5_33])

										while not dialogBool do
											wait(0)

											dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
										end

										if dialogButton ~= 0 then
											if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
												dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
												AdvORANGEN[iter_5_33] = dialogInput
												Data.Settings.AdvORANGEN = table.concat(AdvORANGEN, " ")

												var_0_1.save(Data, "Recon")

												::label_5_82::

												local var_5_83 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC\n"

												dialogId = 10012
												dialogButton = nil
												dialogListItem = nil
												dialogInput = nil
												dialogBool = false

												sampShowDialog(dialogId, "{FFFFFF}Password", var_5_83, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)
												sampSetCurrentDialogEditboxText(AdvORANGEP[iter_5_33])

												while not dialogBool do
													wait(0)

													dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
												end

												if dialogButton ~= 0 then
													if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
														dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
														AdvORANGEP[iter_5_33] = dialogInput
														Data.Settings.AdvORANGEP = table.concat(AdvORANGEP, " ")

														var_0_1.save(Data, "Recon")
													else
														sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC \xEE\xF2 \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

														goto label_5_82
													end
												else
													goto label_5_81
												end

												goto label_5_78
												goto label_5_83
											end

											if dialogInput == "" then
												sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC4\xE0\xED\xED\xFB\xE5 \xF3\xE4\xE0\xEB\xE5\xED\xFB.", 64154)

												AdvORANGEN[iter_5_33] = ""
												Data.Settings.AdvORANGEN = table.concat(AdvORANGEN, " ")
												AdvORANGEP[iter_5_33] = ""
												Data.Settings.AdvORANGEP = table.concat(AdvORANGEP, " ")

												var_0_1.save(Data, "Recon")

												AdvORANGEN = {}
												AdvORANGEP = {}
												iter_5_33 = 1

												for iter_5_34 in Data.Settings.AdvORANGEN:gmatch("(%S+)") do
													AdvORANGEN[iter_5_33] = iter_5_34
													iter_5_33 = iter_5_33 + 1
												end

												iter_5_33 = 1

												for iter_5_35 in Data.Settings.AdvORANGEP:gmatch("(%S+)") do
													AdvORANGEP[iter_5_33] = iter_5_35
													iter_5_33 = iter_5_33 + 1
												end
											else
												goto label_5_83
											end
										end
									end
								else
									goto label_5_83
								end

								goto label_5_78

								::label_5_83::
							end
						end
					else
						goto label_5_59
					end
				end

				if dialogListItem == 4 then
					::label_5_84::

					local var_5_84 = tostring(string.format("\xD1\xEE\xE7\xE4\xE0\xF2\xFC..\n%s", table.concat(AdvBLUEN, "\n")))

					dialogId = 1001
					dialogButton = nil
					dialogListItem = nil
					dialogInput = nil
					dialogBool = false

					sampShowDialog(dialogId, "{00FA9A}BLUE{FFD700} | {00FA9A}Steave Gross", var_5_84, "\xC2\xFB\xE1\xEE\xF0", "\xC2\xFB\xF5\xEE\xE4", 4)

					while not dialogBool do
						wait(0)

						dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
					end

					if dialogButton ~= 0 then
						if dialogListItem == 0 then
							::label_5_85::

							local var_5_85 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC\n"

							dialogId = 10011
							dialogButton = nil
							dialogListItem = nil
							dialogInput = nil
							dialogBool = false

							sampShowDialog(dialogId, "{FFFFFF}Nickname", var_5_85, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)

							_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)

							sampSetCurrentDialogEditboxText(sampGetPlayerNickname(id))

							while not dialogBool do
								wait(0)

								dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
							end

							if dialogButton ~= 0 then
								if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
									dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
									AdvBLUEN[#AdvBLUEN + 1] = dialogInput
									Data.Settings.AdvBLUEN = table.concat(AdvBLUEN, " ")

									var_0_1.save(Data, "Recon")

									::label_5_86::

									local var_5_86 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC\n"

									dialogId = 10012
									dialogButton = nil
									dialogListItem = nil
									dialogInput = nil
									dialogBool = false

									sampShowDialog(dialogId, "{FFFFFF}Password", var_5_86, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)
									sampSetCurrentDialogEditboxText("123abc")

									while not dialogBool do
										wait(0)

										dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
									end

									if dialogButton ~= 0 then
										if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
											dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
											AdvBLUEP[#AdvBLUEP + 1] = dialogInput
											Data.Settings.AdvBLUEP = table.concat(AdvBLUEP, " ")

											var_0_1.save(Data, "Recon")
										else
											sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC \xEE\xF2 \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

											goto label_5_86
										end
									else
										goto label_5_85
									end

									goto label_5_84
								else
									sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC \xE2\xE0\xF8\xE5\xE3\xEE \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

									goto label_5_85
								end
							else
								AdvBLUEN[#AdvBLUEN] = ""
								Data.Settings.AdvBLUEN = table.concat(AdvBLUEN, " ")

								var_0_1.save(Data, "Recon")

								goto label_5_84
							end
						else
							for iter_5_36 = 1, #AdvBLUEN do
								if dialogListItem == iter_5_36 then
									local var_5_87 = string.format("{F6DB6A}\xCD\xE8\xEA\xED\xE5\xE9\xEC: %s\n{F6DB6A}\xCF\xE0\xF0\xEE\xEB\xFC: %s\n", AdvBLUEN[iter_5_36], AdvBLUEP[iter_5_36])

									dialogId = 10012
									dialogButton = nil
									dialogListItem = nil
									dialogInput = nil
									dialogBool = false

									sampShowDialog(dialogId, "{FFFFFF}Password", var_5_87, "\xD0\xE5\xE4.", "\xCD\xE0\xE7\xE0\xE4", 0)
									sampSetCurrentDialogEditboxText("123abc")

									while not dialogBool do
										wait(0)

										dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
									end

									if dialogButton ~= 0 then
										::label_5_87::

										local var_5_88 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC\n"

										dialogId = 10011
										dialogButton = nil
										dialogListItem = nil
										dialogInput = nil
										dialogBool = false

										sampShowDialog(dialogId, "{FFFFFF}Nickname", var_5_88, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)

										_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)

										sampSetCurrentDialogEditboxText(AdvBLUEN[iter_5_36])

										while not dialogBool do
											wait(0)

											dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
										end

										if dialogButton ~= 0 then
											if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
												dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
												AdvBLUEN[iter_5_36] = dialogInput
												Data.Settings.AdvBLUEN = table.concat(AdvBLUEN, " ")

												var_0_1.save(Data, "Recon")

												::label_5_88::

												local var_5_89 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC\n"

												dialogId = 10012
												dialogButton = nil
												dialogListItem = nil
												dialogInput = nil
												dialogBool = false

												sampShowDialog(dialogId, "{FFFFFF}Password", var_5_89, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)
												sampSetCurrentDialogEditboxText(AdvBLUEP[iter_5_36])

												while not dialogBool do
													wait(0)

													dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
												end

												if dialogButton ~= 0 then
													if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
														dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
														AdvBLUEP[iter_5_36] = dialogInput
														Data.Settings.AdvBLUEP = table.concat(AdvBLUEP, " ")

														var_0_1.save(Data, "Recon")
													else
														sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC \xEE\xF2 \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

														goto label_5_88
													end
												else
													goto label_5_87
												end

												goto label_5_84
												goto label_5_89
											end

											if dialogInput == "" then
												sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC4\xE0\xED\xED\xFB\xE5 \xF3\xE4\xE0\xEB\xE5\xED\xFB.", 64154)

												AdvBLUEN[iter_5_36] = ""
												Data.Settings.AdvBLUEN = table.concat(AdvBLUEN, " ")
												AdvBLUEP[iter_5_36] = ""
												Data.Settings.AdvBLUEP = table.concat(AdvBLUEP, " ")

												var_0_1.save(Data, "Recon")

												AdvBLUEN = {}
												AdvBLUEP = {}
												iter_5_36 = 1

												for iter_5_37 in Data.Settings.AdvBLUEN:gmatch("(%S+)") do
													AdvBLUEN[iter_5_36] = iter_5_37
													iter_5_36 = iter_5_36 + 1
												end

												iter_5_36 = 1

												for iter_5_38 in Data.Settings.AdvBLUEP:gmatch("(%S+)") do
													AdvBLUEP[iter_5_36] = iter_5_38
													iter_5_36 = iter_5_36 + 1
												end
											else
												goto label_5_89
											end
										end
									end
								else
									goto label_5_89
								end

								goto label_5_84

								::label_5_89::
							end
						end
					else
						goto label_5_59
					end
				end

				if dialogListItem == 5 then
					::label_5_90::

					local var_5_90 = tostring(string.format("\xD1\xEE\xE7\xE4\xE0\xF2\xFC..\n%s", table.concat(AdvWHITEN, "\n")))

					dialogId = 1001
					dialogButton = nil
					dialogListItem = nil
					dialogInput = nil
					dialogBool = false

					sampShowDialog(dialogId, "{00FA9A}WHITE{FFD700} | {00FA9A}Steave Gross", var_5_90, "\xC2\xFB\xE1\xEE\xF0", "\xC2\xFB\xF5\xEE\xE4", 4)

					while not dialogBool do
						wait(0)

						dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
					end

					if dialogButton ~= 0 then
						if dialogListItem == 0 then
							::label_5_91::

							local var_5_91 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC\n"

							dialogId = 10011
							dialogButton = nil
							dialogListItem = nil
							dialogInput = nil
							dialogBool = false

							sampShowDialog(dialogId, "{FFFFFF}Nickname", var_5_91, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)

							_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)

							sampSetCurrentDialogEditboxText(sampGetPlayerNickname(id))

							while not dialogBool do
								wait(0)

								dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
							end

							if dialogButton ~= 0 then
								if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
									dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
									AdvWHITEN[#AdvWHITEN + 1] = dialogInput
									Data.Settings.AdvWHITEN = table.concat(AdvWHITEN, " ")

									var_0_1.save(Data, "Recon")

									::label_5_92::

									local var_5_92 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC\n"

									dialogId = 10012
									dialogButton = nil
									dialogListItem = nil
									dialogInput = nil
									dialogBool = false

									sampShowDialog(dialogId, "{FFFFFF}Password", var_5_92, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)
									sampSetCurrentDialogEditboxText("123abc")

									while not dialogBool do
										wait(0)

										dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
									end

									if dialogButton ~= 0 then
										if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
											dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
											AdvWHITEP[#AdvWHITEP + 1] = dialogInput
											Data.Settings.AdvWHITEP = table.concat(AdvWHITEP, " ")

											var_0_1.save(Data, "Recon")
										else
											sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC \xEE\xF2 \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

											goto label_5_92
										end
									else
										goto label_5_91
									end

									goto label_5_90
								else
									sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC \xE2\xE0\xF8\xE5\xE3\xEE \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

									goto label_5_91
								end
							else
								AdvWHITEN[#AdvWHITEN] = ""
								Data.Settings.AdvWHITEN = table.concat(AdvWHITEN, " ")

								var_0_1.save(Data, "Recon")

								goto label_5_90
							end
						else
							for iter_5_39 = 1, #AdvWHITEN do
								if dialogListItem == iter_5_39 then
									local var_5_93 = string.format("{F6DB6A}\xCD\xE8\xEA\xED\xE5\xE9\xEC: %s\n{F6DB6A}\xCF\xE0\xF0\xEE\xEB\xFC: %s\n", AdvWHITEN[iter_5_39], AdvWHITEP[iter_5_39])

									dialogId = 10012
									dialogButton = nil
									dialogListItem = nil
									dialogInput = nil
									dialogBool = false

									sampShowDialog(dialogId, "{FFFFFF}Password", var_5_93, "\xD0\xE5\xE4.", "\xCD\xE0\xE7\xE0\xE4", 0)
									sampSetCurrentDialogEditboxText("123abc")

									while not dialogBool do
										wait(0)

										dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
									end

									if dialogButton ~= 0 then
										::label_5_93::

										local var_5_94 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC\n"

										dialogId = 10011
										dialogButton = nil
										dialogListItem = nil
										dialogInput = nil
										dialogBool = false

										sampShowDialog(dialogId, "{FFFFFF}Nickname", var_5_94, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)

										_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)

										sampSetCurrentDialogEditboxText(AdvWHITEN[iter_5_39])

										while not dialogBool do
											wait(0)

											dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
										end

										if dialogButton ~= 0 then
											if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
												dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
												AdvWHITEN[iter_5_39] = dialogInput
												Data.Settings.AdvWHITEN = table.concat(AdvWHITEN, " ")

												var_0_1.save(Data, "Recon")

												::label_5_94::

												local var_5_95 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC\n"

												dialogId = 10012
												dialogButton = nil
												dialogListItem = nil
												dialogInput = nil
												dialogBool = false

												sampShowDialog(dialogId, "{FFFFFF}Password", var_5_95, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)
												sampSetCurrentDialogEditboxText(AdvWHITEP[iter_5_39])

												while not dialogBool do
													wait(0)

													dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
												end

												if dialogButton ~= 0 then
													if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
														dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
														AdvWHITEP[iter_5_39] = dialogInput
														Data.Settings.AdvWHITEP = table.concat(AdvWHITEP, " ")

														var_0_1.save(Data, "Recon")
													else
														sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC \xEE\xF2 \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

														goto label_5_94
													end
												else
													goto label_5_93
												end

												goto label_5_90
												goto label_5_95
											end

											if dialogInput == "" then
												sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC4\xE0\xED\xED\xFB\xE5 \xF3\xE4\xE0\xEB\xE5\xED\xFB.", 64154)

												AdvWHITEN[iter_5_39] = ""
												Data.Settings.AdvWHITEN = table.concat(AdvWHITEN, " ")
												AdvWHITEP[iter_5_39] = ""
												Data.Settings.AdvWHITEP = table.concat(AdvWHITEP, " ")

												var_0_1.save(Data, "Recon")

												AdvWHITEN = {}
												AdvWHITEP = {}
												iter_5_39 = 1

												for iter_5_40 in Data.Settings.AdvWHITEN:gmatch("(%S+)") do
													AdvWHITEN[iter_5_39] = iter_5_40
													iter_5_39 = iter_5_39 + 1
												end

												iter_5_39 = 1

												for iter_5_41 in Data.Settings.AdvWHITEP:gmatch("(%S+)") do
													AdvWHITEP[iter_5_39] = iter_5_41
													iter_5_39 = iter_5_39 + 1
												end
											else
												goto label_5_95
											end
										end
									end
								else
									goto label_5_95
								end

								goto label_5_90

								::label_5_95::
							end
						end
					else
						goto label_5_59
					end
				end

				if dialogListItem == 6 then
					::label_5_96::

					local var_5_96 = tostring(string.format("\xD1\xEE\xE7\xE4\xE0\xF2\xFC..\n%s", table.concat(AdvSILVERN, "\n")))

					dialogId = 1001
					dialogButton = nil
					dialogListItem = nil
					dialogInput = nil
					dialogBool = false

					sampShowDialog(dialogId, "{00FA9A}SILVER{FFD700} | {00FA9A}Steave Gross", var_5_96, "\xC2\xFB\xE1\xEE\xF0", "\xC2\xFB\xF5\xEE\xE4", 4)

					while not dialogBool do
						wait(0)

						dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
					end

					if dialogButton ~= 0 then
						if dialogListItem == 0 then
							::label_5_97::

							local var_5_97 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC\n"

							dialogId = 10011
							dialogButton = nil
							dialogListItem = nil
							dialogInput = nil
							dialogBool = false

							sampShowDialog(dialogId, "{FFFFFF}Nickname", var_5_97, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)

							_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)

							sampSetCurrentDialogEditboxText(sampGetPlayerNickname(id))

							while not dialogBool do
								wait(0)

								dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
							end

							if dialogButton ~= 0 then
								if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
									dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
									AdvSILVERN[#AdvSILVERN + 1] = dialogInput
									Data.Settings.AdvSILVERN = table.concat(AdvSILVERN, " ")

									var_0_1.save(Data, "Recon")

									::label_5_98::

									local var_5_98 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC\n"

									dialogId = 10012
									dialogButton = nil
									dialogListItem = nil
									dialogInput = nil
									dialogBool = false

									sampShowDialog(dialogId, "{FFFFFF}Password", var_5_98, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)
									sampSetCurrentDialogEditboxText("123abc")

									while not dialogBool do
										wait(0)

										dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
									end

									if dialogButton ~= 0 then
										if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
											dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
											AdvSILVERP[#AdvSILVERP + 1] = dialogInput
											Data.Settings.AdvSILVERP = table.concat(AdvSILVERP, " ")

											var_0_1.save(Data, "Recon")
										else
											sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC \xEE\xF2 \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

											goto label_5_98
										end
									else
										goto label_5_97
									end

									goto label_5_96
								else
									sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC \xE2\xE0\xF8\xE5\xE3\xEE \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

									goto label_5_97
								end
							else
								AdvSILVERN[#AdvSILVERN] = ""
								Data.Settings.AdvSILVERN = table.concat(AdvSILVERN, " ")

								var_0_1.save(Data, "Recon")

								goto label_5_96
							end
						else
							for iter_5_42 = 1, #AdvSILVERN do
								if dialogListItem == iter_5_42 then
									local var_5_99 = string.format("{F6DB6A}\xCD\xE8\xEA\xED\xE5\xE9\xEC: %s\n{F6DB6A}\xCF\xE0\xF0\xEE\xEB\xFC: %s\n", AdvSILVERN[iter_5_42], AdvSILVERP[iter_5_42])

									dialogId = 10012
									dialogButton = nil
									dialogListItem = nil
									dialogInput = nil
									dialogBool = false

									sampShowDialog(dialogId, "{FFFFFF}Password", var_5_99, "\xD0\xE5\xE4.", "\xCD\xE0\xE7\xE0\xE4", 0)
									sampSetCurrentDialogEditboxText("123abc")

									while not dialogBool do
										wait(0)

										dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
									end

									if dialogButton ~= 0 then
										::label_5_99::

										local var_5_100 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC\n"

										dialogId = 10011
										dialogButton = nil
										dialogListItem = nil
										dialogInput = nil
										dialogBool = false

										sampShowDialog(dialogId, "{FFFFFF}Nickname", var_5_100, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)

										_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)

										sampSetCurrentDialogEditboxText(AdvSILVERN[iter_5_42])

										while not dialogBool do
											wait(0)

											dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
										end

										if dialogButton ~= 0 then
											if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
												dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
												AdvSILVERN[iter_5_42] = dialogInput
												Data.Settings.AdvSILVERN = table.concat(AdvSILVERN, " ")

												var_0_1.save(Data, "Recon")

												::label_5_100::

												local var_5_101 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC\n"

												dialogId = 10012
												dialogButton = nil
												dialogListItem = nil
												dialogInput = nil
												dialogBool = false

												sampShowDialog(dialogId, "{FFFFFF}Password", var_5_101, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)
												sampSetCurrentDialogEditboxText(AdvSILVERP[iter_5_42])

												while not dialogBool do
													wait(0)

													dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
												end

												if dialogButton ~= 0 then
													if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
														dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
														AdvSILVERP[iter_5_42] = dialogInput
														Data.Settings.AdvSILVERP = table.concat(AdvSILVERP, " ")

														var_0_1.save(Data, "Recon")
													else
														sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC \xEE\xF2 \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

														goto label_5_100
													end
												else
													goto label_5_99
												end

												goto label_5_96
												goto label_5_101
											end

											if dialogInput == "" then
												sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC4\xE0\xED\xED\xFB\xE5 \xF3\xE4\xE0\xEB\xE5\xED\xFB.", 64154)

												AdvSILVERN[iter_5_42] = ""
												Data.Settings.AdvSILVERN = table.concat(AdvSILVERN, " ")
												AdvSILVERP[iter_5_42] = ""
												Data.Settings.AdvSILVERP = table.concat(AdvSILVERP, " ")

												var_0_1.save(Data, "Recon")

												AdvSILVERN = {}
												AdvSILVERP = {}
												iter_5_42 = 1

												for iter_5_43 in Data.Settings.AdvSILVERN:gmatch("(%S+)") do
													AdvSILVERN[iter_5_42] = iter_5_43
													iter_5_42 = iter_5_42 + 1
												end

												iter_5_42 = 1

												for iter_5_44 in Data.Settings.AdvSILVERP:gmatch("(%S+)") do
													AdvSILVERP[iter_5_42] = iter_5_44
													iter_5_42 = iter_5_42 + 1
												end
											else
												goto label_5_101
											end
										end
									end
								else
									goto label_5_101
								end

								goto label_5_96

								::label_5_101::
							end
						end
					else
						goto label_5_59
					end
				end

				if dialogListItem == 7 then
					::label_5_102::

					local var_5_102 = tostring(string.format("\xD1\xEE\xE7\xE4\xE0\xF2\xFC..\n%s", table.concat(AdvPURPLEN, "\n")))

					dialogId = 1001
					dialogButton = nil
					dialogListItem = nil
					dialogInput = nil
					dialogBool = false

					sampShowDialog(dialogId, "{00FA9A}PURPLE{FFD700} | {00FA9A}Steave Gross", var_5_102, "\xC2\xFB\xE1\xEE\xF0", "\xC2\xFB\xF5\xEE\xE4", 4)

					while not dialogBool do
						wait(0)

						dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
					end

					if dialogButton ~= 0 then
						if dialogListItem == 0 then
							::label_5_103::

							local var_5_103 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC\n"

							dialogId = 10011
							dialogButton = nil
							dialogListItem = nil
							dialogInput = nil
							dialogBool = false

							sampShowDialog(dialogId, "{FFFFFF}Nickname", var_5_103, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)

							_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)

							sampSetCurrentDialogEditboxText(sampGetPlayerNickname(id))

							while not dialogBool do
								wait(0)

								dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
							end

							if dialogButton ~= 0 then
								if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
									dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
									AdvPURPLEN[#AdvPURPLEN + 1] = dialogInput
									Data.Settings.AdvPURPLEN = table.concat(AdvPURPLEN, " ")

									var_0_1.save(Data, "Recon")

									::label_5_104::

									local var_5_104 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC\n"

									dialogId = 10012
									dialogButton = nil
									dialogListItem = nil
									dialogInput = nil
									dialogBool = false

									sampShowDialog(dialogId, "{FFFFFF}Password", var_5_104, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)
									sampSetCurrentDialogEditboxText("123abc")

									while not dialogBool do
										wait(0)

										dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
									end

									if dialogButton ~= 0 then
										if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
											dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
											AdvPURPLEP[#AdvPURPLEP + 1] = dialogInput
											Data.Settings.AdvPURPLEP = table.concat(AdvPURPLEP, " ")

											var_0_1.save(Data, "Recon")
										else
											sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC \xEE\xF2 \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

											goto label_5_104
										end
									else
										goto label_5_103
									end

									goto label_5_102
								else
									sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC \xE2\xE0\xF8\xE5\xE3\xEE \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

									goto label_5_103
								end
							else
								AdvPURPLEN[#AdvPURPLEN] = ""
								Data.Settings.AdvPURPLEN = table.concat(AdvPURPLEN, " ")

								var_0_1.save(Data, "Recon")

								goto label_5_102
							end
						else
							for iter_5_45 = 1, #AdvPURPLEN do
								if dialogListItem == iter_5_45 then
									local var_5_105 = string.format("{F6DB6A}\xCD\xE8\xEA\xED\xE5\xE9\xEC: %s\n{F6DB6A}\xCF\xE0\xF0\xEE\xEB\xFC: %s\n", AdvPURPLEN[iter_5_45], AdvPURPLEP[iter_5_45])

									dialogId = 10012
									dialogButton = nil
									dialogListItem = nil
									dialogInput = nil
									dialogBool = false

									sampShowDialog(dialogId, "{FFFFFF}Password", var_5_105, "\xD0\xE5\xE4.", "\xCD\xE0\xE7\xE0\xE4", 0)
									sampSetCurrentDialogEditboxText("123abc")

									while not dialogBool do
										wait(0)

										dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
									end

									if dialogButton ~= 0 then
										::label_5_105::

										local var_5_106 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC\n"

										dialogId = 10011
										dialogButton = nil
										dialogListItem = nil
										dialogInput = nil
										dialogBool = false

										sampShowDialog(dialogId, "{FFFFFF}Nickname", var_5_106, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)

										_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)

										sampSetCurrentDialogEditboxText(AdvPURPLEN[iter_5_45])

										while not dialogBool do
											wait(0)

											dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
										end

										if dialogButton ~= 0 then
											if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
												dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
												AdvPURPLEN[iter_5_45] = dialogInput
												Data.Settings.AdvPURPLEN = table.concat(AdvPURPLEN, " ")

												var_0_1.save(Data, "Recon")

												::label_5_106::

												local var_5_107 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC\n"

												dialogId = 10012
												dialogButton = nil
												dialogListItem = nil
												dialogInput = nil
												dialogBool = false

												sampShowDialog(dialogId, "{FFFFFF}Password", var_5_107, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)
												sampSetCurrentDialogEditboxText(AdvPURPLEP[iter_5_45])

												while not dialogBool do
													wait(0)

													dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
												end

												if dialogButton ~= 0 then
													if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
														dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
														AdvPURPLEP[iter_5_45] = dialogInput
														Data.Settings.AdvPURPLEP = table.concat(AdvPURPLEP, " ")

														var_0_1.save(Data, "Recon")
													else
														sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC \xEE\xF2 \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

														goto label_5_106
													end
												else
													goto label_5_105
												end

												goto label_5_102
												goto label_5_107
											end

											if dialogInput == "" then
												sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC4\xE0\xED\xED\xFB\xE5 \xF3\xE4\xE0\xEB\xE5\xED\xFB.", 64154)

												AdvPURPLEN[iter_5_45] = ""
												Data.Settings.AdvPURPLEN = table.concat(AdvPURPLEN, " ")
												AdvPURPLEP[iter_5_45] = ""
												Data.Settings.AdvPURPLEP = table.concat(AdvPURPLEP, " ")

												var_0_1.save(Data, "Recon")

												AdvPURPLEN = {}
												AdvPURPLEP = {}
												iter_5_45 = 1

												for iter_5_46 in Data.Settings.AdvPURPLEN:gmatch("(%S+)") do
													AdvPURPLEN[iter_5_45] = iter_5_46
													iter_5_45 = iter_5_45 + 1
												end

												iter_5_45 = 1

												for iter_5_47 in Data.Settings.AdvPURPLEP:gmatch("(%S+)") do
													AdvPURPLEP[iter_5_45] = iter_5_47
													iter_5_45 = iter_5_45 + 1
												end
											else
												goto label_5_107
											end
										end
									end
								else
									goto label_5_107
								end

								goto label_5_102

								::label_5_107::
							end
						end
					else
						goto label_5_59
					end
				end

				if dialogListItem == 8 then
					::label_5_108::

					local var_5_108 = tostring(string.format("\xD1\xEE\xE7\xE4\xE0\xF2\xFC..\n%s", table.concat(AdvCHOCOLATEN, "\n")))

					dialogId = 1001
					dialogButton = nil
					dialogListItem = nil
					dialogInput = nil
					dialogBool = false

					sampShowDialog(dialogId, "{00FA9A}CHOCOLATE{FFD700} | {00FA9A}Steave Gross", var_5_108, "\xC2\xFB\xE1\xEE\xF0", "\xC2\xFB\xF5\xEE\xE4", 4)

					while not dialogBool do
						wait(0)

						dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
					end

					if dialogButton ~= 0 then
						if dialogListItem == 0 then
							::label_5_109::

							local var_5_109 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC\n"

							dialogId = 10011
							dialogButton = nil
							dialogListItem = nil
							dialogInput = nil
							dialogBool = false

							sampShowDialog(dialogId, "{FFFFFF}Nickname", var_5_109, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)

							_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)

							sampSetCurrentDialogEditboxText(sampGetPlayerNickname(id))

							while not dialogBool do
								wait(0)

								dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
							end

							if dialogButton ~= 0 then
								if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
									dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
									AdvCHOCOLATEN[#AdvCHOCOLATEN + 1] = dialogInput
									Data.Settings.AdvCHOCOLATEN = table.concat(AdvCHOCOLATEN, " ")

									var_0_1.save(Data, "Recon")

									::label_5_110::

									local var_5_110 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC\n"

									dialogId = 10012
									dialogButton = nil
									dialogListItem = nil
									dialogInput = nil
									dialogBool = false

									sampShowDialog(dialogId, "{FFFFFF}Password", var_5_110, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)
									sampSetCurrentDialogEditboxText("123abc")

									while not dialogBool do
										wait(0)

										dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
									end

									if dialogButton ~= 0 then
										if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
											dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
											AdvCHOCOLATEP[#AdvCHOCOLATEP + 1] = dialogInput
											Data.Settings.AdvCHOCOLATEP = table.concat(AdvCHOCOLATEP, " ")

											var_0_1.save(Data, "Recon")
										else
											sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC \xEE\xF2 \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

											goto label_5_110
										end
									else
										goto label_5_109
									end

									goto label_5_108
								else
									sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC \xE2\xE0\xF8\xE5\xE3\xEE \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

									goto label_5_109
								end
							else
								AdvCHOCOLATEN[#AdvCHOCOLATEN] = ""
								Data.Settings.AdvCHOCOLATEN = table.concat(AdvCHOCOLATEN, " ")

								var_0_1.save(Data, "Recon")

								goto label_5_108
							end
						else
							for iter_5_48 = 1, #AdvCHOCOLATEN do
								if dialogListItem == iter_5_48 then
									local var_5_111 = string.format("{F6DB6A}\xCD\xE8\xEA\xED\xE5\xE9\xEC: %s\n{F6DB6A}\xCF\xE0\xF0\xEE\xEB\xFC: %s\n", AdvCHOCOLATEN[iter_5_48], AdvCHOCOLATEP[iter_5_48])

									dialogId = 10012
									dialogButton = nil
									dialogListItem = nil
									dialogInput = nil
									dialogBool = false

									sampShowDialog(dialogId, "{FFFFFF}Password", var_5_111, "\xD0\xE5\xE4.", "\xCD\xE0\xE7\xE0\xE4", 0)
									sampSetCurrentDialogEditboxText("123abc")

									while not dialogBool do
										wait(0)

										dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
									end

									if dialogButton ~= 0 then
										::label_5_111::

										local var_5_112 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xED\xE8\xEA\xED\xE5\xE9\xEC\n"

										dialogId = 10011
										dialogButton = nil
										dialogListItem = nil
										dialogInput = nil
										dialogBool = false

										sampShowDialog(dialogId, "{FFFFFF}Nickname", var_5_112, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)

										_, id = sampGetPlayerIdByCharHandle(PLAYER_PED)

										sampSetCurrentDialogEditboxText(AdvCHOCOLATEN[iter_5_48])

										while not dialogBool do
											wait(0)

											dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
										end

										if dialogButton ~= 0 then
											if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
												dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
												AdvCHOCOLATEN[iter_5_48] = dialogInput
												Data.Settings.AdvCHOCOLATEN = table.concat(AdvCHOCOLATEN, " ")

												var_0_1.save(Data, "Recon")

												::label_5_112::

												local var_5_113 = "{F6DB6A}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC\n"

												dialogId = 10012
												dialogButton = nil
												dialogListItem = nil
												dialogInput = nil
												dialogBool = false

												sampShowDialog(dialogId, "{FFFFFF}Password", var_5_113, "\xCF\xF0\xE8\xEC\xE5\xED\xE8\xF2\xFC", "\xCD\xE0\xE7\xE0\xE4", 1)
												sampSetCurrentDialogEditboxText(AdvCHOCOLATEP[iter_5_48])

												while not dialogBool do
													wait(0)

													dialogBool, dialogButton, dialogListItem, dialogInput = sampHasDialogRespond(dialogId)
												end

												if dialogButton ~= 0 then
													if dialogInput ~= nil and #dialogInput > 0 and string.find(dialogInput, "%S+") then
														dialogInput = tostring(string.match(dialogInput, "^(%S+)"))
														AdvCHOCOLATEP[iter_5_48] = dialogInput
														Data.Settings.AdvCHOCOLATEP = table.concat(AdvCHOCOLATEP, " ")

														var_0_1.save(Data, "Recon")
													else
														sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 \xEF\xE0\xF0\xEE\xEB\xFC \xEE\xF2 \xE0\xEA\xEA\xE0\xF3\xED\xF2\xE0.", 64154)

														goto label_5_112
													end
												else
													goto label_5_111
												end

												goto label_5_108
												goto label_5_113
											end

											if dialogInput == "" then
												sampAddChatMessage("{00FA9A}Recon{FFD700} |{FFFFFF} \xC4\xE0\xED\xED\xFB\xE5 \xF3\xE4\xE0\xEB\xE5\xED\xFB.", 64154)

												AdvCHOCOLATEN[iter_5_48] = ""
												Data.Settings.AdvCHOCOLATEN = table.concat(AdvCHOCOLATEN, " ")
												AdvCHOCOLATEP[iter_5_48] = ""
												Data.Settings.AdvCHOCOLATEP = table.concat(AdvCHOCOLATEP, " ")

												var_0_1.save(Data, "Recon")

												AdvCHOCOLATEN = {}
												AdvCHOCOLATEP = {}
												iter_5_48 = 1

												for iter_5_49 in Data.Settings.AdvCHOCOLATEN:gmatch("(%S+)") do
													AdvCHOCOLATEN[iter_5_48] = iter_5_49
													iter_5_48 = iter_5_48 + 1
												end

												iter_5_48 = 1

												for iter_5_50 in Data.Settings.AdvCHOCOLATEP:gmatch("(%S+)") do
													AdvCHOCOLATEP[iter_5_48] = iter_5_50
													iter_5_48 = iter_5_48 + 1
												end
											else
												goto label_5_113
											end
										end
									end
								else
									goto label_5_113
								end

								goto label_5_108

								::label_5_113::
							end
						end
					else
						goto label_5_59
					end
				end
			else
				goto label_5_0
			end
		end
	end
end

function UpdRecon()
	local var_6_0 = "{00FA9A}v 1.0 : {F6DB6A}GW Connect = AutoLogin + AutoReconnect + Reconnect + Fast Connect\n\n{FFFFFF}by {00FA9A}Steave Gross\n{FFFFFF}\xC5\xF1\xEB\xE8 \xED\xE0\xF8\xEB\xE8\xF1\xFC \xE1\xE0\xE3\xE8 - \xEF\xE8\xF8\xE8\xF2\xE5 \xE2 TG (@steave90) \xE8\xEB\xE8 \xE2 VK (vk.com/rp_gw)."

	dialogId = 1002
	dialogButton = nil
	dialogListItem = nil
	dialogInput = nil
	dialogBool = false

	sampShowDialog(dialogId, "{FFFFFF}\xCE\xE1\xED\xEE\xE2\xEB\xE5\xED\xE8\xFF", var_6_0, "\xC7\xE0\xEA\xF0\xFB\xF2\xFC", "", 0)

	if dialogButton == 0 then
		-- block empty
	end
end

function update()
	local var_7_0 = os.getenv("TEMP") .. "\\recon_version.json"

	downloadUrlToFile("https://raw.githubusercontent.com/steave90/GW-connect/master/recon.json", var_7_0, function(arg_8_0, arg_8_1, arg_8_2, arg_8_3)
		if arg_8_1 == var_0_2.STATUS_ENDDOWNLOADDATA then
			local var_8_0 = io.open(var_7_0, "r")

			if var_8_0 then
				local var_8_1 = decodeJson(var_8_0:read("*a"))

				updatelink = var_8_1.updateurl

				if var_8_1 and var_8_1.latest then
					version = var_8_1.latest

					if tonumber(version) > tonumber(thisScript().version) then
						sampAddChatMessage("{FF5555}recon UPDATE{FFD700} |{FFFFFF} \xCE\xE1\xED\xEE\xE2\xEB\xE5\xED\xE8\xE5 \xED\xE0\xE9\xE4\xE5\xED\xEE.", 16777215)
						lua_thread.create(goupdate)
					else
						sampAddChatMessage("{00FA9A}recon{FFD700} |{FFFFFF} \xCE\xE1\xED\xEE\xE2\xEB\xE5\xED\xE8\xE9 \xED\xE5 \xED\xE0\xE9\xE4\xE5\xED\xEE", 16777215)

						update = false
					end
				end
			end
		end
	end)
end

function goupdate()
	wait(1500)
	sampAddChatMessage("{FF5555}recon UPDATE{FFD700} |{FFFFFF} \xCE\xE1\xED\xEE\xE2\xEB\xE5\xED\xE8\xE5 \xE4\xEE \xE2\xE5\xF0\xF1\xE8\xE8: {00FA9A}" .. version, 16777215)
	sampAddChatMessage("{FF5555}recon UPDATE{FFD700} |{FFFFFF} \xD2\xE5\xEA\xF3\xF9\xE0\xFF \xE2\xE5\xF0\xF1\xE8\xFF: {00FA9A}" .. thisScript().version, 16777215)
	wait(10)
	downloadUrlToFile(updatelink, thisScript().path, function(arg_10_0, arg_10_1, arg_10_2, arg_10_3)
		if arg_10_1 == var_0_2.STATUS_ENDDOWNLOADDATA then
			sampAddChatMessage("{FF5555}recon UPDATE{FFD700} | {FFFFFF}\xCE\xE1\xED\xEE\xE2\xEB\xE5\xED\xE8\xE5 \xE7\xE0\xE2\xE5\xF0\xF8\xE5\xED\xEE!", 16777215)
			sampAddChatMessage("{FF5555}recon UPDATE{FFD700} | {FFFFFF}\xC2\xE2\xE5\xE4\xE8\xF2\xE5 /updrecon, \xF7\xF2\xEE\xE1\xFB \xF3\xE7\xED\xE0\xF2\xFC \xEF\xEE\xE4\xF0\xEE\xE1\xED\xE5\xE5 \xEE\xE1 \xEE\xE1\xED\xEE\xE2\xEB\xE5\xED\xE8\xE8.", 16777215)

			goplay = 1

			thisScript():reload()
		end
	end)
end
