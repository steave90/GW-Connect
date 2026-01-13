script_version("1.3")

function _()
	(""):�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()(""):�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()(""):�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()(""):�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()(""):�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()
end

require("lib.moonloader")

local var_0_0 = require("lib.samp.events")
local var_0_1 = require("lfs")
local var_0_2 = require("memory")
local var_0_3 = require("imgui")
local var_0_4 = require("encoding")
local var_0_5 = require("moonloader").download_status
local var_0_6 = require("faIcons")
local var_0_7 = require("cjson")
local var_0_8 = require("basexx")
local var_0_9 = require("sha1")
local var_0_10
local var_0_11 = {}
local var_0_12 = {}
local var_0_13
local var_0_14
local var_0_15
local var_0_16
local var_0_17
local var_0_18
local var_0_19 = {
	servername = "\xCD\xE0\xE7\xE2\xE0\xED\xE8\xE5 \xF1\xE5\xF0\xE2\xE5\xF0\xE0",
	name = "\xCD\xE0\xE7\xE2\xE0\xED\xE8\xE5",
	addserver = "\xC4\xEE\xE1\xE0\xE2\xE8\xF2\xFC \xF1\xE5\xF0\xE2\xE5\xF0",
	logindialogid = "id \xE4\xE8\xE0\xEB\xEE\xE3\xE0 \xE2\xF5\xEE\xE4\xE0",
	updfound = "\xCE\xE1\xED\xEE\xE2\xEB\xE5\xED\xE8\xE5 \xED\xE0\xE9\xE4\xE5\xED\xEE!",
	projectexist = "\xD2\xE0\xEA\xEE\xE9 \xEF\xF0\xEE\xE5\xEA\xF2 \xF1\xF3\xF9\xE5\xF1\xF2\xE2\xF3\xE5\xF2",
	serverip = "ip \xF1\xE5\xF0\xE2\xE5\xF0\xE0",
	english = "English",
	connect = "\xCF\xC5\xD0\xC5\xC9\xD2\xC8 \xCD\xC0 \xD1\xC5\xD0\xC2\xC5\xD0",
	russian = "\xD0\xF3\xF1\xF1\xEA\xE8\xE9",
	accountexist = "\xD2\xE0\xEA\xEE\xE9 \xE0\xEA\xEA\xE0\xF3\xED\xF2 \xF1\xF3\xF9\xE5\xF1\xF2\xE2\xF3\xE5\xF2",
	author_translate = "\xC0\xE2\xF2\xEE\xF0",
	delete = "\xD3\xC4\xC0\xCB\xC8\xD2\xDC",
	addaccount = "\xC4\xEE\xE1\xE0\xE2\xE8\xF2\xFC \xE0\xEA\xEA\xE0\xF3\xED\xF2",
	server_settings = "\xCD\xC0\xD1\xD2\xD0\xCE\xC9\xCA\xC8 \xD1\xC5\xD0\xC2\xC5\xD0\xC0",
	delay = "\xC7\xE0\xE4\xE5\xF0\xE6\xEA\xE0 \xEF\xE5\xF0\xE5\xEF\xEE\xE4\xEA\xEB\xFE\xF7\xE5\xED\xE8\xE9",
	editaccount = "\xC8\xE7\xEC\xE5\xED\xE8\xF2\xFC \xE0\xEA\xEA\xE0\xF3\xED\xF2",
	settings = "\xCD\xE0\xF1\xF2\xF0\xEE\xE9\xEA\xE8",
	serverport = "port \xF1\xE5\xF0\xE2\xE5\xF0\xE0",
	sec = "\xD1\xE5\xEA\xF3\xED\xE4",
	projects = "\xCF\xD0\xCE\xC5\xCA\xD2\xDB",
	input = "\xC2\xE2\xE5\xE4\xE8\xF2\xE5",
	addproject = "\xC4\xEE\xE1\xE0\xE2\xE8\xF2\xFC \xEF\xF0\xEE\xE5\xEA\xF2",
	editserver = "\xC8\xE7\xEC\xE5\xED\xE8\xF2\xFC \xF1\xE5\xF0\xE2\xE5\xF0",
	author_sub = "{FFFFFF}\xD0\xE5\xEA\xEE\xED\xED\xE5\xEA\xF2: {10bfeb}//re {FFD700}| {FFFFFF}\xD1\xEE \xF1\xEC\xE5\xED\xEE\xE9 \xED\xE8\xEA\xE0: {10bfeb}//rn",
	notcorrect = "\xCD\xE5\xE2\xE5\xF0\xED\xEE \xF3\xEA\xE0\xE7\xE0\xED",
	author = "{FFFFFF}\xC0\xEA\xF2\xE8\xE2\xE0\xF6\xE8\xFF: {10bfeb}/gwconnect {FFD700}|{FFFFFF} \xC0\xE2\xF2\xEE\xF0: {00FA9A}Steave Gross",
	servers = "\xD1\xC5\xD0\xC2\xC5\xD0\xC0",
	updfinished = "\xCE\xE1\xED\xEE\xE2\xEB\xE5\xED\xE8\xE5 \xE7\xE0\xE2\xE5\xF0\xF8\xE5\xED\xEE!",
	password = "\xCF\xE0\xF0\xEE\xEB\xFC",
	invalid_gauth = "\xCD\xE5\xE2\xE0\xEB\xE8\xE4\xED\xFB\xE9 Google Authenticator.",
	nickname = "\xCD\xE8\xEA\xED\xE5\xE9\xEC",
	editproject = "\xC8\xE7\xEC\xE5\xED\xE8\xF2\xFC \xEF\xF0\xEE\xE5\xEA\xF2",
	serverexist = "\xD2\xE0\xEA\xEE\xE9 \xF1\xE5\xF0\xE2\xE5\xF0 \xF3\xE6\xE5 \xF1\xF3\xF9\xE5\xF1\xF2\xE2\xF3\xE5\xF2",
	accounts = "\xC0\xCA\xCA\xC0\xD3\xCD\xD2\xDB"
}
local var_0_20 = {
	servername = "Server name",
	name = "Name",
	addserver = "Add server",
	logindialogid = "Login dialog id",
	updfound = "Update found!",
	projectexist = "This project already exists",
	serverip = "Server ip",
	english = "English",
	connect = "GO TO SERVER",
	russian = "\xD0\xF3\xF1\xF1\xEA\xE8\xE9",
	accountexist = "This account already exists",
	author_translate = "Author",
	delete = "DELETE",
	addaccount = "Add account",
	server_settings = "SERVER SETTINGS",
	delay = "Delay between connections",
	editaccount = "Edit account",
	settings = "Settings",
	serverport = "Server port",
	sec = "seconds",
	projects = "PROJECTS",
	input = "Input",
	addproject = "Add project",
	editserver = "Edit server",
	author_sub = "{FFFFFF}Reconnect: {10bfeb}//re {FFD700}| {FFFFFF}With nickname: {10bfeb}//rn",
	notcorrect = "Not correct! Check",
	author = "{FFFFFF}Activation: {10bfeb}/gwconnect {FFD700}|{FFFFFF} Author: {00FA9A}Steave Gross",
	servers = "SERVERS",
	updfinished = "Update completed!",
	password = "Password",
	invalid_gauth = "Invalid Google Authenticator.",
	nickname = "Nickname",
	editproject = "Edit project",
	serverexist = "This server already exists",
	accounts = "ACCOUNTS"
}
local var_0_21 = string.lower
local var_0_22 = string.sub
local var_0_23 = string.char
local var_0_24 = string.upper
local var_0_25 = table.concat
local var_0_26 = {}
local var_0_27 = {}

for iter_0_0 = 192, 223 do
	local var_0_28 = var_0_23(iter_0_0)
	local var_0_29 = var_0_23(iter_0_0 + 32)

	var_0_27[var_0_28] = var_0_29
	var_0_26[var_0_29] = var_0_28
end

