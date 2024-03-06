--[[

   _|_|_|  _|      _|  _|_|_|_|_|  _|_|_|_|
 _|        _|_|    _|      _|      _|
   _|_|    _|  _|  _|      _|      _|_|_|
       _|  _|    _|_|      _|      _|
 _|_|_|    _|      _|      _|      _|_|_|_|

   _|_|_|    _|_|    _|    _|  _|_|_|      _|_|_|  _|_|_|_|
 _|        _|    _|  _|    _|  _|    _|  _|        _|
   _|_|    _|    _|  _|    _|  _|_|_|    _|        _|_|_|
       _|  _|    _|  _|    _|  _|    _|  _|        _|
 _|_|_|      _|_|      _|_|    _|    _|    _|_|_|  _|_|_|_|

=== CREDITS ===

Original idea
	> meep (https://steamcommunity.com/profiles/76561198050165746)
Code
    > Maks (https://steamcommunity.com/profiles/76561198197775845)
    > Zaros (https://steamcommunity.com/profiles/76561198258872399)

Exploit searchers
    > Yoh   (https://steamcommunity.com/profiles/76561198053559858)
    > Zaros (https://steamcommunity.com/profiles/76561198258872399)

--]]

MsgC(Color(255, 255, 255), [[
  ____  _   _ _____ _____
 / ___|| \ | |_   _| ____|
 \___ \|  \| | | | |  _|
  ___) | |\  | | | | |___
 |____/|_| \_| |_| |_____|
]])

-- Number of booby-traps
local rdmNetNum = math.random(6, 23)

-- Known exploitable nets (remember to keep your addons up-to-date)
local legit_nets = {
	"pplay_deleterow",
	"pplay_addrow",
	"pplay_sendtable",
	"WriteQuery",
	"SendMoney",
	"BailOut",
	"customprinter_get",
	"textstickers_entdata",
	"NC_GetNameChange",
	"ATS_WARP_REMOVE_CLIENT",
	"ATS_WARP_FROM_CLIENT",
	"ATS_WARP_VIEWOWNER",
	"CFRemoveGame",
	"CFJoinGame",
	"CFEndGame",
	"CreateCase",
	"rprotect_terminal_settings",
	"StackGhost",
	"RevivePlayer",
	"ARMORY_RetrieveWeapon",
	"TransferReport",
	"SimplicityAC_aysent",
	"pac_to_contraption",
	"SyncPrinterButtons76561198056171650",
	"sendtable",
	"steamid2",
	"Kun_SellDrug",
	"net_PSUnBoxServer",
	"pplay_deleterow",
	"pplay_addrow",
	"CraftSomething",
	"banleaver",
	"75_plus_win",
	"ATMDepositMoney",
	"Taxi_Add",
	"Kun_SellOil",
	"SellMinerals",
	"TakeBetMoney",
	"PoliceJoin",
	"CpForm_Answers",
	"DepositMoney",
	"MDE_RemoveStuff_C2S",
	"NET_SS_DoBuyTakeoff",
	"NET_EcSetTax",
	"RP_Accept_Fine",
	"RP_Fine_Player",
	"RXCAR_Shop_Store_C2S",
	"RXCAR_SellINVCar_C2S",
	"drugseffect_remove",
	"drugs_money",
	"CRAFTINGMOD_SHOP",
	"drugs_ignite",
	"drugseffect_hpremove",
	"DarkRP_Kun_ForceSpawn",
	"drugs_text",
	"NLRKick",
	"RecKickAFKer",
	"GMBG:PickupItem",
	"DL_Answering",
	"data_check",
	"plyWarning",
	"NLR.ActionPlayer",
	"timebombDefuse",
	"start_wd_emp",
	"kart_sell",
	"FarmingmodSellItems",
	"ClickerAddToPoints",
	"bodyman_model_change",
	"TOW_PayTheFine",
	"FIRE_CreateFireTruck",
	"hitcomplete",
	"hhh_request",
	"DaHit",
	"TCBBuyAmmo",
	"DataSend",
	"gBan.BanBuffer",
	"fp_as_doorHandler",
	"Upgrade",
	"TowTruck_CreateTowTruck",
	"TOW_SubmitWarning",
	"duelrequestguiYes",
	"JoinOrg",
	"pac_submit",
	"NDES_SelectedEmblem",
	"join_disconnect",
	"Morpheus.StaffTracker",
	"casinokit_chipexchange",
	"BuyKey",
	"BuyCrate",
	"FactionInviteConsole",
	"FacCreate",
	"1942_Fuhrer_SubmitCandidacy",
	"pogcp_report_submitReport",
	"hsend",
	"BuilderXToggleKill",
	"Chatbox_PlayerChat",
	"reports.submit",
	"services_accept",
	"Warn_CreateWarn",
	"NewReport",
	"soez",
	"GiveHealthNPC",
	"DarkRP_SS_Gamble",
	"buyinghealth",
	"whk_setart",
	"WithdrewBMoney",
	"DuelMessageReturn",
	"ban_rdm",
	"BuyCar",
	"ats_send_toServer",
	"dLogsGetCommand",
	"disguise",
	"gportal_rpname_change",
	"AbilityUse",
	"ClickerAddToPoints",
	"race_accept",
	"give_me_weapon",
	"FinishContract",
	"NLR_SPAWN",
	"Kun_ZiptieStruggle",
	"JB_Votekick",
	"Letthisdudeout",
	"ckit_roul_bet",
	"pac.net.TouchFlexes.ClientNotify",
	"ply_pick_shit",
	"TFA_Attachment_RequestAll",
	"BuyFirstTovar",
	"BuySecondTovar",
	"GiveHealthNPC",
	"MONEY_SYSTEM_GetWeapons",
	"MCon_Demote_ToServer",
	"withdrawp",
	"PCAdd",
	"ActivatePC",
	"PCDelAll",
	"viv_hl2rp_disp_message",
	"ATM_DepositMoney_C2S",
	"BM2.Command.SellBitcoins",
	"BM2.Command.Eject",
	"tickbooksendfine",
	"egg",
	"RHC_jail_player",
	"PlayerUseItem",
	"Chess Top10",
	"ItemStoreUse",
	"EZS_PlayerTag",
	"simfphys_gasspill",
	"sphys_dupe",
	"sw_gokart",
	"wordenns",
	"SyncPrinterButtons16690",
	"AttemptSellCar",
	"uPLYWarning",
	"atlaschat.rqclrcfg",
	"dlib.getinfo.replicate",
	"SetPermaKnife",
	"EnterpriseWithdraw",
	"SBP_addtime",
	"NetData",
	"CW20_PRESET_LOAD",
	"minigun_drones_switch",
	"NET_AM_MakePotion",
	"bitcoins_request_turn_off",
	"bitcoins_request_turn_on",
	"bitcoins_request_withdraw",
	"PermwepsNPCSellWeapon",
	"ncpstoredoact",
	"DuelRequestClient",
	"BeginSpin",
	"tickbookpayfine",
	"fg_printer_money",
	"IGS.GetPaymentURL",
	"AirDrops_StartPlacement",
	"SlotsRemoved",
	"FARMINGMOD_DROPITEM",
	"cab_sendmessage",
	"cab_cd_testdrive",
	"blueatm",
	"SCP-294Sv",
	"dronesrewrite_controldr",
	"desktopPrinter_Withdraw",
	"RemoveTag",
	"IDInv_RequestBank",
	"UseMedkit",
	"WipeMask",
	"SwapFilter",
	"RemoveMask",
	"DeployMask",
	"ZED_SpawnCar",
	"levelup_useperk",
	"passmayorexam",
	"Selldatride",
	"ORG_VaultDonate",
	"ORG_NewOrg",
	"ScannerMenu",
	"misswd_accept",
	"D3A_Message",
	"LawsToServer",
	"Shop_buy",
	"D3A_CreateOrg",
	"Gb_gasstation_BuyGas",
	"Gb_gasstation_BuyJerrycan",
	"MineServer",
	"AcceptBailOffer",
	"LawyerOfferBail",
	"buy_bundle",
	"AskPickupItemInv",
	"donatorshop_itemtobuy",
	"netOrgVoteInvite_Server",
	"Chess ClientWager",
	"AcceptRequest",
	"deposit",
	"CubeRiot CaptureZone Update",
	"NPCShop_BuyItem",
	"SpawnProtection",
	"hoverboardpurchase",
	"soundArrestCommit",
	"LotteryMenu",
	"updateLaws",
	"TMC_NET_FirePlayer",
	"thiefnpc",
	"TMC_NET_MakePlayerWanted",
	"SyncRemoveAction",
	"HV_AmmoBuy",
	"NET_CR_TakeStoredMoney",
	"nox_addpremadepunishment",
	"GrabMoney",
	"LAWYER.GetBailOut",
	"LAWYER.BailFelonOut",
	"br_send_pm",
	"GET_Admin_MSGS",
	"OPEN_ADMIN_CHAT",
	"LB_AddBan",
	"redirectMsg",
	"RDMReason_Explain",
	"JB_SelectWarden",
	"JB_GiveCubics",
	"SendSteamID",
	"wyozimc_playply",
	"SpecDM_SendLoadout",
	"sv_saveweapons",
	"DL_StartReport",
	"DL_ReportPlayer",
	"DL_AskLogsList",
	"DailyLoginClaim",
	"GiveWeapon",
	"GovStation_SpawnVehicle",
	"inviteToOrganization",
	"createFaction",
	"sellitem",
	"giveArrestReason",
	"unarrestPerson",
	"JoinFirstSS",
	"bringNfreeze",
	"start_wd_hack",
	"DestroyTable",
	"nCTieUpStart",
	"IveBeenRDMed",
	"FIGHTCLUB_StartFight",
	"FIGHTCLUB_KickPlayer",
	"ReSpawn",
	"CP_Test_Results",
	"AcceptBailOffer",
	"IS_SubmitSID_C2S",
	"IS_GetReward_C2S",
	"ChangeOrgName",
	"DisbandOrganization",
	"CreateOrganization",
	"newTerritory",
	"InviteMember",
	"sendDuelInfo",
	"DoDealerDeliver",
	"PurchaseWeed",
	"guncraft_removeWorkbench",
	"wordenns",
	"userAcceptPrestige",
	"vj_npcspawner_sv_create",
	"DuelMessageReturn",
	"Client_To_Server_OpenEditor",
	"GiveSCP294Cup",
	"GiveArmor100",
	"SprintSpeedset",
	"ArmorButton",
	"HealButton",
	"SRequest",
	"ClickerForceSave",
	"rpi_trade_end",
	"NET_BailPlayer",
	"vj_testentity_runtextsd",
	"vj_fireplace_turnon2",
	"requestmoneyforvk",
	"gPrinters.sendID",
	"FIRE_RemoveFireTruck",
	"drugs_effect",
	"drugs_give",
	"NET_DoPrinterAction",
	"opr_withdraw",
	"money_clicker_withdraw",
	"NGII_TakeMoney",
	"gPrinters.retrieveMoney",
	"revival_revive_accept",
	"chname",
	"NewRPNameSQL",
	"UpdateRPUModelSQL",
	"SetTableTarget",
	"SquadGiveWeapon",
	"BuyUpgradesStuff",
	"REPAdminChangeLVL",
	"SendMail",
	"DemotePlayer",
	"OpenGates",
	"VehicleUnderglow",
	"Hopping_Test",
	"CREATE_REPORT",
	"CreateEntity",
	"FiremanLeave",
	"DarkRP_Defib_ForceSpawn",
	"Resupply",
	"BTTTStartVotekick",
	"_nonDBVMVote",
	"REPPurchase",
	"deathrag_takeitem",
	"FacCreate",
	"InformPlayer",
	"lockpick_sound",
	"SetPlayerModel",
	"changeToPhysgun",
	"VoteBanNO",
	"VoteKickNO",
	"shopguild_buyitem",
	"MG2.Request.GangRankings",
	"RequestMAPSize",
	"gMining.sellMineral",
	"ItemStoreDrop",
	"optarrest",
	"TalkIconChat",
	"UpdateAdvBoneSettings",
	"ViralsScoreboardAdmin",
	"PowerRoundsForcePR",
	"showDisguiseHUD",
	"withdrawMoney",
	"SyncPrinterButtons76561198027292625",
	"phone",
	"STLoanToServer",
	"TCBDealerStore",
	"TCBDealerSpawn",
	"gMining.registerAchievement",
	"gPrinters.openUpgrades",
	"SendQueueInfo"
}

-- Known backdoor nets
local bad_nets = {
	"Sbox_gm_attackofnullday_key",
	"c",
	"enablevac",
	"ULXQUERY2",
	"Im_SOCool",
	"MoonMan",
	"LickMeOut",
	"SessionBackdoor",
	"OdiumBackDoor",
	"ULX_QUERY2",
	"Sbox_itemstore",
	"Sbox_darkrp",
	"Sbox_Message",
	"_blacksmurf",
	"nostrip", -- it's the most popular backdoor in gmod... amazing isn't it ?
	"Remove_Exploiters",
	"Sandbox_ArmDupe",
	"rconadmin",
	"jesuslebg",
	"disablebackdoor",
	"blacksmurfBackdoor",
	"jeveuttonrconleul",
	"lag_ping",
	"memeDoor",
	"DarkRP_AdminWeapons",
	"Fix_Keypads",
	"noclipcloakaesp_chat_text",
	"_CAC_ReadMemory",
	"Ulib_Message",
	"Ulogs_Infos",
	"ITEM",
	"nocheat",
	"adsp_door_length",
	"Î¾psilon",
	"JQerystrip.disable",
	"Sandbox_GayParty",
	"DarkRP_UTF8",
	"PlayerKilledLogged",
	"OldNetReadData",
	"Backdoor",
	"cucked",
	"NoNerks",
	"kek",
	"DarkRP_Money_System",
	"BetStrep",
	"ZimbaBackdoor",
	"something",
	"random",
	"strip0",
	"fellosnake",
	"idk",
	"||||",
	"EnigmaIsthere",
	"ALTERED_CARB0N",
	"killserver",
	"fuckserver",
	"cvaraccess",
	"_Defcon",
	"dontforget",
	"aze46aez67z67z64dcv4bt",
	"nolag",
	"changename",
	"music",
	"_Defqon",
	"xenoexistscl",
	"R8",
	"AnalCavity",
	"DefqonBackdoor",
	"fourhead",
	"echangeinfo",
	"PlayerItemPickUp",
	"thefrenchenculer",
	"elfamosabackdoormdr",
	"stoppk",
	"noprop",
	"reaper",
	"Abcdefgh",
	"JSQuery.Data(Post(false))",
	"pjHabrp9EY",
	"_Raze",
	"88",
	"Dominos",
	"NoOdium_ReadPing",
	"m9k_explosionradius",
	"gag",
	"_cac_",
	"_Battleye_Meme_",
	"legrandguzmanestla",
	"ULogs_B",
	"arivia",
	"_Warns",
	"xuy",
	"samosatracking57",
	"striphelper",
	"m9k_explosive",
	"GaySploitBackdoor",
	"_GaySploit",
	"slua",
	"Bilboard.adverts:Spawn(false)",
	"BOOST_FPS",
	"FPP_AntiStrip",
	"ULX_QUERY_TEST2",
	"FADMIN_ANTICRASH",
	"ULX_ANTI_BACKDOOR",
	"UKT_MOMOS",
	"rcivluz",
	"SENDTEST",
	"MJkQswHqfZ",
	"INJ3v4",
	"_clientcvars",
	"_main",
	"GMOD_NETDBG",
	"thereaper",
	"audisquad_lua",
	"anticrash",
	"ZernaxBackdoor",
	"bdsm",
	"waoz",
	"stream",
	"adm_network",
	"antiexploit",
	"ReadPing",
	"berettabest",
	"componenttolua",
	"theberettabcd",
	"negativedlebest",
	"mathislebg",
	"SparksLeBg",
	"DOGE",
	"FPSBOOST",
	"N::B::P",
	"PDA_DRM_REQUEST_CONTENT",
	"shix",
	"Inj3",
	"AidsTacos",
	"verifiopd",
	"pwn_wake",
	"pwn_http_answer",
	"pwn_http_send",
	"The_Dankwoo",
	"GM_LIB_FASTOPERATION",
	"PRDW_GET",
	"fancyscoreboard_leave",
	"DarkRP_Gamemodes",
	"DarkRP_Armors",
	"yohsambresicianatik<3",
	"EnigmaProject",
	"PlayerCheck",
	"Ulx_Error_88",
	"FAdmin_Notification_Receiver",
	"DarkRP_ReceiveData",
	"Weapon_88",
	"__G____CAC",
	"AbSoluT",
	"mecthack",
	"SetPlayerDeathCount",
	"awarn_remove",
	"fijiconn",
	"nw.readstream",
	"LuaCmd",
	"The_DankWhy"
}

local banReason = "(SNTE) Net exploit detected !"

local allBanMethods = {
	base = {
		check = function()
			return true
		end,

		ban = function(ply)
			ply:Ban(0, false)
			ply:Kick(banReason)
		end
	},

	ulx = {
		check = function()
			return istable(ULib) and isfunction(ULib.ban)
		end,

		ban = function(ply)
			ULib.ban(ply, 0, banReason)
		end
	},

	fadmin = {
		check = function()
			return istable(FAdmin) and istable(FAdmin.Commands) and istable(FAdmin.Commands.List) and isfunction(FAdmin.Commands.List["ban"])
		end,

		ban = function(ply)
			RunConsoleCommand("_FAdmin", "ban", ply:SteamID(), "execute", 0, banReason)
		end
	},

	gextension = {
		check = function()
			return istable(GExtension) and isfunction(GExtension.Ban)
		end,

		ban = function(ply)
			ply:GE_Ban(0, banReason, 0)
		end
	},

	gban = {
		check = function()
			return istable(gBan) and isfunction(gBan.PlayerBan)
		end,

		ban = function(ply)
			gBan:PlayerBan(nil, ply, 0, banReason)
		end
	}
}

local helpMsg = "All supported ban methods:\n"
for name in pairs(allBanMethods) do
	helpMsg = "- " .. name .. "\n"
end
CreateConVar("snte_banmethod", "base", FCVAR_ARCHIVE, helpMsg)

cvars.AddChangeCallback("snte_banmethod", function(_, oldValue, newValue)
	if not allBanMethods[newValue] then
		print("(SNTE) bad ban method!\n" .. helpMsg)

		GetConVar("snte_banmethod"):SetString(oldValue)

		return
	end

	if not allBanMethods[newValue].check() then
		print("(SNTE) addon " .. newValue .. " doesn't seem to be installed")

		GetConVar("snte_banmethod"):SetString(oldValue)

		return
	end

	print("(SNTE) ban method set to " .. newValue .. " !")
end)

local function instantBan(ply, netCalled)
    local snteConvar = GetConVar("snte_banmethod")
    local banMethod = snteConvar:GetString()

    if allBanMethods[banMethod].check() then
        allBanMethods[banMethod].ban(ply)
    else
        print("(SNTE) addon " .. banMethod .. " doesn't seem to work / be installed. Fallback to 'base'")
        snteConvar:SetString("base")

        allBanMethods["base"].ban(ply)
    end

    ServerLog("(SNTE) " .. (ply.SteamName and ply:SteamName() or ply:Name()) .. " (" .. ply:SteamID() .. ") has been detected using " .. netCalled .. " and was banned\n")
end

-- Detection
timer.Simple(1, function()
	for i = #legit_nets, 1, -1 do
		if util.NetworkStringToID(legit_nets[i]) ~= 0 then
			print([[(SNTE) exploitable net "]] .. table.remove(legit_nets, i) .. [[" has been detected, be sure to keep your addons up-to-date]])
		end
	end

	for i = #bad_nets, 1, -1 do
		if util.NetworkStringToID(bad_nets[i]) ~= 0 then
			local backdoorNet = table.remove(bad_nets, i)
			print([[(SNTE) WARNING: Backdoor net "]] .. backdoorNet .. [[" has been detected ! Check your addons and make sure to remove the backdoor]])

			if isfunction(net.Receivers[backdoorNet]) then
				local backdoorInfos = debug.getinfo(net.Receivers[backdoorNet], "S")
				print([[(SNTE) NOTE: "]] .. backdoorNet .. [[" was declared in ]] .. backdoorInfos.short_src .. [[ line ]] .. backdoorInfos.linedefined)
			end

			net.Receive(backdoorNet, function(_, ply)
				instantBan(ply, backdoorNet)
			end)
		end
	end

	local global_nets = legit_nets
	local numNets = #global_nets
	table.Add(global_nets, bad_nets)
	for i = 1, rdmNetNum do
		local rand = table.remove(global_nets, math.random(1, numNets - i))
		if not rand then -- We used all the nets ? WTF ?
			break
		end

		util.AddNetworkString(rand)
		net.Receive(rand, function(_, ply)
			instantBan(ply, rand)
		end)

		print("(SNTE) Booby-trapped: " .. rand)
	end
end)

-- Block ulx lua_run module, widely used on superadmins to backdoor servers
if file.Exists("ulx/modules/sh/rcon.lua", "LUA") then
	CreateConVar("snte_ulxluarun", "1", FCVAR_ARCHIVE, "0 to activate ulx lua_run module")

	local function modifyLuaRun(callback)
		ulx.luaRun = callback

		local luarun = ulx.command("Rcon", "ulx luarun", ulx.luaRun, nil, false, false, true)
		luarun:addParam{ type=ULib.cmds.StringArg, hint="command", ULib.cmds.takeRestOfLine }
		luarun:defaultAccess( ULib.ACCESS_SUPERADMIN )
		luarun:help("Executes lua in server console. (Use '=' for output)")
	end

	local function blockLuaRun()
		modifyLuaRun(function(calling_ply, command)
			ulx.fancyLogAdmin(calling_ply, true, "#A tried to run lua (SNTE blocked) : #s", command)
		end)
	end

	timer.Simple(1, function()
		if not istable(ulx) or not isfunction(ulx.luaRun) then
			return
		end

		local oldLuaRun = ulx.luaRun

		if GetConVar("snte_ulxluarun"):GetBool() then
			blockLuaRun()
		end

		cvars.AddChangeCallback("snte_ulxluarun", function(_, __, newValue)
			if tobool(newValue) then
				print("true !")
				blockLuaRun()
			else
				modifyLuaRun(oldLuaRun)
			end
		end)
	end)
end

--[[
Old protection against the "ArmDupe crash exploit"
I can't bring myself to delete it because it is obsolete..nostalgia guy
funny fact it was possible to detect SNTE (aka el famoso SNTE BYPASS lol)

CreateConVar("snte_duperun", "1", FCVAR_ARCHIVE, "0 to activate dupe tool")

if GetConVar("snte_duperun"):GetBool() then
	timer.Simple(1, function()
		net.Receive("ArmDupe", function(_, ply)
			if ply:IsAdmin() then
				ply:ChatPrint("(SNTE) Use snte_duperun 0 in server console to activate dupes")
			end
		end)
	end)
end
]]

-- Fix crash method using physic engine error
hook.Add("CanTool", "SNTE_KILL_BOUNCY_BALL_EXPLOIT", function(_, tr, tool)
	if tool == "weld" && IsValid(tr.Entity) && tr.Entity:GetClass() == "sent_ball" then
		return false
	end
end)