local var_0_30 = var_0_23(168)
local var_0_31 = var_0_23(184)

var_0_27[var_0_30] = var_0_31
var_0_26[var_0_31] = var_0_30

function string.nlower(arg_2_0)
	arg_2_0 = var_0_21(arg_2_0)

	local var_2_0 = #arg_2_0
	local var_2_1 = {}

	for iter_2_0 = 1, var_2_0 do
		local var_2_2 = var_0_22(arg_2_0, iter_2_0, iter_2_0)

		var_2_1[iter_2_0] = var_0_27[var_2_2] or var_2_2
	end

	return var_0_25(var_2_1)
end

function string.nupper(arg_3_0)
	arg_3_0 = var_0_24(arg_3_0)

	local var_3_0 = #arg_3_0
	local var_3_1 = {}

	for iter_3_0 = 1, var_3_0 do
		local var_3_2 = var_0_22(arg_3_0, iter_3_0, iter_3_0)

		var_3_1[iter_3_0] = var_0_26[var_3_2] or var_3_2
	end

	return var_0_25(var_3_1)
end

local var_0_32 = var_0_3.ImBool(false)
local var_0_33 = var_0_3.ImBool(false)
local var_0_34 = var_0_3.ImBool(false)
local var_0_35 = var_0_3.ImBool(false)
local var_0_36 = var_0_3.ImBool(false)
local var_0_37 = var_0_3.ImBool(false)
local var_0_38 = var_0_3.ImBool(false)
local var_0_39 = var_0_3.ImBool(false)
local var_0_40 = var_0_3.ImBuffer(25)
local var_0_41 = var_0_3.ImBuffer(100)
local var_0_42 = var_0_3.ImBuffer(25)
local var_0_43 = var_0_3.ImBuffer(16)
local var_0_44 = var_0_3.ImInt(7777)
local var_0_45 = var_0_3.ImInt(1)
local var_0_46 = var_0_3.ImInt(10)
local var_0_47 = var_0_3.ImBuffer(25)
local var_0_48 = var_0_3.ImBuffer(100)
local var_0_49 = var_0_3.ImBool(false)
local var_0_50 = var_0_3.InputTextFlags.CharsNoBlank

var_0_4.default = "CP1251"
u8 = var_0_4.UTF8

local var_0_51 = var_0_3.ImGlyphRanges({
	var_0_6.min_range,
	var_0_6.max_range
})

function var_0_3.BeforeDrawFrame()
	if var_0_10 == nil then
		local var_4_0 = var_0_3.ImFontConfig()

		var_4_0.MergeMode = true
		var_0_10 = var_0_3.GetIO().Fonts:AddFontFromFileTTF("moonloader/lib/fontawesome-webfont.ttf", 14, var_4_0, var_0_51)
	end
end

function apply_custom_style()
	local var_5_0 = var_0_3.GetStyle()
	local var_5_1 = var_5_0.Colors
	local var_5_2 = var_0_3.Col
	local var_5_3 = var_0_3.ImVec4

	var_5_0.WindowRounding = 1.5
	var_5_0.WindowTitleAlign = var_0_3.ImVec2(0.5, 0.5)
	var_5_0.ChildWindowRounding = 1.5
	var_5_0.FrameRounding = 1
	var_5_0.ItemSpacing = var_0_3.ImVec2(5, 4)
	var_5_0.ScrollbarSize = 13
	var_5_0.ScrollbarRounding = 0
	var_5_0.GrabMinSize = 8
	var_5_0.GrabRounding = 1
	var_5_0.ButtonTextAlign = var_0_3.ImVec2(0.5, 0.5)
	var_5_0.WindowPadding = var_0_3.ImVec2(4, 4)
	var_5_0.FramePadding = var_0_3.ImVec2(4, 4)
	var_5_1[var_5_2.Text] = var_5_3(1, 1, 1, 1)
	var_5_1[var_5_2.TextDisabled] = var_5_3(0.5, 0.5, 0.5, 1)
	var_5_1[var_5_2.WindowBg] = var_0_3.ImColor(20, 20, 20, 255):GetVec4()
	var_5_1[var_5_2.ChildWindowBg] = var_5_3(1, 1, 1, 0)
	var_5_1[var_5_2.PopupBg] = var_5_3(0.08, 0.08, 0.08, 0.94)
	var_5_1[var_5_2.ComboBg] = var_5_1[var_5_2.PopupBg]
	var_5_1[var_5_2.Border] = var_0_3.ImColor(40, 142, 110, 90):GetVec4()
	var_5_1[var_5_2.BorderShadow] = var_5_3(0, 0, 0, 0)
	var_5_1[var_5_2.FrameBg] = var_0_3.ImColor(40, 142, 110, 113):GetVec4()
	var_5_1[var_5_2.FrameBgHovered] = var_0_3.ImColor(40, 142, 110, 164):GetVec4()
	var_5_1[var_5_2.FrameBgActive] = var_0_3.ImColor(40, 142, 110, 255):GetVec4()
	var_5_1[var_5_2.TitleBg] = var_0_3.ImColor(40, 142, 110, 236):GetVec4()
	var_5_1[var_5_2.TitleBgActive] = var_0_3.ImColor(40, 142, 110, 236):GetVec4()
	var_5_1[var_5_2.TitleBgCollapsed] = var_5_3(0.05, 0.05, 0.05, 0.79)
	var_5_1[var_5_2.MenuBarBg] = var_5_3(0.14, 0.14, 0.14, 1)
	var_5_1[var_5_2.ScrollbarBg] = var_5_3(0.02, 0.02, 0.02, 0.53)
	var_5_1[var_5_2.ScrollbarGrab] = var_0_3.ImColor(40, 142, 110, 236):GetVec4()
	var_5_1[var_5_2.ScrollbarGrabHovered] = var_5_3(0.41, 0.41, 0.41, 1)
	var_5_1[var_5_2.ScrollbarGrabActive] = var_5_3(0.51, 0.51, 0.51, 1)
	var_5_1[var_5_2.CheckMark] = var_5_3(1, 1, 1, 1)
	var_5_1[var_5_2.SliderGrab] = var_5_3(0.28, 0.28, 0.28, 1)
	var_5_1[var_5_2.SliderGrabActive] = var_5_3(0.35, 0.35, 0.35, 1)
	var_5_1[var_5_2.Button] = var_0_3.ImColor(35, 35, 35, 255):GetVec4()
	var_5_1[var_5_2.ButtonHovered] = var_0_3.ImColor(35, 121, 93, 174):GetVec4()
	var_5_1[var_5_2.ButtonActive] = var_0_3.ImColor(44, 154, 119, 255):GetVec4()
	var_5_1[var_5_2.Header] = var_0_3.ImColor(40, 142, 110, 255):GetVec4()
	var_5_1[var_5_2.HeaderHovered] = var_5_3(0.34, 0.34, 0.35, 0.89)
	var_5_1[var_5_2.HeaderActive] = var_5_3(0.12, 0.12, 0.12, 0.94)
	var_5_1[var_5_2.Separator] = var_5_1[var_5_2.Border]
	var_5_1[var_5_2.SeparatorHovered] = var_5_3(0.26, 0.59, 0.98, 0.78)
	var_5_1[var_5_2.SeparatorActive] = var_5_3(0.26, 0.59, 0.98, 1)
	var_5_1[var_5_2.ResizeGrip] = var_0_3.ImColor(40, 142, 110, 255):GetVec4()
	var_5_1[var_5_2.ResizeGripHovered] = var_0_3.ImColor(35, 121, 93, 174):GetVec4()
	var_5_1[var_5_2.ResizeGripActive] = var_0_3.ImColor(44, 154, 119, 255):GetVec4()
	var_5_1[var_5_2.CloseButton] = var_5_3(0.41, 0.41, 0.41, 0)
	var_5_1[var_5_2.CloseButtonHovered] = var_5_3(0.98, 0.39, 0.36, 0)
	var_5_1[var_5_2.CloseButtonActive] = var_5_3(0.98, 0.39, 0.36, 0)
	var_5_1[var_5_2.PlotLines] = var_5_3(0.61, 0.61, 0.61, 1)
	var_5_1[var_5_2.PlotLinesHovered] = var_5_3(1, 0.43, 0.35, 1)
	var_5_1[var_5_2.PlotHistogram] = var_5_3(0.9, 0.7, 0, 1)
	var_5_1[var_5_2.PlotHistogramHovered] = var_5_3(1, 0.6, 0, 1)
	var_5_1[var_5_2.TextSelectedBg] = var_5_3(0.26, 0.59, 0.98, 0.35)
	var_5_1[var_5_2.ModalWindowDarkening] = var_5_3(0.1, 0.1, 0.1, 0.35)
end

apply_custom_style()

function main()
	while not isSampAvailable() do
		wait(100)
	end

	if not doesDirectoryExist("moonloader/config") then
		createDirectory("moonloader/config")
	end

	perezahod = false
	FoundedNickName = nil

	loadAllData()
	sampRegisterChatCommand("gwconnect", function()
		var_0_32.v = not var_0_32.v
	end)
	sampAddChatMessage("{00FA9A}GW Connect v" .. thisScript().version .. "{FFD700} | " .. var_0_12.author, 16777215)
	sampAddChatMessage("{00FA9A}GW Connect v" .. thisScript().version .. "{FFD700} | " .. var_0_12.author_sub, 16777215)

	FUNC = lua_thread.create(func)

	sampRegisterChatCommand("gwupdcon", UpdRecon)
	sampRegisterChatCommand("/re", Recon)
	sampRegisterChatCommand("/rn", ReconN)
	sampRegisterChatCommand("diaid", GetDialogId)
	update()

	while update ~= false do
		wait(100)
	end
end

function GetDialogId()
	sampAddChatMessage("Current Dialog Id: " .. sampGetCurrentDialogId(), -1)
end

function saveAllData()
	local var_9_0 = getWorkingDirectory() .. "\\config\\GWConnect.json"
	local var_9_1 = io.open(var_9_0, "w+")

	if var_9_1 then
		json_text = var_0_7.encode(var_0_11)

		var_9_1:write(json_text):close()
	else
		sampAddChatMessage("[GW Connect]: \xD3\xEF\xF1, \xEE\xF8\xE8\xE1\xEA\xE0 \xF1\xEE\xF5\xF0\xE0\xED\xE5\xED\xE8\xA4.", 16733525)
	end
end

function loadAllData()
	local var_10_0 = getWorkingDirectory() .. "\\config\\GWConnect.json"

	if not doesFileExist(var_10_0) then
		local var_10_1 = io.open(var_10_0, "w+")

		if var_10_1 then
			var_0_11 = {
				["Advance RP"] = {
					BLUE = {
						port = 7777,
						ip = "5.254.104.135",
						["Dialog ID"] = 1,
						Delay = 0
					},
					GREEN = {
						port = 7777,
						ip = "5.254.104.132",
						["Dialog ID"] = 1,
						Delay = 0
					},
					RED = {
						port = 7777,
						ip = "5.254.104.131",
						["Dialog ID"] = 1,
						Delay = 1
					}
				},
				["Arizona RP"] = {
					Brainburg = {
						port = 7777,
						ip = "185.169.134.45",
						["Dialog ID"] = 2,
						Delay = 0
					},
					Chandler = {
						port = 7777,
						ip = "185.169.134.44",
						["Dialog ID"] = 2,
						Delay = 0
					},
					Mesa = {
						port = 7777,
						ip = "185.169.134.59",
						["Dialog ID"] = 2,
						Delay = 0
					},
					Phoenix = {
						port = 7777,
						ip = "185.169.134.3",
						["Dialog ID"] = 2,
						Delay = 0
					},
					Prescott = {
						port = 7777,
						ip = "185.169.134.166",
						["Dialog ID"] = 2,
						Delay = 0
					},
					["Red Rock"] = {
						port = 7777,
						ip = "185.169.134.61",
						["Dialog ID"] = 2,
						Delay = 0
					},
					["Saint Rose"] = {
						port = 7777,
						ip = "185.169.134.5",
						["Dialog ID"] = 2,
						Delay = 0
					},
					Scottdale = {
						port = 7777,
						ip = "185.169.134.43",
						["Dialog ID"] = 2,
						Delay = 0
					},
					Surprise = {
						port = 7777,
						ip = "185.169.134.109",
						["Dialog ID"] = 2,
						Delay = 0
					},
					Tucson = {
						port = 7777,
						ip = "185.169.134.4",
						["Dialog ID"] = 2,
						Delay = 0
					},
					Yuma = {
						port = 7777,
						ip = "185.169.134.107",
						["Dialog ID"] = 2,
						Delay = 0
					}
				},
				["DIAMOND RP"] = {
					AMBER = {
						port = 7777,
						ip = "194.61.44.67",
						["Dialog ID"] = 2,
						Delay = 0
					},
					CRYSTAL = {
						port = 7777,
						ip = "194.61.44.64",
						["Dialog ID"] = 2,
						Delay = 0
					},
					EMERALD = {
						port = 7777,
						ip = "194.61.44.61",
						["Dialog ID"] = 2,
						Delay = 1
					},
					RUBY = {
						port = 7777,
						ip = "194.61.44.68",
						["Dialog ID"] = 2,
						Delay = 0
					},
					SAPPHIRE = {
						port = 7777,
						ip = "5.254.123.6",
						["Dialog ID"] = 2,
						Delay = 0
					},
					TRILLIANT = {
						port = 7777,
						ip = "5.254.123.4",
						["Dialog ID"] = 2,
						Delay = 0
					}
				},
				["Evolve RP"] = {
					["01"] = {
						port = 7777,
						ip = "185.169.134.67",
						["Dialog ID"] = 1,
						Delay = 0
					},
					["02"] = {
						port = 7777,
						ip = "185.169.134.68",
						["Dialog ID"] = 1,
						Delay = 0
					},
					["03"] = {
						port = 7777,
						ip = "185.169.134.91",
						["Dialog ID"] = 1,
						Delay = 0
					}
				},
				["GalaxY RPG"] = {
					["GY 1"] = {
						port = 7777,
						ip = "176.32.39.200",
						["Dialog ID"] = 1,
						Delay = 0
					},
					["GY 2"] = {
						port = 7777,
						ip = "176.32.39.199",
						["Dialog ID"] = 1,
						Delay = 0
					},
					["GY 3"] = {
						port = 7777,
						ip = "176.32.39.198",
						["Dialog ID"] = 1,
						Delay = 0
					}
				},
				["SAMP RP"] = {
					["02"] = {
						port = 7777,
						ip = "185.169.134.20",
						["Dialog ID"] = 1,
						Delay = 1
					},
					Legacy = {
						port = 7773,
						ip = "185.169.134.22",
						["Dialog ID"] = 1,
						Delay = 0
					},
					Reborn = {
						port = 7777,
						ip = "185.169.134.34",
						["Dialog ID"] = 1,
						Delay = 0
					},
					Revolution = {
						port = 7777,
						ip = "185.169.134.11",
						["Dialog ID"] = 1,
						Delay = 0
					}
				},
				TRINITY = {
					["RP 1"] = {
						port = 7777,
						ip = "185.169.134.84",
						["Dialog ID"] = 2,
						Delay = 0
					},
					["RP 2"] = {
						port = 7777,
						ip = "185.169.134.85",
						["Dialog ID"] = 2,
						Delay = 0
					},
					RPG = {
						port = 7777,
						ip = "185.169.134.83",
						["Dialog ID"] = 2,
						Delay = 1
					}
				},
				Settings = {
					FastConnect = true,
					AutoLogin = true,
					lang = "ru",
					AutoReconnect = true
				}
			}

			var_10_1:write(var_0_7.encode(var_0_11))
			var_10_1:close()
		end
	end

	local var_10_2 = io.open(var_10_0, "r")

	if var_10_2 then
		json_text = var_10_2:read("*a")
		var_0_11 = var_0_7.decode(json_text)

		var_10_2:close()
	end

	if var_0_11.Settings.AutoLogin == true or var_0_11.Settings.AutoLogin == false then
		var_0_38.v = var_0_11.Settings.AutoLogin
	else
		error_config()
	end

	if var_0_11.Settings.AutoReconnect == true or var_0_11.Settings.AutoReconnect == false then
		var_0_37.v = var_0_11.Settings.AutoReconnect
	else
		error_config()
	end

	if var_0_11.Settings.FastConnect == true or var_0_11.Settings.FastConnect == false then
		var_0_39.v = var_0_11.Settings.FastConnect
	else
		error_config()
	end

	if var_0_11.Settings.lang == "ru" then
		var_0_12 = var_0_19
	elseif var_0_11.Settings.lang == "en" then
		var_0_12 = var_0_20
	else
		error_config()
	end
end

function error_config()
	sampAddChatMessage("{00FA9A}GW Connect{FFD700} | {FFFFFF}\xCD\xE0\xF0\xF3\xF8\xE5\xED\xE0 \xF6\xE5\xEB\xEE\xF1\xF2\xED\xEE\xF1\xF2\xFC \xEF\xF0\xEE\xE5\xEA\xF2\xE0.", 16777215)
	sampAddChatMessage("\xD3\xE4\xE0\xEB\xE8\xF2\xE5 \xF4\xE0\xE9\xEB \"moonloader/config/GWConnect.json\" \xE8 \xEF\xE5\xF0\xE5\xE7\xE0\xE3\xF0\xF3\xE7\xE8\xF2\xE5 \xF1\xEA\xF0\xE8\xEF\xF2.", 16777215)
end

function Recon(arg_12_0)
	RTime = tonumber(string.match(arg_12_0, "(%d+)"))

	if RTime ~= nil and RTime ~= "" then
		if RTime == 0 then
			nop = true
			ip, p = sampGetCurrentServerAddress()

			sampSetLocalPlayerName(sampGetPlayerNickname(select(2, sampGetPlayerIdByCharHandle(PLAYER_PED))))
			sampConnectToServer(ip, p)
		elseif RTime > 0 and RTime <= 600 then
			lua_thread.create(function()
				sampDisconnectWithReason(1)
				wait(arg_12_0 * 1000)

				nop = true

				sampSetGamestate(1)
			end)
		else
			sampAddChatMessage(string.format("{00FA9A}[GW Connect]{ff5555} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 //re [0-600]."), 16733525)
		end
	else
		sampAddChatMessage(string.format("{00FA9A}[GW Connect]{ff5555} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 //re [0-600]."), 16733525)
	end
end

function ReconN(arg_14_0)
	RNick = string.match(arg_14_0, "(%S+)")

	if RNick ~= "" and RNick ~= nil then
		_, myId = sampGetPlayerIdByCharHandle(PLAYER_PED)
		nop = true
		ip, p = sampGetCurrentServerAddress()

		sampSetLocalPlayerName(RNick)
		sampConnectToServer(ip, p)
		sampCloseCurrentDialogWithButton(0)
	else
		sampAddChatMessage(string.format("{00FA9A}[GW Connect]{ff5555} \xC2\xE2\xE5\xE4\xE8\xF2\xE5 //rn [Nickname]."), 16733525)
	end
end

function generateCode(arg_15_0)
	arg_15_0 = var_0_8.from_base32(arg_15_0)
	value = math.floor(os.time() / 30)
	value = string.char(0, 0, 0, 0, bit.band(value, 4278190080) / 16777216, bit.band(value, 16711680) / 65536, bit.band(value, 65280) / 256, bit.band(value, 255))

	local var_15_0 = var_0_9.hmac_binary(arg_15_0, value)
	local var_15_1 = bit.band(var_15_0:sub(-1):byte(1, 1), 15)
	local var_15_2 = (function(arg_16_0, arg_16_1, arg_16_2, arg_16_3)
		return arg_16_0 * 16777216 + arg_16_1 * 65536 + arg_16_2 * 256 + arg_16_3
	end)(var_15_0:byte(var_15_1 + 1, var_15_1 + 4))
	local var_15_3 = bit.band(var_15_2, 2147483647) % 1000000

	return ("%06d"):format(var_15_3)
end

function func()
	while true do
		wait(0)

		var_0_3.Process = var_0_32.v

		if var_0_11.Settings.FastConnect == true then
			var_0_2.fill(sampGetBase() + 2964549, 0, 2, true)
		end

		if var_0_11.Settings.FastConnect == false then
			var_0_2.fill(sampGetBase() + 2964549, 10, 2, true)
		end
	end
end

function var_0_3.OnDrawFrame()
	if var_0_32.v then
		var_0_33.v = true

		local var_18_0, var_18_1 = getScreenResolution()

		var_0_3.SetNextWindowSize(var_0_3.ImVec2(var_18_0 * 0.4, var_18_1 * 0.5))
		var_0_3.SetNextWindowPos(var_0_3.ImVec2(var_18_0 / 2, var_18_1 / 2), var_0_3.Cond.FirstUseEver, var_0_3.ImVec2(0.5, 0.5))
		var_0_3.Begin(u8("GW Connect v" .. thisScript().version .. " | " .. var_0_12.author_translate .. ": Steave Gross"), var_0_32, var_0_3.WindowFlags.AlwaysAutoResize + var_0_3.WindowFlags.AlwaysUseWindowPadding + var_0_3.WindowFlags.NoResize)

		pos = var_0_3.GetWindowPos()
		size = var_0_3.GetWindowSize()

		var_0_3.BeginChild("Projects", var_0_3.ImVec2(var_0_3.GetWindowContentRegionWidth() * 0.3255, var_0_3.GetWindowHeight() * 0.8), true, var_0_3.WindowFlags.HorizontalScrollbar)
		var_0_3.CenterTextColoredRGB(var_0_12.projects)
		var_0_3.Separator()

		i = 0

		for iter_18_0 in pairs(var_0_11) do
			if iter_18_0 ~= "Settings" then
				i = i + 1

				if var_0_3.Selectable(iter_18_0 .. "##projects", selected_project == i, var_0_3.SelectableFlags.AllowDoubleClick) then
					var_0_13 = iter_18_0
					var_0_14 = nil

					if var_0_3.IsMouseDoubleClicked(0) then
						var_0_47.v = var_0_13
						spn = var_0_13
						Editing = true
						var_0_34 = var_0_3.ImBool(true)
					end
				end
			end
		end

		var_0_3.EndChild()

		if var_0_13 then
			var_0_3.SameLine()
			var_0_3.BeginChild("Servers", var_0_3.ImVec2(var_0_3.GetWindowContentRegionWidth() * 0.3255, var_0_3.GetWindowHeight() * 0.8), true, var_0_3.WindowFlags.HorizontalScrollbar)

			k = 0

			var_0_3.CenterTextColoredRGB(var_0_12.servers)
			var_0_3.Separator()

			for iter_18_1 in pairs(var_0_11[var_0_13]) do
				k = k + 1

				if var_0_3.Selectable(iter_18_1 .. "##servers", selected_server == k, var_0_3.SelectableFlags.AllowDoubleClick) then
					var_0_14 = iter_18_1

					if var_0_3.IsMouseDoubleClicked(0) then
						var_0_42.v = var_0_14

						if not var_0_11[var_0_13][var_0_14].ip then
							var_0_11[var_0_13][var_0_14].ip = "1.1.1.1"
						end

						if not var_0_11[var_0_13][var_0_14].port then
							var_0_11[var_0_13][var_0_14].port = 7777
						end

						if not var_0_11[var_0_13][var_0_14]["Dialog ID"] then
							var_0_11[var_0_13][var_0_14]["Dialog ID"] = 1
						end

						if not var_0_11[var_0_13][var_0_14].Delay then
							var_0_11[var_0_13][var_0_14].Delay = 0
						end

						var_0_43.v = tostring(var_0_11[var_0_13][var_0_14].ip)
						var_0_44.v = tonumber(var_0_11[var_0_13][var_0_14].port)
						var_0_45.v = tonumber(var_0_11[var_0_13][var_0_14]["Dialog ID"])
						var_0_46.v = tonumber(var_0_11[var_0_13][var_0_14].Delay)
						ssn = var_0_14
						spn = var_0_13
						Editing = true
						var_0_34 = var_0_3.ImBool(false)
						var_0_35 = var_0_3.ImBool(true)
					end
				end
			end

			var_0_3.EndChild()
		end

		if var_0_14 then
			var_0_3.SameLine()
			var_0_3.BeginChild("Accounts", var_0_3.ImVec2(var_0_3.GetWindowContentRegionWidth() * 0.3255, var_0_3.GetWindowHeight() * 0.8), true)

			a = 0

			var_0_3.CenterTextColoredRGB(var_0_12.server_settings)
			var_0_3.CenterTextColoredRGB(u8:decode(var_0_14))
			var_0_3.Separator()

			for iter_18_2, iter_18_3 in pairs(var_0_11[var_0_13][var_0_14]) do
				if iter_18_2 == "ip" or iter_18_2 == "port" or iter_18_2 == "Dialog ID" or iter_18_2 == "Delay" then
					if var_0_3.Selectable(iter_18_2 .. " - " .. iter_18_3 .. "##variables", selected_account == a, var_0_3.SelectableFlags.AllowDoubleClick) and var_0_3.IsMouseDoubleClicked(0) then
						var_0_42.v = var_0_14

						if not var_0_11[var_0_13][var_0_14].ip then
							var_0_11[var_0_13][var_0_14].ip = "1.1.1.1"
						end

						if not var_0_11[var_0_13][var_0_14].port then
							var_0_11[var_0_13][var_0_14].port = 7777
						end

						if not var_0_11[var_0_13][var_0_14]["Dialog ID"] then
							var_0_11[var_0_13][var_0_14]["Dialog ID"] = 1
						end

						if not var_0_11[var_0_13][var_0_14].Delay then
							var_0_11[var_0_13][var_0_14].Delay = 0
						end

						var_0_43.v = var_0_11[var_0_13][var_0_14].ip
						var_0_44.v = var_0_11[var_0_13][var_0_14].port
						var_0_45.v = var_0_11[var_0_13][var_0_14]["Dialog ID"]
						var_0_46.v = var_0_11[var_0_13][var_0_14].Delay
						ssn = var_0_14
						spn = var_0_13
						Editing = true
						var_0_34 = var_0_3.ImBool(false)
						var_0_35 = var_0_3.ImBool(true)
					end

					a = a + 1
				end
			end

			var_0_3.Separator()
			var_0_3.CenterTextColoredRGB(var_0_12.accounts)
			var_0_3.Separator()

			for iter_18_4, iter_18_5 in pairs(var_0_11[var_0_13][var_0_14]) do
				if iter_18_4 ~= "ip" and iter_18_4 ~= "port" and iter_18_4 ~= "Dialog ID" and iter_18_4 ~= "Delay" and var_0_3.Selectable(iter_18_4 .. "##accounts", selected_account == a, var_0_3.SelectableFlags.AllowDoubleClick) then
					can = iter_18_4

					if var_0_3.IsMouseDoubleClicked(0) then
						var_0_40.v = iter_18_4
						var_0_41.v = var_0_11[var_0_13][var_0_14][iter_18_4].password

						if var_0_11[var_0_13][var_0_14][var_0_40.v].gauth then
							var_0_49.v = true
							var_0_48.v = var_0_11[var_0_13][var_0_14][var_0_40.v].gauth
						end

						ssn = var_0_14
						spn = var_0_13
						san = iter_18_4
						Editing = true
						var_0_34 = var_0_3.ImBool(false)
						var_0_35 = var_0_3.ImBool(false)
						var_0_36 = var_0_3.ImBool(true)
					end
				end
			end

			var_0_3.EndChild()
		end

		var_0_3.BeginChild("NewProject##buttons", var_0_3.ImVec2(var_0_3.GetWindowContentRegionWidth() * 0.3255, var_0_3.GetWindowHeight() * 0.1), true, var_0_3.WindowFlags.HorizontalScrollbar)
		var_0_3.PushID(1)
		var_0_3.PushStyleColor(var_0_3.Col.Button, var_0_3.ImColor(40, 142, 110, 10):GetVec4())
		var_0_3.PushStyleColor(var_0_3.Col.ButtonHovered, var_0_3.ImColor(40, 142, 110, 170):GetVec4())
		var_0_3.PushStyleColor(var_0_3.Col.ButtonActive, var_0_3.ImColor(40, 142, 110, 255):GetVec4())

		local var_18_2 = var_0_3.ImVec2(-0.1, -0.1)

		if var_0_3.Button(var_0_6.ICON_PLUS .. " " .. u8(var_0_12.addproject), var_18_2) then
			spn = var_0_13
			ssn = var_0_14
			san = can

			clearAllData()

			var_0_34 = var_0_3.ImBool(true)
		end

		var_0_3.PopStyleColor(3)
		var_0_3.PopID()
		var_0_3.EndChild()
		var_0_3.SameLine()

		if var_0_13 then
			var_0_3.BeginChild("NewServer##buttons", var_0_3.ImVec2(var_0_3.GetWindowContentRegionWidth() * 0.3255, var_0_3.GetWindowHeight() * 0.1), true, var_0_3.WindowFlags.HorizontalScrollbar)
			var_0_3.PushID(1)
			var_0_3.PushStyleColor(var_0_3.Col.Button, var_0_3.ImColor(40, 142, 110, 10):GetVec4())
			var_0_3.PushStyleColor(var_0_3.Col.ButtonHovered, var_0_3.ImColor(40, 142, 110, 170):GetVec4())
			var_0_3.PushStyleColor(var_0_3.Col.ButtonActive, var_0_3.ImColor(40, 142, 110, 255):GetVec4())

			local var_18_3 = var_0_3.ImVec2(-0.1, -0.1)

			if var_0_3.Button(var_0_6.ICON_PLUS .. " " .. u8(var_0_12.addserver), var_18_3) then
				spn = var_0_13
				ssn = var_0_14
				san = can

				clearAllData()

				var_0_35.v = true
			end

			var_0_3.PopStyleColor(3)
			var_0_3.PopID()
			var_0_3.EndChild()
		end

		if var_0_14 then
			var_0_3.SameLine()
			var_0_3.BeginChild("NewAccount##buttons", var_0_3.ImVec2(var_0_3.GetWindowContentRegionWidth() * 0.3255, var_0_3.GetWindowHeight() * 0.1), true, var_0_3.WindowFlags.HorizontalScrollbar)
			var_0_3.PushID(1)
			var_0_3.PushStyleColor(var_0_3.Col.Button, var_0_3.ImColor(40, 142, 110, 10):GetVec4())
			var_0_3.PushStyleColor(var_0_3.Col.ButtonHovered, var_0_3.ImColor(40, 142, 110, 170):GetVec4())
			var_0_3.PushStyleColor(var_0_3.Col.ButtonActive, var_0_3.ImColor(40, 142, 110, 255):GetVec4())

			local var_18_4 = var_0_3.ImVec2(-0.1, -0.1)

			if var_0_3.Button(var_0_6.ICON_USER_PLUS .. " " .. u8(var_0_12.addaccount), var_18_4) then
				spn = var_0_13
				ssn = var_0_14
				san = can

				clearAllData()

				var_0_36.v = true
			end

			var_0_3.PopStyleColor(3)
			var_0_3.PopID()
			var_0_3.EndChild()
		end

		var_0_3.End()
	end

	if var_0_33.v then
		local var_18_5, var_18_6 = getScreenResolution()

		var_0_3.Begin(u8(var_0_12.settings), var_0_33, var_0_3.WindowFlags.NoMove + var_0_3.WindowFlags.AlwaysAutoResize + var_0_3.WindowFlags.AlwaysUseWindowPadding + var_0_3.WindowFlags.NoResize)
		var_0_3.SetWindowSize(var_0_3.ImVec2(0, 0))
		var_0_3.SetWindowPos(var_0_3.ImVec2(pos.x + size.x + 2, pos.y))

		if var_0_3.Checkbox("AutoReconnect", var_0_37) then
			var_0_11.Settings.AutoReconnect = var_0_37.v

			saveAllData()
		end

		if var_0_3.Checkbox("AutoLogin", var_0_38) then
			var_0_11.Settings.AutoLogin = var_0_38.v

			saveAllData()
		end

		if var_0_3.Checkbox("FastConnect", var_0_39) then
			var_0_11.Settings.FastConnect = var_0_39.v

			saveAllData()
		end

		if var_0_3.Button(u8(var_0_12.english), var_0_3.ImVec2(-0.1, 0)) then
			var_0_11.Settings.lang = "en"

			saveAllData()

			var_0_32.v = false
			var_0_12 = var_0_20
			var_0_32.v = true
		end

		if var_0_3.Button(u8(var_0_12.russian), var_0_3.ImVec2(-0.1, 0)) then
			var_0_11.Settings.lang = "ru"

			saveAllData()

			var_0_32.v = false
			var_0_12 = var_0_19
			var_0_32.v = true
		end

		var_0_3.End()
	end

	if var_0_34.v then
		var_0_36 = var_0_3.ImBool(false)
		var_0_35 = var_0_3.ImBool(false)

		local var_18_7, var_18_8 = getScreenResolution()

		if Editing then
			var_0_3.Begin(u8(var_0_12.editproject), var_0_34, var_0_3.WindowFlags.AlwaysAutoResize + var_0_3.WindowFlags.AlwaysUseWindowPadding + var_0_3.WindowFlags.NoResize + var_0_3.WindowFlags.NoMove)
		else
			var_0_3.Begin(u8(var_0_12.addproject), var_0_34, var_0_3.WindowFlags.AlwaysAutoResize + var_0_3.WindowFlags.AlwaysUseWindowPadding + var_0_3.WindowFlags.NoResize + var_0_3.WindowFlags.NoMove)
		end

		var_0_3.SetWindowSize(var_0_3.ImVec2(0, 0))
		var_0_3.SetWindowPos(var_0_3.ImVec2(pos.x - var_0_3.GetWindowSize().x - 0.002, pos.y))
		var_0_3.PushItemWidth(180)
		var_0_3.CenterTextColoredRGB(var_0_12.name)
		var_0_3.InputText("##ProjectName", var_0_47)

		if var_0_47.v ~= "" and (not var_0_11[var_0_47.v] or not not Editing) then
			var_0_3.Text("")

			if var_0_3.Button("OK", var_0_3.ImVec2(-0.1, 0)) then
				if Editing then
					var_0_13 = nil
					var_0_11[var_0_47.v] = {}
					var_0_11[var_0_47.v] = var_0_11[spn]
					var_0_11[spn] = nil

					clearAllData()
					saveAllData()
				else
					var_0_11[var_0_47.v] = {}

					clearAllData()
					saveAllData()
				end
			end

			if Editing and var_0_3.Button(var_0_6.ICON_TRASH .. " " .. u8(var_0_12.delete), var_0_3.ImVec2(-0.1, 0)) then
				var_0_13 = nil
				var_0_11[spn] = nil

				clearAllData()
				saveAllData()
			end
		elseif var_0_11[var_0_47.v] and not Editing then
			var_0_3.CenterTextColoredRGB("{FF5555}" .. var_0_12.projectexist)
		elseif var_0_47.v == "" then
			var_0_3.CenterTextColoredRGB("{FF5555}" .. var_0_12.input .. " " .. var_0_12.name)
		end

		var_0_3.PopItemWidth()
		var_0_3.End()
	end

	if var_0_35.v and spn then
		var_0_36 = var_0_3.ImBool(false)

		local var_18_9, var_18_10 = getScreenResolution()

		if Editing then
			var_0_3.Begin(u8(var_0_12.editserver), var_0_35, var_0_3.WindowFlags.AlwaysAutoResize + var_0_3.WindowFlags.AlwaysUseWindowPadding + var_0_3.WindowFlags.NoResize + var_0_3.WindowFlags.NoMove)
		else
			var_0_3.Begin(u8(var_0_12.addserver), var_0_35, var_0_3.WindowFlags.AlwaysAutoResize + var_0_3.WindowFlags.AlwaysUseWindowPadding + var_0_3.WindowFlags.NoResize + var_0_3.WindowFlags.NoMove)
		end

		var_0_3.SetWindowSize(var_0_3.ImVec2(0, 0))
		var_0_3.SetWindowPos(var_0_3.ImVec2(pos.x - var_0_3.GetWindowSize().x - 0.002, pos.y))
		var_0_3.PushItemWidth(180)
		var_0_3.CenterTextColoredRGB(var_0_12.servername)
		var_0_3.InputText("##servername", var_0_42)
		var_0_3.CenterTextColoredRGB(var_0_12.logindialogid)

		if var_0_3.InputInt("##serverdiaid", var_0_45, var_0_3.InputTextFlags.CharsDecimal) then
			if var_0_45.v > 9999999 then
				var_0_45.v = 9999999
			elseif var_0_45.v < 0 then
				var_0_45.v = 0
			end
		end

		var_0_3.CenterTextColoredRGB(var_0_12.serverip)
		var_0_3.InputText("##serverip", var_0_43, var_0_3.InputTextFlags.CharsNoBlank)
		var_0_3.CenterTextColoredRGB(var_0_12.serverport)

		if var_0_3.InputInt("##serverport", var_0_44, var_0_3.InputTextFlags.CharsDecimal) then
			if var_0_44.v > 9999 then
				var_0_44.v = 9999
			elseif var_0_44.v < 0 then
				var_0_44.v = 0
			end
		end

		var_0_3.CenterTextColoredRGB(var_0_12.delay)
		var_0_3.CenterTextColoredRGB("(" .. var_0_12.sec .. ")")

		if var_0_3.InputInt("##serverdelay", var_0_46, var_0_3.InputTextFlags.CharsDecimal) then
			if var_0_46.v > 30 then
				var_0_46.v = 30
			elseif var_0_46.v < 0 then
				var_0_46.v = 0
			end
		end

		if string.match(var_0_43.v, "%d+%.%d+%.%d+%.%d+") and var_0_42.v ~= "" and (not var_0_11[spn][var_0_42.v] or not not Editing) and (not var_0_11[spn][var_0_42.v] or var_0_42.v == ssn or not Editing) then
			if var_0_3.Button("OK", var_0_3.ImVec2(-0.1, 0)) then
				if Editing then
					var_0_14 = nil

					if var_0_42.v ~= ssn then
						var_0_11[spn][var_0_42.v] = {}
						var_0_11[spn][var_0_42.v] = var_0_11[spn][ssn]
						var_0_11[spn][ssn] = nil
					end

					var_0_11[spn][var_0_42.v].Delay = tonumber(var_0_46.v)
					var_0_11[spn][var_0_42.v].ip = tostring(var_0_43.v)
					var_0_11[spn][var_0_42.v].port = tonumber(var_0_44.v)
					var_0_11[spn][var_0_42.v]["Dialog ID"] = tonumber(var_0_45.v)

					clearAllData()
					saveAllData()
				else
					var_0_11[spn][var_0_42.v] = {}
					var_0_11[spn][var_0_42.v].Delay = tonumber(var_0_46.v)
					var_0_11[spn][var_0_42.v].ip = tostring(var_0_43.v)
					var_0_11[spn][var_0_42.v].port = tonumber(var_0_44.v)
					var_0_11[spn][var_0_42.v]["Dialog ID"] = tonumber(var_0_45.v)

					clearAllData()
					saveAllData()
				end
			end

			if Editing then
				if var_0_3.Button(var_0_6.ICON_TRASH .. " " .. u8(var_0_12.delete), var_0_3.ImVec2(-0.1, 0)) then
					var_0_14 = nil
					var_0_11[var_0_13][var_0_42.v] = nil

					clearAllData()
					saveAllData()
				end

				if var_0_3.Button(var_0_6.ICON_ARROW_CIRCLE_RIGHT .. " " .. u8(var_0_12.connect), var_0_3.ImVec2(-0.1, 0)) then
					nop = true

					sampSetLocalPlayerName(sampGetPlayerNickname((select(2, sampGetPlayerIdByCharHandle(PLAYER_PED)))))
					sampConnectToServer(var_0_11[spn][ssn].ip, var_0_11[spn][ssn].port)
				end
			end
		elseif var_0_42.v == "" then
			var_0_3.CenterTextColoredRGB("{FF5555}" .. var_0_12.input .. " " .. string.nlower(var_0_12.servername))
		elseif var_0_11[spn][var_0_42.v] and var_0_42.v ~= ssn and Editing then
			var_0_3.CenterTextColoredRGB("{FF5555}" .. var_0_12.serverexist)
		elseif var_0_11[var_0_13][var_0_42.v] and not Editing then
			var_0_3.CenterTextColoredRGB("{FF5555}" .. var_0_12.serverexist)
		elseif not string.match(var_0_43.v, "%d+%.%d+%.%d+%.%d+") then
			var_0_3.CenterTextColoredRGB("{FF5555}" .. var_0_12.notcorrect .. " " .. string.nlower(var_0_12.serverip))
		end

		var_0_3.End()
	end

	if var_0_36.v and ssn then
		local var_18_11, var_18_12 = getScreenResolution()

		if Editing then
			var_0_3.Begin(u8(var_0_12.editaccount), var_0_36, var_0_3.WindowFlags.AlwaysAutoResize + var_0_3.WindowFlags.AlwaysUseWindowPadding + var_0_3.WindowFlags.NoResize + var_0_3.WindowFlags.NoMove)
		else
			var_0_3.Begin(u8(var_0_12.addaccount), var_0_36, var_0_3.WindowFlags.AlwaysAutoResize + var_0_3.WindowFlags.AlwaysUseWindowPadding + var_0_3.WindowFlags.NoResize + var_0_3.WindowFlags.NoMove)
		end

		var_0_3.SetWindowSize(var_0_3.ImVec2(0, 0))
		var_0_3.SetWindowPos(var_0_3.ImVec2(pos.x - var_0_3.GetWindowSize().x - 0.002, pos.y))
		var_0_3.PushItemWidth(180)
		var_0_3.CenterTextColoredRGB(var_0_12.nickname)
		var_0_3.InputText("##accountnick", var_0_40, var_0_3.InputTextFlags.CharsNoBlank)
		var_0_3.CenterTextColoredRGB(var_0_12.password)
		var_0_3.InputText("##accountpass", var_0_41, var_0_50)

		if var_0_3.IsItemActive() then
			var_0_50 = var_0_3.InputTextFlags.CharsNoBlank
		else
			var_0_50 = var_0_3.InputTextFlags.CharsNoBlank + var_0_3.InputTextFlags.Password
		end

		var_0_3.Checkbox(u8("Google Auth"), var_0_49)

		local var_18_13 = false
		local var_18_14 = not var_0_49.v and true or false

		if var_0_49.v == true then
			var_0_3.InputText("##accountgauth", var_0_48, var_0_3.InputTextFlags.CharsNoBlank)

			if var_0_48.v ~= "" then
				var_18_14, output = pcall(generateCode, var_0_48.v)
			end

			if not var_18_14 then
				var_0_3.CenterTextColoredRGB("{FF5555}" .. var_0_12.invalid_gauth)
			end
		end

		if var_0_40.v ~= "" and var_18_14 and var_0_41.v ~= "" and (not var_0_11[spn][ssn][var_0_40.v] or not not Editing) and (not var_0_11[spn][ssn][var_0_40.v] or var_0_40.v == san or not Editing) then
			var_0_3.Text("")

			if var_0_3.Button("OK", var_0_3.ImVec2(-0.1, 0)) then
				if var_0_40.v ~= san and Editing then
					var_0_11[spn][ssn][san] = nil
					var_0_11[spn][ssn][var_0_40.v] = {}
					var_0_11[spn][ssn][var_0_40.v].password = var_0_41.v

					if var_18_14 and var_0_48.v ~= "" then
						var_0_11[spn][ssn][var_0_40.v].gauth = var_0_48.v
					end
				end

				var_0_11[spn][ssn][var_0_40.v] = {}
				var_0_11[spn][ssn][var_0_40.v].password = var_0_41.v

				if var_18_14 and var_0_48.v ~= "" then
					var_0_11[spn][ssn][var_0_40.v].gauth = var_0_48.v
				elseif var_0_11[spn][ssn][var_0_40.v].gauth then
					var_0_11[spn][ssn][var_0_40.v].gauth = nil
				end

				clearAllData()
				saveAllData()
			end

			if Editing then
				if var_0_3.Button(var_0_6.ICON_TRASH .. " " .. u8(var_0_12.delete), var_0_3.ImVec2(-0.1, 0)) then
					var_0_11[spn][ssn][san] = nil

					clearAllData()
					saveAllData()
				end

				if var_0_3.Button(var_0_6.ICON_ARROW_CIRCLE_RIGHT .. " GO TO ACCOUNT", var_0_3.ImVec2(-0.1, 0)) then
					nop = true

					sampSetLocalPlayerName(san)
					sampConnectToServer(var_0_11[spn][ssn].ip, var_0_11[spn][ssn].port)
				end
			end
		elseif var_0_11[spn][ssn][var_0_40.v] and not Editing then
			var_0_3.CenterTextColoredRGB("{FF5555}" .. var_0_12.accountexist)
		elseif var_0_11[spn][ssn][var_0_40.v] and var_0_40.v ~= san and Editing then
			var_0_3.CenterTextColoredRGB("{FF5555}" .. var_0_12.accountexist)
		elseif var_0_40.v == "" then
			var_0_3.CenterTextColoredRGB("{FF5555}" .. var_0_12.input .. " " .. string.nlower(var_0_12.nickname))
		elseif var_0_41.v == "" then
			var_0_3.CenterTextColoredRGB("{FF5555}" .. var_0_12.input .. " " .. string.nlower(var_0_12.password))
		end

		var_0_3.PopItemWidth()
		var_0_3.End()
	end
end

function clearAllData()
	var_0_34.v = false
	var_0_35.v = false
	var_0_36.v = false
	var_0_47 = var_0_3.ImBuffer(25)
	var_0_42 = var_0_3.ImBuffer(25)
	var_0_43 = var_0_3.ImBuffer(16)
	var_0_44 = var_0_3.ImInt(7777)
	var_0_45 = var_0_3.ImInt(1)
	var_0_46 = var_0_3.ImInt(10)
	var_0_41 = var_0_3.ImBuffer(100)
	var_0_40 = var_0_3.ImBuffer(25)
	Editing = false
end

function var_0_3.CenterTextColoredRGB(arg_20_0)
	local var_20_0 = var_0_3.GetWindowWidth()
	local var_20_1 = var_0_3.GetStyle().Colors
	local var_20_2 = var_0_3.ImVec4

	local function var_20_3(arg_21_0)
		local var_21_0 = bit.band(bit.rshift(arg_21_0, 24), 255)
		local var_21_1 = bit.band(bit.rshift(arg_21_0, 16), 255)
		local var_21_2 = bit.band(bit.rshift(arg_21_0, 8), 255)
		local var_21_3 = bit.band(arg_21_0, 255)

		return var_21_0, var_21_1, var_21_2, var_21_3
	end

	local function var_20_4(arg_22_0)
		if arg_22_0:sub(1, 6):upper() == "SSSSSS" then
			local var_22_0 = var_20_1[1].x
			local var_22_1 = var_20_1[1].y
			local var_22_2 = var_20_1[1].z
			local var_22_3 = tonumber(arg_22_0:sub(7, 8), 16) or var_20_1[1].w * 255

			return var_20_2(var_22_0, var_22_1, var_22_2, var_22_3 / 255)
		end

		local var_22_4 = type(arg_22_0) == "string" and tonumber(arg_22_0, 16) or arg_22_0

		if type(var_22_4) ~= "number" then
			return
		end

		local var_22_5, var_22_6, var_22_7, var_22_8 = var_20_3(var_22_4)

		return var_0_3.ImColor(var_22_5, var_22_6, var_22_7, var_22_8):GetVec4()
	end

	;(function(arg_23_0)
		for iter_23_0 in arg_23_0:gmatch("[^\r\n]+") do
			local var_23_0 = iter_23_0:gsub("{.-}", "")
			local var_23_1 = var_0_3.CalcTextSize(u8(var_23_0))

			var_0_3.SetCursorPosX(var_20_0 / 2 - var_23_1.x / 2)

			local var_23_2 = {}
			local var_23_3 = {}
			local var_23_4 = 1

			iter_23_0 = iter_23_0:gsub("{(......)}", "{%1FF}")

			while iter_23_0:find("{........}") do
				local var_23_5, var_23_6 = iter_23_0:find("{........}")
				local var_23_7 = var_20_4(iter_23_0:sub(var_23_5 + 1, var_23_6 - 1))

				if var_23_7 then
					var_23_2[#var_23_2], var_23_2[#var_23_2 + 1] = iter_23_0:sub(var_23_4, var_23_5 - 1), iter_23_0:sub(var_23_6 + 1, #iter_23_0)
					var_23_3[#var_23_3 + 1] = var_23_7
					var_23_4 = var_23_5
				end

				iter_23_0 = iter_23_0:sub(1, var_23_5 - 1) .. iter_23_0:sub(var_23_6 + 1, #iter_23_0)
			end

			if var_23_2[0] then
				for iter_23_1 = 0, #var_23_2 do
					var_0_3.TextColored(var_23_3[iter_23_1] or var_20_1[1], u8(var_23_2[iter_23_1]))
					var_0_3.SameLine(nil, 0)
				end

				var_0_3.NewLine()
			else
				var_0_3.Text(u8(iter_23_0))
			end
		end
	end)(arg_20_0)
end

function onReceivePacket(arg_24_0, arg_24_1)
	if (arg_24_0 == PACKET_DISCONNECTION_NOTIFICATION or arg_24_0 == PACKET_CONNECTION_LOST or arg_24_0 == PACKET_CONNECTION_BANNED or arg_24_0 == PACKET_INVALID_PASSWORD) and var_0_37.v == true then
		if var_0_16 and var_0_15 then
			Recon(tonumber(var_0_11[var_0_16][var_0_15].Delay))
		else
			Recon(0)
		end
	end

	if arg_24_0 == PACKET_CONNECTION_REQUEST_ACCEPTED then
		ip, port = sampGetCurrentServerAddress()

		for iter_24_0 in pairs(var_0_11) do
			if iter_24_0 ~= "Settings" then
				for iter_24_1 in pairs(var_0_11[iter_24_0]) do
					if var_0_11[iter_24_0][iter_24_1].ip and var_0_11[iter_24_0][iter_24_1].ip == ip then
						var_0_17 = var_0_11[iter_24_0][iter_24_1]["Dialog ID"]
						var_0_16 = iter_24_0
						var_0_15 = iter_24_1

						for iter_24_2 in pairs(var_0_11[iter_24_0][iter_24_1]) do
							if string.nlower(sampGetPlayerNickname(select(2, sampGetPlayerIdByCharHandle(PLAYER_PED)))) == string.nlower(iter_24_2) then
								var_0_18 = iter_24_2
							end
						end
					end
				end
			end
		end
	end
end

function var_0_0.onConnectionRejected()
	if var_0_11.Settings.AutoReconnect == true then
		if var_0_16 and var_0_15 then
			Recon(tonumber(var_0_11[var_0_16][var_0_15].Delay))
		else
			Recon(0)
		end
	end
end

function var_0_0.onRemoveBuilding()
	if nop then
		return false
	end

	if nopFALSE then
		return true
	end
end

function var_0_0.onShowDialog(arg_27_0, arg_27_1, arg_27_2, arg_27_3, arg_27_4, arg_27_5)
	if var_0_17 and var_0_16 and var_0_15 and var_0_18 and var_0_11.Settings.AutoLogin == true then
		if arg_27_0 == var_0_17 and tostring(string.nlower(sampGetPlayerNickname(select(2, sampGetPlayerIdByCharHandle(PLAYER_PED))))) == tostring(string.nlower(var_0_18)) then
			sampSendDialogResponse(arg_27_0, 1, 0, u8:decode(var_0_11[var_0_16][var_0_15][var_0_18].password))

			return false
		end

		if string.find(string.nlower(arg_27_5), "auth") or string.find(string.nlower(arg_27_5), "gauth") and not sampGetGamestate() == 3 and sampGetCurrentDialogType() == 1 then
			if var_0_11[var_0_16][var_0_15][var_0_18].gauth and var_0_11[var_0_16][var_0_15][var_0_18].gauth ~= "" then
				local var_27_0, var_27_1 = pcall(generateCode, var_0_11[var_0_16][var_0_15][var_0_18].gauth)

				if var_27_0 then
					sampSendDialogResponse(arg_27_0, 1, 0, var_27_1)

					return false
				end
			end
		elseif (string.find(string.nlower(arg_27_5), "auth") or string.find(string.nlower(arg_27_5), "gauth")) and not sampGetGamestate() == 3 and not sampGetCurrentDialogType() == 1 and var_0_11[var_0_16][var_0_15][var_0_18].gauth and var_0_11[var_0_16][var_0_15][var_0_18].gauth ~= "" then
			sampCloseCurrentDialogWithButton(0)

			return false
		end
	end
end

function update()
	local var_28_0 = os.getenv("TEMP") .. "\\GWConnect.json"

	downloadUrlToFile("https://github.com/steave90/GW-Connect/raw/refs/heads/master/master/GWConnect.json", var_28_0, function(arg_29_0, arg_29_1, arg_29_2, arg_29_3)
		if arg_29_1 == var_0_5.STATUS_ENDDOWNLOADDATA then
			local var_29_0 = io.open(var_28_0, "r")

			if var_29_0 then
				local var_29_1 = decodeJson(var_29_0:read("*a"))

				updatelink = var_29_1.updateurl

				if var_29_1 and var_29_1.latest then
					version = var_29_1.latest

					if tonumber(version) > tonumber(thisScript().version) then
						sampAddChatMessage("{FF5555}GW Connect UPDATE{FFD700} |{FFFFFF} " .. var_0_12.updfound, 16777215)
						lua_thread.create(goupdate)
					else
						update = false
					end
				end
			end
		end
	end)
end

function goupdate()
	downloadUrlToFile(updatelink, thisScript().path, function(arg_31_0, arg_31_1, arg_31_2, arg_31_3)
		if arg_31_1 == var_0_5.STATUS_ENDDOWNLOADDATA then
			sampAddChatMessage("{FF5555}GW Connect UPDATE{FFD700} | {FFFFFF}" .. var_0_12.updfinished, 16777215)

			goplay = 1

			thisScript():reload()
		end
	end)
end
