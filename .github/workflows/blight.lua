Citizen.CreateThread(function()

local Blight = {
	GlobalChat = {},
	GlobalChat2 = {},
    Static = {
        Scroll = 0,
		Scroll2 = 0,
    },
	Players = {},
	ConfigsTable = {},
	enabled = true,
    activemenu = 'main', 
    maxoptcount = 18,
    alpha = 0, 
    parentmenu = 'main',
    open = true,
    lastkey = 0,
}

Blight.A = {}
Blight.F = {
	Tracers = {},
	ColourAmmo = {},
	Ghost = 0,
	NNstyle = 'Blight',
	Tabak = 0,
	AllIpls={{names={'bkr_biker_interior_placement_interior_2_biker_dlc_int_ware01_milo'},interiorsProps={'meth_lab_security_high','meth_lab_upgrade'},coords={{1009.5,-3196.6,-38.99682}}},{interiorsProps={'weed_drying','weed_production','weed_upgrade_equip','weed_growtha_stage3','weed_growthc_stage1','weed_growthd_stage1','weed_growthe_stage2','weed_growthf_stage2','weed_growthg_stage1','weed_growthh_stage3','weed_growthi_stage2','weed_hosea','weed_hoseb','weed_hosec','weed_hosed','weed_hosee','weed_hosef','weed_hoseg','weed_hoseh','weed_hosei','light_growtha_stage23_upgrade','light_growthb_stage23_upgrade','light_growthc_stage23_upgrade','light_growthc_stage23_upgrade','light_growthd_stage23_upgrade','light_growthe_stage23_upgrade','light_growthf_stage23_upgrade','light_growthg_stage23_upgrade','light_growthh_stage23_upgrade','light_growthi_stage23_upgrade','weed_security_upgrade','weed_chairs'},coords={{1051.491,-3196.536,-39.14842}}},{interiorsProps={'security_high','equipment_basic','equipment_upgrade','production_upgrade','table_equipment_upgrade','coke_press_upgrade','coke_cut_01','coke_cut_02','coke_cut_03','coke_cut_04','coke_cut_05'},coords={{1093.6,-3196.6,-38.99841}}},{interiorsProps={'Bunker_Style_C','upgrade_bunker_set','security_upgrade','Office_Upgrade_set','gun_wall_blocker','gun_range_lights','gun_locker_upgrade','Gun_schematic_set'},coords={{899.5518,-3246.038,-98.04907}}},{interiorsProps={'V_FIB03_door_light','V_FIB02_set_AH3b','V_FIB03_set_AH3b','V_FIB04_set_AH3b'},coords={{110.4,-744.2,45.7496}}},{interiorsProps={'counterfeit_cashpile10d','counterfeit_cashpile20d','counterfeit_cashpile100d','counterfeit_security','counterfeit_upgrade_equip','money_cutter','special_chairs','dryera_on','dryera_open','dryerb_on','dryerb_open','dryerc_on','dryerc_open','dryerd_on','dryerd_open'},coords={{1121.897,-3195.338,-40.4025}}},{interiorsProps={'cash_stash3','coke_stash3','counterfeit_stash3','weed_stash3','id_stash3','meth_stash3','decorative_02','furnishings_02','walls_02','mural_09','gun_locker','mod_booth'},coords={{1107.04,-3157.399,-37.51859}}},{interiorsProps={'cash_large','coke_large','counterfeit_large','id_large','meth_large','weed_large','decorative_02','furnishings_02','walls_02','lower_walls_default','gun_locker','mod_booth'},coords={{998.4809,-3164.711,-38.90733}}},{interiorsProps={'garage_decor_01','garage_decor_02','garage_decor_03','garage_decor_04','lighting_option01','lighting_option02','lighting_option03','lighting_option04','lighting_option05','lighting_option06','lighting_option07','lighting_option08','lighting_option09','numbering_style01_n3','numbering_style02_n3','numbering_style03_n3','numbering_style04_n3','numbering_style05_n3','numbering_style06_n3','numbering_style07_n3','numbering_style08_n3','numbering_style09_n3','floor_vinyl_01','floor_vinyl_02','floor_vinyl_03','floor_vinyl_04','floor_vinyl_05','floor_vinyl_06','floor_vinyl_07','floor_vinyl_08','floor_vinyl_09','floor_vinyl_10','floor_vinyl_11','floor_vinyl_12','floor_vinyl_13','floor_vinyl_14','floor_vinyl_15','floor_vinyl_16','floor_vinyl_17','floor_vinyl_18','floor_vinyl_19','urban_style_set','car_floor_hatch','door_blocker'},coords={{994.5925,-3002.594,-39.64699}}},{interiorsProps={'office_chairs','swag_art3','swag_counterfeit3','swag_jewelwatch2'},coords={{-141.1987,-620.913,168.8205},{-141.5429,-620.9524,168.8204},{-141.2896,-620.9618,168.8204},{-141.4966,-620.8292,168.8204},{-141.3997,-620.9006,168.8204},{-141.5361,-620.9186,168.8204},{-141.392,-621.0451,168.8204},{-141.1945,-620.8729,168.8204},{-141.4924,-621.0035,168.8205},{-75.8466,-826.9893,243.3859},{-75.49945,-827.05,243.386},{-75.49827,-827.1889,243.386},{-75.44054,-827.1487,243.3859},{-75.63942,-827.1022,243.3859},{-75.47446,-827.2621,243.386},{-75.56978,-827.1152,243.3859},{-75.51953,-827.0786,243.3859},{-75.41915,-827.1118,243.3858},{-1579.756,-565.0661,108.523},{-1579.678,-565.0034,108.5229},{-1579.583,-565.0399,108.5229},{-1579.702,-565.0366,108.5229},{-1579.643,-564.9685,108.5229},{-1579.681,-565.0003,108.523},{-1579.677,-565.0689,108.5229},{-1579.708,-564.9634,108.5229},{-1579.693,-564.8981,108.5229},{-1392.667,-480.4736,72.04217},{-1392.542,-480.4011,72.04211},{-1392.626,-480.4856,72.04212},{-1392.617,-480.6363,72.04208},{-1392.532,-480.7649,72.04207},{-1392.611,-480.5562,72.04214},{-1392.563,-480.549,72.0421},{-1392.528,-480.475,72.04206},{-1392.416,-480.7485,72.04207}}},{interiorsProps={'garage_decor_04','lighting_option09','numbering_style01_n1','numbering_style02_n1','numbering_style03_n1','numbering_style04_n1','numbering_style05_n1','numbering_style06_n1','numbering_style07_n1','numbering_style08_n1','numbering_style09_n1','basic_style_set'},coords={{795.75439453125,-2997.3317871094,-22.960731506348}}},{interiorsProps={'floor_vinyl_03'},coords={{730.63916015625,-2993.2373046875,-38.999904632568}}},{interiorsProps={'chair01','chair02','chair03','chair04','chair05','chair06','chair07','clutter','equipment_upgrade','interior_upgrade','production','security_high','set_up'},coords={{1163.842,-3195.7,-39.008}}},{interiorsProps={'set_int_02_decal_01','set_int_02_lounge1','set_int_02_cannon','set_int_02_clutter1','set_int_02_crewemblem','set_int_02_shell','set_int_02_security','set_int_02_sleep','set_int_02_trophy1','set_int_02_paramedic_complete','set_Int_02_outfit_paramedic','set_Int_02_outfit_serverfarm'},interiorsPropColors={{'set_int_02_decal_01',1},{'set_int_02_lounge1',1},{'set_int_02_cannon',1},{'set_int_02_clutter1',1},{'set_int_02_shell',1},{'set_int_02_security',1},{'set_int_02_sleep',1},{'set_int_02_trophy1',1},{'set_int_02_paramedic_complete',1},{'set_Int_02_outfit_paramedic',1},{'set_Int_02_outfit_serverfarm',1}},coords={{483.2,4810.5,-58.9}}},{interiorsProps={'set_lighting_hangar_a','set_tint_shell','set_bedroom_tint','set_crane_tint','set_modarea','set_lighting_tint_props','set_floor_1','set_floor_decal_1','set_bedroom_modern','set_office_modern','set_bedroom_blinds_open','set_lighting_wall_tint01'},interiorsPropColors={{'set_tint_shell',1},{'set_bedroom_tint',1},{'set_crane_tint',1},{'set_modarea',1},{'set_lighting_tint_props',1},{'set_floor_decal_1',1}},coords={{-1266.0,-3014.0,-47.0}}}},
	OnlinePlayers = {
		Splayer = 0,
		T = {},
	},
	holdtimer = 0,
	scrolly = 0.0,
	scrollyold = 0.0,
	IsCustomPropmen = 'random',
	IsCustomVehmen = 'random',
	IsCustomPedMen = 'random',
	IsCustomVehmen2 = 'random',
	AimbotKeybindl = "NONE",
	AimbotKeybindv = 0,
}
local cockmenyoo = 0
local timer = 0
local plustoscroll = 0.0
local loadt = 0 
local rctimer = 0
local __AATIMER__ = 0
local __EVENTTT__ = 0
local __WATERMARKALPHA__ = 0
local __WATERMARKALPHA__2 = 0
local quat = quat
local __CitIn__ = Citizen

local __BlightStrings__ = { 
	strings = {
		-- strings
		['string:upper'] = string.upper,
		['string:lower'] = string.lower,
		['string:format'] = string.format,
		['string:tonumber'] = tonumber,
		['string:tostring'] = tostring,
		['string:pairs'] = pairs,

		['string:find'] = string.find,
		['string:sub'] = string.sub,
		['string:gsub'] = string.gsub,
		['string:quat'] = quat,
		['string:vector3'] = vector3,
		['string:type'] = type,

		-- tables
		['table:unpack'] = table.unpack,
		['table:insert'] = table.insert,
		['table:remove'] = table.remove,

		
		-- msgpacks
		['msgpack:unpack'] = msgpack.unpack,
		['msgpack:pack'] = msgpack.pack,
		
		
	},
	math = {
		['math:rad'] = math.rad,
		['math:cos'] = math.cos,
		['math:sin'] = math.sin,
		['math:pi'] = math.pi,
		['math:abs'] = math.abs,
		['math:ceil'] = math.ceil,
		['math:random'] = math.random,
		['math:sqrt'] = math.sqrt,

		['math:floor'] = math.floor,
	},
}

function __BlightStrings__.strings:msgpackunpack(pack)
	return __BlightStrings__.strings['msgpack:unpack'](pack)
end
function __BlightStrings__.strings:msgpackpack(pack)
	return __BlightStrings__.strings['msgpack:pack'](pack)
end

function __BlightStrings__.strings:tableinsert(a, b)
	return __BlightStrings__.strings['table:insert'](a, b)
end
function __BlightStrings__.strings:tableremove(a, b)
	return __BlightStrings__.strings['table:remove'](a, b)
end

function __BlightStrings__.strings:tableunpack(table)
	return __BlightStrings__.strings['table:unpack'](table)
end
function __BlightStrings__.strings:upper(text)
	return __BlightStrings__.strings['string:upper'](text)
end
function __BlightStrings__.strings:lower(text)
	return __BlightStrings__.strings['string:lower'](text)
end
function __BlightStrings__.strings:format(p, v)
	return __BlightStrings__.strings['string:format'](p, v)
end
function __BlightStrings__.strings:tonumber(text)
	return __BlightStrings__.strings['string:tonumber'](text)
end
function __BlightStrings__.strings:tostring(text)
	return __BlightStrings__.strings['string:tostring'](text)
end
function __BlightStrings__.strings:floor(a)
	return __BlightStrings__.math['math:floor'](a)
end
function __BlightStrings__.strings:pairs(pair)
	return __BlightStrings__.strings['string:pairs'](pair)
end
function __BlightStrings__.strings:sqrt(A)
	return __BlightStrings__.math['math:sqrt'](A)
end
function __BlightStrings__.strings:rad(rot)
	return __BlightStrings__.math['math:rad'](rot)
end
function __BlightStrings__.strings:random(a, b)
	return __BlightStrings__.math['math:random'](a, b)
end
function __BlightStrings__.strings:cos(yaw)
	return __BlightStrings__.math['math:cos'](yaw)
end
function __BlightStrings__.strings:sin(yaw)
	return __BlightStrings__.math['math:sin'](yaw)
end
function __BlightStrings__.strings:abs(adjustedRotation)
	return __BlightStrings__.math['math:abs'](adjustedRotation)
end
function __BlightStrings__.strings:gsub(a, b, c)
	return __BlightStrings__.strings['string:gsub'](a, b, c)
end
function __BlightStrings__.strings:sub(a, b, c)
	return __BlightStrings__.strings['string:sub'](a, b, c)
end
function __BlightStrings__.strings:find(a, b)
	return __BlightStrings__.strings['string:find'](a, b)
end
function __BlightStrings__.strings:ceil(a)
	return __BlightStrings__.math['math:ceil'](a)
end
function __BlightStrings__.strings:quat(v2, v3)
	return __BlightStrings__.strings['string:quat'](v2, v3)
end
function __BlightStrings__.strings:vector3(x, y, z)
	return __BlightStrings__.strings['string:vector3'](x, y, z)
end
function __BlightStrings__.strings:type(type)
	return __BlightStrings__.strings['string:type'](type)
end

local AddonVehicles = {
	cars = {'adder', "gtr", "19dbs", "16challenger", "4490crf", "911", "amggtsprior", "lb750sv", "lp770", "weaponz", "c4cactus", "agera", "can", "cweapon1000", "db11", "divo", "f82", "fordh", "g63", "gt63", "rmodmustang", "rmodrs6", "fenyr", "pturismo", "bugatti", "huayrar", "r8ppis", "sc18", "patty", "californiat", "vantage", "04acuratsx", "180sx", "18performante", "2012leon", "504", "718b", "95stang", "999", "aaq4", "amggt", "audis32", "audis8om", "ben17", "bentaygast", "bgnx", "bmws", "c63w205", "c7", "camry55", "cayenne", "citroc4", "countach", "cyrus", "czr2", "dbs2009", "dbx", "demon", "eclipse", "evo9", "f150", "f812", "fairlane66", "fct", "fd3s", "fe86", "fiat600", "fz07", "g65amg", "gt17", "gto", "ibiza", "m3f80", "m4f82", "m5e60", "mgt", "monza", "p1", "passatb3", "prius17", "r6", "r8ppi", "raptor2017", "rav4", "rs7", "s500w222", "srt8", "str20", "supra2", "tahoe", "taycan", "teslax", "trossa", "urus", "w210", "x6m", "XADV", "z4bmw", "zl12017", "18Velar", "19gt500", "19ramoffroad", "650slw", "acsr", "amggtr", "amggtrr20", "aperta", "asrad", "audsq517", "avj", "avz", "battista", "bc", "bdivo", "bmm", "boss302", "weaponabus700", "bug09", "bugatticentodieci", "c8c", "chiron17", "db5", "demonhawk", "enzo", "explorer20", "f1", "f8t", "fc15", "fxxk2", "g63amg6x6", "gr1", "h6", "hyabusadrag", "it18", "jes", "kamswb", "ktklp7704", "lamboMurcielago", "lamtmc", "m5hamman", "mcvors", "mercxclass", "mlec", "mvisiongt", "nissantitan17", "one77", "p1lm", "q820", "raid", "regera", "rimac", "rmodlp770", "rmodmi8lb", "rxf7", "senna", "skyline", "sq72016", "superkart", "terzo", "titan17", "tr22", "vip8", "wraith", "zondar", "zx10r", 'rmodx6police', 'nspeedo', 'aimgainnsx', 'adCar', 'rmodmartin', 'ast', 'a6', 'r820', 'r8v10abt', 'rs318', 'rs4avant', 'rs6c8', 'rs7c8wb', 'b5s4', '2015s3', 'rmodbentleygt', 'contss18', 'rmodbentley1', '7449le', 'm3e30', 'e30t', 'm2f22', 'm6f30', 'm3e46', 'razor', 'm4c', 'm4', 'rmodm4gts', 'e34touring', 'e60', 'm516', 'pd_bmw', 'rmodbmwm8', 'rmodm8gte', 'm40i', 'weaponabus850', 'b63s', 'mweapona850', 'rmodchiron300', 'rmodbugatti', 'bvit', 'rmodzl1',}
}

Blight.F.Tables = {
	CFGAccess = {
		0, 5468, 4
	},
	KnownEvents = {
		'screenshot_basic:requestScreenshot',
		'something',
		'somfing',
		'anticheat:kick',
		'anticheat:ban',
		'el_bwh:ban',
		'el_bwh:warn',
		'EasyAdmin:CaptureScreenshot',
		'EasyAdmin:CaptureScreenshot',
		'EasyAdmin:requestSpectate',
		'EasyAdmin:kickPlayer',
		'EasyAdmin:banPlayer',
		'EasyAdmin:TeleportAdminToPlayer',
		'EasyAdmin:SlapPlaye',
		'tigoanticheat:banPlayer',
		'tigoanticheat:logToConsole',
		"AntiCheese:RemoveInventoryWeapons",
	},
	CurrentShooting = 1,
		ShootingModes = {
			'weapon_rpg', 'weapon_pistol'
		},
		Textures = {
			Parts = {'uppr', 'jbib', 'lowr', 'accs', 'feet', 'berd', 'task', 'teef', 'head'},
			ChamTextures = {
				['casual'] = {'_a_uni','_b_uni','_c_uni','_d_uni','_e_uni','_f_uni','_g_uni','_h_uni','_i_uni','_j_uni','_k_uni','_l_uni','_m_uni','_n_uni','_o_uni','_p_uni','_q_uni','_r_uni','_s_uni','_t_uni','_u_uni','_v_uni','_w_uni','_x_uni','_y_uni','_z_uni','_a_whi','_b_whi','_c_whi','_d_whi','_e_whi','_f_whi','_g_whi','_h_whi','_i_whi','_j_whi','_k_whi','_l_whi','_m_whi','_n_whi','_o_whi','_p_whi','_q_whi','_r_whi','_s_whi','_t_whi','_u_whi','_v_whi','_w_whi','_x_whi','_y_whi','_z_whi',},['head'] = {'_a_uni','_b_uni','_c_uni','_d_uni','_e_uni','_f_uni','_g_uni','_h_uni','_i_uni','_j_uni','_k_uni','_l_uni','_m_uni','_n_uni','_o_uni','_p_uni','_q_uni','_r_uni','_s_uni','_t_uni','_u_uni','_v_uni','_w_uni','_x_uni','_y_uni','_z_uni','_a_whi','_b_whi','_c_whi','_d_whi','_e_whi','_f_whi','_g_whi','_h_whi','_i_whi','_j_whi','_k_whi','_l_whi','_m_whi','_n_whi','_o_whi','_p_whi','_q_whi','_r_whi','_s_whi','_t_whi','_u_whi','_v_whi','_w_whi','_x_whi','_y_whi','_z_whi','_a_bla','_b_bla','_c_bla','_d_bla','_e_bla','_f_bla','_g_bla','_h_bla','_i_bla','_j_bla','_k_bla','_l_bla','_m_bla','_n_bla','_o_bla','_p_bla','_q_bla','_r_bla','_s_bla','_t_bla','_u_bla','_v_bla','_w_bla','_x_bla','_y_bla','_z_bla','_a_lat','_b_lat','_c_lat','_d_lat','_e_lat','_f_lat','_g_lat','_h_lat','_i_lat','_j_lat','_k_lat','_l_lat','_m_lat','_n_lat','_o_lat','_p_lat','_q_lat','_r_lat','_s_lat','_t_lat','_u_lat','_v_lat','_w_lat','_x_lat','_y_lat','_z_lat','_a_chi','_b_chi','_c_chi','_d_chi','_e_chi','_f_chi','_g_chi','_h_chi','_i_chi','_j_chi','_k_chi','_l_chi','_m_chi','_n_chi','_o_chi','_p_chi','_q_chi','_r_chi','_s_chi','_t_chi','_u_chi','_v_chi','_w_chi','_x_chi','_y_chi','_z_chi','_a_pak','_b_pak','_c_pak','_d_pak','_e_pak','_f_pak','_g_pak','_h_pak','_i_pak','_j_pak','_k_pak','_l_pak','_m_pak','_n_pak','_o_pak','_p_pak','_q_pak','_r_pak','_s_pak','_t_pak','_u_pak','_v_pak','_w_pak','_x_pak','_y_pak','_z_pak','_a_ara','_b_ara','_c_ara','_d_ara','_e_ara','_f_ara','_g_ara','_h_ara','_i_ara','_j_ara','_k_ara','_l_ara','_m_ara','_n_ara','_o_ara','_p_ara','_q_ara','_r_ara','_s_ara','_t_ara','_u_ara','_v_ara','_w_ara','_x_ara','_y_ara','_z_ara',}
			},
			ChamNumbers = {
				['upper'] = { 0 .. 0 .. 0, 0 .. 0 .. 1, 0 .. 0 .. 2, 0 .. 0 .. 3, 0 .. 0 .. 4, 0 .. 0 .. 5, 0 .. 0 .. 6, 0 .. 0 .. 7, 0 .. 0 .. 8, 0 .. 0 .. 9, 0 .. 10, 0 .. 11, 0 .. 12, 0 .. 13, 0 .. 14, 0 .. 15, 0 .. 16, 0 .. 17, 0 .. 18, 0 .. 19, 0 .. 20, 0 .. 21, 0 .. 22, 0 .. 23, 0 .. 24, 0 .. 25, 0 .. 26, 0 .. 27, 0 .. 28, 0 .. 29, 0 .. 30, 0 .. 31, 0 .. 32, 0 .. 33, 0 .. 34, 0 .. 35, 0 .. 36, 0 .. 37, 0 .. 38, 0 .. 39, 0 .. 40, 0 .. 41, 0 .. 42, 0 .. 43, 0 .. 44, 0 .. 45, 0 .. 46, 0 .. 47, 0 .. 48, 0 .. 49, 0 .. 50, 0 .. 51, 0 .. 52, 0 .. 53, 0 .. 54, 0 .. 55, 0 .. 56, 0 .. 57, 0 .. 58, 0 .. 59, 0 .. 60, 0 .. 61, 0 .. 62, 0 .. 63, 0 .. 64, 0 .. 65, 0 .. 66, 0 .. 67, 0 .. 68, 0 .. 69, 0 .. 70, 0 .. 71, 0 .. 72, 0 .. 73, 0 .. 74, 0 .. 75, 0 .. 76, 0 .. 77, 0 .. 78, 0 .. 79, 0 .. 80 },['head'] = { 0 .. 0 .. 0, 0 .. 0 .. 1, 0 .. 0 .. 2, 0 .. 0 .. 3, 0 .. 0 .. 4, 0 .. 0 .. 5, 0 .. 0 .. 6, 0 .. 0 .. 7, 0 .. 0 .. 8, 0 .. 0 .. 9, 0 .. 10, 0 .. 11, 0 .. 12, 0 .. 13, 0 .. 14, 0 .. 15, 0 .. 16, 0 .. 17, 0 .. 18, 0 .. 19, 0 .. 20, 0 .. 21, 0 .. 22, 0 .. 23, 0 .. 24, 0 .. 25, 0 .. 26, 0 .. 27, 0 .. 28, 0 .. 29, 0 .. 30, 0 .. 31, 0 .. 32, 0 .. 33, 0 .. 34, 0 .. 35, 0 .. 36, 0 .. 37, 0 .. 38, 0 .. 39, 0 .. 40, 0 .. 41, 0 .. 42, 0 .. 43, 0 .. 44, 0 .. 45 },['teef'] = { 0 .. 0 .. 0, 0 .. 0 .. 1, 0 .. 0 .. 2, 0 .. 0 .. 3, 0 .. 0 .. 4, 0 .. 0 .. 5, 0 .. 0 .. 6, 0 .. 0 .. 7, 0 .. 0 .. 8, 0 .. 0 .. 9, 0 .. 10, 0 .. 11, 0 .. 12, 0 .. 13, 0 .. 14, 0 .. 15, 0 .. 16, 0 .. 17, 0 .. 18, 0 .. 19, 0 .. 20, 0 .. 21, 0 .. 22, 0 .. 23, 0 .. 24, 0 .. 25, 0 .. 26, 0 .. 27, 0 .. 28, 0 .. 29, 0 .. 30, 0 .. 31, 0 .. 32, 0 .. 33, 0 .. 34, 0 .. 35, 0 .. 36, 0 .. 37 },['rest'] = { 0 .. 0 .. 0, 0 .. 0 .. 1, 0 .. 0 .. 2, 0 .. 0 .. 3, 0 .. 0 .. 4, 0 .. 0 .. 5, 0 .. 0 .. 6, 0 .. 0 .. 7, 0 .. 0 .. 8, 0 .. 0 .. 9, 0 .. 10, 0 .. 11, 0 .. 12, 0 .. 13, 0 .. 14, 0 .. 15, 0 .. 16, 0 .. 17, 0 .. 18, 0 .. 19, 0 .. 20, 0 .. 21, 0 .. 22, 0 .. 23, 0 .. 24, 0 .. 25, 0 .. 26, 0 .. 27, 0 .. 28, 0 .. 29 }
			},
		},
		WepTextures = {
			'w_me_switchblade+hi','w_me_switchblade','w_me_switchblade_b+hi','w_me_switchblade_b','w_me_switchblade_g+hi','w_me_switchblade_g','w_pi_revolver+hi','w_pi_revolver','w_pi_revolver_b+hi','w_pi_revolver_b','w_pi_revolver_g+hi','w_pi_revolver_g','w_pi_revolver_mag1','w_ar_bp_mk2_barrel1','w_ar_bp_mk2_barrel2','w_ar_bullpupriflemk2','w_ar_bullpupriflemk2_camo1','w_ar_bullpupriflemk2_camo2','w_ar_bullpupriflemk2_camo3','w_ar_bullpupriflemk2_camo4','w_ar_bullpupriflemk2_camo5','w_ar_bullpupriflemk2_camo6','w_ar_bullpupriflemk2_camo7','w_ar_bullpupriflemk2_camo8','w_ar_bullpupriflemk2_camo9','w_ar_bullpupriflemk2_camo10','w_ar_bullpupriflemk2_camo_ind1','w_ar_bullpupriflemk2_mag1','w_ar_bullpupriflemk2_mag2','w_ar_bullpupriflemk2_mag_ap','w_ar_bullpupriflemk2_mag_fmj','w_ar_bullpupriflemk2_mag_inc','w_ar_bullpupriflemk2_mag_tr','w_ar_sc_barrel_1','w_ar_sc_barrel_2','w_ar_specialcarbinemk2','w_ar_specialcarbinemk2_camo1','w_ar_specialcarbinemk2_camo2','w_ar_specialcarbinemk2_camo3','w_ar_specialcarbinemk2_camo4','w_ar_specialcarbinemk2_camo5','w_ar_specialcarbinemk2_camo6','w_ar_specialcarbinemk2_camo7','w_ar_specialcarbinemk2_camo8','w_ar_specialcarbinemk2_camo9','w_ar_specialcarbinemk2_camo10','w_ar_specialcarbinemk2_camo_ind','w_ar_specialcarbinemk2_mag1','w_ar_specialcarbinemk2_mag2','w_ar_specialcarbinemk2_mag_ap','w_ar_specialcarbinemk2_mag_fmj','w_ar_specialcarbinemk2_mag_inc','w_ar_specialcarbinemk2_mag_tr','w_at_muzzle_8_xm17','w_at_muzzle_8_xm_l1','w_at_pi_comp_2','w_at_pi_comp_3','w_at_pi_rail_2','w_at_pi_snsmk2_flsh_1','w_ex_vehiclemissile_4','w_pi_revolvermk2','w_pi_revolvermk2_camo1','w_pi_revolvermk2_camo2','w_pi_revolvermk2_camo3','w_pi_revolvermk2_camo4','w_pi_revolvermk2_camo5','w_pi_revolvermk2_camo6','w_pi_revolvermk2_camo7','w_pi_revolvermk2_camo8','w_pi_revolvermk2_camo9','w_pi_revolvermk2_camo10','w_pi_revolvermk2_camo_ind','w_pi_revolvermk2_mag1','w_pi_revolvermk2_mag2','w_pi_revolvermk2_mag3','w_pi_revolvermk2_mag4','w_pi_revolvermk2_mag5','w_pi_revolvermk_l1','w_pi_sns_pistolmk2','w_pi_sns_pistolmk2_camo1','w_pi_sns_pistolmk2_camo2','w_pi_sns_pistolmk2_camo3','w_pi_sns_pistolmk2_camo4','w_pi_sns_pistolmk2_camo5','w_pi_sns_pistolmk2_camo6','w_pi_sns_pistolmk2_camo7','w_pi_sns_pistolmk2_camo8','w_pi_sns_pistolmk2_camo9','w_pi_sns_pistolmk2_camo10','w_pi_sns_pistolmk2_camo_ind1','w_pi_sns_pistolmk2_mag1','w_pi_sns_pistolmk2_mag2','w_pi_sns_pistolmk2_mag_fmj','w_pi_sns_pistolmk2_mag_hp','w_pi_sns_pistolmk2_mag_inc','w_pi_sns_pistolmk2_mag_tr','w_pi_sns_pistolmk2_sl_camo1','w_pi_sns_pistolmk2_sl_camo2','w_pi_sns_pistolmk2_sl_camo3','w_pi_sns_pistolmk2_sl_camo4','w_pi_sns_pistolmk2_sl_camo5','w_pi_sns_pistolmk2_sl_camo6','w_pi_sns_pistolmk2_sl_camo7','w_pi_sns_pistolmk2_sl_camo8','w_pi_sns_pistolmk2_sl_camo9','w_pi_sns_pistolmk2_sl_camo10','w_pi_sns_pistolmk2_sl_camo_ind1','w_pi_wep1_gun','w_pi_wep1_mag1','w_sg_pumpshotgunmk2+hi','w_sg_pumpshotgunmk2','w_sg_pumpshotgunmk2_camo1','w_sg_pumpshotgunmk2_camo2','w_sg_pumpshotgunmk2_camo3','w_sg_pumpshotgunmk2_camo4','w_sg_pumpshotgunmk2_camo5','w_sg_pumpshotgunmk2_camo6','w_sg_pumpshotgunmk2_camo7','w_sg_pumpshotgunmk2_camo8','w_sg_pumpshotgunmk2_camo9','w_sg_pumpshotgunmk2_camo10','w_sg_pumpshotgunmk2_camo_ind1','w_sg_pumpshotgunmk2_mag1','w_sg_pumpshotgunmk2_mag_ap','w_sg_pumpshotgunmk2_mag_exp','w_sg_pumpshotgunmk2_mag_hp','w_sg_pumpshotgunmk2_mag_inc','w_sr_marksmanriflemk2','w_sr_marksmanriflemk2_camo1','w_sr_marksmanriflemk2_camo2','w_sr_marksmanriflemk2_camo3','w_sr_marksmanriflemk2_camo4','w_sr_marksmanriflemk2_camo5','w_sr_marksmanriflemk2_camo6','w_sr_marksmanriflemk2_camo7','w_sr_marksmanriflemk2_camo8','w_sr_marksmanriflemk2_camo9','w_sr_marksmanriflemk2_camo10','w_sr_marksmanriflemk2_camo_ind','w_sr_marksmanriflemk2_mag1','w_sr_marksmanriflemk2_mag2','w_sr_marksmanriflemk2_mag_ap','w_sr_marksmanriflemk2_mag_fmj','w_sr_marksmanriflemk2_mag_inc','w_sr_marksmanriflemk2_mag_tr','w_sr_mr_mk2_barrel_1','w_sr_mr_mk2_barrel_2','w_ch_jerrycan',
			'w_pi_ceramic_mag1','w_pi_ceramic_pistol','w_pi_ceramic_supp','w_pi_wep2_gun','w_pi_wep2_gun_mag1','w_pi_wep2_gun_mag_l1','w_ar_advancedrifle_luxe','w_ar_advancedrifle_luxe_mag1','w_ar_advancedrifle_luxe_mag2',
			'w_ar_assaultrifle_luxe','w_ar_assaultrifle_luxe_mag1','w_ar_assaultrifle_luxe_mag2','w_ar_carbinerifle_luxe','w_ar_carbinerifle_luxe_mag1','w_ar_carbinerifle_luxe_mag2','w_at_ar_afgrip_luxe','w_at_ar_flsh_2','w_at_ar_flsh_luxe','w_at_ar_supp_luxe','w_at_ar_supp_luxe_02','w_at_pi_flsh_luxe','w_at_pi_supp_luxe','w_at_pi_supp_luxe_2','w_at_railcover_luxe_01','w_at_scope_large_luxe','w_at_scope_macro_02_luxe','w_at_scope_macro_luxe','w_at_scope_max_luxe','w_at_scope_medium_luxe','w_at_scope_small_02_luxe_l1','w_at_scope_small_luxe','w_at_scope_small_luxe_2','w_at_sr_supp_luxe','w_at_sr_supp_luxe_2','w_pi_appistol_luxe','w_pi_appistol_mag1_luxe','w_pi_appistol_mag2_luxe','w_pi_heavypistol_luxe','w_pi_heavypistol_luxe_mag1','w_pi_heavypistol_luxe_mag2','w_pi_pistol50_luxe','w_pi_pistol50_mag1_luxe','w_pi_pistol50_mag2_luxe','w_pi_pistol_luxe','w_pi_pistol_luxe_mag1','w_pi_pistol_luxe_mag2','w_sb_microsmg_luxe','w_sb_microsmg_mag1_luxe','w_sb_microsmg_mag2_luxe','w_sb_pdw+hi','w_sb_pdw','w_sb_pdw_mag1','w_sb_pdw_mag2','w_sb_smg_luxe','w_sb_smg_luxe_mag1','w_sb_smg_luxe_mag2','w_sg_sawnoff_luxe','w_sr_marksmanrifle_luxe','w_sr_marksmanrifle_luxe_mag1','w_sr_marksmanrifle_luxe_mag2','w_sr_sniperrifle_luxe','w_sr_sniperrifle_mag1_luxe','w_am_baseball','w_am_digiscanner+hi','w_am_digiscanner','w_am_fire_exting+hi','w_am_fire_exting','w_am_flare','w_ar_advancedrifle+hi','w_ar_advancedrifle','w_ar_advancedrifle_mag1+hi','w_ar_advancedrifle_mag1','w_ar_advancedrifle_mag2+hi','w_ar_advancedrifle_mag2','w_ar_assaultrifle+hi','w_ar_assaultrifle','w_ar_assaultrifle_mag1','w_ar_assaultrifle_mag2','w_ar_bullpuprifle+hi','w_ar_bullpuprifle','w_ar_bullpuprifle_mag1','w_ar_bullpuprifle_mag2','w_ar_carbinerifle+hi','w_ar_carbinerifle','w_ar_carbinerifle_mag1','w_ar_carbinerifle_mag2','w_ar_musket+hi','w_ar_musket','w_ar_railgun','w_ar_railgun_mag1','w_ar_specialcarbine+hi','w_ar_specialcarbine','w_ar_specialcarbine_mag1','w_ar_specialcarbine_mag2','w_at_ar_afgrip','w_at_ar_flsh','w_at_ar_supp','w_at_ar_supp_02','w_at_pi_flsh','w_at_pi_supp','w_at_pi_supp_2','w_at_railcover_01','w_at_scope_large+hi','w_at_scope_large','w_at_scope_macro+hi','w_at_scope_macro','w_at_scope_macro_2+hi','w_at_scope_macro_2','w_at_scope_max+hi','w_at_scope_max','w_at_scope_medium+hi','w_at_scope_medium','w_at_scope_small+hi','w_at_scope_small','w_at_scope_small_2+hi','w_at_scope_small_2','w_at_sr_supp','w_at_sr_supp_2','w_ex_apmine','w_ex_grenadefrag','w_ex_grenadesmoke','w_ex_molotov','w_ex_pe+hi','w_ex_pe','w_ex_snowball','w_lr_firework+hi','w_lr_firework','w_lr_firework_rocket','w_lr_grenadelauncher+hi','w_lr_grenadelauncher','w_lr_homing','w_lr_homing_rocket','w_lr_rpg+hi','w_lr_rpg','w_lr_rpg_rocket+hi','w_lr_rpg_rocket','w_me_bat','w_me_bottle+hi','w_me_bottle','w_me_crowbar','w_me_dagger+hi','w_me_dagger','w_me_gclub','w_me_hammer','w_me_hatchet+hi','w_me_hatchet','w_me_knife_01+hi','w_me_knife_01','w_me_nightstick','w_mg_combatmg+hi','w_mg_combatmg','w_mg_combatmg_mag1+hi','w_mg_combatmg_mag1','w_mg_combatmg_mag2+hi','w_mg_combatmg_mag2','w_mg_mg+hi','w_mg_mg','w_mg_mg_mag1+hi','w_mg_mg_mag1','w_mg_mg_mag2+hi','w_mg_mg_mag2','w_mg_minigun+hi','w_mg_minigun','w_pi_appistol+hi','w_pi_appistol','w_pi_appistol_mag1','w_pi_appistol_mag2','w_pi_combatpistol+hi','w_pi_combatpistol','w_pi_combatpistol_mag1','w_pi_combatpistol_mag2','w_pi_heavypistol+hi','w_pi_heavypistol','w_pi_heavypistol_mag1','w_pi_heavypistol_mag2','w_pi_pistol','w_pi_pistol50+hi','w_pi_pistol50','w_pi_pistol50_mag1','w_pi_pistol50_mag2','w_pi_pistol+hi','w_pi_pistol_mag1','w_pi_pistol_mag2','w_pi_sns_pistol+hi','w_pi_sns_pistol','w_pi_sns_pistol_mag1','w_pi_sns_pistol_mag2','w_pi_stungun+hi','w_pi_stungun','w_pi_vintage_pistol','w_pi_vintage_pistol_mag1','w_pi_vintage_pistol_mag2','w_sb_assaultsmg+hi','w_sb_assaultsmg','w_sb_assaultsmg_mag1','w_sb_assaultsmg_mag2','w_sb_gusenberg+hi','w_sb_gusenberg','w_sb_gusenberg_mag1','w_sb_gusenberg_mag2','w_sb_microsmg+hi','w_sb_microsmg',
			'w_sb_microsmg_mag1+hi','w_sb_microsmg_mag1','w_sb_microsmg_mag2+hi','w_sb_microsmg_mag2','w_sb_smg+hi','w_sb_smg','w_sb_smg_mag1','w_sb_smg_mag2','w_sg_assaultshotgun+hi','w_sg_assaultshotgun','w_sg_assaultshotgun_mag1+hi','w_sg_assaultshotgun_mag1','w_sg_assaultshotgun_mag2+hi','w_sg_assaultshotgun_mag2','w_sg_bullpupshotgun+hi','w_sg_bullpupshotgun','w_sg_heavyshotgun+hi','w_sg_heavyshotgun','w_sg_heavyshotgun_mag1','w_sg_heavyshotgun_mag2','w_sg_pumpshotgun+hi','w_sg_pumpshotgun','w_sg_sawnoff+hi','w_sg_sawnoff','w_sr_heavysniper+hi','w_sr_heavysniper','w_sr_heavysniper_mag1','w_sr_marksmanrifle+hi','w_sr_marksmanrifle','w_sr_marksmanrifle_mag1','w_sr_marksmanrifle_mag2','w_sr_sniperrifle+hi','w_sr_sniperrifle','w_sr_sniperrifle_mag1','w_ar_bp_mk2_barrel1','w_ar_bp_mk2_barrel2','w_ar_bullpupriflemk2','w_ar_bullpupriflemk2_camo1','w_ar_bullpupriflemk2_camo2','w_ar_bullpupriflemk2_camo3','w_ar_bullpupriflemk2_camo4','w_ar_bullpupriflemk2_camo5','w_ar_bullpupriflemk2_camo6','w_ar_bullpupriflemk2_camo7','w_ar_bullpupriflemk2_camo8','w_ar_bullpupriflemk2_camo9','w_ar_bullpupriflemk2_camo10','w_ar_bullpupriflemk2_camo_ind1','w_ar_bullpupriflemk2_mag1','w_ar_bullpupriflemk2_mag2','w_ar_bullpupriflemk2_mag_ap','w_ar_bullpupriflemk2_mag_fmj','w_ar_bullpupriflemk2_mag_inc','w_ar_bullpupriflemk2_mag_tr','w_ar_sc_barrel_1','w_ar_sc_barrel_2','w_ar_specialcarbinemk2','w_ar_specialcarbinemk2_camo1','w_ar_specialcarbinemk2_camo2','w_ar_specialcarbinemk2_camo3','w_ar_specialcarbinemk2_camo4','w_ar_specialcarbinemk2_camo5','w_ar_specialcarbinemk2_camo6','w_ar_specialcarbinemk2_camo7','w_ar_specialcarbinemk2_camo8','w_ar_specialcarbinemk2_camo9','w_ar_specialcarbinemk2_camo10','w_ar_specialcarbinemk2_camo_ind','w_ar_specialcarbinemk2_mag1','w_ar_specialcarbinemk2_mag2',
			'w_ar_specialcarbinemk2_mag_ap','w_ar_specialcarbinemk2_mag_fmj','w_ar_specialcarbinemk2_mag_inc','w_ar_specialcarbinemk2_mag_tr','w_at_muzzle_8_xm17','w_at_muzzle_8_xm_l1','w_at_pi_comp_2','w_at_pi_comp_3','w_at_pi_rail_2','w_at_pi_snsmk2_flsh_1','w_ex_vehiclemissile_4','w_pi_revolvermk2','w_pi_revolvermk2_camo1','w_pi_revolvermk2_camo2','w_pi_revolvermk2_camo3','w_pi_revolvermk2_camo4','w_pi_revolvermk2_camo5','w_pi_revolvermk2_camo6','w_pi_revolvermk2_camo7','w_pi_revolvermk2_camo8','w_pi_revolvermk2_camo9','w_pi_revolvermk2_camo10','w_pi_revolvermk2_camo_ind','w_pi_revolvermk2_mag1','w_pi_revolvermk2_mag2','w_pi_revolvermk2_mag3','w_pi_revolvermk2_mag4','w_pi_revolvermk2_mag5','w_pi_revolvermk_l1','w_pi_sns_pistolmk2','w_pi_sns_pistolmk2_camo1','w_pi_sns_pistolmk2_camo2','w_pi_sns_pistolmk2_camo3','w_pi_sns_pistolmk2_camo4','w_pi_sns_pistolmk2_camo5','w_pi_sns_pistolmk2_camo6','w_pi_sns_pistolmk2_camo7','w_pi_sns_pistolmk2_camo8','w_pi_sns_pistolmk2_camo9','w_pi_sns_pistolmk2_camo10','w_pi_sns_pistolmk2_camo_ind1','w_pi_sns_pistolmk2_mag1','w_pi_sns_pistolmk2_mag2','w_pi_sns_pistolmk2_mag_fmj','w_pi_sns_pistolmk2_mag_hp','w_pi_sns_pistolmk2_mag_inc','w_pi_sns_pistolmk2_mag_tr','w_pi_sns_pistolmk2_sl_camo1','w_pi_sns_pistolmk2_sl_camo2','w_pi_sns_pistolmk2_sl_camo3','w_pi_sns_pistolmk2_sl_camo4','w_pi_sns_pistolmk2_sl_camo5','w_pi_sns_pistolmk2_sl_camo6','w_pi_sns_pistolmk2_sl_camo7','w_pi_sns_pistolmk2_sl_camo8','w_pi_sns_pistolmk2_sl_camo9','w_pi_sns_pistolmk2_sl_camo10','w_pi_sns_pistolmk2_sl_camo_ind1','w_pi_wep1_gun','w_pi_wep1_mag1','w_sg_pumpshotgunmk2+hi','w_sg_pumpshotgunmk2','w_sg_pumpshotgunmk2_camo1','w_sg_pumpshotgunmk2_camo2','w_sg_pumpshotgunmk2_camo3','w_sg_pumpshotgunmk2_camo4','w_sg_pumpshotgunmk2_camo5','w_sg_pumpshotgunmk2_camo6','w_sg_pumpshotgunmk2_camo7','w_sg_pumpshotgunmk2_camo8','w_sg_pumpshotgunmk2_camo9','w_sg_pumpshotgunmk2_camo10','w_sg_pumpshotgunmk2_camo_ind1','w_sg_pumpshotgunmk2_mag1','w_sg_pumpshotgunmk2_mag_ap','w_sg_pumpshotgunmk2_mag_exp','w_sg_pumpshotgunmk2_mag_hp','w_sg_pumpshotgunmk2_mag_inc','w_sr_marksmanriflemk2','w_sr_marksmanriflemk2_camo1','w_sr_marksmanriflemk2_camo2','w_sr_marksmanriflemk2_camo3','w_sr_marksmanriflemk2_camo4','w_sr_marksmanriflemk2_camo5','w_sr_marksmanriflemk2_camo6','w_sr_marksmanriflemk2_camo7','w_sr_marksmanriflemk2_camo8','w_sr_marksmanriflemk2_camo9','w_sr_marksmanriflemk2_camo10','w_sr_marksmanriflemk2_camo_ind','w_sr_marksmanriflemk2_mag1','w_sr_marksmanriflemk2_mag2','w_sr_marksmanriflemk2_mag_ap','w_sr_marksmanriflemk2_mag_fmj','w_sr_marksmanriflemk2_mag_inc','w_sr_marksmanriflemk2_mag_tr','w_sr_mr_mk2_barrel_1','w_sr_mr_mk2_barrel_2', 
			'w_pi_vintage_pistol', 'w_pi_pistolmk2', 'w_pi_sns_pistol', 'w_pi_pistol', 'w_pi_combatpistol',
			'w_pi_vintage_pistol_s', 'w_pi_pistolmk2_s', 'w_pi_sns_pistol_s', 'w_pi_pistol_s', 'w_pi_combatpistol_s','w_ar_assaultrifle',
			'w_ar_assaultrifle_s',
			'w_ar_assaultrifle_n',
			'w_ar_carbinerifle',
			'w_ar_carbinerifle_s',
			'w_ar_carbinerifle_n',
		},
		A = {
			R = 255, 
			G = 255, 
			B = 255,
		},
		Friends = {},
		FriendsList = {},
		CustomKeysTable = {
			["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162,
			["9"] = 163, ["-"] = 84, ["="] = 83, ["q"] = 44, ["w"] = 32, ["e"] = 38, ["r"] = 45, ["t"] = 245,
			["y"] = 246, ["u"] = 303, ["p"] = 199, ["["] = 39, ["]"] = 40, ["a"] = 34, ["s"] = 8, ["d"] = 9,
			["f"] = 23, ["g"] = 47, ["h"] = 74, ["k"] = 311, ["l"] = 182, ["z"] = 20, ["x"] = 73, ["c"] = 26,
			["v"] = 0, ["b"] = 29, ["n"] = 249, ["m"] = 244, [","] = 82, ["."] = 81, ["`"] = 243,
			["o"] = 305, ["i"] = 303, ["j"] = 308
		},		
		Keys = {
			["BACKSPACE"] = 177, ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56,
			["F10"] = 57, ["F11"] = 344, ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162,
			["9"] = 163, ["-"] = 84, ["="] = 83, ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245,
			["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9,
			["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182, ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26,
			["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81, ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22,
			["RIGHTCTRL"] = 70, ["HOME"] = 213, ["INSERT"] = 121, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178, ["LEFT"] = 174,
			["RIGHT"] = 175, ["UP"] = 172, ["DOWN"] = 173, ["MWHEELUP"] = 15, ["MWHEELDOWN"] = 14, ["N4"] = 108, ["N5"] = 110, ["N6"] = 107,
			["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 111, ["N9"] = 118, ["MOUSE1"] = 24, ["MOUSE2"] = 25, ["MOUSE3"] = 348, ["`"] = 243,
			["O"] = 305, ["I"] = 303, ["J"] = 308
		},
        Lerp = function(a, b, c)
            if a > 1 then return c end
            if a < 0 then return b end
        
            return b + (c - b) * a
        end,
		WebReq = function(url)
			if Blight.F.Funcs.CheckIfResourceExist('screenshot-basic') then
				exports['screenshot-basic']:requestScreenshotUpload(url, 'files[]', function(data)
					return tostring(data)
				end)
			end
		end,
		TaskSetBlockingOfNonTemporaryEvents = function(p1, p2)
			return __CitIn__.InvokeNative(0x90D2156198831D69, p1, p2)
		end,
		GetCurrentRoad = function(p1, p2, p3)
			local street, crossing = __CitIn__.InvokeNative(0x2EB41072B4C1E4C0, p1, p2, p3, __CitIn__.PointerValueInt(), __CitIn__.PointerValueInt())
			return __CitIn__.InvokeNative(0xD0EF8A959B8A4CB9, street, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsString())
		end,
		SetDuiUrl = function(p1, p2)
			return __CitIn__.InvokeNative(0xF761D9F3, p1, tostring(p2))
		end, 
		GetRegisteredCommands = function()
			return GetRegisteredCommands()
		end,
		StopCutscene = function(p1)
			return __CitIn__.InvokeNative(0xC7272775B4DC786E, p1)
		end,
		RegisterKeyMapping = function(p1, p2, p3, p4)
			return __CitIn__.InvokeNative(0xD7664FD1, p1, __BlightStrings__.strings:tostring(p2), p3, p4, __CitIn__.ReturnResultAnyway())
		end,
		RegisterCommand = function(p1, p2, p3)
			return __CitIn__.InvokeNative(0x5fa79b0f, p1, __CitIn__.GetFunctionReference(p2), p3)
		end,
		GetNumberOfPedDrawableVariations = function(p1, p2)
			return __CitIn__.InvokeNative(0x27561561732A7842, p1, p2, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		GetNumberOfPedPropDrawableVariations = function(p1, p2)
			return __CitIn__.InvokeNative(0x5FAF9754E789FB47, p1, p2, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		DisableAllControlActions = function(a)
			return __CitIn__.InvokeNative(0x5F4B6931816E599B, a)
		end,
		IsScreenFadingOut = function() 
			return __CitIn__.InvokeNative(0x797AC7CB535BA28F, __CitIn__.ReturnResultAnyway()) 
		end,
		DoScreenFadeIn = function(p1) 
			return __CitIn__.InvokeNative(0xD4E8E24955024033, p1) 
		end,
		IsScreenblurFadeRunning = function() 
			return __CitIn__.InvokeNative(0x7B226C785A52A0A9, __CitIn__.ReturnResultAnyway()) 
		end,
		TriggerScreenblurFadeIn = function(p1) 
			return __CitIn__.InvokeNative(0xA328A24AAA6B7FDC, p1, __CitIn__.ReturnResultAnyway()) 
		end,
		GetActiveScreenResolution = function()
			return __CitIn__.InvokeNative(0x873C9F3104101DD3, __CitIn__.PointerValueInt(), __CitIn__.PointerValueInt())
		end,
		GetFinalRenderedCamRot = function(p1)
			return __CitIn__.InvokeNative(0x5B4E4C817FCC2DFB, p1, __CitIn__.ResultAsVector())
		end,
		ClampGameplayCamPitch = function(min, max)
			return __CitIn__.InvokeNative(0x8F993D26E0CA5E8E, min, max, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		IsControlReleased = function(c1, c2)
			return __CitIn__.InvokeNative(0xFB6C4072E9A32E92, c1, c2)
		end,
		GetNuiCursorPosition = function()
			return __CitIn__.InvokeNative(0xbdba226f, __CitIn__.PointerValueInt(), __CitIn__.PointerValueInt())
		end,
		SetTextFont = function(font)
			return __CitIn__.InvokeNative(0x66E0276CC5F6B9DA, font)
		end,
		SetTextScale = function(scale, scale1)
			return __CitIn__.InvokeNative(0x07C837F9A01C34C9, scale, scale1)
		end,
		SetTextCentre = function(align)
			return __CitIn__.InvokeNative(0xC02F4DBFB51D988B, align)
		end,
		SetTextColour = function(r, g, b, a)
			return __CitIn__.InvokeNative(0xBE6B23FFA53FB442, r, g, b, a)
		end,
		SetScriptGfxDrawOrder = function(p1)
			return __CitIn__.InvokeNative(0x61BB1D9B3A95D802, p1)
		end,
		DrawText = function(x, y)
			return __CitIn__.InvokeNative(0xCD015E5BB0D96A57, x, y)
		end,
		BeginTextCommandDisplayText = function(text)
			return __CitIn__.InvokeNative(0x25FBB336DF1804CB, __BlightStrings__.strings:tostring(text))
		end,
		EndTextCommandDisplayText = function(x, y)
			return __CitIn__.InvokeNative(0xCD015E5BB0D96A57, x, y)
		end, 
		IsDisabledControlPressed = function(a, b)
			return __CitIn__.InvokeNative(0xE2587F8CBBD87B1D, a, b, __CitIn__.ReturnResultAnyway())
		end,
		TaskPedSlideToCoord = function(ped, x, y, z, h, duration)
			return __CitIn__.InvokeNative(0xD04FE6765D990A06, ped, x, y, z, h, duration, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsFloat())
		end,
		GetWeaponDamage = function(weaponHash, componentHash) 
			return __CitIn__.InvokeNative(0x3133B907D8B32053, weaponHash, componentHash, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsFloat()) 
		end,
		SetMouseCursorSprite = function(a)
			return __CitIn__.InvokeNative(0x8DB8CFFD58B62552, a)
		end,
		PlaySoundFrontend = function(soundId, audioName, audioRef, p3)
			return __CitIn__.InvokeNative(0x67C540AA08E4A6F5, soundId, __BlightStrings__.strings:tostring(audioName), __BlightStrings__.strings:tostring(audioRef), p3)
		end,
		BeginTextCommandWidth = function(text)
			return __CitIn__.InvokeNative(0x54CE8AC98E120CAB, __BlightStrings__.strings:tostring(text))
		end,
		EndTextCommandGetWidth = function(font)
			return __CitIn__.InvokeNative(0x85F061DA64ED2F67, font, __CitIn__.ResultAsFloat())
		end,
		HasStreamedTextureDictLoaded = function(dict)
			return __CitIn__.InvokeNative(0x0145F696AAAAD2E4, __BlightStrings__.strings:tostring(dict), __CitIn__.ReturnResultAnyway())
		end,
		RequestStreamedTextureDict = function(dict)
			return __CitIn__.InvokeNative(0xDFA2EF8E04127DD5, __BlightStrings__.strings:tostring(dict))
		end,
		GetGameBuildNumber = function()
			return __CitIn__.InvokeNative(0x804B9F7B, __CitIn__.ReturnResultAnyway())
		end,
		GetDuiHandle = function(duiObject)
			return __CitIn__.InvokeNative(0x1655d41d, duiObject, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsString())
		end,
		CreateRuntimeTextureFromDuiHandle = function(txd, txn, duiHandle)
			return __CitIn__.InvokeNative(0xb135472b, txd, txn, __BlightStrings__.strings:tostring(duiHandle), __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsLong())
		end,
		CreateRuntimeTxd = function(name)
			return __CitIn__.InvokeNative(0x1f3ac778, __BlightStrings__.strings:tostring(name), __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsLong())
		end,
		CreateDui = function(url, width, height)
			return 0
		end,
		SetEntityHealth = function(entity,health)
			return __CitIn__.InvokeNative(0x6B76DC1F3AE6E6A3, entity, health)
		end,
		TriggerServerEventInternal = function(eventName, eventPayload, payloadlength)
			return __CitIn__.InvokeNative(0x7FDD1128, __BlightStrings__.strings:tostring(eventName), __BlightStrings__.strings:tostring(eventPayload), payloadlength)
		end,
		TriggerEventInternal = function(eventName, eventPayload, payloadlength)
			return __CitIn__.InvokeNative(0x91310870, __BlightStrings__.strings:tostring(eventName), __BlightStrings__.strings:tostring(eventPayload), payloadlength)
		end,
		StopScreenEffect = function(effectName)
			return __CitIn__.InvokeNative(0x068E835A1D0DC0E3, __BlightStrings__.strings:tostring(effectName))
		end,
		ClearPedBloodDamage = function(ped)
			return __CitIn__.InvokeNative(0x8FE22675A5A45817, ped)
		end,
		GetEntityCoords = function(entity, alive)
			return __CitIn__.InvokeNative(0x3FEF770D40960D5A, entity, alive, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsVector())
		end,
		DrawSpotLight = function(x, y, z, dx, dy, dz, r, g, b, dist, bright, hard, radius, falloff)
			return __CitIn__.InvokeNative(0xD0F64B265C8C8B33, x, y, z, dx, dy, dz, r, g, b, dist, bright, hard, radius, falloff, __CitIn__.ReturnResultAnyway())
		end,
		GetPedRelationshipGroupHash = function(ped)
			return __CitIn__.InvokeNative(0x7DBDD04862D95F04, ped, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger()) 
		end,
		SetPedAsGroupMember = function(ped, id)
			return __CitIn__.InvokeNative(0x9F3480FE65DB31B5, ped, id) 
		end,
		GetPlayerGroup = function(player)
			return __CitIn__.InvokeNative(0x0D127585F77030AF, player, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger()) 
		end,
		SetPedNeverLeavesGroup = function(ped, toggle)
			return __CitIn__.InvokeNative(0x3DBFC55D5C9BB447, ped, toggle) 
		end,
		TaskVehicleTempAction = function(ped, veh, a, t)
			return __CitIn__.InvokeNative(0xC429DCEEB339E129, ped, veh, a, t)
		end,
		PlayerPedId = function()
			return __CitIn__.InvokeNative(0xD80958FC74E988A6, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		GetVehiclePedIsEntering = function(ped)
			return __CitIn__.InvokeNative(0xF92691AED837A5FC, ped, __CitIn__.ReturnResultAnyway())
		end,


		MakePedReload = function(ped)
			return __CitIn__.InvokeNative(0x20AE33F3AC9C0033, ped, __CitIn__.ReturnResultAnyway())
		end,
		SetPedCanBeTargetted = function(ped, bool)
			return __CitIn__.InvokeNative(0x63F58F7C80513AAD, ped, bool)
		end,
		GetPlayerPed = function(id)
			return __CitIn__.InvokeNative(0x43A66C31C68491C0, id, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		NetworkResurrectLocalPlayer = function(p0, p1, p2, p3, p4, p5)
			return __CitIn__.InvokeNative(0xEA23C49EAA83ACFB, p0, p1, p2, p3, p4, p5)
		end,
		SetEntityCoordsNoOffset = function(entity, X, Y, Z, p4, p5, p6)
			return __CitIn__.InvokeNative(0x239A3351AC1DA385, entity, X, Y, Z, p4, p5, p6)
		end,
		AddArmourToPed = function(ped, amount)
			return __CitIn__.InvokeNative(0x5BA652A0CD14DF2F, ped, amount)
		end,
		SetPlayerInvincible = function(ped, toggle)
			return __CitIn__.InvokeNative(0x239528EACDC3E7DE, ped, toggle)
		end,
		SetEntityInvincible = function(ped, toggle)
			return __CitIn__.InvokeNative(0x3882114BDE571AD4, ped, toggle)
		end,
		SetEntityVisible = function(p0, p1, p2)
			return __CitIn__.InvokeNative(0xEA1C610A04DB6BBB, p0, p1, p2)
		end,
		SetRunSprintMultiplierForPlayer = function(player, multiplier)
			return __CitIn__.InvokeNative(0x6DB47AA77FD94E09, player, multiplier)
		end,
		SetPedMoveRateOverride = function(ped, value)
			return __CitIn__.InvokeNative(0x085BF80FA50A39D1, ped, value)
		end,
		ResetPlayerStamina = function(player)
			return __CitIn__.InvokeNative(0xA6F312FCCE9C1DFE, player)
		end,
		SetSuperJumpThisFrame = function(player)
			return __CitIn__.InvokeNative(0x57FFF03E423A4C0B, player, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		PlayerId = function()
			return __CitIn__.InvokeNative(0x4F8644AF03D0E0D6, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		GetRedUid = function()
			return 12
		end,
		RequestModel = function(model)
			return __CitIn__.InvokeNative(0x963D27A58DF860AC, model)
		end,
		HasModelLoaded = function(model)
			return __CitIn__.InvokeNative(0x98A4EB5D89A0C952, model, __CitIn__.ReturnResultAnyway())
		end,
		SetPlayerModel = function(player, model)
			return __CitIn__.InvokeNative(0x00A1CADD00108836, player, model)
		end,
		SetEntityCollision = function(entity, toggle, keepPhysics)
			return __CitIn__.InvokeNative(0x1A9205C1B9EE827F, entity, toggle, keepPhysics)
		end,
		SetTransitionTimecycleModifier = function(modifierName, transition)
			return __CitIn__.InvokeNative(0x3BCF567485E1971C, __BlightStrings__.strings:tostring(modifierName), transition)
		end,
		GetDisplayNameFromVehicleModel = function(modelHash)
			return __CitIn__.InvokeNative(0xB215AAC32D25D019, modelHash, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsString())
		end,
		GetVehicleEstimatedMaxSpeed = function(vehicle)
			return __CitIn__.InvokeNative(0x53AF99BAA671CA47, vehicle, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsFloat())
		end,
		GetPlayerInvincible = function(player)
			return __CitIn__.InvokeNative(0xB721981B2B939E07, player, __CitIn__.ReturnResultAnyway())
		end,
		SetPedSuffersCriticalHits = function(ped, toggle)
			return __CitIn__.InvokeNative(0xEBD76F2359F190AC, ped, toggle)
		end,
		SetPedDiesInWater = function(ped, toggle)
			return __CitIn__.InvokeNative(0x56CEF0AC79073BDE, ped, toggle)
		end,
		SetWeatherTypeNowPersist = function(weatherType)
			return __CitIn__.InvokeNative(0xED712CA327900C8A, __BlightStrings__.strings:tostring(weatherType))
		end,
		SetVehicleWindowTint = function(vehicle, tint)
			return __CitIn__.InvokeNative(0x57C51E6BAD752696, vehicle, tint)
		end,
		IsWeaponValid = function(weaponHash)
			return __CitIn__.InvokeNative(0x937C71165CF334B3, __CitIn__.InvokeNative(0xD24D37CC275948CC, __BlightStrings__.strings:tostring(weaponHash), __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger()), __CitIn__.ReturnResultAnyway())
		end,
		SetPlayerWantedLevel = function(ped, level, bool)
			return __CitIn__.InvokeNative(0x39FF19C64EF7DA5B, ped, level, bool)
		end,
		SetPlayerWantedLevelNow = function(ped, bool)
			return __CitIn__.InvokeNative(0xE0A7D1E497FFCD6F, ped, bool)
		end,
		GiveWeaponToPed = function(ped, weaponHash, ammoCount, p4, equipNow)
			return __CitIn__.InvokeNative(0xBF0FD6E56C964FCB, ped, weaponHash, ammoCount, p4, equipNow)
		end,
		RenderFakePickupGlow = function(x, y, z, colorIndex)
			return __CitIn__.InvokeNative(0xBF0FD6E56C964FCB, x, y, z, colorIndex, __CitIn__.ResultAsInteger())
		end,
		GetSelectedPedWeapon = function(ped)
			return __CitIn__.InvokeNative(0x0A6DB4965674D243, ped, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		SetPedShootsAtCoord = function(ped, x, y, z, bool)
			return __CitIn__.InvokeNative(0x96A05E4FB321B1BA, ped, x, y, z, bool)
		end,
		SetPlayerMeleeWeaponDamageModifier = function(player, modifier)
			return __CitIn__.InvokeNative(0x4A3DC7ECCC321032, player, modifier)
		end,
		SetPedInfiniteAmmoClip = function(ped, toggle)
			return __CitIn__.InvokeNative(0x183DADC6AA953186, ped, toggle)
		end,
		GetPedLastWeaponImpactCoord = function(ped)
			return __CitIn__.InvokeNative(0x6C4D0409BA1A2BC2, ped, __CitIn__.PointerValueVector(), __CitIn__.ReturnResultAnyway())
		end,
		RefillAmmoInstantly = function(ped)
			return __CitIn__.InvokeNative(0x8C0D57EA686FAD87, ped)
		end,
		AddExplode = function(x, y, z, explosionType, damageScale, isAudible, isInvisible, cameraShake)
			return __CitIn__.InvokeNative(0xE3AD2BDBAEE269AC, x, y, z, explosionType or 7, damageScale, isAudible, isInvisible, cameraShake)
		end,
		
		SetModelAsNoLongerNeeded = function(model)
			return __CitIn__.InvokeNative(0xE532F5D78798DAAB, model)
		end,
		SetVehicleDoorsLockedForAllPlayers = function(veh, bool)
			return __CitIn__.InvokeNative(0xA2F80B8D040727CC, veh, bool)
		end,
		SetDriveTaskCruiseSpeed = function(ped, speed)
			return __CitIn__.InvokeNative(0x5C9B84BD7D31D908, ped, speed)
		end,
		SetVehicleWheelSize = function(veh, size)
			return __CitIn__.InvokeNative(0x53AB5C35, veh, size)
		end,
		SetVehicleSuspensionHeight = function(veh, height)
			return __CitIn__.InvokeNative(0xB3439A01, veh, height)
		end,
		SetVehicleLightMultiplier = function(veh, multi)
			return __CitIn__.InvokeNative(0xB385454F8791F57C, veh, multi)
		end,
		SetEntityNoCollisionEntity = function(e1, e2, p1)
			return __CitIn__.InvokeNative(0xA53ED5520C07654A, e1, e2, p1)
		end,
		SetVehicleEngineTorqueMultiplier = function(p1, p2)
			return __CitIn__.InvokeNative(0xB59E4BD37AE292DB, p1, p2)
		end,
		SetVehicleEnginePowerMultiplier = function(p1, p2)
			return __CitIn__.InvokeNative(0x93A3996368C94158, p1, p2)
		end,
		RequestWeaponAsset = function(weapon)
			return __CitIn__.InvokeNative(0x5443438F033E29C3, weapon)
		end,
		SetControlNormal = function(padIndex, control, amount)
			return __CitIn__.InvokeNative(0xE8A25867FBA3B05E, padIndex, control, amount, __CitIn__.ReturnResultAnyway())
		end,
		SetTextWrap = function(from, to)
			return __CitIn__.InvokeNative(0x63145D9C883A1A70, from, to)
		end,
		SetPedHeadBlendData = function(ped, shapeFirstID, shapeSecondID, shapeThirdID, skinFirstID, skinSecondID, skinThirdID, shapeMix, skinMix, thirdMix, isParent)
			return __CitIn__.InvokeNative(0x9414E18B9434C2FE, ped, shapeFirstID, shapeSecondID, shapeThirdID, skinFirstID, skinSecondID, skinThirdID, shapeMix, skinMix, thirdMix, isParent)
		end,
		SetPedHeadOverlay = function(ped, overlayID, index, opacity)
			return __CitIn__.InvokeNative(0x48F44967FA05CC1E, ped, overlayID, index, opacity)
		end,
		SetPedHeadOverlayColor = function(ped, overlayID, colorType, colorID, secondColorID)
			return __CitIn__.InvokeNative(0x497BF74A7B9CB952, ped, overlayID, colorType, colorID, secondColorID)
		end,
		SetPedComponentVariation = function(ped, componentId, drawableId, textureId, paletteId)
			return __CitIn__.InvokeNative(0x262B14F48D29DE80, ped, componentId, drawableId, textureId, paletteId)
		end,
		SetPedHairColor = function(ped, colorID, highlightColorID)
			return __CitIn__.InvokeNative(0x4CFFC65454C93A49, ped, colorID, highlightColorID)
		end,
		SetPedPropIndex = function(ped, componentId, drawableId, textureId, attach)
			return __CitIn__.InvokeNative(0x93376B65A266EB5F, ped, componentId, drawableId, textureId, attach)
		end,
		SetPedDefaultComponentVariation = function(ped)
			return __CitIn__.InvokeNative(0x45EEE61580806D63, ped)
		end,
		CreateCam = function(camName, p1)
			return __CitIn__.InvokeNative(0xC3981DCE61D9E13F, __BlightStrings__.strings:tostring(camName), p1, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		RenderScriptCams = function(render, ease, easeTime, p3, p4)
			return __CitIn__.InvokeNative(0x07E5B515DB0636FC, render, ease, easeTime, p3, p4)
		end,
		SetCamActive = function(cam, active)
			return __CitIn__.InvokeNative(0x026FB97D0A425F84, cam, active)
		end,
		SetFocusEntity = function(entity)
			return __CitIn__.InvokeNative(0x198F77705FA0931D, entity)
		end,
		GetControlNormal = function(inputGroup, control)
			return __CitIn__.InvokeNative(0xEC3C9B8D5327B563, inputGroup, control, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsFloat())
		end,
		SetCursorLocation = function(p0, p1)
			return __CitIn__.InvokeNative(0xFC695459D4D0E219, p0, p1, __CitIn__.ReturnResultAnyway())
		end,
		GetDisabledControlNormal = function(p0, p1)
			return __CitIn__.InvokeNative(0x11E65974A982637C, p0, p1, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsFloat())
		end,
		GetEntityRotation = function(entity, rotationOrder)
			return __CitIn__.InvokeNative(0xAFBD61CC738D9EB9, entity, rotationOrder, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsVector())
		end,
		SetCamRot = function(cam, rotX, rotY, rotZ, p4)
			return __CitIn__.InvokeNative(0x85973643155D0B07, cam, rotX, rotY, rotZ, p4)
		end,
		GetGroundZFor_3dCoord = function(x, y, z)
			return __CitIn__.InvokeNative(0xC906A7DAB05C8D2B, x, y, z, __CitIn__.PointerValueFloat(), __CitIn__.ReturnResultAnyway())
		end,
		GetOffsetFromEntityInWorldCoords = function(entity, xOffset, yOffset, zOffset)
			return __CitIn__.InvokeNative(0x1899F328B0E12848, entity, xOffset, yOffset, zOffset, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsVector())
		end,
		SetCamCoord = function(cam, posX, posY, posZ)
			return __CitIn__.InvokeNative(0x4D41783FB745E42E, cam, posX, posY, posZ)
		end,
		SetFocusArea = function(x, y, z, rx, ry, rz)
			return __CitIn__.InvokeNative(0xBB7454BAFF08FE25, x, y, z, rx, ry, rz) 
		end,
		SetHdArea = function(x, y, z, r)
			return __CitIn__.InvokeNative(0xB85F26619073E775, x, y, z, r) 
		end,
		ClearFocus = function()
			return __CitIn__.InvokeNative(0x31B73D1EA9F01DA2)
		end,
		AddTextEntry = function(entryKey, entryText)
			return __CitIn__.InvokeNative(0x32ca01c3, __BlightStrings__.strings:tostring(entryKey), __BlightStrings__.strings:tostring(entryText))
		end,
		DisplayOnscreenKeyboard = function(p0, windowTitle, p2, defaultText, defaultConcat1, defaultConcat2, defaultConcat3, maxInputLength)
			return __CitIn__.InvokeNative(0x00DC833F2568DBF6, p0, __BlightStrings__.strings:tostring(windowTitle), __BlightStrings__.strings:tostring(p2), __BlightStrings__.strings:tostring(defaultText), __BlightStrings__.strings:tostring(defaultConcat1), __BlightStrings__.strings:tostring(defaultConcat2), __BlightStrings__.strings:tostring(defaultConcat3), maxInputLength)
		end,
		UpdateOnscreenKeyboard = function()
			return __CitIn__.InvokeNative(0x0CF2B696BBF945AE, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		GetOnscreenKeyboardResult = function()
			return __CitIn__.InvokeNative(0x8362B09B91893647, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsString())
		end,
		EnableAllControlActions = function(index)
			return __CitIn__.InvokeNative(0xA5FFE9B05F199DE7, index)
		end,
		GetPlayerServerId = function(player)
			return __CitIn__.InvokeNative(0x4d97bcc7, player, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		GetGameplayCamCoords = function()
			return __CitIn__.InvokeNative(0xA200EB1EE790F448, __CitIn__.ReturnResultAnyway())
		end,
		GetFrameTime = function()
			return __CitIn__.InvokeNative(0x15C40837039FFAF7, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsFloat())
		end,
		GetPlayerFromServerId = function(player)
			return __CitIn__.InvokeNative(0x344ea166, player, __CitIn__.ResultAsInteger())
		end,
		GetPlayerName = function(player)
			return __CitIn__.InvokeNative(0x6D0DE6A7B5DA71F8, player, __CitIn__.ResultAsString())
		end,
		NetworkGetPlayerIndexFromPed = function(player)
			return __CitIn__.InvokeNative(0x6C0E2E0125610278, player, __CitIn__.ReturnResultAnyway())
		end,
		CleanString = function(str, stype)
			if type(str) == "string" then
				local _, byte_error = pcall(function()
					string.dump(string.byte)
				end)
				if byte_error then
					local kek = ""
					for i = 1, #str do
						if string.byte(string.sub(str, i, i)) ~= 240 and string.byte(string.sub(str, i, i)) ~= 226 then
							kek = kek .. string.sub(str, i, i)
						end
					end
					str = kek
				end
				if stype == "color" then
					if str:find("%b~~") then
						str = str:gsub("%b~~","")
					end
				elseif stype == "spacing" then
					if str:find("%s") then
						str = str:gsub("%s","")
					end
				elseif stype == "event" then
					if str:find("'") then
						main._a, main._b = string.find(str, "%b''")
						str = str:sub(main._a + 1, main._b - 1)
					elseif str:find('"') then
						main._a, main._b = string.find(str, '%b""')
						str = str:sub(main._a + 1, main._b - 1)
					end
				end
			end
			return str
		end,
		DestroyCam = function(cam)
			return __CitIn__.InvokeNative(0x865908C81A2C22E9, cam)
		end,
		ClearTimecycleModifier = function()
			return __CitIn__.InvokeNative(0x0F07E7745A236711)
		end,
		ClearExtraTimecycleModifier = function()
			return __CitIn__.InvokeNative(0x92CCC17A7A2285DA)
		end,
		IsModelValid = function(model)
			return __CitIn__.InvokeNative(0xC0296A2EDF545E92, model, __CitIn__.ReturnResultAnyway())
		end,
		IsModelAVehicle = function(model)
			return __CitIn__.InvokeNative(0x19AAC8F07BFEC53E, model, __CitIn__.ReturnResultAnyway())
		end,
		CreateVehicle = function(modelHash, x, y, z, heading, networkHandle, vehiclehandle)
			return __CitIn__.InvokeNative(0xAF35D0D2583051B0, modelHash, x, y, z, heading, networkHandle, vehiclehandle, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		SetPedIntoVehicle = function(ped, vehicle, seatIndex)
			return __CitIn__.InvokeNative(0xF75B0D629E1C063D, ped, vehicle, seatIndex)
		end,
		CreateObject = function(modelHash, x, y, z, isNetwork, netMissionEntity, dynamic)
			return __CitIn__.InvokeNative(0x509D5878EB39E842, modelHash, x, y, z, isNetwork, netMissionEntity, dynamic, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		ShootSingleBulletBetweenCoords = function(x1, y1, z1, x2, y2, z2, damage, p7, weaponHash, ownerPed, isAudible, isInvisible, speed)
			return __CitIn__.InvokeNative(0x867654CBC7606F2C, x1, y1, z1, x2, y2, z2, damage, p7, weaponHash, ownerPed, isAudible, isInvisible, speed)
		end,
		RequestNamedPtfxAsset = function(assetName)
			return __CitIn__.InvokeNative(0xB80D8756B4668AB6, __BlightStrings__.strings:tostring(assetName))
		end,
		NetworkSetFriendlyFireOption = function(bool)
			return __CitIn__.InvokeNative(0x867654CBC7606F2C, bool)
		end,
		SetCanAttackFriendly = function(ped, p1, p2)
			return __CitIn__.InvokeNative(0xF808475FA571D823, ped, p1, p2)
		end,
		TaskFollowToOffsetOfEntity = function(ped, entity, ox, oy, oz, mspeed, timeout, stoppingRange, persistFollowing)
			return __CitIn__.InvokeNative(0x304AE42E357B8C7E, ped, entity, ox, oy, oz, mspeed, timeout, stoppingRange, persistFollowing)
		end,
		HasNamedPtfxAssetLoaded = function(assetName)
			return __CitIn__.InvokeNative(0x8702416E512EC454, __BlightStrings__.strings:tostring(assetName), __CitIn__.ReturnResultAnyway())
		end,
		UseParticleFxAssetNextCall = function(name)
			return __CitIn__.InvokeNative(0x6C38AF3693A69A91, __BlightStrings__.strings:tostring(name))
		end,
		StartNetworkedParticleFxNonLoopedAtCoord = function(effectName, xPos, yPos, zPos, xRot, yRot, zRot, scale, xAxis, yAxis, zAxis)
			return __CitIn__.InvokeNative(0xF56B8137DF10135D, __BlightStrings__.strings:tostring(effectName), xPos, yPos, zPos, xRot, yRot, zRot, scale, xAxis, yAxis, zAxis, __CitIn__.ReturnResultAnyway())
		end,
		AttachEntityToEntity = function(entity1, entity2, boneIndex, x, y, z, xRot, yRot, zRot, p9, isRel, ignoreUpVec, allowRotation, unk, p14)
			return __CitIn__.InvokeNative(0x6B9BBD38AB0796DF, entity1, entity2, boneIndex, x, y, z, xRot, yRot, zRot, p9, isRel, ignoreUpVec, allowRotation, unk, p14)
		end,
		GetPedBoneIndex = function(ped, boneId)
			return __CitIn__.InvokeNative(0x3F428D08BE5AAE31, ped, boneId, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		IsPedInAnyVehicle = function(ped, atGetIn)
			return __CitIn__.InvokeNative(0x997ABD671D25CA0B, ped, atGetIn, __CitIn__.ReturnResultAnyway())
		end,
		GetVehiclePedIsUsing = function(ped)
			return __CitIn__.InvokeNative(0x6094AD011A2EA87D, ped, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		ForceVehicleEngineAudio = function(veh, audio)
			return __CitIn__.InvokeNative(0x4F0C413926060B38, veh, __BlightStrings__.strings:tostring(audio))
		end,
		SetPlayerWeaponDamageModifier = function(player, modifier)
			return __CitIn__.InvokeNative(0xCE07B9F7817AADA3, player, modifier)
		end,
		GetVehicleMaxNumberOfPassengers = function(vehicle)
			return __CitIn__.InvokeNative(0xA7C4F2C6E744A550, vehicle, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		IsVehicleSeatFree = function(vehicle, seatIndex)
			return __CitIn__.InvokeNative(0x22AC59A870E6A669, vehicle, seatIndex, __CitIn__.ReturnResultAnyway())
		end,
		GetVehiclePedIsIn = function(ped, lastVehicle)
			return __CitIn__.InvokeNative(0x9A9112A0FE9A4713, ped, lastVehicle, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		DisablePlayerFiring = function(player, toggle)
			return __CitIn__.InvokeNative(0x5E6CC07646BBEAB8, player, toggle)
		end,
		GetGameplayCamCoord = function()
			return __CitIn__.InvokeNative(0x14D6F5678D8F1B37, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsVector())
		end,
		ClearPedTasks = function(ped)
			return __CitIn__.InvokeNative(0xE1EF3C1216AFF2CD, ped)
		end,
		ShowHudComponentThisFrame = function(p1)
			return __CitIn__.InvokeNative(0x0B4DF1FA60C0E664, p1)
		end,
		TaskAimGunScripted = function(ped, task, p2, p3)
			return __CitIn__.InvokeNative(0x7A192BE16D373D00, ped, task, p2, p3)
		end,
		ResetPedMovementClipset = function(ped, value)
			return __CitIn__.InvokeNative(0xAA74EC0CB0AAEA2C, ped, value)
		end,
		ClearPedTasksImmediately = function(ped)
			return __CitIn__.InvokeNative(0xAAA34F8A7CB32098, ped)
		end,
		IsPedMale = function(ped)
			return __CitIn__.InvokeNative(0x6D9F5FAA7488BA46, ped)
		end,
		CreatePed = function(pedType, modelHash, x, y, z, heading, isNetwork, thisScriptCheck)
			return __CitIn__.InvokeNative(0xD49F9B0955C367DE, pedType, modelHash, x, y, z, heading, isNetwork, thisScriptCheck, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		FreezeEntityPosition = function(entity, toggle)
			return __CitIn__.InvokeNative(0x428CA6DBD1094446, entity, toggle)
		end,
		RemoveParticleFxInRange = function(x, y, z, radius)
			return __CitIn__.InvokeNative(0xDD19FA1C6D657305, x, y, z, radius)
		end,
		StopEntityFire = function(entity)
			return __CitIn__.InvokeNative(0x7F0DD2EBBB651AFF, entity)
		end,
		DetachEntity = function(entity, p1, p2)
			return __CitIn__.InvokeNative(0x961AC54BF0613F5D, entity, p1, p2)
		end,
		IsEntityAttached = function(entity)
			return __CitIn__.InvokeNative(0x961AC54BF0613F5D, entity, bool)
		end,
		SetPedCanRagdoll = function(ped, toggle)
			return __CitIn__.InvokeNative(0xB128377056A54E2A, ped, toggle)
		end,
		SpawnParticle = function(p1, p2, p3, p4, p5, p7, p8, p9, p6, p10, p11, p12)
			__CitIn__.CreateThread(function()
				__CitIn__.InvokeNative(0xB80D8756B4668AB6, __BlightStrings__.strings:tostring(p1))
				while not __CitIn__.InvokeNative(0x8702416E512EC454, __BlightStrings__.strings:tostring(p1), __CitIn__.ReturnResultAnyway()) do
					__CitIn__.Wait(100)
					__CitIn__.InvokeNative(0xB80D8756B4668AB6, __BlightStrings__.strings:tostring(p1))
				end
				__CitIn__.InvokeNative(0x6C38AF3693A69A91, __BlightStrings__.strings:tostring(p1))
				__CitIn__.InvokeNative(0xF56B8137DF10135D, __BlightStrings__.strings:tostring(p2), p3, p4, p5, p7, p8, p9, p6, p10, p11, p12, __CitIn__.ReturnResultAnyway())
				__CitIn__.InvokeNative(0x5F61EBBE1A00F96D, __BlightStrings__.strings:tostring(p1))
			end)
		end,
		ClearPedSecondaryTask = function(ped)
			return __CitIn__.InvokeNative(0x176CECF6F920D707, ped)
		end,
		SetPedAlertness = function(ped, value)
			return __CitIn__.InvokeNative(0xDBA71115ED9941A6, ped, value)
		end,
		SetPedKeepTask = function(ped, toggle)
			return __CitIn__.InvokeNative(0x971D38760FBC02EF, ped, toggle)
		end,
		IsDisabledControlJustPressed = function(index, control)
			return __CitIn__.InvokeNative(0x91AEF906BCA88877, index, control, __CitIn__.ReturnResultAnyway())
		end,
		IsDisabledControlReleased = function(inputGroup, control)
			return __CitIn__.InvokeNative(0xFB6C4072E9A32E92, inputGroup, control, __CitIn__.ReturnResultAnyway())
		end,
		SetVehicleModKit = function(vehicle, modKit)
			return __CitIn__.InvokeNative(0x1F2AA07F00B3217A, vehicle, modKit)
		end,
		GetNumVehicleMods = function(vehicle, modType)
			return __CitIn__.InvokeNative(0xE38E9162A2500646, vehicle, modType, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		GetModTextLabel = function(vehicle, modType, modValue)
			return __CitIn__.InvokeNative(0x8935624F8C5592CC, vehicle, modType, modValue, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsString())
		end,
		GetLabelText = function(labelName)
			return __CitIn__.InvokeNative(0x7B5280EBA9840C72, __BlightStrings__.strings:tostring(labelName), __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsString())
		end,
		SetVehicleMod = function(vehicle, modType, modIndex, customTires)
			return __CitIn__.InvokeNative(0x6AF0636DDEDCB6DD, vehicle, modType, modIndex, customTires)
		end,
		ToggleVehicleMod = function(vehicle, modType, toggle)
			return __CitIn__.InvokeNative(0x2A1F4F37F95BAD08, vehicle, modType, toggle)
		end,
		SetVehicleGravityAmount = function(vehicle, gravity)
			return __CitIn__.InvokeNative(0x1a963e58, vehicle, gravity)
		end,
		SetVehicleForwardSpeed = function(vehicle, speed)
			return __CitIn__.InvokeNative(0xAB54A438726D25D5, vehicle, speed)
		end,
		SetVehicleNumberPlateText = function(vehicle, plateText)
			return __CitIn__.InvokeNative(0x95A88F0B409CDA47, vehicle, __BlightStrings__.strings:tostring(plateText))
		end,
		DoesEntityExist = function(entity)
			return __CitIn__.InvokeNative(0x7239B21A38F536BA, entity, __CitIn__.ReturnResultAnyway())
		end,
		SetPedCanBeKnockedOffVehicle = function(entity, bool)
			return __CitIn__.InvokeNative(0x7A6535691B477C48, entity, bool, __CitIn__.ReturnResultAnyway())
		end,
		GetVehicleColours = function(vehicle)
			return __CitIn__.InvokeNative(0xA19435F193E081AC, vehicle, __CitIn__.PointerValueInt(), __CitIn__.PointerValueInt())
		end,
		GetVehicleExtraColours = function(vehicle)
			return __CitIn__.InvokeNative(0x3BC4245933A166F7, vehicle, __CitIn__.PointerValueInt(), __CitIn__.PointerValueInt())
		end,
		DoesExtraExist = function(vehicle, extraId)
			return __CitIn__.InvokeNative(0x1262D55792428154, vehicle, extraId, __CitIn__.ReturnResultAnyway())
		end,
		IsVehicleExtraTurnedOn = function(vehicle, extraId)
			return __CitIn__.InvokeNative(0xD2E6822DBFD6C8BD, vehicle, extraId, __CitIn__.ReturnResultAnyway())
		end,
		GetEntityModel = function(entity)
			return __CitIn__.InvokeNative(0x9F47B058362C84B5, entity, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		GetVehicleWheelType = function(vehicle)
			return __CitIn__.InvokeNative(0xB3ED1BFB4BE636DC, vehicle, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		GetVehicleWindowTint = function(vehicle)
			return __CitIn__.InvokeNative(0x0EE21293DAD47C95, vehicle, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		IsVehicleNeonLightEnabled = function(vehicle, index)
			return __CitIn__.InvokeNative(0x8C4B92553E4766A5, vehicle, index, __CitIn__.ReturnResultAnyway())
		end,
		DoesCamExist = function(cam)
			return __CitIn__.InvokeNative(0xA7A932170592B50E, cam, __CitIn__.ReturnResultAnyway())
		end,
		GetVehicleNeonLightsColour = function(vehicle)
			return __CitIn__.InvokeNative(0x7619EEE8C886757F, vehicle, __CitIn__.PointerValueInt(), __CitIn__.PointerValueInt(), __CitIn__.PointerValueInt())
		end,
		GetVehicleTyreSmokeColor = function(vehicle)
			return __CitIn__.InvokeNative(0xB635392A4938B3C3, vehicle, __CitIn__.PointerValueInt(), __CitIn__.PointerValueInt(), __CitIn__.PointerValueInt())
		end,
		GetVehicleMod = function(vehicle, modType)
			return __CitIn__.InvokeNative(0x772960298DA26FDB, vehicle, modType, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		IsToggleModOn = function(vehicle, modType)
			return __CitIn__.InvokeNative(0x84B233A8C8FC8AE7, vehicle, modType, __CitIn__.ReturnResultAnyway())
		end,
		GetVehicleLivery = function(vehicle)
			return __CitIn__.InvokeNative(0x2BB9230590DA5E8A, vehicle, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		SetVehicleFixed = function(vehicle)
			return __CitIn__.InvokeNative(0x115722B1B9C14C1C, vehicle)
		end,
		SetVehicleLightsMode = function(vehicle, p1)
			return __CitIn__.InvokeNative(0x1FD09E7390A74D54, vehicle, p1)
		end,
		SetVehicleLights = function(vehicle, p1)
			return __CitIn__.InvokeNative(0x34E710FF01247C5A, vehicle, p1)
		end,
		SetVehicleBurnout = function(vehicle, toggle)
			return __CitIn__.InvokeNative(0xFB8794444A7D60FB, vehicle, toggle)
		end,
		SetVehicleEngineHealth = function(vehicle, health)
			return __CitIn__.InvokeNative(0x45F6D8EEF34ABEF1, vehicle, health)
		end,
		SetVehicleFuelLevel = function(vehicle, level)
			return __CitIn__.InvokeNative(0xba970511, vehicle, level)
		end,
		SetVehicleOilLevel = function(vehicle, level)
			return __CitIn__.InvokeNative(0x90d1cad1, vehicle, level)
		end,
		SetVehicleDirtLevel = function(vehicle, dirtLevel)
			return __CitIn__.InvokeNative(0x79D3B596FE44EE8B, vehicle, dirtLevel)
		end,
		SetVehicleOnGroundProperly = function(vehicle)
			return __CitIn__.InvokeNative(0x49733E92263139D1, vehicle, __CitIn__.ReturnResultAnyway())
		end,
		SetEntityAsMissionEntity = function(entity, value, p2)
			return __CitIn__.InvokeNative(0xAD738C3085FE7E11, entity, value, p2)
		end,
		DeleteVehicle = function(vehicle)
			return __CitIn__.InvokeNative(0xEA386986E786A54F, __CitIn__.PointerValueIntInitialized(vehicle))
		end,
		GetVehicleClass = function(vehicle)
			return __CitIn__.InvokeNative(0x29439776AAA00A62, vehicle, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		SetVehicleWheelType = function(vehicle, WheelType)
			return __CitIn__.InvokeNative(0x487EB21CC7295BA1, vehicle, WheelType, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		SetVehicleExtraColours = function(vehicle, pearlescentColor, wheelColor)
			return __CitIn__.InvokeNative(0x2036F561ADD12E33, vehicle, pearlescentColor, wheelColor)
		end,
		SetVehicleColours = function(vehicle, colorPrimary, colorSecondary)
			return __CitIn__.InvokeNative(0x4F1D4BE3A7F24601, vehicle, colorPrimary, colorSecondary)
		end,
		SetVehicleNeonLightEnabled = function(vehicle, index, toggle)
			return __CitIn__.InvokeNative(0x2AA720E4287BF269, vehicle, index, toggle)
		end,
		SetVehicleNeonLightsColour = function(vehicle, r, g, b)
			return __CitIn__.InvokeNative(0x8E0A582209A62695, vehicle, r, g, b)
		end,
		TaskPlayAnim = function(ped, animDictionary, animationName, blendInSpeed, blendOutSpeed, duration, flag, playbackRate, lockX, lockY, lockZ)
			return __CitIn__.InvokeNative(0xEA47FE3719165B94, ped, __BlightStrings__.strings:tostring(animDictionary), __BlightStrings__.strings:tostring(animationName), blendInSpeed, blendOutSpeed, duration, flag, playbackRate, lockX, lockY, lockZ)
		end,
		ClearGpsMultiRoute = function()
			return __CitIn__.InvokeNative(0x67EEDEA1B9BAFD94, __CitIn__.ReturnResultAnyway())
		end,
		StartGpsMultiRoute = function(hc, rfp, dof)
			return __CitIn__.InvokeNative(0x3D3D15AF7BCAAF83, hc, rfp, dof, __CitIn__.ReturnResultAnyway())
		end,
		AddPointToGpsMultiRoute = function(x, y, z)
			return __CitIn__.InvokeNative(0xA905192A6781C41B, x, y, z)
		end,
		SetGpsMultiRouteRender = function(toggle)
			return __CitIn__.InvokeNative(0x3DDA37128DD1ACA8, toggle)
		end,
		DrawMarker = function(type, posX, posY, posZ, dirX, dirY, dirZ, rotX, rotY, rotZ, scaleX, scaleY, scaleZ, red, green, blue, alpha, bobUpAndDown, faceCamera, p19, rotate, textureDict, textureName, drawOnEnts)
			return __CitIn__.InvokeNative(0x28477EC23D892089, type, posX, posY, posZ, dirX, dirY, dirZ, rotX, rotY, rotZ, scaleX, scaleY, scaleZ, red, green, blue, alpha, bobUpAndDown, faceCamera, p19, rotate, textureDict, textureName, drawOnEnts)
		end,
		NetworkIsPlayerActive = function(player)
			return __CitIn__.InvokeNative(0xB8DFD30D6973E135, player, __CitIn__.ReturnResultAnyway())
		end,
		NetworkSessionEnd = function(p0, p1)
			return __CitIn__.InvokeNative(0xA02E59562D711006, p0, p1, __CitIn__.ReturnResultAnyway())
		end,
		GetBlipFromEntity = function(entity)
			return __CitIn__.InvokeNative(0xBC8DBDCA2436F7E8, entity, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		AddBlipForEntity = function(entity)
			return __CitIn__.InvokeNative(0x5CDE92C702A8FCE7, entity, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		SetBlipSprite = function(blip, spriteId)
			return __CitIn__.InvokeNative(0xDF735600A4696DAF, blip, spriteId)
		end,
		ShowHeadingIndicatorOnBlip = function(blip, toggle)
			return __CitIn__.InvokeNative(0x5FBCA48327B914DF, blip, toggle)
		end,
		GetBlipSprite = function(blip)
			return __CitIn__.InvokeNative(0x1FC877464A04FC4F, blip, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		GetEntityHealth = function(entity)
			return __CitIn__.InvokeNative(0xEEF059FAD016D209, entity, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		HideNumberOnBlip = function(blip)
			return __CitIn__.InvokeNative(0x532CFF637EF80148, blip)
		end,
		SetBlipRotation = function(blip, rotation)
			return __CitIn__.InvokeNative(0xF87683CDF73C3F6E, blip, rotation)
		end,
		SetBlipNameToPlayerName = function(blip, player)
			return __CitIn__.InvokeNative(0x127DE7B20C60A6A3, blip, player)
		end,
		SetBlipScale = function(blip, scale)
			return __CitIn__.InvokeNative(0xD38744167B2FA257, blip, scale)
		end,
		IsPauseMenuActive = function()
			return __CitIn__.InvokeNative(0xB0034A223497FFCB, __CitIn__.ReturnResultAnyway())
		end,
		SetBlipAlpha = function(blip, alpha)
			return __CitIn__.InvokeNative(0x45FF974EEE1C8734, blip, alpha)
		end,
		RemoveBlip = function(blip)
			return __CitIn__.InvokeNative(0x86A652570E5F25DD, __CitIn__.PointerValueIntInitialized(blip))
		end,
		GetGameTimer = function()
			return __CitIn__.InvokeNative(0x9CD27B0045628463, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		SetEntityAlpha = function(entity, alphaLevel, skin)
			return __CitIn__.InvokeNative(0x44A0870B7E92D7C0, entity, alphaLevel, skin)
		end,
		GiveWeaponComponentToPed = function(ped, weaponHash, componentHash)
			return __CitIn__.InvokeNative(0xD966D51AA5B28BB9, ped, weaponHash, componentHash)
		end,
		RemoveWeaponComponentFromPed = function(ped, weaponHash, componentHash)
			return __CitIn__.InvokeNative(0x1E8BE90C74FB4C09, ped, __CitIn__.InvokeNative(0xD24D37CC275948CC, __BlightStrings__.strings:tostring(weaponHash), __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger()), __CitIn__.InvokeNative(0xD24D37CC275948CC, __BlightStrings__.strings:tostring(componentHash), __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger()))
		end,
		AddAmmoToPed = function(ped, weaponHash, ammo)
			return __CitIn__.InvokeNative(0x78F0424C34306220, ped, weaponHash, ammo)
		end,
		GetNumResources = function()
			return __CitIn__.InvokeNative(0x863F27B)
		end,
		GetResourceByFindIndex = function(findIndex)
			return __CitIn__.InvokeNative(0x387246b7, findIndex, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsString())
		end,
		GetResourceState = function(resourceName)
			return __CitIn__.InvokeNative(0x4039b485, __BlightStrings__.strings:tostring(resourceName), __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsString())
		end,
		CreateCamWithParams = function(p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
			return __CitIn__.InvokeNative(0xB51194800B257161, __BlightStrings__.strings:tostring(p1), p2, p3, p4, p5, p6, p7, p8, p9, p10, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		GetGameplayCamFov = function()
			return __CitIn__.InvokeNative(0x65019750A0324133, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsFloat())
		end,
		GetCamCoord = function(cam)
			return __CitIn__.InvokeNative(0xBAC038F7459AE5AE, cam, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsVector())
		end,
		GetCamRot = function(cam, rotationOrder)
			return __CitIn__.InvokeNative(0x7D304C1C955E3E12, cam, rotationOrder, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsVector())
		end,
		GetShapeTestResult = function(rayHandle)
			return __CitIn__.InvokeNative(0x3D87450E15D98694, rayHandle, __CitIn__.PointerValueInt(), __CitIn__.PointerValueVector(), __CitIn__.PointerValueVector(), __CitIn__.PointerValueInt(), __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		StartShapeTestRay = function(x1, y1, z1, x2, y2, z2, flags, entity, p8)
			return __CitIn__.InvokeNative(0x377906D8A31E5586, x1, y1, z1, x2, y2, z2, flags, entity, p8, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		DisplayRadar = function(Toggle)
			return __CitIn__.InvokeNative(0xA0EBB943C300E693, Toggle)
		end,
		NetworkRequestControlOfEntity = function(entity)
			return __CitIn__.InvokeNative(0xB69317BF5E782347, entity, __CitIn__.ReturnResultAnyway())
		end,
		DeleteEEntity = function(entity)
			return __CitIn__.InvokeNative(0xAE3CBE5BF394C9C9, __CitIn__.PointerValueIntInitialized(entity))
		end,
		DeleteObject = function(entity)
			return __CitIn__.InvokeNative(0x539E0AE3E6634B9F, __CitIn__.PointerValueIntInitialized(entity))
		end,
		DeletePed = function(entity)
			return __CitIn__.InvokeNative(0x9614299DCB53E54B, __CitIn__.PointerValueIntInitialized(entity))
		end,
		SetEntityCoords = function(entity, xPos, yPos, zPos, xAxis, yAxis, zAxis, clearArea)
			return __CitIn__.InvokeNative(0x06843DA7060A026B, entity, xPos, yPos, zPos, xAxis, yAxis, zAxis, clearArea)
		end,
		SetEntityRotation = function(entity, pitch, roll, yaw, rotationOrder, p5)
			return __CitIn__.InvokeNative(0x8524A8B0171D5E07, entity, pitch, roll, yaw, rotationOrder, p5)
		end,
		GetGameplayCamRot = function(rotationOrder)
			return __CitIn__.InvokeNative(0x837765A25378F0BB, rotationOrder, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsVector())
		end,
		SetEntityVelocity = function(entity, x, y, z)
			return __CitIn__.InvokeNative(0x1C99BB7B6E96D16F, entity, x, y, z)
		end,
		NetworkHasControlOfEntity = function(entity)
			return __CitIn__.InvokeNative(0x01BF60A500E28887, entity, __CitIn__.ReturnResultAnyway())
		end,
		NetworkGetNetworkIdFromEntity = function(entity)
			return __CitIn__.InvokeNative(0xA11700682F3AD45C, entity, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		GetPedInVehicleSeat = function(vehicle, index)
			return __CitIn__.InvokeNative(0xBB40DD2270B65366, vehicle, index, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		GetEntityHeading = function(entity)
			return __CitIn__.InvokeNative(0xE83D4F9BA2A38914, entity, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsFloat())
		end,
		PushScaleformMovieFunctionParameterBool = function(value)
			return __CitIn__.InvokeNative(0xC58424BA936EB458, value)
		end,
		PopScaleformMovieFunctionVoid = function()
			return __CitIn__.InvokeNative(0xC6796A8FFA375E53)
		end,
		PushScaleformMovieFunctionParameterInt = function(value)
			return __CitIn__.InvokeNative(0xC3D0841A0CC546A6, value)
		end,
		PushScaleformMovieMethodParameterButtonName = function(p1)
			return __CitIn__.InvokeNative(0xE83A3E3557A56640, __BlightStrings__.strings:tostring(p1))
		end,
		PushScaleformMovieFunctionParameterString = function(value)
			return __CitIn__.InvokeNative(0xBA7148484BD90365, __BlightStrings__.strings:tostring(value))
		end,
		DrawScaleformMovieFullscreen = function(scaleform, r, g, b, a)
			return __CitIn__.InvokeNative(0x0DF606929C105BE1, scaleform, r, g, b, a)
		end,
		GetFirstBlipInfoId = function(blipSprite)
			return __CitIn__.InvokeNative(0x1BEDE233E6CD2A1F, blipSprite, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		DoesBlipExist = function(blip)
			return __CitIn__.InvokeNative(0xA6DB27D19ECBB7DA, blip, __CitIn__.ReturnResultAnyway())
		end,
		GetBlipInfoIdCoord = function(blip)
			return __CitIn__.InvokeNative(0xFA7C7F0AADF25D09, blip, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsVector())
		end,
		SetPedCoordsKeepVehicle = function(ped, posX, posY, posZ)
			return __CitIn__.InvokeNative(0x9AFEFF481A85AB2E, ped, posX, posY, posZ)
		end,
		IsEntityInWater = function(entity)
			return __CitIn__.InvokeNative(0xCFB0A0D8EDD145A3, entity, __CitIn__.ReturnResultAnyway())
		end,
		EndFindPed = function(findHandle)
			return __CitIn__.InvokeNative(0x9615c2ad, findHandle)
		end,
		SetDrawOrigin = function(x, y, z, p3)
			return __CitIn__.InvokeNative(0xAA0008F3BBB8F416, x, y, z, p3)
		end,
		SetTextProportional = function(p0)
			return __CitIn__.InvokeNative(0x038C1F517D7FDCF8, p0)
		end,
		SetTextDropshadow = function(distance, r, g, b, a)
			return __CitIn__.InvokeNative(0x465C84BC39F1C351, distance, r, g, b, a)
		end,
		SetTextDropshadow = function(distance, r, g, b, a)
			return __CitIn__.InvokeNative(0x465C84BC39F1C351, distance, r, g, b, a)
		end,
		IsDisabledControlJustReleased = function(inputGroup, control)
			return __CitIn__.InvokeNative(0x305C8DCD79DA8B0F, inputGroup, control)
		end,
		SetTextEdge = function(p0,r,g,b,a)
			return __CitIn__.InvokeNative(0x441603240D202FA6, p0,r,g,b,a)
		end,
		SetTextOutline = function()
			return __CitIn__.InvokeNative(0x2513DFB0FB8400FE)
		end,
		SetTextEntry = function(text)
			return __CitIn__.InvokeNative(0x25FBB336DF1804CB, __BlightStrings__.strings:tostring(text))
		end,
		AddTextComponentString = function(text)
			return __CitIn__.InvokeNative(0x6C188BE134E074AA, __BlightStrings__.strings:tostring(text))
		end,
		BeginTextCommandLineCount = function(text)
			return __CitIn__.InvokeNative(0x521FB041D93DD0E4, __BlightStrings__.strings:tostring(text))
		end,
		EndTextCommandGetLineCount = function(x, y)
			return __CitIn__.InvokeNative(0x9040DFB09BE75706, x, y)
		end,
		ClearDrawOrigin = function()
			return __CitIn__.InvokeNative(0xFF0B610F6BE0D7AF)
		end,
		GetClosestVehicle = function(x, y, z, radius, modelHash, flags)
			return __CitIn__.InvokeNative(0xF73EB622C4F1689B, x, y, z, radius, __CitIn__.InvokeNative(0xD24D37CC275948CC, __BlightStrings__.strings:tostring(modelHash), __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger()), flags, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		GetGameplayCamRelativeHeading = function()
			return __CitIn__.InvokeNative(0x743607648ADD4587, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsFloat())
		end,
		GetGameplayCamRelativePitch = function()
			return __CitIn__.InvokeNative(0x3A6867B4845BEDA2, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsFloat())
		end,
		TaskCombatPed = function(ped, targetPed, p2, p3)
			return __CitIn__.InvokeNative(0xF166E48407BAC484, ped, targetPed, p2, p3)
		end,
		IsPedDeadOrDying = function(ped, p1)
			return __CitIn__.InvokeNative(0x3317DEDB88C95038, ped, p1, __CitIn__.ReturnResultAnyway())
		end,
		TaskSmartFleeCoord = function(ped, x, y, z, distance, time, p6, p7)
			return __CitIn__.InvokeNative(0x94587F17E9C365D5, ped, x, y, z, distance, time, p6, p7)
		end,
		SetPedCombatAbility = function(ped, p1)
			return __CitIn__.InvokeNative(0xC7622C0D36B2FDA8, ped, p1)
		end,
		SetPedCombatMovement = function(ped, combatMovement)
			return __CitIn__.InvokeNative(0x4D9CA1009AFBD057, ped, combatMovement)
		end,
		SetCombatFloat = function(ped, combatType, p2)
			return __CitIn__.InvokeNative(0xFF41B4B141ED981C, ped, combatType, p2)
		end,
		SetPedAccuracy = function(ped, accuracy)
			return __CitIn__.InvokeNative(0x7AEFB85C1D49DEB6, ped, accuracy, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		SetPedFiringPattern = function(ped, patternHash)
			return __CitIn__.InvokeNative(0x9AC577F5A12AD8A9, ped, __CitIn__.InvokeNative(0xD24D37CC275948CC, __BlightStrings__.strings:tostring(patternHash), __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger()))
		end,
		GetClosestVehicleNodeWithHeading = function(x, y, z, nodeType, p6, p7)
			return __CitIn__.InvokeNative(0xFF071FB798B803B0, x, y, z, __CitIn__.PointerValueVector(), __CitIn__.PointerValueFloat(), nodeType, p6, p7, __CitIn__.ReturnResultAnyway())
		end,
		CreatePedInsideVehicle = function(vehicle, pedType, modelHash, seat, isNetwork, netMissionEntity)
			return __CitIn__.InvokeNative(0x7DD959874C1FD534, vehicle, pedType, __CitIn__.InvokeNative(0xD24D37CC275948CC, __BlightStrings__.strings:tostring(modelHash), __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger()), seat, isNetwork, netMissionEntity, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		TaskVehicleDriveToCoordLongrange = function(ped, vehicle, x, y, z, speed, driveMode, stopRange)
			return __CitIn__.InvokeNative(0x158BB33F920D360C, ped, vehicle, x, y, z, speed, driveMode, stopRange)
		end,
		SetVehicleEngineOn = function(vehicle, value, instantly)
			return __CitIn__.InvokeNative(0x2497C4717C8B881E, vehicle, value, instantly)
		end,
		TriggerSiren = function(vehicle)
			return __CitIn__.InvokeNative(0x66C3FB05206041BA, vehicle)
		end,
		SetVehicleSiren = function(vehicle, bool)
			return __CitIn__.InvokeNative(0xF4924635A19EB37D, vehicle, bool)
		end,
		SetPedMaxTimeUnderwater = function(ped, value)
			return __CitIn__.InvokeNative(0x6BA428C528D9E522, ped, value)
		end,
		GetPedBoneCoords = function(ped, boneId, offsetX, offsetY, offsetZ)
			return __CitIn__.InvokeNative(0x17C07FC640E86B4E, ped, boneId, offsetX, offsetY, offsetZ, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsVector())
		end,
		GetDistanceBetweenCoords = function(x1, y1, z1, x2, y2, z2, unknown)
			return __CitIn__.InvokeNative(0xF1B760881820C952, x1, y1, z1, x2, y2, z2, unknown, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsFloat())
		end,
		GetScreenCoordFromWorldCoord = function(worldX, worldY, worldZ)
			return __CitIn__.InvokeNative(0x34E82F05DF2974F5, worldX, worldY, worldZ, __CitIn__.PointerValueFloat(), __CitIn__.PointerValueFloat(), __CitIn__.ReturnResultAnyway())
		end,
		IsEntityDead = function(entity)
			return __CitIn__.InvokeNative(0x5F9532F3B5CC2551, entity, __CitIn__.ReturnResultAnyway())
		end,
		IsEntityVisible = function(entity)
			return __CitIn__.InvokeNative(0x47D6F43D77935C75, entity, __CitIn__.ReturnResultAnyway())
		end,
		IsPlayerFreeAiming = function(entity)
			return __CitIn__.InvokeNative(0x2E397FD2ECD37C87, entity, __CitIn__.ReturnResultAnyway())
		end,
		HasEntityClearLosToEntity = function(entity1, entity2, traceType)
			return __CitIn__.InvokeNative(0xFCDFF7B72D23A1AC, entity1, entity2, traceType, __CitIn__.ReturnResultAnyway())
		end,
		ShakeGameplayCam = function(p1, p2)
			return __CitIn__.InvokeNative(0xFD55E49555E017CF, __BlightStrings__.strings:tostring(p1), p2, __CitIn__.ReturnResultAnyway())
		end,
		SetGameplayCamRelativePitch = function(p1, p2)
			return __CitIn__.InvokeNative(0x6D0858B8EDFD2B7D, p1, p2)
			
		end,
		IsPedShooting = function(ped)
			return __CitIn__.InvokeNative(0x34616828CD07F1A1, ped, __CitIn__.ReturnResultAnyway())
		end,
		IsEntityOnScreen = function(entity)
			return __CitIn__.InvokeNative(0xE659E47AF827484B, entity, __CitIn__.ReturnResultAnyway())
		end,
		FindFirstPed = function(outEntity)
			return __CitIn__.InvokeNative(0xfb012961, __CitIn__.PointerValueIntInitialized(outEntity), __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		FindNextPed = function(findHandle, outEntity)
			return __CitIn__.InvokeNative(0xab09b548, findHandle, __CitIn__.PointerValueIntInitialized(outEntity), __CitIn__.ReturnResultAnyway())
		end,
		NetworkIsInSession = function()
			return __CitIn__.InvokeNative(0xCA97246103B63917, __CitIn__.ReturnResultAnyway())
		end,
		SetTextDropShadow = function(distance, r, g, b, a)
			return __CitIn__.InvokeNative(0x465C84BC39F1C351, distance, r, g, b, a)
		end,
		GetPedPropIndex = function(ped, componentId)
			return __CitIn__.InvokeNative(0x898CC20EA75BACD8, ped, componentId, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		GetPedPropTextureIndex = function(ped, componentId)
			return __CitIn__.InvokeNative(0xE131A28626F81AB2, ped, componentId, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		GetPedDrawableVariation = function(ped, componentId)
			return __CitIn__.InvokeNative(0x898CC20EA75BACD8, ped, componentId, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		GetPedPaletteVariation = function(ped, componentId)
			return __CitIn__.InvokeNative(0xE3DD5F2A84B42281, ped, componentId, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		GetPedTextureVariation = function(ped, componentId)
			return __CitIn__.InvokeNative(0x04A355E041E004E6, ped, componentId, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		DrawLightWithRangeAndShadow = function(x, y, z, r, g, b, range, intensity, shadow)
			return __CitIn__.InvokeNative(0xF49E9A9716A04595, x, y, z, r, g, b, range, intensity, shadow)
		end,
		IsControlJustPressed = function(padIndex, control)
			return __CitIn__.InvokeNative(0x580417101DDB492F, padIndex, control, __CitIn__.ReturnResultAnyway())
		end,
		IsControlJustPressed = function(padIndex, control)
			return __CitIn__.InvokeNative(0xF3A21BCD95725A4A, padIndex, control, __CitIn__.ReturnResultAnyway())
		end,
		GetNumResourceMetadata = function(resourceName, metadataKey)
			return __CitIn__.InvokeNative(0x776E864, __BlightStrings__.strings:tostring(resourceName), __BlightStrings__.strings:tostring(metadataKey), __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		GetResourceMetadata = function(resourceName, metadataKey, index)
			return __CitIn__.InvokeNative(0x964BAB1D, __BlightStrings__.strings:tostring(resourceName), metadataKey, index, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsString())
		end,
		LoadResourceFile = function(resourceName, fileName)
			return __CitIn__.InvokeNative(0x76A9EE1F, __BlightStrings__.strings:tostring(resourceName), __BlightStrings__.strings:tostring(fileName), __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsString())
		end,
		GetCurrentServerEndpoint = function()
			return __CitIn__.InvokeNative(0xEA11BFBA, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsString())
		end,
		GetCurrentResourceName = function()
			return __CitIn__.InvokeNative(0xE5E9EBBB, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsString())
		end,
		
		SetVehicleWheelieState = function(vehicle, state)
			return __CitIn__.InvokeNative(0xEAB8DB65, vehicle, state)
		end,
		GetHashKey = function(string)
			return __CitIn__.InvokeNative(0xD24D37CC275948CC, __BlightStrings__.strings:tostring(string), __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger()) 
		end,
		SetVehicleTyresCanBurst = function(vehicle, toggle)
			return __CitIn__.InvokeNative(0xEB9DC3C7D8596C46, vehicle, toggle, __CitIn__.ReturnResultAnyway())
		end,
		SetVehicleNumberPlateTextIndex = function(vehicle, plateIndex)
			return __CitIn__.InvokeNative(0x9088EB5A43FFB0A1, vehicle, plateIndex, __CitIn__.ReturnResultAnyway())
		end,
		GetCurrentPedWeapon = function(ped, p2)
			return __CitIn__.InvokeNative(0x3A87E44BB9A01D54, ped, __CitIn__.PointerValueInt(), p2, __CitIn__.ReturnResultAnyway())
		end,
		GetWeaponClipSize = function(p1)
			return __CitIn__.InvokeNative(0x583BE370B1EC6EB4, p1, __CitIn__.ResultAsInteger())
		end,
		SetPedAmmo = function(ped, weaponHash, ammo)
			return __CitIn__.InvokeNative(0x14E56BC5B5DB6A19, ped, weaponHash, ammo, __CitIn__.ResultAsInteger())
		end,
		RemoveAllPedWeapons = function(ped, p1)
			return __CitIn__.InvokeNative(0xF25DF915FA38C5F3, ped, p1, __CitIn__.ResultAsInteger())
		end,
		RemoveWeaponFromPed = function(ped, weaponHash)
			return __CitIn__.InvokeNative(0xF25DF915FA38C5F3, ped, weaponHash)
		end,
		SetArtificialLightsState = function(state)
			return __CitIn__.InvokeNative(0x1268615ACE24D504, state)
		end,
		SetPedArmour = function(ped, amount)
			return __CitIn__.InvokeNative(0xCEA04D83135264CC, ped, amount, __CitIn__.ResultAsInteger())
		end,
		HasAnimDictLoaded = function(animDict)
			return __CitIn__.InvokeNative(0xD031A9162D01088C, animDict, __CitIn__.ResultAsInteger())
		end,
		RequestAnimDict = function(animDict)
			return __CitIn__.InvokeNative(0xD3BD40951412FEF6, animDict)
		end,
		SetEntityProofs = function(entity, bulletProof, fireProof, explosionProof, collisionProof, meleeProof, steamProof, p7, drownProof)
			return __CitIn__.InvokeNative(0x4899CB088EDF59B8, entity, bulletProof, fireProof, explosionProof, collisionProof, meleeProof, steamProof, p7, drownProof)
		end,
		SetFollowPedCamViewMode = function(viewMode)
			return __CitIn__.InvokeNative(0x5A4F9EDF1673F704, viewMode)
		end,
		DisableFirstPersonCamThisFrame = function()
			return __CitIn__.InvokeNative(0xDE2EF5DA284CC8DF, __CitIn__.ReturnResultAnyway())
		end,
		SetFollowVehicleCamViewMode = function(viewMode)
			return __CitIn__.InvokeNative(0xAC253D7842768F48, viewMode)
		end,
		StatSetInt = function(statName, value, save)
			return __CitIn__.InvokeNative(0xB3271D7AB655B441,statName, value, save, __CitIn__.ReturnResultAnyway())
		end,
		ReplaceHudColourWithRgba = function(hudColorIndex, r, g, b, a)
			return __CitIn__.InvokeNative(0xF314CF4F0211894E, hudColorIndex, r, g, b, a)
		end,
		IsPedRagdoll = function(ped)
			return __CitIn__.InvokeNative(0x47E4E977581C5B55, ped)
		end,
		AnimpostfxStop = function(effectName)
			return __CitIn__.InvokeNative(0x068E835A1D0DC0E3, effectName)
		end,
		GetEntityVelocity = function(entity)
			return __CitIn__.InvokeNative(0x4805D2B1D8CF94A9, entity, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsVector())
		end,
		SetPoliceIgnorePlayer = function(player, toggle)
			return __CitIn__.InvokeNative(0x32C62AA929C2DA6A, player, toggle)
		end,
		SetPedCanRagdollFromPlayerImpact = function(ped, toggle)
			return __CitIn__.InvokeNative(0xDF993EE5E90ABA25, ped, toggle)
		end,
		DrawLine = function(x1, y1, z1, x2, y2, z2, red, green, blue, alpha)
			return __CitIn__.InvokeNative(0x6B7256074AE34680, x1, y1, z1, x2, y2, z2, red, green, blue, alpha)
		end,
		SetEntityLocallyVisible = function(entity)
			return __CitIn__.InvokeNative(0x241E289B5C059EDC, entity)
		end,
		SetWeatherTypePersist = function(weatherType)
			return __CitIn__.InvokeNative(0x704983DF373B198F, weatherType)
		end,
		SetWeatherTypeNow = function(weatherType)
			return __CitIn__.InvokeNative(0x29B487C359E19889, weatherType)
		end,
		SetOverrideWeather = function(weatherType)
			return __CitIn__.InvokeNative(0xA43D5C6FE51ADBEF, weatherType)
		end,
		SetTimecycleModifier = function(modifierName)
			return __CitIn__.InvokeNative(0x2C933ABF17A1DF41, modifierName)
		end,
		NetworkIsPlayerTalking = function(weatherType)
			return __CitIn__.InvokeNative(0x031E11F3D447647E, weatherType)
		end,
		GetDistanceBetweenCoords = function(x1, y1, z1, x2, y2, z2, useZ)
			return __CitIn__.InvokeNative(0xF1B760881820C952, x1, y1, z1, x2, y2, z2, useZ, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsFloat())
		end,
		GetEntitySpeed = function(entity)
			return __CitIn__.InvokeNative(0xD5037BA82E12416F, entity, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsFloat())
		end,
		IsPedAPlayer = function(ped)
			return __CitIn__.InvokeNative(0x12534C348C6CB68B, ped, __CitIn__.ReturnResultAnyway())
		end,
		GetEntityMaxHealth = function(entity)
			return __CitIn__.InvokeNative(0x15D757606D170C3C, entity)
		end,
		IsControlPressed = function(padIndex, control)
			return __CitIn__.InvokeNative(0xF3A21BCD95725A4A, padIndex, control)
		end,
		GetFinalRenderedCamCoord = function()
			return __CitIn__.InvokeNative(0xA200EB1EE790F448, __CitIn__.ResultAsVector())
		end,
		GetPedArmour = function(ped)
			return __CitIn__.InvokeNative(0x9483AF821605B1D8, ped, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
		end,
		ClearPlayerWantedLevel = function(player)
			return __CitIn__.InvokeNative(0xB302540597885499, player)
		end,
		GetEntityPlayerIsFreeAimingAt = function(player, entity)
			return __CitIn__.InvokeNative(0x2975C866E6713290, player, __CitIn__.PointerValueIntInitialized(entity), __CitIn__.ReturnResultAnyway())
		end,
		DestroyDui = function(duiObject)
			return __CitIn__.InvokeNative(0xA085CB10, duiObject)
		end,
		IsPedReloading = function(ped)
			return __CitIn__.InvokeNative(0x24B100C68C645951, ped)
		end,


		RequestIpl = function(iplName)
			return __CitIn__.InvokeNative(0x41B4893843BBDB74, iplName)
		end,
		GetInteriorAtCoords = function(x, y, z)
			return __CitIn__.InvokeNative(0xB0F7F8663821D9C3, x, y, z, __CitIn__.ReturnResultAnyway())
		end,
		IsValidInterior = function(iplName)
			return __CitIn__.InvokeNative(0x26B0E73D7EAAF4D3, __CitIn__.PointerValueIntInitialized(interior), __CitIn__.ReturnResultAnyway())
		end,
		PinInteriorInMemory = function(interior)
			return PinInteriorInMemory(interior)
		end,
		ActivateInteriorEntitySet = function(interior, entitySetName)
			return ActivateInteriorEntitySet(interior, entitySetName)
		end,
		SetInteriorEntitySetColor = function(interior, entitySetName, colour)
			return SetInteriorEntitySetColor(interior, entitySetName, colour)
		end,

		RefreshInterior = function(interiorID)
			return RefreshInterior(interiorID, __CitIn__.ReturnResultAnyway())
		end,


		ApplyForceToEntity = function(entity, forceType, x, y, z, offX, offY, offZ, boneIndex, isDirectionRel, ignoreUpVec, isForceRel, p12, p13)
			return __CitIn__.InvokeNative(0xC5F68BE9613E2D18, entity, forceType, x, y, z, offX, offY, offZ, boneIndex, isDirectionRel, ignoreUpVec, isForceRel, p12, p13)
		end,
		TaskVehicleDriveWander = function(ped, veh, p1, p2)
			return __CitIn__.InvokeNative(0x480142959D337D00, ped, veh, p1, p2)
		end,
		TaskWanderStandard = function(ped, p1, p2)
			return __CitIn__.InvokeNative(0xBB9CE077274F6A1B, ped, p1, p2)
		end,
		SetVehicleReduceGrip = function(vehicle, toggle)
			return __CitIn__.InvokeNative(0x222FF6A823D122E2, vehicle, toggle)
		end,
		SetBlipColour = function(blip, color)
			return __CitIn__.InvokeNative(0x03D7FB09E75D6B7E, blip, color)
		end,
		SetTimeScale = function(timeScale)
			return __CitIn__.InvokeNative(0x1D408577D440E81E, timeScale)
		end,
		GetCurrentPedWeaponEntityIndex = function(ped)
			return __CitIn__.InvokeNative(0x3B390A939AF0B5FC, ped)
		end,
		IsAimCamActive = function()
			return __CitIn__.InvokeNative(0x68EDDA28A5976D07)
		end,
		SetGameplayCamRelativeRotation = function(roll, pitch, yaw)
			return __CitIn__.InvokeNative(0x48608C3464F58AB4, roll, pitch, yaw)
		end,
		DisableControlAction = function(padIndex, control, disable)
			return __CitIn__.InvokeNative(0xFE99B66D079CF6BC, padIndex, control, disable)
		end,
		SetMouseCursorActiveThisFrame = function()
			return __CitIn__.InvokeNative(0xAAE7CE1D63167423)
		end,
		SetFocusPosAndVel = function(x, y, z, offsetX, offsetY, offsetZ)
			return __CitIn__.InvokeNative(0xBB7454BAFF08FE25, x, y, z, offsetX, offsetY, offsetZ)
		end,
		SetCamFov = function(cam, fieldOfView)
			return __CitIn__.InvokeNative(0xB13C14F66A00D047, cam, fieldOfView)
		end,
		GetCamMatrix = function(camera)
			return __CitIn__.InvokeNative(0x8F57A89D, camera, __CitIn__.PointerValueVector(), __CitIn__.PointerValueVector(), __CitIn__.PointerValueVector(), __CitIn__.PointerValueVector())
		end,
		GetAspectRatio = function(b)
			return __CitIn__.InvokeNative(0xF1307EF624A80D87, b, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsFloat())
		end,
		UseParticleFxAsset = function(name)
			return __CitIn__.InvokeNative(0x6C38AF3693A69A91, __BlightStrings__.strings:tostring(name))
		end,
		IsEntityAPed = function(entity)
			return __CitIn__.InvokeNative(0x524AC5ECEA15343E, entity, __CitIn__.ReturnResultAnyway())
		end,
		SetVehicleUndriveable = function(vehicle, toggle)
   			 return __CitIn__.InvokeNative(0x8ABA6AF54B942B95, vehicle, toggle)
 		end,
		RestorePlayerStamina = function(player, p1) 
			return __CitIn__.InvokeNative(0xA352C1B864CAFD33, player, p1) 
		end,
		IsEntityInAir = function(entity) 
			return __CitIn__.InvokeNative(0x886E37EC497200B6, entity, __CitIn__.ReturnResultAnyway()) 
		end,
		SetPedToRagdoll = function(ped, time1, time2, ragdollType, p4, p5, p6) 
			return __CitIn__.InvokeNative(0xAE99FB955581844A, ped, time1, time2, ragdollType, p4, p5, p6, __CitIn__.ReturnResultAnyway()) 
		end,
		IsEntityAVehicle = function(entity) 
			return __CitIn__.InvokeNative(0x6AC7003FA6E5575E, entity, __CitIn__.ReturnResultAnyway()) 
		end,
		IsPedInVehicle = function(ped, vehicle, atGetIn) 
			return __CitIn__.InvokeNative(0xA3EE4A07279BB9DB, ped, vehicle, atGetIn, __CitIn__.ReturnResultAnyway()) 
		end,
		NetworkRegisterEntityAsNetworked = function(entity) 
			return __CitIn__.InvokeNative(0x06FAACD625D80CAA, entity) 
		end,
		NetworkSetNetworkIdDynamic = function(netID, toggle) 
			return __CitIn__.InvokeNative(0x2B1813ABA29016C5, netID, toggle) 
		end,
		SetNetworkIdCanMigrate = function(netId, toggle) 
			return __CitIn__.InvokeNative(0x299EEB23175895FC, netId, toggle)
		end,
		NetToPed = function(netHandle) 
			return __CitIn__.InvokeNative(0xBDCD95FC216A8B3E, netHandle, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger()) 
		end,
		SetPedCanSwitchWeapon = function(ped, toggle) 
			return __CitIn__.InvokeNative(0xED7F7EFE9FABF340, ped, toggle) 
		end,
		SetVehicleDoorsLocked = function(vehicle, doorLockStatus) 
			return __CitIn__.InvokeNative(0xB664292EAECF7FA6, vehicle, doorLockStatus) 
		end,
		SetPedRandomComponentVariation = function(ped, p1) 
			return __CitIn__.InvokeNative(0xC8A9481A01E63C28, ped, p1) 
		end,
		SetPedRandomProps = function(ped) 
			return __CitIn__.InvokeNative(0xC44AA05345C992C6, ped) 
		end,
		StartEntityFire = function(entity)
			return __CitIn__.InvokeNative(0xF6A9D9708F6F23DF, entity)
		end,
		SetPedConfigFlag = function(entity, flagId, value)
			return __CitIn__.InvokeNative(0x1913FE4CBF41C463, entity, flagId, value, __CitIn__.ReturnResultAnyway()) 
		end,
		TaskJump = function(ped, unused)
			return __CitIn__.InvokeNative(0x0AE4086104E067B1, ped, unused)
		end,
		SetPedCapsule = function(ped, value)
			return __CitIn__.InvokeNative(0x364DF566EC833DE2, ped, value)
		end,
		GivePlayerRagdollControl = function(player, toggle)
			return __CitIn__.InvokeNative(0x3C49C870E66F0A28, player, toggle)
		end,
		GiveDelayedWeaponToPed = function(ped, weaponHash, ammoCount, equipNow)
			return __CitIn__.InvokeNative(0xB282DC6EBD803C75, ped, weaponHash, ammoCount, equipNow)
		end,
		TaskGoStraightToCoord = function(ped, x, y, z,speed, timeout, targetHeading, distanceToSlide)
			return __CitIn__.InvokeNative(0xD76B57B44F1E6F8B, ped, x, y, z,speed, timeout, targetHeading, distanceToSlide)
		end,
		SetExtraTimecycleModifier = function(modifierName)
			return __CitIn__.InvokeNative(0x5096FD9CCB49056D, modifierName)
		end,
		SetVehicleDoorBroken = function(vehicle, doorIndex, deleteDoor)
			return __CitIn__.InvokeNative(0xD4D4F6A4AB575A33, vehicle, doorIndex, deleteDoor)
		end,
		ClonePed = function(ped, heading, isNetwork, netMissionEntity)
            return __CitIn__.InvokeNative(0xEF29A16337FACADB, ped, heading, isNetwork, netMissionEntity, __CitIn__.ResultAsInteger())
        end,
		ClonePedToTarget = function(ped, targetPed)
            return __CitIn__.InvokeNative(0xE952D6431689AD9A, ped, targetPed)
        end,
		SetNewWaypoint = function(x, y)
			return __CitIn__.InvokeNative(0xFE43368D2AA4F2FC, x, y)
		end,
     	ExecuteCommand = function(commandString)
            return __CitIn__.InvokeNative(0x561C060B, __BlightStrings__.strings:tostring(commandString))
        end,
  	 	AttachCamToEntity = function(cam, entity, xOffset, yOffset, zOffset, isRelative)
            return __CitIn__.InvokeNative(0xFEDB7D269E8C60E3, cam, entity, xOffset, yOffset, zOffset, isRelative)
        end,
		DetachCam = function(cam)
            return __CitIn__.InvokeNative(0xA2FABBE87F4BAD82, cam)
        end,
		SetVehicleTyreBurst = function(vehicle, index, onRim, p3)
			return __CitIn__.InvokeNative(0xEC6A202EE4960385, vehicle, index, onRim, p3)
		end,
		SmashVehicleWindow = function(vehicle, index)
			return __CitIn__.InvokeNative(0x9E5B5E4D2CCD2259, vehicle, index)
		end,
		StartVehicleAlarm = function(vehicle)
			return __CitIn__.InvokeNative(0xB8FF7AB45305C345, vehicle)
		end,
		DetachVehicleWindscreen = function(vehicle)
			return __CitIn__.InvokeNative(0x6D645D59FB5F5AD3, vehicle)
		end,
		SetVehicleDoorOpen = function(vehicle, index, loose, openInstantly)
			return __CitIn__.InvokeNative(0x7C65DAC73C35C862, vehicle, index, loose, openInstantly)
		end,
		SetVehicleDoorShut = function(vehicle, doorIndex, closeInstantly)
			return __CitIn__.InvokeNative(0x93D9BD300D7789E5, vehicle, doorIndex, closeInstantly)
		end,
		SetNetworkIdExistsOnAllMachines = function(netId, toggle)
			return __CitIn__.InvokeNative(0xE05E81A888FA63C8, netId, toggle)
		end,
		SetRelationshipBetweenGroups = function(relationship, group1, group2)
			return __CitIn__.InvokeNative(0xBF25EB89375A37AD, relationship, group1, group2)
		end,
		SetPedCanSwitchWeapon = function(ped, toggle)
			return __CitIn__.InvokeNative(0xED7F7EFE9FABF340, ped, toggle)
		end,
		SetVehicleAlarm = function(vehicle, state)
			return __CitIn__.InvokeNative(0xCDE5E70C1DDB954C, vehicle, state)
		end,
		SetVehicleNeedsToBeHotwired = function(vehicle, toggle)
			return __CitIn__.InvokeNative(0xFBA550EA44404EE6, vehicle, toggle)
		end,
		TaskCombatHatedTargetsInArea = function(ped, x, y, z,radius, p5)
			return __CitIn__.InvokeNative(0x4CF5F55DAC3280A0, ped, x, y, z,radius, p5)
		end,
		SetVehicleCustomPrimaryColour = function(vehicle, r, g, b)
			return __CitIn__.InvokeNative(0x7141766F91D15BEA, vehicle, r, g, b)
		end,
		SetVehicleCustomSecondaryColour = function(vehicle, r, g, b)
			return __CitIn__.InvokeNative(0x36CED73BFED89754, vehicle, r, g, b)
		end,
		RemoveReplaceTexture = function(origTxd, origTxn)
			return __CitIn__.InvokeNative(0xA896B20A, origTxd, origTxn)
		end,
		AddReplaceTexture = function(origTxd, origTxn,newTxd, newTxn)
			return __CitIn__.InvokeNative(0xA66F8F75, origTxd, origTxn, newTxd, newTxn)
		end,
		ClearAllHelpMessages = function()
			return __CitIn__.InvokeNative(0x6178F68A87A4D3A0)
		end,

		TaskVehicleChase = function(driver, targetEnt)
			return __CitIn__.InvokeNative(0x3C08A8E30363B353, driver, targetEnt)
		end,
		ResetEntityAlpha = function(entity)
			return __CitIn__.InvokeNative(0x9B1E824FFBB7027A, entity)
		end,
		SetForceVehicleTrails = function(toggle)
			return __CitIn__.InvokeNative(0x4CC7F0FEA5283FE0, toggle)
		end,
		StatSetInt = function(statName, value, save)
			return __CitIn__.InvokeNative(0xB3271D7AB655B441, statName, value, save)
		end,
		SetTextRightJustify = function(bool)
			return __CitIn__.InvokeNative(0x6B3C4650BC8BEE47, bool)
		end,
		SetVehicleModColor_1 = function(vehicle, paintType, color, p3)
			return __CitIn__.InvokeNative(0x43FEB945EE7F85B8, vehicle, paintType, color, p3)
		end,
		SetVehicleModColor_2 = function(vehicle, paintType, color)
			return __CitIn__.InvokeNative(0x43FEB945EE7F85B8, vehicle, paintType, color)
		end,
		SetVehicleTyreSmokeColor = function(vehicle, r, g, b)
			return __CitIn__.InvokeNative(0xB5BA80F839791C0F, vehicle, r, g, b)
		end,
		SetForcePedFootstepsTracks = function(toggle)
			return __CitIn__.InvokeNative(0xAEEDAD1420C65CC0, toggle)
		end,
		ClearPedProp = function(ped, index)
			return __CitIn__.InvokeNative(0x0943E5B8E078E76E, ped, index)
		end,
		PlaySoundFromCoord = function(soundId, audioName, x, y, z, audioRef, isNetwork, range, p8)
			return __CitIn__.InvokeNative(0x8D8686B622B88120, soundId, __BlightStrings__.strings:tostring(audioName), x, y, z, __BlightStrings__.strings:tostring(audioRef), isNetwork, range, p8)
		end,
		PlaySound = function(soundId, audioName, audioRef, p3)
			return __CitIn__.InvokeNative(0x7FF4944CC209192D, soundId, __BlightStrings__.strings:tostring(audioName), __BlightStrings__.strings:tostring(audioRef), p3)
		end,
		IsPedWalking = function(player)
			return __CitIn__.InvokeNative(0xDE4C184B2B9B071A, player, __CitIn__.ReturnResultAnyway())
		end,
		IsPedSwimming = function(player)
			return __CitIn__.InvokeNative(0x9DE327631295B4C2, player, __CitIn__.ReturnResultAnyway())
		end,
		IsPedJumping = function(player)
			return __CitIn__.InvokeNative(0xCEDABC5900A0BF97, player, __CitIn__.ReturnResultAnyway())
		end,
		IsPedFalling = function(player)
			return __CitIn__.InvokeNative(0xFB92A102F1C4DFA3, player, __CitIn__.ReturnResultAnyway())
		end,
		IsPedRunning = function(player)
			return __CitIn__.InvokeNative(0xC5286FFC176F28A2, player, __CitIn__.ReturnResultAnyway())
		end,
		IsPedStill = function(player)
			return __CitIn__.InvokeNative(0xAC29253EEF8F0180, player, __CitIn__.ReturnResultAnyway())
		end,
		GetPedType = function(player)
			return __CitIn__.InvokeNative(0xFF059E1E4C01E63C, player, __CitIn__.ResultAsInteger())
		end,
		GetEntityType = function(entity)
			return __CitIn__.InvokeNative(0xFF059E1E4C01E63C, entity, __CitIn__.ResultAsInteger())
		end,
		SetEntityHeading = function(entity1, entity2)
			return __CitIn__.InvokeNative(0x8E2530AA8ADA980E, entity1, entity2)
		end,
		ClearPedWetness = function(ped)
			return __CitIn__.InvokeNative(0x9C720776DAA43E7E, ped)
		end,
		NetworkOverrideClockTime = function(h, m, s)
			return __CitIn__.InvokeNative(0xE679E3E06E363892, h, m, s)
		end,
		GetLocalTime = function()
			return __CitIn__.InvokeNative(0x50C7A99057A69748, __CitIn__.PointerValueInt(), __CitIn__.PointerValueInt(), __CitIn__.PointerValueInt(), __CitIn__.PointerValueInt(), __CitIn__.PointerValueInt(), __CitIn__.PointerValueInt())
		end,
		GetUtcTime = function()
			return __CitIn__.InvokeNative(0x8117E09A19EEF4D3, __CitIn__.PointerValueInt(), __CitIn__.PointerValueInt(), __CitIn__.PointerValueInt(), __CitIn__.PointerValueInt(), __CitIn__.PointerValueInt(), __CitIn__.PointerValueInt())
		end,
		SetClockTime = function(h, m, s)
			return __CitIn__.InvokeNative(0x47C3B5848C3E45D8, h, m, s)
		end,
		SetWeatherTypePersist = function(type)
			return __CitIn__.InvokeNative(0x704983DF373B198F, type)
		end,
		mathsplit = function(math, split) 
			local lines = {} 
			for g in math:gmatch(split) do 
				lines[#lines + 1] = g 
			end
			return lines 
		end,
}
Blight.F.Tables.RotToQuat = function(rot)
	local pitch = __BlightStrings__.strings:rad(rot.x)
	local roll = __BlightStrings__.strings:rad(rot.y)
	local yaw = __BlightStrings__.strings:rad(rot.z)
	local cy = __BlightStrings__.strings:cos(yaw * 0.5)
	local sy = __BlightStrings__.strings:sin(yaw * 0.5)
	local cr = __BlightStrings__.strings:cos(roll * 0.5)
	local sr = __BlightStrings__.strings:sin(roll * 0.5)
	local cp = __BlightStrings__.strings:cos(pitch * 0.5)
	local sp = __BlightStrings__.strings:sin(pitch * 0.5)
	return quat(cy * cr * cp + sy * sr * sp, cy * sp * cr - sy * cp * sr, cy * cp * sr + sy * sp * cr, sy * cr * cp - cy * sr * sp)
end
-- warv bypass
Blight.F.Tables.AddTextEntry('WATAFAKMEN', '~a~')

Blight.F.Tables.Functions = {
	ParticleSizel = 1.0,
	CheckFov = function(ped)
		local coords = Blight.F.Tables.GetEntityCoords(ped)
		local _, sx, sy = Blight.F.Tables.GetScreenCoordFromWorldCoord(coords.x, coords.y, coords.z)
		local fovcheck = (Blight.F.Sliders['aimbot-fov'].value / 1000)
		if ((((0.5 - sx)^2) / (fovcheck^2) + ((0.5-sy)^2) / ((fovcheck*1.8)^2))*4) <= 1 then
			return true
		else
			return false
		end
	end,
	AdvancedRot = function(ncoords)
		return pairs(math.deg(math.atan2(ncoords.z, #vector2(ncoords.x, ncoords.y))), 0.0, -math.deg(math.atan2(ncoords.x, ncoords.y)))
	end,
	BoneThruWall = function(vec, factor)
		local c = Blight.F.Tables.GetFinalRenderedCamCoord()
		factor = (not factor or factor >= 1) and 0.83 or factor
		return pairs(c.x + (vec.x - c.x) * factor, c.y + (vec.y - c.y) * factor, c.z + (vec.z - c.z) * factor)
	end,
	GetMinVisualDistance = function(pos)
		local cam = Blight.F.Tables.GetFinalRenderedCamCoord()
		local hray, hit, coords, surfaceNormal, ent = Blight.F.Tables.GetShapeTestResult(Blight.F.Tables.StartShapeTestRay(cam.x, cam.y, cam.z, pos.x, pos.y, pos.z, -1, Blight.F.Tables.PlayerPedId(), 0))
		if hit then
			return #(cam - coords) / #(cam - pos) * 0.9
		end
	end,
	RayCastGCam = function(distance)
		local cameraCoord = Blight.F.Tables.GetGameplayCamCoord(); local direction = Blight.F.Tables.Functions.RotToDir(Blight.F.Tables.GetGameplayCamRot(0)); local dx, dy, dz = cameraCoord.x + direction.x * distance, cameraCoord.y + direction.y * distance, cameraCoord.z + direction.z * distance; local a, b, c, d, e = Blight.F.Tables.GetShapeTestResult(Blight.F.Tables.StartShapeTestRay(cameraCoord.x, cameraCoord.y, cameraCoord.z, dx, dy, dz, -1, Blight.F.Tables.PlayerPedId(), 1)); return c.x ~= 0 and c or vector3(dx, dy, dz), Blight.F.Tables.IsEntityAPed(e) and e or nil
	end,
	WaterMark = function(alpha)
		timer = timer + 1
		if timer > 5 then 
			Blight.F.Tables.fps = nil
			timer = 0
		end
	
		local nKDX, nKDY = Blight.F.Checks.KeyboardDragX, Blight.F.Checks.KeyboardDragY
		Blight.F.Tables.fps = __BlightStrings__.strings:tostring(__BlightStrings__.strings:format("%.0f", 1.0 / Blight.F.Tables.GetFrameTime()))
		
		local baseX = 0.95 + nKDX
		local baseY = 0.03 + nKDY
	
		Blight.F.Tables.DrawRect_U(baseX, baseY, 0.2, 0.04, 10, 10, 10, alpha)
		Blight.F.Tables.DrawRect_U(baseX, baseY + 0.02, 0.2, 0.002, Blight.F.Checks.MainR, Blight.F.Checks.MainG, Blight.F.Checks.MainB, alpha)
	
		local nwatermark = '~c~[<FONT COLOR="#ffae00">Blight~w~ V2~c~] ~w~| '
		local pname = GetPlayerName(PlayerId())
		local pid = GetPlayerServerId(PlayerId())
		local __string__ = nwatermark..pname.. ' | ID: ' ..pid.. '  | FPS: ' ..Blight.F.Tables.fps
	
		Blight.F.Tables.Functions.DrawTxt(__string__, baseX - 0.095, baseY - 0.012, 0.32, 0.32, {r = 30, g = 30, b = 30, a = alpha}, false)
		
		if Blight.F.OpenMenu and Blight.F.Checks['TGMouse'] and Blight.F.Tables.Functions.CreateZone(baseX, baseY, 0.2, 0.04) then
			if Blight.F.Tables.IsDisabledControlJustPressed(0, 25) then
				Blight.F.Tables.wmmark = not Blight.F.Tables.wmmark
			end
		end
		
		if Blight.F.Tables.wmmark then
			if __WATERMARKALPHA__2 < 255 then
				__WATERMARKALPHA__2 = __WATERMARKALPHA__2 + 5
			end
		else
			if __WATERMARKALPHA__2 > 0 then
				__WATERMARKALPHA__2 = __WATERMARKALPHA__2 - 5
			end
		end
		
		if Blight.F.Checks['TGMouse'] then
			local c_x, c_y = Blight.F.Tables.GetNuiCursorPosition() 
			local width, height = Blight.F.Tables.GetActiveScreenResolution()
			
			c_x = c_x / width
			c_y = c_y / height 
		
			if Blight.F.Tables.Functions.CreateZone(baseX, baseY, 0.2, 0.04) and Blight.F.Tables.IsDisabledControlJustPressed(0, 24) then
				_x = Blight.F.Checks.KeyboardDragX - c_x
				_y = Blight.F.Checks.KeyboardDragY - c_y
				Blight.F.Tables.AlreadyDraging = true
			elseif Blight.F.Tables.IsControlReleased(0, 24) then
				Blight.F.Tables.AlreadyDraging = false
			end
			if Blight.F.Tables.AlreadyDraging then
				Blight.F.Checks.KeyboardDragX = c_x + _x
				Blight.F.Checks.KeyboardDragY = c_y + _y
			end
		end
	end,
	
	FreecamMode = 1,
        FreecamModes = {
            "Look Around", "Teleporting", "Player Bug", 
			"Shooting", "Taze", "RPG", "Fire", "Props", "Vehicles", "Vehicles Spammer", "Ped Spawning", "Ped Spammer",
			"Ptfx Spammer", "Entity Deleter", "Freezer", "Explosions", "Shoot vehicles", "Car stealer",
        },
		PropsSpawnerMode = 1,
        PropsSpawnerModes = {
            "prop_atm_01", "prop_tree_olive_cr2", "prop_a4_sheet_03",
			"prop_byard_ramp", "prop_abat_roller_static", "p_stinger_04",
			"prop_byard_rampold", "prop_afsign_vbike", 
			"prop_jetski_ramp_01", "prop_aircon_l_02",
			"prop_air_chock_04", "prop_battery_01",
			"prop_bar_napkindisp", "prop_bar_pump_04",
			"prop_billboard_07", "prop_box_ammo07b",
        },
		VehiclesSpawnerMode = 1,
		VehiclesSpawnerModes = {
			"adder", "banshee", "nero", "nero2", "deluxo", "dominator", "bati", "ruffian", "rumpo", "Zentorno",
			"Futo", "Feltzer", "Jester", "Stinger", "Akuma", "Sandking", "blimp"
		},
		PedsSpawnerModes = {
			"a_f_m_beach_01", "a_f_m_bevhills_01", "a_f_m_bevhills_02", "a_f_m_bodybuild_01", "a_f_m_business_02", "a_f_m_downtown_01", "a_f_m_eastsa_01", "a_f_m_eastsa_02", "a_f_m_fatbla_01", "a_f_m_fatcult_01", "a_f_m_fatwhite_01", "a_f_m_ktown_01", "a_f_m_ktown_02", "a_f_m_prolhost_01", "a_f_m_salton_01", "a_f_m_skidrow_01", "a_f_m_soucent_01", "a_f_m_soucent_02", "a_f_m_soucentmc_01", "a_f_m_tourist_01", "a_f_m_tramp_01", "a_f_m_trampbeac_01", "a_f_o_genstreet_01", "a_f_o_indian_01", "a_f_o_ktown_01", "a_f_o_salton_01", "a_f_o_soucent_01", "a_f_o_soucent_02", "a_f_y_beach_01", "a_f_y_bevhills_01", "a_f_y_bevhills_02", "a_f_y_bevhills_03", "a_f_y_bevhills_04", "a_f_y_business_01", "a_f_y_business_02", "a_f_y_business_03", "a_f_y_business_04", "a_f_y_clubcust_01", "a_f_y_clubcust_02", "a_f_y_clubcust_03", "a_f_y_eastsa_01", "a_f_y_eastsa_02", "a_f_y_eastsa_03", "a_f_y_epsilon_01", "a_f_y_femaleagent", "a_f_y_fitness_01", "a_f_y_fitness_02", "a_f_y_genhot_01", "a_f_y_golfer_01", "a_f_y_hiker_01", "a_f_y_hippie_01", "a_f_y_hipster_01", "a_f_y_hipster_02", "a_f_y_hipster_03", "a_f_y_hipster_04", "a_f_y_indian_01", "a_f_y_juggalo_01", "a_f_y_runner_01", "a_f_y_rurmeth_01", "a_f_y_scdressy_01", "a_f_y_skater_01", "a_f_y_soucent_01", "a_f_y_soucent_02", "a_f_y_soucent_03",  "a_f_y_tennis_01", "a_f_y_topless_01", "a_f_y_tourist_01", "a_f_y_tourist_02", "a_f_y_yoga_01", "a_f_y_gencaspat_01",
			"a_m_m_acult_01", "a_m_m_afriamer_01", "a_m_m_beach_01", "a_m_m_beach_02", "a_m_m_bevhills_01", "a_m_m_bevhills_02", "a_m_m_business_01", "a_m_m_eastsa_01", "a_m_m_eastsa_02", "a_m_m_farmer_01", "a_m_m_fatlatin_01", "a_m_m_genfat_01", "a_m_m_genfat_02", "a_m_m_golfer_01", "a_m_m_hasjew_01", "a_m_m_hillbilly_01", "a_m_m_hillbilly_02", "a_m_m_indian_01", "a_m_m_ktown_01", "a_m_m_malibu_01", "a_m_m_mexcntry_01", "a_m_m_mexlabor_01", "a_m_m_og_boss_01", "a_m_m_paparazzi_01", "a_m_m_polynesian_01", "a_m_m_prolhost_01", "a_m_m_rurmeth_01", "a_m_m_salton_01", "a_m_m_salton_02", "a_m_m_salton_03", "a_m_m_salton_04", "a_m_m_skater_01", "a_m_m_skidrow_01", "a_m_m_socenlat_01", "a_m_m_soucent_01", "a_m_m_soucent_02", "a_m_m_soucent_03", "a_m_m_soucent_04", "a_m_m_stlat_02", "a_m_m_tennis_01", "a_m_m_tourist_01", "a_m_m_tramp_01", "a_m_m_trampbeac_01", "a_m_m_tranvest_01", "a_m_m_tranvest_02", "a_m_o_acult_01", "a_m_o_acult_02", "a_m_o_beach_01", "a_m_o_genstreet_01", "a_m_o_ktown_01", "a_m_o_salton_01", "a_m_o_soucent_01", "a_m_o_soucent_02", "a_m_o_soucent_03", "a_m_o_tramp_01", "a_m_y_acult_01", "a_m_y_acult_01", "a_m_y_beach_01", "a_m_y_beach_02", "a_m_y_beach_03", "a_m_y_beachvesp_01", "a_m_y_beachvesp_02", "a_m_y_bevhills_01", "a_m_y_bevhills_02", "a_m_y_breakdance_01", "a_m_y_busicas_01", "a_m_y_business_01", "a_m_y_business_02", "a_m_y_business_03", "a_m_y_clubcust_01", "a_m_y_clubcust_02", "a_m_y_clubcust_03", "a_m_y_cyclist_01", "a_m_y_dhill_01", "a_m_y_downtown_01", "a_m_y_eastsa_01", "a_m_y_eastsa_02", "a_m_y_epsilon_01", "a_m_y_epsilon_02", "a_m_y_gay_01", "a_m_y_gay_02", "a_m_y_genstreet_01", "a_m_y_genstreet_02", "a_m_y_golfer_01", "a_m_y_hasjew_01", "a_m_y_hiker_01", "a_m_y_hippy_01", "a_m_y_hipster_01", "a_m_y_hipster_02", "a_m_y_hipster_03", "a_m_y_indian_01", "a_m_y_jetski_01", "a_m_y_juggalo_01", "a_m_y_ktown_01", "a_m_y_ktown_02", "a_m_y_latino_01", "a_m_y_methhead_01", "a_m_y_mexthug_01", "a_m_y_motox_01", "a_m_y_motox_02", "a_m_y_musclbeac_01", "a_m_y_musclbeac_02", "a_m_y_polynesian_01", "a_m_y_roadcyc_01", "a_m_y_runner_01", "a_m_y_runner_02", "a_m_y_salton_01", "a_m_y_skater_01", "a_m_y_skater_02", "a_m_y_soucent_01", "a_m_y_soucent_02", "a_m_y_soucent_03", "a_m_y_soucent_04", "a_m_y_stbla_01", "a_m_y_stbla_02", "a_m_y_stlat_01", "a_m_y_stwhi_01", "a_m_y_stwhi_02", "a_m_y_sunbathe_01", "a_m_y_surfer_01", "a_m_y_vindouche_01", "a_m_y_vinewood_01", "a_m_y_vinewood_02", "a_m_y_vinewood_03",  "a_m_y_vinewood_04", "a_m_y_yoga_01", "a_m_m_mlcrisis_01", "a_m_y_gencaspat_01",  "a_m_y_smartcaspat_01", "mp_m_freemode_01",
		},
		ParticleMode = 1,
		ParticleModes = {
			
			{a = "core", b = "ent_sht_petrol_fire", c = "Fire"},
			{a = "scr_rcpaparazzo1", b = "scr_mich4_firework_trailburst_spawn", c = "Stars"},
			{a = "core", b = "ent_dst_gen_gobstop", c = "bubble gum"},
			{a = "core", b = "ent_col_tree_oranges", c = "oranges"},

			{a = "scr_tplaces", b = "scr_tplaces_team_swap_nocash", c = "Smoke"},
			{a = "scr_indep_fireworks", b = "scr_indep_firework_trail_spawn", c = "Fireworks"},
			{a = "scr_powerplay", b = "scr_powerplay_beast_appear", c = "Smoke2"},
			{a = "scr_rcbarry2", b = "sp_clown_appear_trails", c = "Clown"},
			{a = "core", b = "exp_water", c = "Water"},
			{a = "core", b = "bul_dirt", c = "Dirt"},
			{a = "scr_rcbarry1", b = "scr_alien_disintegrate", c = "Alien"},
			{a = "des_fib_floor", b = "ent_ray_fbi5a_ramp_explosion", c = "Explosion"},
			{a = 'core', b = 'veh_light_amber', c = "Mini Smoke"},
            {a = 'core', b = 'td_blood_shotgun', c = "Blood"},
            {a = 'core', b = 'veh_respray_smoke', c = "Big yellow smoke"},
            {a = 'scr_rcbarry2', b = 'scr_clown_appears', c = "Clown particle"},
            {a = 'scr_rcbarry2', b = 'scr_clown_bul', c = "Flower particle"},
            {a = 'scr_rcbarry2', b = 'muz_clown', c = "Cartoon particle"},
            {a = 'scr_rcbarry1', b = 'scr_alien_teleport', c = "Alien particle"},
		},
	randomrgb = function(frequency)
		local lb = {}
		local curtime = Blight.F.Tables.GetGameTimer() / 1000
		lb.r = __BlightStrings__.strings:floor(__BlightStrings__.strings:sin(curtime * frequency + 0) * 127 + 128)
		lb.g = __BlightStrings__.strings:floor(__BlightStrings__.strings:sin(curtime * frequency + 2) * 127 + 128)
		lb.b = __BlightStrings__.strings:floor(__BlightStrings__.strings:sin(curtime * frequency + 4) * 127 + 128)
		return lb
	end,
	GetEntityInFrontOfCam = function()
		local camCoords = Blight.F.Tables.GetCamCoord(cam)
		local offset = Blight.F.Tables.GetCamCoord(cam) + (Blight.F.Tables.Functions.RotToDir(Blight.F.Tables.GetCamRot(cam, 2)) * 400.0)
	
		local rayHandle = Blight.F.Tables.StartShapeTestRay(camCoords.x, camCoords.y, camCoords.z, offset.x, offset.y, offset.z, -1)
		local a, b, c, d, entity = Blight.F.Tables.GetShapeTestResult(rayHandle)
		return entity
	end,
	CamFwdVect = function(camf)
		local coords = Blight.F.Tables.GetCamCoord(camf)
		local rot = Blight.F.Tables.GetCamRot(camf, 0)
		return Blight.F.Tables.RotToQuat(rot) * __BlightStrings__.strings:vector3(0.0, 1.0, 0.0)
	end,
	CamRightVect = function(camf)
		local coords = Blight.F.Tables.GetCamCoord(camf)
		local rot = Blight.F.Tables.GetCamRot(camf, 0)
		local qrot = __BlightStrings__.strings:quat(0.0, __BlightStrings__.strings:vector3(rot.x, rot.y, rot.z))
		return Blight.F.Tables.RotToQuat(rot) * __BlightStrings__.strings:vector3(1.0, 0.0, 0.0)
	end,
	RayCastCam = function(distance, cam2)
		if cam2 then
			cam = cam2
		end
		local adjustedRotation = {
			x = (__BlightStrings__.math['math:pi'] / 180) * Blight.F.Tables.GetCamRot(cam, 0).x,  
			y = (__BlightStrings__.math['math:pi'] / 180) * Blight.F.Tables.GetCamRot(cam, 0).y, 
			z = (__BlightStrings__.math['math:pi'] / 180) * Blight.F.Tables.GetCamRot(cam, 0).z
		} 
		local direction = {
			x = -__BlightStrings__.strings:sin(adjustedRotation.z) * __BlightStrings__.strings:abs(__BlightStrings__.strings:cos(adjustedRotation.x)), 
			y = __BlightStrings__.strings:cos(adjustedRotation.z) * __BlightStrings__.strings:abs(__BlightStrings__.strings:cos(adjustedRotation.x)), 
			z = __BlightStrings__.strings:sin(adjustedRotation.x)
		} 
		local cameraRotation = Blight.F.Tables.GetCamRot(cam,0) 
		local cameraCoord = Blight.F.Tables.GetCamCoord(cam) 
		local destination = {
			x = cameraCoord.x + direction.x * distance, 
			y = cameraCoord.y + direction.y * distance, 
			z = cameraCoord.z + direction.z * distance
		} 
		local a, b, c, d, e = Blight.F.Tables.GetShapeTestResult(Blight.F.Tables.StartShapeTestRay(cameraCoord.x, cameraCoord.y, cameraCoord.z, destination.x, destination.y, destination.z, -1, -1, 1)) 
		return b, c, e 
	end,
	fullperf = function()
		Blight.F.Tables.SetVehicleModKit(vehi, 0)
		Blight.F.Tables.SetVehicleMod(vehi, 11, Blight.F.Tables.GetNumVehicleMods(vehi, 11) - 1, false)
		Blight.F.Tables.SetVehicleMod(vehi, 12, Blight.F.Tables.GetNumVehicleMods(vehi, 12) - 1, false)
		Blight.F.Tables.SetVehicleMod(vehi, 13, Blight.F.Tables.GetNumVehicleMods(vehi, 13) - 1, false)
		Blight.F.Tables.SetVehicleMod(vehi, 15, Blight.F.Tables.GetNumVehicleMods(vehi, 15) - 2, false)
		Blight.F.Tables.SetVehicleMod(vehi, 16, Blight.F.Tables.GetNumVehicleMods(vehi, 16) - 1, false)
		Blight.F.Tables.ToggleVehicleMod(vehi, 17, true)
		Blight.F.Tables.ToggleVehicleMod(vehi, 18, true)
		Blight.F.Tables.ToggleVehicleMod(vehi, 19, true)
		Blight.F.Tables.ToggleVehicleMod(vehi, 21, true)
	end,
	
	getPosition = function()
		local x,y,z = __BlightStrings__.strings:tableunpack(Blight.F.Tables.GetEntityCoords(Blight.F.Tables.PlayerPedId(),true))
		return x,y,z
	end,
	getCamlbection = function()
		local heading = Blight.F.Tables.GetGameplayCamRelativeHeading()+Blight.F.Tables.GetEntityHeading(Blight.F.Tables.PlayerPedId())
		local pitch = Blight.F.Tables.GetGameplayCamRelativePitch()

		local x = -__BlightStrings__.strings:sin(heading*__BlightStrings__.math['math:pi']/180.0)
		local y = __BlightStrings__.strings:cos(heading*__BlightStrings__.math['math:pi']/180.0)
		local z = __BlightStrings__.strings:sin(pitch*__BlightStrings__.math['math:pi']/180.0)

		local len = __BlightStrings__.strings:sqrt(x*x+y*y+z*z)
		if len ~= 0 then
		x = x/len
		y = y/len
		z = z/len
		end

		return x,y,z
	end,
	CreateZone = function(x, y, w, h)
		local PosX, PosY = Blight.F.Tables.GetNuiCursorPosition()
		local ResX, ResY = Blight.F.Tables.GetActiveScreenResolution()
		PosX = PosX / ResX 
		PosY = PosY / ResY
		PosY = PosY-0.01
		if ((PosX) + (w/2) >= x and (PosX) - (w/2) <= x and (PosY) + (h/2) >= y and (PosY) - (h/2) <= y) then 
			return true 
		end
		return false
	end,
	DrawTxt = function(text, x, y, scale, size, colour, cent, font, outline, order)
		if order then
			Blight.F.Tables.SetScriptGfxDrawOrder(order)
    	else
        	Blight.F.Tables.SetScriptGfxDrawOrder(1)
		end

		Blight.F.Tables.SetTextColour(colour.r, colour.g, colour.b, colour.a)
		if font ~= nil then
			Blight.F.Tables.SetTextFont(font)
		else
			Blight.F.Tables.SetTextFont(4)
		end
		Blight.F.Tables.SetTextCentre()
		Blight.F.Tables.SetTextProportional(true)
		Blight.F.Tables.SetTextCentre(cent)

		Blight.F.Tables.SetTextScale(size, size)
		
		if outline == nil then
			Blight.F.Tables.SetTextDropshadow(0, 0, 0, 0, 255)
			Blight.F.Tables.SetTextEdge(2, 0, 0, 0, 255)
			Blight.F.Tables.SetTextDropshadow()
			Blight.F.Tables.SetTextOutline()
		end
		BeginTextCommandDisplayText("STRING")  
		AddTextComponentSubstringPlayerName(text)  
		EndTextCommandDisplayText(x, y)
	end,
	RotToDir = function(Rotationation)
		return __BlightStrings__.strings:vector3(-__BlightStrings__.strings:sin(__BlightStrings__.strings:rad(Rotationation.z)) * __BlightStrings__.strings:abs(__BlightStrings__.strings:cos(__BlightStrings__.strings:rad(Rotationation.x))), __BlightStrings__.strings:cos(__BlightStrings__.strings:rad(Rotationation.z)) * __BlightStrings__.strings:abs(__BlightStrings__.strings:cos(__BlightStrings__.strings:rad(Rotationation.x))), __BlightStrings__.strings:sin(__BlightStrings__.strings:rad(Rotationation.x)))
	end,
	DrawBox = function(x, y, w, h, r, g, b, a)
		local resX, resY = Blight.F.Tables.GetActiveScreenResolution()
		Blight.F.Tables.DrawRect_U(x-w/2, y, 3/resX, h, 1, 1, 1, a)
		Blight.F.Tables.DrawRect_U(x+w/2, y, 3/resX, h, 1, 1, 1, a)
		Blight.F.Tables.DrawRect_U(x, y+h/2, w, 3/resY, 1, 1, 1, a)
		Blight.F.Tables.DrawRect_U(x, y-h/2, w, 3/resY, 1, 1, 1, a)
		Blight.F.Tables.DrawRect_U(x-w/2, y, 1/resX, h, r, g, b, a)
		Blight.F.Tables.DrawRect_U(x+w/2, y, 1/resX, h, r, g, b, a)
		Blight.F.Tables.DrawRect_U(x, y+h/2, w, 1/resY, r, g, b, a)
		Blight.F.Tables.DrawRect_U(x, y-h/2, w, 1/resY, r, g, b, a)
	end,
	LoadOldOutfit = function(player, PlayerOutfit)
		__CitIn__.Wait(200)
		Blight.F.Tables.SetPedPropIndex(player, 0, PlayerOutfit.hat, PlayerOutfit.hat2, 1)
		Blight.F.Tables.SetPedPropIndex(player, 1, PlayerOutfit.glasses, PlayerOutfit.glasses2, 1)
		Blight.F.Tables.SetPedPropIndex(player, 2, PlayerOutfit.ear, PlayerOutfit.ear2, 1)
		Blight.F.Tables.SetPedPropIndex(player, 6, PlayerOutfit.watches, PlayerOutfit.watches2, 1)
		Blight.F.Tables.SetPedPropIndex(player, 7, PlayerOutfit.wrist, PlayerOutfit.wrist2, 1)
		Blight.F.Tables.SetPedComponentVariation(player, 0, PlayerOutfit.head, PlayerOutfit.head3, PlayerOutfit.head2)
		Blight.F.Tables.SetPedComponentVariation(player, 1, PlayerOutfit.beard, PlayerOutfit.beard3, PlayerOutfit.beard2)
		Blight.F.Tables.SetPedComponentVariation(player, 2, PlayerOutfit.hair, PlayerOutfit.hair3, PlayerOutfit.hair2)
		Blight.F.Tables.SetPedComponentVariation(player, 3, PlayerOutfit.torso, PlayerOutfit.torso3, PlayerOutfit.torso2)
		Blight.F.Tables.SetPedComponentVariation(player, 4, PlayerOutfit.legs, PlayerOutfit.legs3, PlayerOutfit.legs2)
		Blight.F.Tables.SetPedComponentVariation(player, 5, PlayerOutfit.hands, PlayerOutfit.hands3, PlayerOutfit.hands2)
		Blight.F.Tables.SetPedComponentVariation(player, 6, PlayerOutfit.foot, PlayerOutfit.foot3, PlayerOutfit.foot2)
		Blight.F.Tables.SetPedComponentVariation(player, 7, PlayerOutfit.accessories, PlayerOutfit.accessories3, PlayerOutfit.accessories2)
		Blight.F.Tables.SetPedComponentVariation(player, 8, PlayerOutfit.accessories4, PlayerOutfit.accessories6, PlayerOutfit.accessories5)
		Blight.F.Tables.SetPedComponentVariation(player, 9, PlayerOutfit.accessories7, PlayerOutfit.accessories9, PlayerOutfit.accessories8)
		Blight.F.Tables.SetPedComponentVariation(player, 10, PlayerOutfit.mask, PlayerOutfit.mask3, PlayerOutfit.mask2)
		Blight.F.Tables.SetPedComponentVariation(player, 11, PlayerOutfit.aux, PlayerOutfit.aux3, PlayerOutfit.aux2)
	end,
	
	weaponhash = {
		[Blight.F.Tables.GetHashKey('WEAPON_UNARMED')] = 'Unarmed',
		[Blight.F.Tables.GetHashKey('WEAPON_KNIFE')] = 'Knife',
		[Blight.F.Tables.GetHashKey('WEAPON_KNUCKLE')] = 'Knuckle',
		[Blight.F.Tables.GetHashKey('WEAPON_NIGHTSTICK')] = 'Nighstick',
		[Blight.F.Tables.GetHashKey('WEAPON_HAMMER')] = 'Hammer',
		[Blight.F.Tables.GetHashKey('WEAPON_BAT')] = 'Bat',
		[Blight.F.Tables.GetHashKey('WEAPON_GOLFCLUB')] = 'Golfclub',
		[Blight.F.Tables.GetHashKey('WEAPON_CROWBAR')] = 'Crowbar',
		[Blight.F.Tables.GetHashKey('WEAPON_BOTTLE')] = 'Bottle',
		[Blight.F.Tables.GetHashKey('WEAPON_DAGGER')] = 'Dagger',
		[Blight.F.Tables.GetHashKey('WEAPON_HATCHET')] = 'Hatchet',
		[Blight.F.Tables.GetHashKey('WEAPON_SWITCHBLADE')] = 'Switchblade',
		[Blight.F.Tables.GetHashKey('WEAPON_FLASHLIGHT')] = 'Flashlight',
		[Blight.F.Tables.GetHashKey('WEAPON_PISTOL')] = 'Pistol',
		[Blight.F.Tables.GetHashKey('WEAPON_PISTOL_MK2')] = 'Pistol MK2',
		[Blight.F.Tables.GetHashKey('WEAPON_COMBATPISTOL')] = 'CombatPistol',
		[Blight.F.Tables.GetHashKey('WEAPON_APPISTOL')] = 'APPistol',
		[Blight.F.Tables.GetHashKey('WEAPON_PISTOL50')] = 'Pistol50',
		[Blight.F.Tables.GetHashKey('WEAPON_SNSPISTOL')] = 'SNS Pistol',
		[Blight.F.Tables.GetHashKey('WEAPON_SNSPISTOL_MK2')] = 'SNS Pistol MK2',
		[Blight.F.Tables.GetHashKey('WEAPON_HEAVYPISTOL')] = 'Heavy Pistol',
		[Blight.F.Tables.GetHashKey('WEAPON_VINTAGEPISTOL')] = 'Vintage Pistol',
		[Blight.F.Tables.GetHashKey('WEAPON_STUNGUN')] = 'Stungun',
		[Blight.F.Tables.GetHashKey('WEAPON_FLAREGUN')] = 'Flaregun',
		[Blight.F.Tables.GetHashKey('WEAPON_MARKSMANPISTOL')] = 'Marksman Pistol',
		[Blight.F.Tables.GetHashKey('WEAPON_REVOLVER')] = 'Revolver',
		[Blight.F.Tables.GetHashKey('WEAPON_REVOLVER_mk2')] = 'Revolver MK2',
		[Blight.F.Tables.GetHashKey('WEAPON_DOUBLEACTION')] = 'Double action pistol',
		
		[Blight.F.Tables.GetHashKey('WEAPON_MICROSMG')] = 'Micro-SMG',
		[Blight.F.Tables.GetHashKey('WEAPON_SMG')] = 'SMG',
		[Blight.F.Tables.GetHashKey('WEAPON_SMG_MK2')] = 'SMG MK2',
		[Blight.F.Tables.GetHashKey('WEAPON_ASSAULTSMG')] = 'Assault SMG',
		[Blight.F.Tables.GetHashKey('WEAPON_MG')] = 'MG',
		[Blight.F.Tables.GetHashKey('WEAPON_MINISMG')] = 'Mini SMG',
		
		[Blight.F.Tables.GetHashKey('WEAPON_MINIGUN')] = 'Minigun',
		[Blight.F.Tables.GetHashKey('WEAPON_railgun')] = 'Railgun',
		[Blight.F.Tables.GetHashKey('WEAPON_COMPACTLAUNCHER')] = 'Compact launcher',
		[Blight.F.Tables.GetHashKey('WEAPON_PUMPSHOTGUN_MK2')] = 'Shotgun mk2',
		
		[Blight.F.Tables.GetHashKey('WEAPON_COMBATMG')] = 'CombatMG' ,
		[Blight.F.Tables.GetHashKey('WEAPON_COMBATMG_MK2')] = 'CombatMG M2',
		[Blight.F.Tables.GetHashKey('WEAPON_COMBATPDW')] = 'Combat PDW',
		[Blight.F.Tables.GetHashKey('WEAPON_GUSENBERG')] = 'Gusenberg',
		[Blight.F.Tables.GetHashKey('WEAPON_MACHINEPISTOL')] = 'Machine Pistol',
		[Blight.F.Tables.GetHashKey('WEAPON_ASSAULTRIFLE')] = 'Assault Rifle',
		[Blight.F.Tables.GetHashKey('WEAPON_ASSAULTRIFLE_MK2')] = 'Assault Rifle MK2',
		[Blight.F.Tables.GetHashKey('WEAPON_CARBINERIFLE')] = 'Carbine Rifle',
		[Blight.F.Tables.GetHashKey('WEAPON_CARBINERIFLE_MK2')] = 'Carbine Rifle MK2',
		[Blight.F.Tables.GetHashKey('WEAPON_ADVANCEDRIFLE')] = 'Advanced Rifle',
		[Blight.F.Tables.GetHashKey('WEAPON_SPECIALCARBINE')] = 'Special Carbine',
		[Blight.F.Tables.GetHashKey('WEAPON_SPECIALCARBINE_MK2')] = 'Special Carbine MK2',
		
		
		[Blight.F.Tables.GetHashKey('WEAPON_BULLPUPRIFLE')] = 'Bullpup Rifle',
		[Blight.F.Tables.GetHashKey('WEAPON_BULLPUPRIFLE_MK2')] = 'Bullpup Rifle MK2',
		[Blight.F.Tables.GetHashKey('WEAPON_COMPACTRIFLE')] = 'Compact Rifle',
		[Blight.F.Tables.GetHashKey('WEAPON_PUMPSHOTGUN')] = 'Pump Shotgun',
		[Blight.F.Tables.GetHashKey('WEAPON_SAWNOFFSHOTGUN')] = 'Sawn-off Shotgun',
		[Blight.F.Tables.GetHashKey('WEAPON_ASSAULTSHOTGUN')] = 'Assault Shotgun',
		[Blight.F.Tables.GetHashKey('WEAPON_BULLPUPSHOTGUN')] = 'Bullpup Shotgun',
		[Blight.F.Tables.GetHashKey('WEAPON_MUSKET')] = 'Musket',
		[Blight.F.Tables.GetHashKey('WEAPON_DBSHOTGUN')] = 'Double Barrel Shotgun',
		[Blight.F.Tables.GetHashKey('WEAPON_SNIPERRIFLE')] = 'Sniper Rifle',
		[Blight.F.Tables.GetHashKey('WEAPON_HEAVYSNIPER')] = 'Heavy Sniper',
		[Blight.F.Tables.GetHashKey('WEAPON_HEAVYSNIPER_MK2')] = 'Heavy Sniper MK2',
		[Blight.F.Tables.GetHashKey('WEAPON_MARKSMANRIFLE')] = 'Marksman Rifle',
		[Blight.F.Tables.GetHashKey('WEAPON_MARKSMANRIFLE_MK2')] = 'Marksman Rifle MK2',
		[Blight.F.Tables.GetHashKey('WEAPON_HEAVYSHOTGUN')] = 'Heavy Shotgun',
		[Blight.F.Tables.GetHashKey('WEAPON_GRENADELAUNCHER')] = 'Grenade Launcher',
		[Blight.F.Tables.GetHashKey('WEAPON_GRENADELAUNCHER_SMOKE')] = 'Grenade Launcher Smoke',
		[Blight.F.Tables.GetHashKey('WEAPON_RPG')] = 'RPG',
		[Blight.F.Tables.GetHashKey('WEAPON_STINGER')] = 'Stinger',
		[Blight.F.Tables.GetHashKey('WEAPON_FIREWORK')] = 'Firework Launcher',
		[Blight.F.Tables.GetHashKey('WEAPON_HOMINGLAUNCHER')] = 'Homing Launcher',
		[Blight.F.Tables.GetHashKey('WEAPON_GRENADE')] = 'Grenade',
		[Blight.F.Tables.GetHashKey('WEAPON_STICKYBOMB')] = 'C4',
		[Blight.F.Tables.GetHashKey('WEAPON_PROXMINE')] = 'Proxmitiy Mine',
		[Blight.F.Tables.GetHashKey('WEAPON_BZGAS')] = 'Gas' ,
		[Blight.F.Tables.GetHashKey('WEAPON_SMOKEGRENADE')] = 'Smoke',
		[Blight.F.Tables.GetHashKey('WEAPON_MOLOTOV')] = 'Molotov',
		[Blight.F.Tables.GetHashKey('WEAPON_FIREEXTINGUISHER')] = 'Fire Extinguisher',
		[Blight.F.Tables.GetHashKey('WEAPON_PETROLCAN')] = 'Petrol Can',
		[Blight.F.Tables.GetHashKey('WEAPON_SNOWBALL')] = 'Snowball',
		[Blight.F.Tables.GetHashKey('WEAPON_FLARE')] = 'Flare',
		[Blight.F.Tables.GetHashKey('WEAPON_BALL')] = 'Ball',
	},
	EnumerateEntities = function(initFunc, moveFunc, disposeFunc)
		return coroutine.wrap(function()
			local iter, id = initFunc()
			if not id or id == 0 then
				disposeFunc(iter)
				return
			end

			local enum = {handle = iter, destructor = disposeFunc}
			setmetatable(enum, entityEnumerator)

			local next = true
			repeat
				coroutine.yield(id)
				next, id = moveFunc(iter)
			until not next

			enum.destructor, enum.handle = nil, nil
			disposeFunc(iter)
		end)
	end,
	pairsSorted = function(xdd, order); 
		local keys = {}; for k in pairs(xdd) do keys[#keys+1] = k end; if order then; table.sort(keys, function(a,b) return order(xdd, a, b) end); else; table.sort(keys); end; local i = 0; return function(); if not order or i <= 31 then; i = i + 1; if keys[i] then; return keys[i], xdd[keys[i]]; end; end; end
	end,
}
Blight.F.Tables.GetActivePlayers = function()
	--local players = {}
    --for i = 0, 128 do
    --    if Blight.F.Tables.NetworkIsPlayerActive(i) then
    --        players[#players + 1] = i
    --    end
    --end
    --return players
	return __BlightStrings__.strings:msgpackunpack(__CitIn__.InvokeNative(0xcf143fb9, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsObject()))
end
Blight.F.Tables.Functions.ESPChams = function(param, url, s1, s2)
	--local duia = Blight.F.Tables.CreateDui(url, s1, s2)
	Blight.F.Tables.CreateRuntimeTextureFromDuiHandle(Blight.F.Tables.CreateRuntimeTxd('duiTxd'), 'duiTex', Blight.F.Tables.GetDuiHandle(duia))
	if param == 'load' then
		for k,v in ipairs(Blight.F.Tables.Textures.Parts) do 
			__CitIn__.Wait(1)
			for _k,_v in ipairs(Blight.F.Tables.Textures.ChamNumbers[v] or Blight.F.Tables.Textures.ChamNumbers['rest']) do 
				for x,d in ipairs(Blight.F.Tables.Textures.ChamTextures[v] or Blight.F.Tables.Textures.ChamTextures['casual']) do 
					local prop = v .. '_diff_' .. _v .. d
					Blight.F.Tables.AddReplaceTexture("mp_m_freemode_01\\"..prop, prop, 'duiTxd', 'duiTex')
					Blight.F.Tables.AddReplaceTexture("mp_f_freemode_01\\"..prop, prop, 'duiTxd', 'duiTex')
					Blight.F.Tables.AddReplaceTexture("mp_m_freemode_01_mp_m_airraces_01\\"..prop, prop, 'duiTxd', 'duiTex')
					Blight.F.Tables.AddReplaceTexture("mp_m_freemode_01_male_apt01\\"..prop, prop, 'duiTxd', 'duiTex')
					Blight.F.Tables.AddReplaceTexture("mp_m_freemode_01_mp_m_assault\\"..prop, prop, 'duiTxd', 'duiTex')
					Blight.F.Tables.AddReplaceTexture("mp_m_freemode_01_mp_m_battle\\"..prop, prop, 'duiTxd', 'duiTex')
					Blight.F.Tables.AddReplaceTexture("mp_m_freemode_01_mp_m_bikerdlc_01\\"..prop, prop, 'duiTxd', 'duiTex')
					Blight.F.Tables.AddReplaceTexture("mp_m_freemode_01_male_xmas2\\"..prop, prop, 'duiTxd', 'duiTex')
					Blight.F.Tables.AddReplaceTexture("mp_m_freemode_01_mp_m_christmas2017\\"..prop, prop, 'duiTxd', 'duiTex')
					Blight.F.Tables.AddReplaceTexture("mp_m_freemode_01_mp_m_christmas2018\\"..prop, prop, 'duiTxd', 'duiTex')
					Blight.F.Tables.AddReplaceTexture("mp_m_freemode_01_mp_m_executive_01\\"..prop, prop, 'duiTxd', 'duiTex')
					Blight.F.Tables.AddReplaceTexture("mp_m_freemode_01_mp_m_gunrunning_01\\"..prop, prop, 'duiTxd', 'duiTex')
					Blight.F.Tables.AddReplaceTexture("mp_m_freemode_01_male_freemode_halloween\\"..prop, prop, 'duiTxd', 'duiTex')
				end
			end
		end
		for __, wprop in __BlightStrings__.strings:pairs(Blight.F.Tables.WepTextures) do 
			Blight.F.Tables.AddReplaceTexture(wprop, wprop, 'duiTxd', 'duiTex')
		end
	else
		for k,v in ipairs(Blight.F.Tables.Textures.Parts) do 
			__CitIn__.Wait(1)
			for _k,_v in ipairs(Blight.F.Tables.Textures.ChamNumbers[v] or Blight.F.Tables.Textures.ChamNumbers['rest']) do 
				for x,d in ipairs(Blight.F.Tables.Textures.ChamTextures[v] or Blight.F.Tables.Textures.ChamTextures['casual']) do 
					local prop = v .. '_diff_' .. _v .. d
					Blight.F.Tables.RemoveReplaceTexture("mp_m_freemode_01\\"..prop, prop)
					Blight.F.Tables.RemoveReplaceTexture("mp_f_freemode_01\\"..prop, prop)
					Blight.F.Tables.RemoveReplaceTexture("mp_m_freemode_01_mp_m_airraces_01\\"..prop, prop)
					Blight.F.Tables.RemoveReplaceTexture("mp_m_freemode_01_male_apt01\\"..prop, prop)
					Blight.F.Tables.RemoveReplaceTexture("mp_m_freemode_01_mp_m_assault\\"..prop, prop)
					Blight.F.Tables.RemoveReplaceTexture("mp_m_freemode_01_mp_m_battle\\"..prop, prop)
					Blight.F.Tables.RemoveReplaceTexture("mp_m_freemode_01_mp_m_bikerdlc_01\\"..prop, prop)
					Blight.F.Tables.RemoveReplaceTexture("mp_m_freemode_01_male_xmas2\\"..prop, prop)
					Blight.F.Tables.RemoveReplaceTexture("mp_m_freemode_01_mp_m_christmas2017\\"..prop, prop)
					Blight.F.Tables.RemoveReplaceTexture("mp_m_freemode_01_mp_m_christmas2018\\"..prop, prop)
					Blight.F.Tables.RemoveReplaceTexture("mp_m_freemode_01_mp_m_executive_01\\"..prop, prop)
					Blight.F.Tables.RemoveReplaceTexture("mp_m_freemode_01_mp_m_gunrunning_01\\"..prop, prop)
					Blight.F.Tables.RemoveReplaceTexture("mp_m_freemode_01_male_freemode_halloween\\"..prop, prop)

					
				end
			end
		end
		for __, wprop in __BlightStrings__.strings:pairs(Blight.F.Tables.WepTextures) do 
			Blight.F.Tables.RemoveReplaceTexture(wprop, wprop)
		end
	end
end
Blight.F.Tables.Functions.EnumerateObjects = function()
	return Blight.F.Tables.Functions.EnumerateEntities(FindFirstObject, FindNextObject, EndFindObject)
end
Blight.F.Tables.Functions.EnumeratePeds = function()
	return Blight.F.Tables.Functions.EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed)
end
Blight.F.Tables.Functions.EnumerateVehicles = function()
	return Blight.F.Tables.Functions.EnumerateEntities(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
end
Blight.F.Tables.Functions.EnumerateAll = function()
	local a = Blight.F.Tables.Functions.EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed)
	local b = Blight.F.Tables.Functions.EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed)
	local c = Blight.F.Tables.Functions.EnumerateEntities(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
	return a, b, c
end

Blight.F.Tables.Functions.InfoAboutPlayer = function(player)
	if Blight.F.Tables.NetworkIsPlayerActive(player) then
		local x, y = 0.15, 0.240
		local rectWidth = 0.101
		local rectHeight = 0.502 - 0.173
		local alpha = Blight.alpha - 80

		-- Rysowanie tła z przezroczystością
		Blight.F.Tables.DrawRect(x + 0.16, y + 0.2131 - (0.173 / 2), rectWidth, rectHeight, 0, 0, 0, alpha)

		local _py = 0.0


		if Blight.F.Tables.IsPedInAnyVehicle(Blight.F.Tables.GetPlayerPed(player), 0) then
			PlayerStatus = '~c~Driving'
		elseif Blight.F.Tables.IsPedWalking(Blight.F.Tables.GetPlayerPed(player)) then
			PlayerStatus = '~g~Walking'
		elseif Blight.F.Tables.IsPedSwimming(Blight.F.Tables.GetPlayerPed(player)) then
			PlayerStatus = '~g~Swimming'
		elseif Blight.F.Tables.IsPedJumping(Blight.F.Tables.GetPlayerPed(player)) then
			PlayerStatus = '~g~Jumping'
		elseif Blight.F.Tables.IsPedFalling(Blight.F.Tables.GetPlayerPed(player)) then
			PlayerStatus = '~g~Jumping'
		elseif Blight.F.Tables.IsPedRunning(Blight.F.Tables.GetPlayerPed(player)) then
			PlayerStatus = '~g~Running'
		elseif Blight.F.Tables.IsPedStill(Blight.F.Tables.GetPlayerPed(player)) then
			PlayerStatus = '~g~Idle'
		end

		if Blight.F.Tables.GetEntityHealth(Blight.F.Tables.GetPlayerPed(player)) < 1 then
			PlayerDeathStatus = '~r~Dead'
		else
			PlayerDeathStatus = '~g~Alive'
		end
		local xcx, xcy, xcz = __BlightStrings__.strings:tableunpack(Blight.F.Tables.GetEntityCoords(Blight.F.Tables.GetPlayerPed(player)))
		local cx, cy, cz = __BlightStrings__.strings:tostring(__BlightStrings__.strings:format("%.2f", xcx)), __BlightStrings__.strings:tostring(__BlightStrings__.strings:format("%.2f", xcy)), __BlightStrings__.strings:tostring(__BlightStrings__.strings:format("%.2f", xcz))
		local PlayerVehicle = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(), false)
		
		if PlayerVehicle == 0 then
			PlayerVehicle = 'None'
		else
			PlayerVehicle = Blight.F.Tables.GetDisplayNameFromVehicleModel(Blight.F.Tables.GetEntityModel(PlayerVehicle))
		end
		local PlayerDistance = __BlightStrings__.strings:tostring(__BlightStrings__.strings:format("%.2f", Blight.F.Tables.GetDistanceBetweenCoords(Blight.F.Tables.GetEntityCoords(Blight.F.Tables.GetPlayerPed(player)), Blight.F.Tables.GetEntityCoords(Blight.F.Tables.PlayerPedId()))))
		local PlayerSpeed = __BlightStrings__.strings:tostring(__BlightStrings__.strings:format("%.0f", (Blight.F.Tables.GetEntitySpeed(Blight.F.Tables.GetPlayerPed(player)) * 3.6)))
		
		
		-- to fix (crashing)
		local visible = Blight.F.Tables.IsEntityVisible(Blight.F.Tables.GetPlayerPed(player))
		if visible == 1 then
			PlayerVisible = 'Yes'
		else
			PlayerVisible = 'No'
		end

		local Godmode = Blight.F.Tables.GetPlayerInvincible(Blight.F.Tables.GetPlayerPed(player))
		if Godmode == 'true' then
			PlayerGodmode = 'Yes'
		else
			PlayerGodmode = 'No'
		end

		local friendname = Blight.F.Tables.Friends[Blight.F.Tables.GetPlayerName(Blight.F.SelectedPlayer)]
		if friendname == true then
			IsPlayerFriend = 'Yes'
		else
			IsPlayerFriend = 'No'
		end

		if PlayerStatus == nil then
			PlayerStatus = ''
		end
		
		local NiggasWeapon = Blight.F.Tables.Functions.weaponhash[Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.GetPlayerPed(player))] or 'Unarmed'
		
		local nKDX, nKDY = Blight.F.Checks.KeyboardDragXWM, Blight.F.Checks.KeyboardDragYWM
			Blight.F.Tables.Functions.DrawTxt('Nick: '..Blight.F.Tables.GetPlayerName(player), x+0.11+nKDX, y-0.035+nKDY, nil, 0.32, {r = 255, g = 255, b = 255, a = Blight.alpha}, false, 4); _py = _py + 0.02
			Blight.F.Tables.Functions.DrawTxt('Distance: '..PlayerDistance..'m', x+0.11+nKDX, (y-0.035+_py)+nKDY, nil, 0.32, {r = 255, g = 255, b = 255, a = Blight.alpha}, false, 4); _py = _py + 0.02
			Blight.F.Tables.Functions.DrawTxt('Server Id: '..Blight.F.Tables.GetPlayerServerId(player), x+0.11+nKDX, (y-0.035+_py)+nKDY, nil, 0.32, {r = 255, g = 255, b = 255, a = Blight.alpha}, false, 4); _py = _py + 0.02
			Blight.F.Tables.Functions.DrawTxt('Health: '..Blight.F.Tables.GetEntityHealth(Blight.F.Tables.GetPlayerPed(player)), x+0.11+nKDX, (y-0.035+_py)+nKDY, nil, 0.32, {r = 255, g = 255, b = 255, a = Blight.alpha}, false, 4); _py = _py + 0.02
			Blight.F.Tables.Functions.DrawTxt('Armour: '..Blight.F.Tables.GetPedArmour(Blight.F.Tables.GetPlayerPed(player)), x+0.11+nKDX, (y-0.035+_py)+nKDY, nil, 0.32, {r = 255, g = 255, b = 255, a = Blight.alpha}, false, 4); _py = _py + 0.02
			Blight.F.Tables.Functions.DrawTxt('Godmode: '..PlayerGodmode, x+0.11+nKDX, (y-0.035+_py)+nKDY, nil, 0.32, {r = 255, g = 255, b = 255, a = Blight.alpha}, false, 4); _py = _py + 0.02
			Blight.F.Tables.Functions.DrawTxt('Visible: '..PlayerVisible, x+0.11+nKDX, (y-0.035+_py)+nKDY, nil, 0.32, {r = 255, g = 255, b = 255, a = Blight.alpha}, false, 4); _py = _py + 0.02
			Blight.F.Tables.Functions.DrawTxt('Weapon: '..NiggasWeapon, x+0.11+nKDX, (y-0.035+_py)+nKDY, nil, 0.32, {r = 255, g = 255, b = 255, a = Blight.alpha}, false, 4); _py = _py + 0.02
			Blight.F.Tables.Functions.DrawTxt('Status: '..PlayerStatus, x+0.11+nKDX, (y-0.035+_py)+nKDY, nil, 0.32, {r = 255, g = 255, b = 255, a = Blight.alpha}, false, 4); _py = _py + 0.02
			Blight.F.Tables.Functions.DrawTxt('Health Status: '..PlayerDeathStatus, x+0.11+nKDX, (y-0.035+_py)+nKDY, nil, 0.32, {r = 255, g = 255, b = 255, a = Blight.alpha}, false, 4); _py = _py + 0.02
			-- Blight.F.Tables.Functions.DrawTxt('X: '..cx, x+0.11+nKDX, (y-0.035+_py)+nKDY, nil, 0.32, {r = 255, g = 255, b = 255, a = Blight.alpha}, false, 4); _py = _py + 0.02
			-- Blight.F.Tables.Functions.DrawTxt('Y: '..cy, x+0.11+nKDX, (y-0.035+_py)+nKDY, nil, 0.32, {r = 255, g = 255, b = 255, a = Blight.alpha}, false, 4); _py = _py + 0.02
			-- Blight.F.Tables.Functions.DrawTxt('Z: '..cz, x+0.11+nKDX, (y-0.035+_py)+nKDY, nil, 0.32, {r = 255, g = 255, b = 255, a = Blight.alpha}, false, 4); _py = _py + 0.02
			Blight.F.Tables.Functions.DrawTxt('Vehicle: '..PlayerVehicle, x+0.11+nKDX, (y-0.035+_py)+nKDY, nil, 0.32, {r = 255, g = 255, b = 255, a = Blight.alpha}, false, 4); _py = _py + 0.02
			Blight.F.Tables.Functions.DrawTxt('Speed: '..PlayerSpeed..'km/h', x+0.11+nKDX, (y-0.035+_py)+nKDY, nil, 0.32, {r = 255, g = 255, b = 255, a = Blight.alpha}, false, 4); _py = _py + 0.02
			Blight.F.Tables.Functions.DrawTxt('Friend: '..IsPlayerFriend, x+0.11+nKDX, (y-0.035+_py)+nKDY, nil, 0.32, {r = 255, g = 255, b = 255, a = Blight.alpha}, false, 4); _py = _py + 0.02

	end
end
Blight.F.Tables.Functions.Notify = function(text) --(Text)
    local enabled = true
    local x = 1.0 -- pozycja początkowa na prawo
    local y = 0.9 -- pozycja początkowa na dół (trochę powyżej krawędzi)
    local animx = 0.0
    local time = 0
    if enabled then
        __CitIn__.CreateThread(function() 
            while x > 0.92 do 
                __CitIn__.Wait(1) 
                x = x - 0.0025
                __CitIn__.Wait(1)
            end
        end)
        __CitIn__.CreateThread(function()
            while time < 4000 do 
                __CitIn__.Wait(0)
                time = time + 22
                animx = animx + 0.00055
                __CitIn__.Wait(1)
            end
            while time >= 4000 do
                __CitIn__.Wait(0)
                x = x + 0.0025
                if x >= 1.1 then
                    enabled = false 
                end
                __CitIn__.Wait(1)
            end
        end)
    end
    __CitIn__.CreateThread(function() 
        while enabled do 
            __CitIn__.Wait(0)
            
            -- Rysowanie kwadratu
            Blight.F.Tables.DrawRect_U(x, y, 0.12, 0.06, 10, 10, 10, 222, 6) 
            -- Rysowanie paska animacji na dole kwadratu
            Blight.F.Tables.DrawRect_U(x, y + 0.027, 0.1 - animx, 0.002, 164, 5, 63, 255, 6) 
            
            if Blight.F.NNstyle == 'Blight' then
                cooltext = '~c~[<FONT COLOR="#00e1ff">Blight~w~ V2~c~] ~w~| '
            elseif Blight.F.NNstyle == 'Blue' then
                cooltext = '~c~[<FONT COLOR="#00e1ff">Blight~w~ V2~c~] ~w~| '
            end
            Blight.F.Tables.SetTextOutline()
            -- Rysowanie tekstu
            -- Blight.F.Tables.Functions.DrawTxt(cooltext..text, x - 0.045, y - 0.02, 0.3, 0.3, {r = 255, g = 255, b = 255, a = 255}, false, 4, false, 6)

            --order
        end
    end)        
end



Blight.F.Tables.Functions.KBInput = function(TextEntry, ExampleText, MaxStringLength)
	Blight.F.Inputtext = ExampleText
	Blight.F.Tables.InputEnabled = true
	Blight.alpha = 0
	local text = Blight.F.Inputtext
	Blight.F.OpenMenu = false
	while Blight.F.Tables.InputEnabled do
		__CitIn__.Wait(0)
				Blight.F.Tables.SetTextColour(255, 255, 255, 255)
				
				Blight.F.Tables.DisableAllControlActions()
				   
				

				Blight.F.Tables.DrawRect_U(0.5, 0.7, 0.221, 0.032, 66, 66, 66, 255)
				Blight.F.Tables.DrawRect_U(0.5, 0.7, 0.22, 0.03, 22, 22, 22, 255)
				Blight.F.Tables.DrawRect_U(0.5, 0.685, 0.22, 0.001, Blight.F.Checks.MainR, Blight.F.Checks.MainG, Blight.F.Checks.MainB, 255)
				
				if Blight.F.Inputtext	~= nil then
					Blight.F.Tables.Functions.DrawTxt(Blight.F.Inputtext, 0.392, 0.688, 0.0, 0.35, {r = 255, g = 255, b = 255, a = 255}, false)
				end

				local textnum = string.len(__BlightStrings__.strings:tostring(Blight.F.Inputtext))
				Blight.F.Tables.Functions.DrawTxt(TextEntry..' | '..textnum .. ' / '.. MaxStringLength, 0.39, 0.671, 0.37, 0.3, {r = 255, g = 255, b = 255, a = 255}, false, 4)

				
					for k, v in __BlightStrings__.strings:pairs(Blight.F.Tables.CustomKeysTable) do 
						if Blight.F.Tables.IsDisabledControlJustPressed(0, v) and not Blight.F.Tables.IsDisabledControlPressed(0, 21) then 
							if textnum < MaxStringLength then
								Blight.F.Inputtext = Blight.F.Inputtext..k 
							end
						end 
						if Blight.F.Tables.IsDisabledControlPressed(0, 21) and Blight.F.Tables.IsDisabledControlJustReleased(0, v) then
							if textnum < MaxStringLength then
								Blight.F.Inputtext = Blight.F.Inputtext ..__BlightStrings__.strings:upper(k)
							end
						end
					end

					
					if Blight.F.Tables.IsDisabledControlJustPressed(0, 178) then -- delete (")
						Blight.F.Inputtext = Blight.F.Inputtext..'"'
					end
					if Blight.F.Tables.IsDisabledControlJustPressed(0, 212) and not Blight.F.Tables.IsDisabledControlPressed(0, 21) then -- home (j)
						Blight.F.Inputtext = Blight.F.Inputtext..'j'
					elseif Blight.F.Tables.IsDisabledControlJustPressed(0, 212) and Blight.F.Tables.IsDisabledControlPressed(0, 21) then
						Blight.F.Inputtext = Blight.F.Inputtext ..'J'
					end
					if Blight.F.Tables.IsDisabledControlPressed(0, 177) and (Blight.F.backspacedelay or 0) < Blight.F.Tables.GetGameTimer() then
						Blight.F.backspacedelay = Blight.F.Tables.GetGameTimer() + 111
						
						Blight.F.Inputtext = Blight.F.Inputtext:sub(1, -2) 
					end -- BACKSPACE

					if Blight.F.Tables.IsDisabledControlPressed(0, 200) then 
						Blight.F.Inputtext = Blight.F.Inputtext:sub(1, #Blight.F.Inputtext - 1)
					end -- ESC

					if Blight.F.Tables.IsDisabledControlPressed(0, 21) and Blight.F.Tables.IsDisabledControlJustReleased(0, 157) then
						Blight.F.Inputtext = Blight.F.Inputtext:sub(1, -2) 
						Blight.F.Inputtext = Blight.F.Inputtext ..'!'
					end -- !

					if Blight.F.Tables.IsDisabledControlJustPressed(0, 22) then 
						Blight.F.Inputtext = Blight.F.Inputtext..' ' 
					end -- SPACE
					if Blight.F.Tables.IsDisabledControlPressed(0, 21) and Blight.F.Tables.IsDisabledControlJustReleased(0, 84) then
						Blight.F.Inputtext = Blight.F.Inputtext:sub(1, -2) 
						Blight.F.Inputtext = Blight.F.Inputtext ..'_'
					end -- _
					


					if Blight.F.Tables.IsDisabledControlJustPressed(0, 191) and (Blight.F.InputDelay or 0) < Blight.F.Tables.GetGameTimer() then
						Blight.F.InputDelay = Blight.F.Tables.GetGameTimer() + 111
						TextEntry = not TextEntry
					end -- ENTER

					if not TextEntry then
						Blight.alpha = 255
						Blight.F.OpenMenu = true
						__CitIn__.Wait(100)
						Blight.F.Tables.InputEnabled = false
						return Blight.F.Inputtext 
					end
				end
end
Blight.F.Sliders = {
    ['FastRun'] = {value = 0.0, minimum = 0.0, maximum = 1.49},
	['SlideMode'] = {value = 13.0, minimum = 8.0, maximum = 75.0},
	['Online-ParticleScale'] = {value = 1.0, minimum = 1.0, maximum = 1000.0},
	['size-of-particle-ammo'] = {value = 1.0, minimum = 1.0, maximum = 10.0},
	['Online-ParticleDelay'] = {value = 1.0, minimum = 1.0, maximum = 100.0},
	['LineESP-R'] = {value = 255, minimum = 0, maximum = 255},
	['LineESP-G'] = {value = 255, minimum = 0, maximum = 255},
	['LineESP-B'] = {value = 255, minimum = 0, maximum = 255},
	['Glow-R'] = {value = 255, minimum = 0, maximum = 255},
	['Glow-G'] = {value = 255, minimum = 0, maximum = 255},
	['Glow-B'] = {value = 255, minimum = 0, maximum = 255},
	['Skeleton-R'] = {value = 255, minimum = 0, maximum = 255},
	['Skeleton-G'] = {value = 255, minimum = 0, maximum = 255},
	['Skeleton-B'] = {value = 255, minimum = 0, maximum = 255},
	['Arrows-R'] = {value = 255, minimum = 0, maximum = 255},
	['Arrows-G'] = {value = 255, minimum = 0, maximum = 255},
	['Arrows-B'] = {value = 255, minimum = 0, maximum = 255},
	['FOV-R'] = {value = 255, minimum = 0, maximum = 255},
	['FOV-G'] = {value = 255, minimum = 0, maximum = 255},
	['FOV-B'] = {value = 255, minimum = 0, maximum = 255},
	['tracers-timer'] = {value = 5000, minimum = 1000, maximum = 50000},
	['colour-timer'] = {value = 5000, minimum = 1000, maximum = 50000},
	['Arrows-FOV'] = {value = 120, minimum = 50, maximum = 300},
	['Arrows-Size'] = {value = 6, minimum = 5, maximum = 10},
	['Boxes-R'] = {value = 255, minimum = 0, maximum = 255},
	['Boxes-G'] = {value = 255, minimum = 0, maximum = 255},
	['Boxes-B'] = {value = 255, minimum = 0, maximum = 255},
	['CornerBoxes-R'] = {value = 255, minimum = 0, maximum = 255},
	['CornerBoxes-G'] = {value = 255, minimum = 0, maximum = 255},
	['CornerBoxes-B'] = {value = 255, minimum = 0, maximum = 255},
	['Blips-Colour'] = {value = 1, minimum = 0, maximum = 85},
	['Blips-Sprite'] = {value = 480, minimum = 0, maximum = 802},
	['info-yoffset'] = {value = 38, minimum = 0, maximum = 50},
	['info-size'] = {value = 40, minimum = 0, maximum = 100},
	['info-Font'] = {value = 4, minimum = 0, maximum = 7},
	['esp-distance'] = {value = 500.0, minimum = 0.0, maximum = 3000.0},
	['gameplay-fov-changer'] = {value = 50.0, minimum = 50.0, maximum = 130.0},
	['self-noclipspeed'] = {value = 0.25, minimum = 0.0, maximum = 20.0},
	['aimbot-fov'] = {value = 100, minimum = 0, maximum = 400},
	['aimbot-distance'] = {value = 1500, minimum = 0, maximum = 1500},
	['aimbot-hitchance'] = {value = 100, minimum = 0, maximum = 100},
	['aimbot-damage'] = {value = 1.0, minimum = 1, maximum = 100.0},
	['torque'] = {value = 1.0, minimum = 0.0, maximum = 500.0},
	['Rot-X'] = {value = 180.0, minimum = 0.0, maximum = 180.0},
	['Rot-Y'] = {value = 180.0, minimum = 0.0, maximum = 180.0},
	['Rot-Z'] = {value = 0.0, minimum = 0.0, maximum = 180.0},
	['LoopTimes-EXOnline'] = {value = 1, minimum = 1, maximum = 30},

	['randomoutfit-delay'] = {value = 100, minimum = 100, maximum = 5000},
	['power'] = {value = 1.0, minimum = 0.0, maximum = 500.0},
	['heal'] = {value = 1000, minimum = 0, maximum = 10000},
	['armour'] = {value = 1000, minimum = 0, maximum = 10000},
	['freecam-fov'] = {value = 50.0, minimum = 0.0, maximum = 130.0},
	['freecam-speed'] = {value = 1.0, minimum = 0.0, maximum = 15.0},
	['jump-delay'] = {value = 133, minimum = 0, maximum = 500},
	['anims-loopdelay'] = {value = 55, minimum = 0, maximum = 444},
	['Button-hold-delay'] = {value = 11, minimum = 0, maximum = 55},

	['Button-animation-delay'] = {value = 0.02, minimum = 0.0, maximum = 0.5},

	['Combo-hold-delay'] = {value = 11, minimum = 0, maximum = 55},
	['wc-range'] = {value = 999.0, minimum = 10.0, maximum = 999.0},
	['wc-shadow'] = {value = 3.0, minimum = 1.0, maximum = 10.0},
	['wc-r'] = {value = 255, minimum = 0, maximum = 255},
	['wc-g'] = {value = 255, minimum = 0, maximum = 255},
	['wc-b'] = {value = 255, minimum = 0, maximum = 255},
	['veh-repairdelay'] = {value = 1000, minimum = 0, maximum = 10000},
	['settings-MenuX'] = {value = 0.03, minimum = 0.00, maximum = 0.5, r = 1},
	['settings-MenuY'] = {value = 0.25, minimum = 0.0, maximum = 0.5, r = 1},
	['width'] = {value = 0.2, minimum = 0.1, maximum = 0.3},
	['height'] = {value = 0.033, minimum = 0.000, maximum = 0.05, r = 1},
	['menur'] = {value = 255, minimum = 0, maximum = 255},
	['menug'] = {value = 255, minimum = 0, maximum = 255},
	['menub'] = {value = 255, minimum = 0, maximum = 255},
	['menurb'] = {value = 36, minimum = 0, maximum = 255},
	['menurg'] = {value = 36, minimum = 0, maximum = 255},
	['menubb'] = {value = 36, minimum = 0, maximum = 255},
	['menubgr'] = {value = 36, minimum = 0, maximum = 255},
	['menubgg'] = {value = 36, minimum = 0, maximum = 255},
	['menubgb'] = {value = 36, minimum = 0, maximum = 255},
	['menutr'] = {value = 255, minimum = 0, maximum = 255},
	['menutg'] = {value = 255, minimum = 0, maximum = 255},
	['menutb'] = {value = 255, minimum = 0, maximum = 255},
	['Crosshair-Height'] = {value = 0.0014, minimum = 0.0, maximum = 0.02},
	['Crosshair-Distance'] = {value = 0.006, minimum = 0.001, maximum = 0.1},
	['Crosshair-Thickness'] = {value = 0.002, minimum = 0.0, maximum = 0.025},
	['Crosshair-R'] = {value = 255, minimum = 0, maximum = 255},
	['Crosshair-G'] = {value = 255, minimum = 0, maximum = 255},
	['Crosshair-B'] = {value = 255, minimum = 0, maximum = 255},
}
Blight.F.drawText = function(text, x, y, scale, font, centre, outline, order)
	if order then
		Blight.F.Tables.SetScriptGfxDrawOrder(order)
	else
		Blight.F.Tables.SetScriptGfxDrawOrder(1)
	end
	local nKDX, nKDY = Blight.F.Checks.KeyboardDragXWM, Blight.F.Checks.KeyboardDragYWM
    Blight.F.Tables.SetTextFont(font)
    --if outline then 
    SetTextOutline()
    --end
    Blight.F.Tables.SetTextCentre(centre)
    Blight.F.Tables.SetTextScale(scale, scale)
		SetTextColour(255, 255, 255, 255) 
    BeginTextCommandDisplayText('STRING')
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayText(x+nKDX, y+nKDY)
end
Blight.F.Checks = { 
	Binds = {},
	TabInGlobalChat = 1, 
	scr_a = 0.0, 
	MainR = 100, 
	MainG = 100, 
	MainB = 255, 
	MainR2 = 255, 
	MainG2 = 255, 
	MainB2 = 255, 
	OpenKeyV = 12345, 
	OpenKeyL = "", 
	KeyboardDragX = 0.0, 
	KeyboardDragY = 0.0, 
	KeyboardDragXWM = 0.0, 
	KeyboardDragYWM = 0.0, 
	['self:autoheal'] = false,  ['self:autoarmour'] = false, 
	['self:noclip'] = false, ['self:betterfastrun'] = false, ['self:solosession2'] = false, ['self:invisible'] = false, ['self:BasicGodmode'] = false,
	['self:SemiGodmode'] = false, ['self:fastrun'] = false, ['self:slidemode'] = false, 
	['self:superjump'] = false,['self:infinitestamina'] = false, ['self:tinyplayer'] = false, 
	['self:tpwhereyoulooking'] = false, ['self:superman'] = false, ['self:Flash'] = false, 
	['self:Onepunch'] = false,['self:Collision'] = false,['self:FireB'] = false,['self:Ragdoll'] = false,
	['self:AntiRagdoll'] = false,['self:AntiAFK'] = false,['self:AntiHeadshot'] = false, ['self:AntiTaze'] = false,
	['self:AntiDrown'] = false,['self:SlowMotion'] = false,['destroyer:Bypasssafezone'] = false, ['w:randomoutfit'] = false,
	['online:Spectate'] = false,['online:LoopSounds'] = false,['online:Aggressive'] = false, ['online:piggyback'] = false, ['online:dildo'] = false,
	['particleso:Particles'] = false,['explodeo:Audible'] = true,['explodeo:Invisible'] = false,
	['explodeo:Camerashake'] = false,['explodeo:Explodeloop'] = false,['destroyer:LoopSounds'] = false, ['destroyer:Earrape'] = false,
	['particlesd:Particles'] = false,['ExtraSensoryOptions:2dgraphics'] = false,
	['tracker:footprints'] = false,['tracker:tyreprints'] = false,['TGMouse'] = false,
	['visuals:enableesp'] = false,['visuals:Skeletonesp'] = false,['visuals:includeself'] = false,
	['Visuals:Upsidedown'] = false,['Visuals:weirdrotation'] = false,['Visuals:FovChanger'] = false,
	['visuals:ArrowESP'] = false,['visuals:FloatingArrowESP'] = false,['visuals:somecooldot'] = false,
	['blipesp:Blips'] = false,['infoesp:Enable'] = false,['infoesp:Outline'] = true,
	['GlowingESP:Glow'] = false,['BoxesESP:Boxes ESP'] = false,['BoxesESP:Filled'] = true,
	['BoxesESP:Healthbar'] = false,['BoxesESP:Armourbar'] = false,['CornerBoxes:CornerBox'] = false,
	['LineESP:Line ESP'] = false,['Crosshair:CrosshairESPVis'] = false,['weapon:Showfriends'] = false,
	['customammo:InfiniteAmmo'] = false,['customammo:InfiniteAmmov2'] = false,
	['customammo:freezeammo'] = false,['customammo:nocollisionammo'] = false,
	['customammo:blackholeammo'] = false,['customammo:airstrikeeammo'] = false,
	['customammo:tracers'] = false,['customammo:savepoint'] = false,['customammo:colourammo'] = false,
	['customammo:ExplosiveAmmo'] = false,['customammo:FireworkAmmo'] = false,
	['customammo:SteamAmmo'] = false,['customammo:FlameAmmo'] = false,['customammo:OilSlickAmmo'] = false,
	['customammo:HydrantAmmo'] = false,['customammo:FlareAmmo'] = false,['customammo:RaygunAmmo'] = false,
	['customammo:SnowballAmmo'] = false,['customammo:BirdPooAmmo'] = false,['pammo:Fire'] = false,
	['pammo:Stars'] = false,['pammo:bubblegum'] = false,['pammo:oranges'] = false,
	['pammo:Fireworks'] = false,['pammo:Smoke'] = false,['pammo:Clown'] = false,['pammo:Water'] = false,
	['pammo:Dirt'] = false,['pammo:Alien'] = false,['pammo:Explosion'] = false,['pammo:Blood'] = false,
	['pammo:yellowsmoke'] = false,['pammo:Flower'] = false,['pammo:Cartoon'] = false,['weaponcustomization:Disablereload'] = false,
	['weaponcustomization:doubletap'] = false,['destroyer:Makeallplayervehiclesfly'] = false, 
	['online:Makeplayervehiclefly'] = false,['weaponcustomization:invisible weapon'] = false, 
	['weapon:Triggerbot'] = false, ['weapon:HitSound'] = false, ['weapon:HitMarker'] = false,
	['weapon:RapidFire'] = false, ['glife:Teleportzombies'] = false, ['glife:Kill'] = false, 
	['glife:Invisible'] = false,['glife:AutoLooting'] = false, ['glife:Auto Steal'] = false, 
	['glife:Empty check'] = false, ['vehicle:Addtrackertovehicle'] = false,['vehicle:TorqueMulti'] = false, 
	['vehicle:PowerMulti'] = false, ['vehicle:nofall'] = false, ['vehicle:instantbrakes'] = false,
	['vehicle:Stickycar'] = false, ['vehicle:AutoDrive'] = false, ['vehicle:VehicleGodmode'] = false, 
	['vehicle:AdvancedHandling'] = false,['vehicle:HornBoost'] = false, ['vehicle:BunnyHop'] = false, 
	['vehicle:DriftMode'] = false, ['vehicle:Rainbowcar'] = false,['vehicle:Bulletproofcar'] = false, 
	['vehicle:Invisiblecar'] = false, ['vehicle:AutoClean'] = false, ['vehicle:AlwaysWheelie'] = false,
	['vehicle:Anti-Gravity'] = false, ['vehicle:NoCollision'] = false, ['vehicle:ToggleEngine'] = false, 
	['misc:antiaim'] = false,['misc:killfeed'] = false, ['misc:globalchat'] = false, ['misc:Aimposition'] = false, 
	['misc:fakeroll'] = false, ['misc:fakecrouch'] = false,['misc:Alwaysfriendly'] = false, ['misc:rpserversbelike'] = false,
	['misc:instantsitincar'] = false, ['misc:meteorshower'] = false, ['misc:lagging'] = false, ['misc:removerecoil'] = false,
	['misc:rollbug(x)'] = false, ['misc:Sticktoground'] = false, ['misc:InfiniteCombatRoll'] = false, 
	['misc:BunnyHop'] = false, ['misc:Eventlogger'] = false,['misc:freecam'] = false, ['misc:Remoteped'] = false,
	['ctrls:disallact'] = false, ['anims:looped'] = false, ['wc:Colourit'] = false,
	['ctrls:enblallact'] = false, ['ctrls:disfire'] = false, ['ctrls:enblfire'] = false, 
	['misc:freecamcoords'] = false,['configuration:menusounds'] = false, 
	['configuration:buttonholdanimation'] = false, ['fadeanimation'] = false, 
	['configuration:watermark'] = false,['rccar:invisible'] = false, ['rccar:explode'] = false, 
	['bypass:apiac'] = true, ['bypass:ggac'] = true,['bypass:events'] = false, ['bypass:Recoil'] = false, 
	['bypass:bscreen'] = false, ['bypass:blur'] = false,
}

Blight.F.Tables.DrawRect = function(x, y, w, h, r, g, b, a, order)
	if order then
		Blight.F.Tables.SetScriptGfxDrawOrder(order)
	else
		Blight.F.Tables.SetScriptGfxDrawOrder(1)
	end
	local nKDX, nKDY = Blight.F.Checks.KeyboardDragXWM, Blight.F.Checks.KeyboardDragYWM
	return __CitIn__.InvokeNative(0x3A618A217E5154F0, x+nKDX, y+nKDY, w, h, r, g, b, a)
end
Blight.F.Tables.DrawRect_U = function(x, y, w, h, r, g, b, a, order)
	if order then
		Blight.F.Tables.SetScriptGfxDrawOrder(order)
	else
		Blight.F.Tables.SetScriptGfxDrawOrder(1)
	end
	return __CitIn__.InvokeNative(0x3A618A217E5154F0, x, y, w, h, r, g, b, a)
end
Blight.F.Tables.DrawSprite = function(dict, name, x, y, w, h, heading, r, g, b, a, order)
	if order then
		Blight.F.Tables.SetScriptGfxDrawOrder(order)
	else
		Blight.F.Tables.SetScriptGfxDrawOrder(1)
	end
	local nKDX, nKDY = Blight.F.Checks.KeyboardDragXWM, Blight.F.Checks.KeyboardDragYWM
	return __CitIn__.InvokeNative(0xE7FFAE5EBF23D890, __BlightStrings__.strings:tostring(dict), __BlightStrings__.strings:tostring(name), x+nKDX, y+nKDY, w, h, heading, r, g, b, a)
end
Blight.F.Tables.DrawBorderedRect = function(x, y, w, h, r, g, b, a)
    Blight.F.Tables.DrawRect(x, y - (h / 2), w, 0.001, r, g, b, a) 
    Blight.F.Tables.DrawRect(x, y + (h / 2), w, 0.001, r, g, b, a) 
    Blight.F.Tables.DrawRect((x - (w / 2)), y, 0.0005, h, r, g, b, a)  
    Blight.F.Tables.DrawRect((x + (w / 2)), y, 0.0005, h, r, g, b, a) 
end
Blight.F.Tables.Anim = {}

Blight.F.Combos = {
	['Strength-stat'] = {
		a = 1,
		b = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 768, 769, 770, 771, 772, 773, 774, 775, 776, 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 787, 788, 789, 790, 791, 792, 793, 794, 795, 796, 797, 798, 799, 800, 801, 802, 803, 804, 805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934, 935, 936, 937, 938, 939, 940, 941, 942, 943, 944, 945, 946, 947, 948, 949, 950, 951, 952, 953, 954, 955, 956, 957, 958, 959, 960, 961, 962, 963, 964, 965, 966, 967, 968, 969, 970, 971, 972, 973, 974, 975, 976, 977, 978, 979, 980, 981, 982, 983, 984, 985, 986, 987, 988, 989, 990, 991, 992, 993, 994, 995, 996, 997, 998, 999, 1000},
	},
	['Stamina-stat'] = {
		a = 1,
		b = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 768, 769, 770, 771, 772, 773, 774, 775, 776, 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 787, 788, 789, 790, 791, 792, 793, 794, 795, 796, 797, 798, 799, 800, 801, 802, 803, 804, 805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934, 935, 936, 937, 938, 939, 940, 941, 942, 943, 944, 945, 946, 947, 948, 949, 950, 951, 952, 953, 954, 955, 956, 957, 958, 959, 960, 961, 962, 963, 964, 965, 966, 967, 968, 969, 970, 971, 972, 973, 974, 975, 976, 977, 978, 979, 980, 981, 982, 983, 984, 985, 986, 987, 988, 989, 990, 991, 992, 993, 994, 995, 996, 997, 998, 999, 1000},
	},
	['Lung-stat'] = {
		a = 1,
		b = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 768, 769, 770, 771, 772, 773, 774, 775, 776, 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 787, 788, 789, 790, 791, 792, 793, 794, 795, 796, 797, 798, 799, 800, 801, 802, 803, 804, 805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934, 935, 936, 937, 938, 939, 940, 941, 942, 943, 944, 945, 946, 947, 948, 949, 950, 951, 952, 953, 954, 955, 956, 957, 958, 959, 960, 961, 962, 963, 964, 965, 966, 967, 968, 969, 970, 971, 972, 973, 974, 975, 976, 977, 978, 979, 980, 981, 982, 983, 984, 985, 986, 987, 988, 989, 990, 991, 992, 993, 994, 995, 996, 997, 998, 999, 1000},
	},
	['Shooting-stat'] = {
		a = 1,
		b = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 768, 769, 770, 771, 772, 773, 774, 775, 776, 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 787, 788, 789, 790, 791, 792, 793, 794, 795, 796, 797, 798, 799, 800, 801, 802, 803, 804, 805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934, 935, 936, 937, 938, 939, 940, 941, 942, 943, 944, 945, 946, 947, 948, 949, 950, 951, 952, 953, 954, 955, 956, 957, 958, 959, 960, 961, 962, 963, 964, 965, 966, 967, 968, 969, 970, 971, 972, 973, 974, 975, 976, 977, 978, 979, 980, 981, 982, 983, 984, 985, 986, 987, 988, 989, 990, 991, 992, 993, 994, 995, 996, 997, 998, 999, 1000},
	},
	['Wheelie-stat'] = {
		a = 1,
		b = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 768, 769, 770, 771, 772, 773, 774, 775, 776, 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 787, 788, 789, 790, 791, 792, 793, 794, 795, 796, 797, 798, 799, 800, 801, 802, 803, 804, 805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934, 935, 936, 937, 938, 939, 940, 941, 942, 943, 944, 945, 946, 947, 948, 949, 950, 951, 952, 953, 954, 955, 956, 957, 958, 959, 960, 961, 962, 963, 964, 965, 966, 967, 968, 969, 970, 971, 972, 973, 974, 975, 976, 977, 978, 979, 980, 981, 982, 983, 984, 985, 986, 987, 988, 989, 990, 991, 992, 993, 994, 995, 996, 997, 998, 999, 1000},
	},
	['Driving-stat'] = {
		a = 1,
		b = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 768, 769, 770, 771, 772, 773, 774, 775, 776, 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 787, 788, 789, 790, 791, 792, 793, 794, 795, 796, 797, 798, 799, 800, 801, 802, 803, 804, 805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934, 935, 936, 937, 938, 939, 940, 941, 942, 943, 944, 945, 946, 947, 948, 949, 950, 951, 952, 953, 954, 955, 956, 957, 958, 959, 960, 961, 962, 963, 964, 965, 966, 967, 968, 969, 970, 971, 972, 973, 974, 975, 976, 977, 978, 979, 980, 981, 982, 983, 984, 985, 986, 987, 988, 989, 990, 991, 992, 993, 994, 995, 996, 997, 998, 999, 1000},
	},
	['Flying-stat'] = {
		a = 1,
		b = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 768, 769, 770, 771, 772, 773, 774, 775, 776, 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 787, 788, 789, 790, 791, 792, 793, 794, 795, 796, 797, 798, 799, 800, 801, 802, 803, 804, 805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934, 935, 936, 937, 938, 939, 940, 941, 942, 943, 944, 945, 946, 947, 948, 949, 950, 951, 952, 953, 954, 955, 956, 957, 958, 959, 960, 961, 962, 963, 964, 965, 966, 967, 968, 969, 970, 971, 972, 973, 974, 975, 976, 977, 978, 979, 980, 981, 982, 983, 984, 985, 986, 987, 988, 989, 990, 991, 992, 993, 994, 995, 996, 997, 998, 999, 1000},
	},
	['RampProp'] = {
		a = 1,
		b = {'prop_jetski_ramp_01', 'lts_prop_lts_ramp_01', 'lts_prop_lts_ramp_02', 'lts_prop_lts_ramp_03', 'prop_mp_ramp_01_tu', 'prop_mp_ramp_03', 'prop_water_ramp_03'},
	},
	['EngineSound'] = {
		a = 1,
		b = {'Dinghy', 'Dinghy2', 'Dinghy3', 'Dingh4', 'Jetmax', 'Marquis', 'Seashark', 'Seashark2', 'Seashark3', 'Speeder', 'Speeder2', 'Squalo', 'Submersible', 'Submersible2', 'Suntrap', 'Toro', 'Toro2', 'Tropic', 'Tropic2', 'Tug', 'Benson', 'Biff', 'Cerberus', 'Cerberus2', 'Cerberus3', 'Hauler', 'Hauler2', 'Mule', 'Mule2', 'Mule3', 'Mule4', 'Packer', 'Phantom', 'Phantom2', 'Phantom3', 'Pounder', 'Pounder2', 'Stockade', 'Stockade3', 'Terbyte', 'Asbo', 'Blista', 'Brioso', 'Dilettante', 'Dilettante2', 'Kanjo', 'Issi2', 'Issi3', 'Issi4', 'Iss5', 'Issi6', 'Panto', 'Prarire', 'Rhapsody', 'Cogcabrio', 'Exemplar', 'F620', 'Felon', 'Felon2', 'Jackal', 'Oracle', 'Oracle2', 'Sentinel', 'Sentinel2', 'Windsor', 'Windsor2', 'Zion', 'Zion2', 'Bmx', 'Cruiser', 'Fixter', 'Scorcher', 'Tribike', 'Tribike2', 'Tribike3', 'Ambulance', 'Fbi', 'Fbi2', 'Firetruk', 'Lguard', 'Pbus', 'Police', 'Police2', 'Police3', 'Police4', 'Policeold1', 'Policeold2', 'Policet', 'Policeb', 'Polmav', 'Pranger', 'Predator', 'Riot', 'Riot2', 'Sheriff', 'Sheriff2', 'Akula', 'Annihilator', 'Buzzard', 'Buzzard2', 'Cargobob', 'Cargobob2', 'Cargobob3', 'Cargobob4', 'Frogger', 'Frogger2', 'Havok', 'Hunter', 'Maverick', 'Savage', 'Seasparrow', 'Skylift', 'Supervolito', 'Supervolito2', 'Swift', 'Swift2', 'Valkyrie', 'Valkyrie2', 'Volatus', 'Bulldozer', 'Cutter', 'Dump', 'Flatbed', 'Guardian', 'Handler', 'Mixer', 'Mixer2', 'Rubble', 'Tiptruck', 'Tiptruck2', 'Apc', 'Barracks', 'Barracks2', 'Barracks3', 'Barrage', 'Chernobog', 'Crusader', 'Halftrack', 'Khanjali', 'Minitank', 'Rhino', 'Scarab', 'Scarab2', 'Scarab3', 'Thruster', 'Trailersmall2', 'Akuma', 'Avarus', 'Bagger', 'Bati', 'Bati2', 'BF400', 'Carbonrs', 'Chimera', 'Cliffhanger', 'Daemon', 'Daemon2', 'Defiler', 'Deathbike', 'Deathbike2', 'Deathbike3', 'Diablous', 'Diablous2', 'Double', 'Enduro', 'Esskey', 'Faggio', 'Faggio2', 'Faggio3', 'Fcr', 'Fcr2', 'Gargoyle', 'Hakuchou', 'Hakuchou2', 'Hexer', 'Innovation', 'Lectro', 'Manchez', 'Nemesis', 'Nightblade', 'Oppressor', 'Oppressor2', 'Pcj', 'Rrocket', 'Ratbike', 'Ruffian', 'Sanchez', 'Sanchez2', 'Sanctus', 'Shotaro', 'Sovereign', 'Stryder', 'Thrust', 'Vader', 'Vindicator', 'Vortex', 'Wolfsbane', 'Zombiea', 'Zombieb', 'Blade', 'Buccaneer', 'Buccaneer2', 'Chino', 'Chino2', 'Clique', 'Coquette3', 'Deviant', 'Dominator', 'Dominator2', 'Dominator3', 'Dominator4', 'Dominator5', 'Dominator6', 'Dukes', 'Dukes2', 'Ellie', 'Faction', 'Faction2', 'Faction3', 'Gauntlet', 'Gauntlet2', 'Gauntlet3', 'Gauntlet4', 'Hermes', 'Hotknife', 'Hustler', 'Impaler', 'Impaler2', 'Impaler3', 'Impaler4', 'Imperator', 'Imperator2', 'Imperator3', 'Lurcher', 'Moonbeam', 'Moonbeam2', 'Nightshade', 'Peyote2', 'Phoenix', 'Picador', 'Ratloader', 'RatLoader2', 'Ruiner', 'Ruiner2', 'Ruiner3', 'Sabregt', 'Sabregt2', 'Slamvan', 'Slamvan2', 'Slamvan3', 'Slamvan4', 'Slamvan5', 'Slamvan6', 'Stalion', 'Stalion2', 'Tampa', 'Tampa3', 'Tulip', 'Vamos,', 'Vigero', 'Virgo', 'Virgo2', 'Virgo3', 'Voodoo', 'Voodoo2', 'Yosemite', 'Yosemite2', 'Bfinjection', 'Bifta', 'Blazer', 'Blazer2', 'Blazer3', 'Blazer4', 'Blazer5', 'Bohdi', 'Brawler', 'Bruiser', 'Bruiser2', 'Bruiser3', 'Brutus', 'Brutus2', 'Brutus3', 'Caracara', 'Caracara2', 'Dloader', 'Dubsta3', 'Dune', 'Dune2', 'Dune3', 'Dune4', 'Dune5', 'Everon', 'Freecrawler', 'Hellion', 'Insurgent', 'Insurgent2', 'Insurgent3', 'Kalahari', 'Kamacho', 'Marshall', 'Menacer', 'Outlaw', 'Mesa3', 'Monster', 'Monster3', 'Monster4', 'Monster5', 'Nightshark', 'Rancherxl', 'Rancherxl2', 'Rebel', 'Rebel2', 'Rcbandito', 'Riata', 'Sandking', 'Sandking2', 'Technical', 'Technical2', 'Technical3', 'Trophytruck', 'Trophytruck2', 'Vagrant', 'Zhaba', 'Alphaz1', 'Avenger', 'Avenger2', 'Besra', 'Blimp', 'Blimp2', 'Blimp3', 'Bombushka', 'Cargoplane', 'Cuban800', 'Dodo', 'Duster', 'Howard', 'Hydra', 'Jet', 'Lazer', 'Luxor', 'Luxor2', 'Mammatus', 'Microlight', 'Miljet', 'Mogul', 'Molotok', 'Nimbus', 'Nokota', 'Pyro', 'Rogue', 'Seabreeze', 'Shamal', 'Starling', 'Striekforce', 'Stunt', 'Titan', 'Tula', 'Velum', 'Velum2', 'Vestra', 'Volatol', 'Bjxl', 'Baller', 'Baller2', 'Baller3', 'Baller4', 'Baller5', 'Baller6', 'Cavalcade', 'Cavalcade2', 'Contender', 'Dubsta', 'Dubsta2', 'Fq2', 'Granger', 'Gresley', 'Habanero', 'Huntley', 'Landstalker', 'Mesa', 'Mesa2', 'Novak', 'Patriot', 'Patriot2', 'Radi', 'Rebla', 'Rocoto', 'Seminole', 'Serrano', 'Toros', 'Xls', 'Xls2', 'Asea', 'Asea2', 'Asterope', 'Cog55', 'Cogg552', 'Cognoscenti', 'Cognoscenti2', 'Emperor', 'Emperor2', 'Emperor3', 'Fugitive', 'Glendale', 'Ingot', 'Intruder', 'Limo2', 'Premier', 'Primo', 'Primo2', 'Regina', 'Romero', 'Stafford', 'Stanier', 'Stratum', 'Stretch', 'Superd', 'Surge', 'Tailgater', 'Warrener', 'Washington', 'Airbus', 'Brickade', 'Bus', 'Coach', 'Pbus2', 'Rallytruck', 'Rentalbus', 'Taxi', 'Tourbus', 'Trash', 'Trash2', 'Wastelander', 'Alpha', 'Banshee', 'Bestiagts', 'Blista2', 'Blista3', 'Buffalo', 'Buffalo2', 'Buffalo3', 'Carbonizzare', 'Comet2', 'Comet3', 'Comet4', 'Comet5', 'Coquette', 'Drafter', 'Deveste', 'Elegy', 'Elegy2', 'Feltzer2', 'FlashGT', 'Furoregt', 'Fusilade', 'Futo', 'Gb200', 'Hotring', 'Komoda', 'Imorgon', 'Issi7', 'Italigto', 'Jester', 'Jester2', 'Jester3', 'Jugular', 'Khamelion', 'Kuruma', 'Kuruma2', 'Locust', 'Lynx', 'Massacro', 'Massacro2', 'Neo', 'Neon', 'Ninef', 'Ninef2', 'Omnis', 'Paragon', 'Paragon2', 'Pariah', 'Penumbra', 'Raiden', 'Rapidgt', 'Rapidgt2', 'Raptor', 'Revolter', 'Ruston', 'Schafter2', 'Schafter3', 'Schafter4', 'Schafter5', 'Schafter6', 'Schlagen', 'Schwarzer', 'Sentinel3', 'Seven70', 'Specter', 'Specter2', 'Streiter', 'Sugoi', 'Sultan', 'Sultan2', 'Surano', 'Tampa2', 'Tropos', 'Verlierer2', 'Vstr', 'Zr380', 'Zr3802', 'Zr3803', 'Ardent', 'Btype', 'Btype2', 'Btype3', 'Casco', 'Cheetah2', 'Cheburek', 'Coquette2', 'Deluxo', 'Dynasty', 'Fagaloa', 'Feltzer3', 'Gt500', 'Infernus2', 'Jb700', 'Jb7002', 'Mamba', 'Manana', 'Michelli', 'Monroe', 'Nebula', 'Peyote', 'Pigalle', 'Rapidgt3', 'Retinue', 'Retinue2', 'Savestra', 'Stinger', 'Stingergt', 'Stromberg', 'Swinger', 'Torero', 'Tornado', 'Tornado2', 'Tornado3', 'Tornado4', 'Tornado5', 'Tornado6', 'Turismo2', 'Viseris', 'Z190', 'Ztype', 'Zion3', 'Adder', 'Autarch', 'Banshee2', 'Bullet', 'Cheetah', 'Cyclone', 'Entity2', 'Entityxf', 'Emerus', 'Fmj', 'Gp1', 'Infernus', 'Italigtb', 'Italigtb2', 'Krieger', 'Le7b', 'Nero', 'Nero2', 'Osiris', 'Penetrator', 'Pfister811', 'Prototipo', 'Reaper', 'S80', 'Sc1', 'Scramjet', 'Sheava', 'SultanRS', 'T20', 'Taipan', 'Tempesta', 'Tezeract', 'Thrax', 'Turismor', 'Tyrant', 'Tyrus', 'Vacca', 'Vagner', 'Vigilante', 'Visione', 'Voltic', 'Voltic2', 'Zentorno', 'Xa21', 'Zorrusso', 'Armytanker', 'Armytrailer', 'Armytrailer2', 'Baletrailer', 'Boattrailer', 'Cablecar', 'Docktrailer', 'Freighttrailer', 'Graintrailer', 'Proptrailer', 'Raketailer', 'Tr2', 'Tr3', 'Tr4', 'Trflat', 'Tvtrailer', 'Tanker', 'Tanker2', 'Trailerlarge', 'Trailerlogs', 'Trailersmall', 'Trailers', 'Trailers2', 'Trailers3', 'Trailers4', 'Freight', 'Freightcar', 'Freightcont1', 'Freightcont2', 'Freightgrain', 'Metrotrain', 'Tankercar', 'Airtug', 'Caddy', 'Caddy2', 'Caddy3', 'Docktug', 'Forklift', 'Mower', 'Ripley', 'Sadler', 'Sadler2', 'Scrap', 'Towrruck', 'Towtruck2', 'Tractor', 'Tractor2', 'Tractor3', 'Utillitruck', 'Utillitruck3', 'Utillitruck2', 'Bison', 'Bison2', 'Bison3', 'Bobcatxl', 'Boxville', 'Boxville2', 'Boxville3', 'Boxville4', 'Boxville5', 'Burrito', 'Burrito2', 'Burrito3', 'Burrito4', 'Burrito5', 'Camper', 'Gburrito', 'Gburrito2', 'Journey', 'Minivan', 'Minivan2', 'Paradise', 'Pony', 'Pony2', 'Rumpo', 'Rumpo2', 'Rumpo3', 'Speedo', 'Speedo2', 'Speedo4', 'Surfer', 'Surfer2', 'Taco', 'Youga', 'Youga2'},
	},
	['time-hours'] = {
		a = 12,
		b = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23},
	},
	['Taze-Time'] = {
		a = 50,
		b = {100, 200, 300, 400, 500, 600, 700, 800, 900, 1000, 1100, 1200, 1300, 1400, 1500, 1600, 1700, 1800, 1900, 2000, 2100, 2200, 2300, 2400, 2500, 2600, 2700, 2800, 2900, 3000, 3100, 3200, 3300, 3400, 3500, 3600, 3700, 3800, 3900, 4000, 4100, 4200, 4300, 4400, 4500, 4600, 4700, 4800, 4900, 5000},
	},
	['aimnaimation'] = {
		a = 1,
		b = {'sit', 'upside down', 'sit 2', 'normal'},
		c = {'SCRIPTED_GUN_TASK_PRONE_BACK_RIFLE', 'SCRIPTED_GUN_TASK_HANGING_UPSIDE_DOWN', 'SCRIPTED_GUN_TASK_DINGY_RPG', ''}
	},
	['time-minute'] = {
		a = 15,
		b = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59},
	},
	['time-Seconds'] = {
		a = 37,
		b = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59},
	},
	['vehiclemaxspeed'] = {
		a = 1,
		b = {10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 200, 300, 400, 500, 600, 700, 800, 900, 1000},
	},
	['Menu-Style'] = {
		a = 1,
		b = {'Orange','OrangeV2', 'Blue'}
	},
	['maxoptcountonscreen'] = {
		a = 8,
		b = {10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40}
	},
	['ArmourPos'] = {
		a = 1,
		b = {'left', 'right'},
	},
	['HealthPos'] = {
		a = 1,
		b = {'left', 'right'},
	},
	['Animations'] = {
		a = 1,
		b = {
			{lib = "gestures@m@standing@casual", anim = "gesture_hello", name = 'Hello'},
			{lib = "gestures@m@standing@casual", anim = "gesture_point", name = 'Point'},
			{lib = "gestures@m@standing@casual", anim = "gesture_bring_it_on", name = 'Bring it on'},
			{lib = "gestures@m@standing@casual", anim = "gesture_me", name = 'Me'},
			{lib = "gestures@m@standing@casual", anim = "gesture_easy_now", name = 'Easy'},
			{lib = "gestures@m@standing@casual", anim = "gesture_damn", name = 'Damn'},
			{lib = "rcmpaparazzo_2", anim = "shag_loop_poppy", name = 'Get sex'},
			{lib = "rcmpaparazzo_2", anim = "shag_loop_a", name = 'Do sex'},
			{lib = "oddjobs@taxi@tie", anim = "vomit_outside", name = 'Taxi tie'},
			{lib = "mp_ped_interaction", anim = "handshake_guy_a", name = 'Handshake'},
			{lib = "mp_ped_interaction", anim = "hugs_guy_a", name = 'Hug'},
			{lib = "mp_ped_interaction", anim = "kisses_guy_a", name = 'Hug 2'},
			{lib = "mp_player_int_uppersalute", anim = "mp_player_int_salute", name = 'Salut'},
			{lib = "random@arrests@busted", anim = "idle_c", name = 'Arrest 1'},
			{lib = "amb@code_human_police_investigate@idle_b", anim = "idle_f", name = 'Police investigate'},
			{lib = "random@arrests", anim = "generic_radio_chatter", name = 'Radio speaking'},
			{lib = "mini@repair", anim = "fixing_a_ped", name = 'Repairing'},
			{lib = "oddjobs@taxi@driver", anim = "leanover_idle", name = 'Taxi driver'},
			{lib = "oddjobs@taxi@cyi", anim = "std_hand_off_ps_passenger", name = 'Taxi passenger'},
			{lib = "mp_am_hold_up", anim = "purchase_beerbox_shopkeeper", name = 'Shopkeeper'},
			{lib = "mini@drinking", anim = "shots_barman_b", name = 'Barman'},
			{lib = "mp_action", anim = "thanks_male_06", name = 'Thanks M'},
			{lib = "anim@am_hold_up@male", anim = "shoplift_high", name = 'Shoplift'},
			{lib = "anim@mp_player_intcelebrationmale@face_palm", anim = "face_palm", name = 'Face palm'},
			{lib = "oddjobs@assassinate@multi@", anim = "react_big_variations_a", name = 'Reaction: Big'},
			{lib = "amb@code_human_cower_stand@male@react_cowering", anim = "base_right", name = 'React cowering'},
			{lib = "mp_player_int_upperfinger", anim = "mp_player_int_finger_01_enter", name = 'Fuck you'},
			{lib = "mp_player_int_upperwank", anim = "mp_player_int_wank_01", name = 'Upper wank'},
			{lib = "mp_suicide", anim = "pistol", name = 'Suicide'},
			{lib = "amb@world_human_muscle_flex@arms_at_side@base", anim = "base", name = 'Muscle flex'},
			{lib = "amb@world_human_push_ups@male@base", anim = "base", name = 'Push ups'},
			{lib = "amb@world_human_sit_ups@male@base", anim = "base", name = 'Sit'},
			{lib = "amb@world_human_yoga@male@base", anim = "base_a", name = 'Yoga'},
			{lib = "amb@world_human_aa_coffee@idle_a", anim = "idle_a", name = 'Coffee'},
			{lib = "mini@prostitutes@sexlow_veh", anim = "low_car_bj_to_prop_female", name = 'T-Pose'},
			{lib = "mini@safe_cracking", anim = "idle_base", name = 'Safe crack'}, 
			{lib = "oddjobs@towing", anim = "m_blow_job_loop", name = 'M Blow job'},
			{lib = "oddjobs@towing", anim = "f_blow_job_loop", name = 'F Blow job'},
			{lib = "mini@prostitutes@sexlow_veh", anim = "low_car_sex_loop_player", name = 'Car sex 1'},
			{lib = "mini@prostitutes@sexlow_veh", anim = "low_car_sex_loop_female", name = 'Car sex 2'},
			{lib = "mini@strip_club@idles@stripper", anim = "stripper_idle_02", name = 'Stripper dance'},
			{lib = "mini@strip_club@private_dance@part2", anim = "priv_dance_p2", name = 'Private dance 2'},
			{lib = "mini@strip_club@private_dance@part3", anim = "priv_dance_p3", name = 'Private dance 3'},
		},
	},
	['RampStyle'] = {
		a = 1,
		b = {"Bumper"},
	},
	['Aimbot type'] = {
		a = 1,
		b = {'Normal', 'Aimlock', 'Ragebot'},
	},
	['Bone'] = {
		a = 1,
		b = {'Head', 'Neck', 'Torso', 'Left-Hand', 'Right-Hand', 'Pelvis', 'Left-Knee', 'Right-Knee'},
		c = {31086, 39317, 0, 18905, 57005, 11816, 46078, 16335},
	},
	
	['Melees'] = {
		a = 1,
		b = {"Knife", "Dagger", "Switchblade", "Hatchet", "Machete", "Bat",  "Golfclub", "Poolcue", "Nightstick", "Crowbar", "Pipewrench", "Hammer", "Flashlight", "Knuckle", "Bottle"},
		c = {
			['Knife'] = 'https://vignette.wikia.nocookie.net/gtawiki/images/a/a7/Knife-GTAV.png/revision/latest/scale-to-width-down/310?cb=20130920185917',
			['Dagger'] = 'https://vignette.wikia.nocookie.net/gtawiki/images/c/ce/AntiqueCavalryDagger-GTAV.png/revision/latest/scale-to-width-down/310?cb=20140617174635',
			['Switchblade'] = 'https://vignette.wikia.nocookie.net/gtawiki/images/f/fc/Switchblade-GTAV.png/revision/latest/scale-to-width-down/310?cb=20161021210105',
			['Hatchet'] = 'https://vignette.wikia.nocookie.net/gtawiki/images/9/94/Hatchet-GTAV.png/revision/latest/scale-to-width-down/310?cb=20150314101925',
			['Machete'] = 'https://vignette.wikia.nocookie.net/gtawiki/images/4/44/Machete-GTAV.png/revision/latest/scale-to-width-down/310?cb=20160627121720',
			['Bat'] = 'https://vignette.wikia.nocookie.net/gtawiki/images/5/59/BaseballBat-GTAV.png/revision/latest/scale-to-width-down/309?cb=20160612221707',
			['Golfclub'] = 'https://vignette.wikia.nocookie.net/gtawiki/images/9/97/GolfClub-GTAV.png/revision/latest/scale-to-width-down/310?cb=20131004164724',
			['Poolcue'] = 'https://vignette.wikia.nocookie.net/gtawiki/images/f/fc/PoolCue-GTAV.png/revision/latest/scale-to-width-down/310?cb=20161004162043',
			['Nightstick'] = 'https://vignette.wikia.nocookie.net/gtawiki/images/1/19/Nightstick-GTAV.png/revision/latest/scale-to-width-down/310?cb=20130920191745',
			['Crowbar'] = 'https://vignette.wikia.nocookie.net/gtawiki/images/6/6d/Crowbar-GTAV.png/revision/latest/scale-to-width-down/350?cb=20131017171932',
			['Pipewrench'] = 'https://vignette.wikia.nocookie.net/gtawiki/images/6/64/PipeWrench-GTAV.png/revision/latest/scale-to-width-down/350?cb=20161004164114',
			['Hammer'] = 'https://vignette.wikia.nocookie.net/gtawiki/images/8/88/Hammer-GTAV.png/revision/latest/scale-to-width-down/310?cb=20150521154405',
			['Flashlight'] = 'https://vignette.wikia.nocookie.net/gtawiki/images/8/88/Flashlight-GTAO.png/revision/latest/scale-to-width-down/310?cb=20151029165843',
			['Knuckle'] = 'https://vignette.wikia.nocookie.net/gtawiki/images/b/b7/BrassKnuckles-GTAV.png/revision/latest/scale-to-width-down/310?cb=20150708153813',
			['Bottle'] = 'https://vignette.wikia.nocookie.net/gtawiki/images/c/ce/Bottle-GTAV.png/revision/latest/scale-to-width-down/350?cb=20140207082902',
		},
	},
	['Handguns'] = {
		a = 1,
		b = {"PISTOL", "PISTOL_MK2", "COMBATPISTOL", "APPISTOL", "PISTOL50", "SNSPISTOL", "SNSPISTOL_MK2", "HEAVYPISTOL", "VINTAGEPISTOL", "STUNGUN", "FLAREGUN"},
		c = {
			['PISTOL'] = "https://vignette.wikia.nocookie.net/gtawiki/images/f/f4/Pistol-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108211628", 
			['PISTOL_MK2'] = "https://vignette.wikia.nocookie.net/gtawiki/images/4/46/PistolMkII-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108210825", 
			['COMBATPISTOL'] = "https://vignette.wikia.nocookie.net/gtawiki/images/8/87/CombatPistol-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108204417", 
			['APPISTOL'] = "https://vignette.wikia.nocookie.net/gtawiki/images/3/34/APPistol-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108203433", 
			['PISTOL50'] = "https://vignette.wikia.nocookie.net/gtawiki/images/e/e6/Pistol.50-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108210758", 
			['SNSPISTOL'] = "https://vignette.wikia.nocookie.net/gtawiki/images/1/17/SNSPistol-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108211527", 
			['SNSPISTOL_MK2'] = "https://vignette.wikia.nocookie.net/gtawiki/images/0/01/SNSPistolMkII-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108211544", 
			['HEAVYPISTOL'] = "https://vignette.wikia.nocookie.net/gtawiki/images/1/1f/HeavyPistol-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108204936", 
			['VINTAGEPISTOL'] = "https://vignette.wikia.nocookie.net/gtawiki/images/5/5c/VintagePistol-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108211655", 
			['STUNGUN'] = "https://vignette.wikia.nocookie.net/gtawiki/images/8/86/StunGun-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108211633", 
			['FLAREGUN'] = "https://vignette.wikia.nocookie.net/gtawiki/images/c/c0/FlareGun-GTAO.png/revision/latest/scale-to-width-down/350?cb=20180108204710"
		},
	},
	['SMG'] = {
		a = 1,
		b = {"MICROSMG", "MINISMG", "SMG", "SMG_MK2", "ASSAULTSMG", "COMBATPDW", "GUSENBERG", "MACHINEPISTOL", "MG", "COMBATMG", "COMBATMG_MK2"},
		c = {
			["MICROSMG"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/7/72/MicroSMG-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108210032', 
			["MINISMG"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/6/60/MiniSMG-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108210116',
			["SMG"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/f/fc/SMG-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108195433', 
			["SMG_MK2"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/9/9e/SMGMkII-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108195635',
			["ASSAULTSMG"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/0/08/AssaultSMG-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108195945', 
			["COMBATPDW"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/2/25/CombatPDW-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108200353',
			['GUSENBERG'] = 'https://vignette.wikia.nocookie.net/gtawiki/images/7/74/GusenbergSweeper-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108204918',
			["MACHINEPISTOL"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/c/c4/MachinePistol-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108195137',
			["MG"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/7/7c/MG-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108205933',
			["COMBATMG"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/c/c4/CombatMG-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108204317',
			["COMBATMG_MK2"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/c/cc/CombatMGMkII-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108204355',
		},
	},
	['Rifle'] = {
		a = 1,
		b = {"ASSAULTRIFLE", "ASSAULTRIFLE_MK2", "CARBINERIFLE", "CARBINERIFLE_MK2", "ADVANCEDRIFLE", "SPECIALCARBINE", "SPECIALCARBINE_MK2", "BULLPUPRIFLE", "BULLPUPRIFLE_MK2", "COMPACTRIFLE"},
		c = {
			["ASSAULTRIFLE"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/e/e6/AssaultRifle-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108203942',
			["ASSAULTRIFLE_MK2"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/5/5f/AssaultRifleMkII-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108203958',
			["CARBINERIFLE"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/e/e1/CarbineRifle-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108204035',
			["CARBINERIFLE_MK2"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/7/78/CarbineRifleMkII-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108204036',
			["ADVANCEDRIFLE"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/f/fc/AdvancedRifle-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108200521', 
			["SPECIALCARBINE"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/e/e8/SpecialCarbine-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108200839',
			["SPECIALCARBINE_MK2"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/b/bd/SpecialCarbineMkII-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108200905',
			["BULLPUPRIFLE"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/d/d2/BullpupRifle-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108201107',
			["BULLPUPRIFLE_MK2"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/5/5e/BullpupRifleMkII-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108201133',
			["COMPACTRIFLE"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/8/8c/CompactRifle-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108201447',
		},
	},
	['Shotguns'] = {
		a = 1,
		b = {"PUMPSHOTGUN", "PUMPSHOTGUN_MK2", "SWEEPERSHOTGUN", "SAWNOFFSHOTGUN", "BULLPUPSHOTGUN","ASSAULTSHOTGUN", "MUSKET", "HEAVYSHOTGUN", "DBSHOTGUN"},
		c = {
			["PUMPSHOTGUN"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/6/6f/PumpShotgun-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108202354',
			["PUMPSHOTGUN_MK2"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/1/14/PumpShotgunMkII-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108202428',
			["SWEEPERSHOTGUN"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/d/dc/SweeperShotgun-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108203310',
			["SAWNOFFSHOTGUN"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/e/e4/SawedOffShotgun-GTAV.png/revision/latest/scale-to-width-down/350?cb=20180108202444',
			["BULLPUPSHOTGUN"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/d/dc/BullpupShotgun-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108202503',
			["ASSAULTSHOTGUN"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/e/ef/AssaultShotgun-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108202910',
			["MUSKET"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/f/fc/Musket-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108202945', 
			["HEAVYSHOTGUN"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/0/0a/HeavyShotgun-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108202953', 
			["DBSHOTGUN"] = 'https://vignette.wikia.nocookie.net/gtawiki/images/b/b3/DoubleBarrelShotgun-GTAO.png/revision/latest/scale-to-width-down/350?cb=20180108203004',
		},
	},
	['Heavy'] = {
		a = 1,
		b = {"CompactGrenadeLauncher", "FireworkLauncher", "GrenadeLauncher", "HomingLauncher", "Minigun", "Railgun",  "RPG"},
		c = {
			['CompactGrenadeLauncher'] = 'https://static.wikia.nocookie.net/gtawiki/images/6/61/CompactGrenadeLauncher-GTAV.png/revision/latest/scale-to-width-down/350?cb=20180108203355',
			['FireworkLauncher'] = 'https://static.wikia.nocookie.net/gtawiki/images/0/01/FireworkLauncher-GTAV.png/revision/latest/scale-to-width-down/350?cb=20180108203338',
			['GrenadeLauncher'] = 'https://static.wikia.nocookie.net/gtawiki/images/9/98/GrenadeLauncher-GTAV.png/revision/latest/scale-to-width-down/350?cb=20180108204737',
			['HomingLauncher'] = 'https://static.wikia.nocookie.net/gtawiki/images/8/8a/HomingLauncher-GTAV.png/revision/latest/scale-to-width-down/350?cb=20180108205802',
			['Minigun'] = 'https://static.wikia.nocookie.net/gtawiki/images/5/5c/Minigun-GTAV.png/revision/latest/scale-to-width-down/350?cb=20180108210056',
			['Railgun'] = 'https://static.wikia.nocookie.net/gtawiki/images/2/2e/Railgun-GTAV.png/revision/latest/scale-to-width-down/350?cb=20180108210857',
			['RPG'] = 'https://static.wikia.nocookie.net/gtawiki/images/2/24/RPG-GTAV.png/revision/latest/scale-to-width-down/350?cb=20180108210919',
		},
	},
	['Snipers'] = {
		a = 1,
		b = {"HeavySniper", "HeavySniper_MK2", "MarksmanRifle", "MarksmanRifle_MK2", "SniperRifle"},
		c = {
			['HeavySniper'] = 'https://static.wikia.nocookie.net/gtawiki/images/7/71/HeavySniper-GTAV.png/revision/latest/scale-to-width-down/350?cb=20180108201619',
			['HeavySniper_MK2'] = 'https://static.wikia.nocookie.net/gtawiki/images/f/f9/HeavySniperMkII-GTAV.png/revision/latest/scale-to-width-down/350?cb=20180108201713',
			['MarksmanRifle'] = 'https://static.wikia.nocookie.net/gtawiki/images/5/5c/MarksmanRifle-GTAV.png/revision/latest/scale-to-width-down/350?cb=20180108201724',
			['MarksmanRifle_MK2'] = 'https://static.wikia.nocookie.net/gtawiki/images/3/33/MarksmanRifleMkII-GTAV.png/revision/latest/scale-to-width-down/350?cb=20180108201720',
			['SniperRifle'] = 'https://static.wikia.nocookie.net/gtawiki/images/6/6e/SniperRifle-GTAV.png/revision/latest/scale-to-width-down/350?cb=20180108201526',
		},
	},
	['SetHP'] = {
		a = 101,
		b = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100},
	},
	['SetArmour'] = {
		a = 101,
		b = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100},
	},
	['Throwable'] = {
		a = 1,
		b = {
			"Flare", "Grenade", "PipeBomb", "Snowball", "StickyBomb", "TearGas",
		},
		c = { 
			['Flare'] = 'https://static.wikia.nocookie.net/gtawiki/images/0/00/Flare-GTAV.png/revision/latest/scale-to-width-down/350?cb=20210115143539',
			['Grenade'] = 'https://static.wikia.nocookie.net/gtawiki/images/5/52/Grenade-GTAV.png/revision/latest/scale-to-width-down/350?cb=20190809090848',
			['PipeBomb'] = 'https://static.wikia.nocookie.net/gtawiki/images/0/08/PipeBomb-GTAV.png/revision/latest/scale-to-width-down/350?cb=20161004161717',
			['Snowball'] = 'https://static.wikia.nocookie.net/gtawiki/images/b/bd/Snowball-GTAO.png/revision/latest/scale-to-width-down/300?cb=20161222143911',
			['StickyBomb'] = 'https://static.wikia.nocookie.net/gtawiki/images/0/09/StickyBomb-GTAV.png/revision/latest/scale-to-width-down/350?cb=20130929074646',
			['TearGas'] = 'https://static.wikia.nocookie.net/gtawiki/images/a/af/TearGas-GTAV.png/revision/latest/scale-to-width-down/350?cb=20140204074533',
		},
	},
	['wardrobe-hat'] = {
		a = 1,
		b = {1},
	},
	['wardrobe-mask'] = {
		a = 1,
		b = {1},
	},
	['wardrobe-glasses'] = {
		a = 1,
		b = {1},
	},
	['wardrobe-Torso'] = {
		a = 1,
		b = {1},
	},
	['wardrobe-TSHIRT'] = {
		a = 1,
		b = {1},
	},
	['wardrobe-Shoes'] = {
		a = 1,
		b = {1},
	},
	['wardrobe-Pants'] = {
		a = 1,
		b = {1},
	},
	
	
	

	

	['Male'] = {
		a = 1,
		b = {"a_m_m_acult_01", "a_m_m_afriamer_01", "a_m_m_beach_01", "a_m_m_beach_02", "a_m_m_bevhills_01", "a_m_m_bevhills_02", "a_m_m_business_01", "a_m_m_eastsa_01", "a_m_m_eastsa_02", "a_m_m_farmer_01", "a_m_m_fatlatin_01", "a_m_m_genfat_01", "a_m_m_genfat_02", "a_m_m_golfer_01", "a_m_m_hasjew_01", "a_m_m_hillbilly_01", "a_m_m_hillbilly_02", "a_m_m_indian_01", "a_m_m_ktown_01", "a_m_m_malibu_01", "a_m_m_mexcntry_01", "a_m_m_mexlabor_01", "a_m_m_og_boss_01", "a_m_m_paparazzi_01", "a_m_m_polynesian_01", "a_m_m_prolhost_01", "a_m_m_rurmeth_01", "a_m_m_salton_01", "a_m_m_salton_02", "a_m_m_salton_03", "a_m_m_salton_04", "a_m_m_skater_01", "a_m_m_skidrow_01", "a_m_m_socenlat_01", "a_m_m_soucent_01", "a_m_m_soucent_02", "a_m_m_soucent_03", "a_m_m_soucent_04", "a_m_m_stlat_02", "a_m_m_tennis_01", "a_m_m_tourist_01", "a_m_m_tramp_01", "a_m_m_trampbeac_01", "a_m_m_tranvest_01", "a_m_m_tranvest_02", "a_m_o_acult_01", "a_m_o_acult_02", "a_m_o_beach_01", "a_m_o_genstreet_01", "a_m_o_ktown_01", "a_m_o_salton_01", "a_m_o_soucent_01", "a_m_o_soucent_02", "a_m_o_soucent_03", "a_m_o_tramp_01", "a_m_y_acult_01", "a_m_y_acult_01", "a_m_y_beach_01", "a_m_y_beach_02", "a_m_y_beach_03", "a_m_y_beachvesp_01", "a_m_y_beachvesp_02", "a_m_y_bevhills_01", "a_m_y_bevhills_02", "a_m_y_breakdance_01", "a_m_y_busicas_01", "a_m_y_business_01", "a_m_y_business_02", "a_m_y_business_03", "a_m_y_clubcust_01", "a_m_y_clubcust_02", "a_m_y_clubcust_03", "a_m_y_cyclist_01", "a_m_y_dhill_01", "a_m_y_downtown_01", "a_m_y_eastsa_01", "a_m_y_eastsa_02", "a_m_y_epsilon_01", "a_m_y_epsilon_02", "a_m_y_gay_01", "a_m_y_gay_02", "a_m_y_genstreet_01", "a_m_y_genstreet_02", "a_m_y_golfer_01", "a_m_y_hasjew_01", "a_m_y_hiker_01", "a_m_y_hippy_01", "a_m_y_hipster_01", "a_m_y_hipster_02", "a_m_y_hipster_03", "a_m_y_indian_01", "a_m_y_jetski_01", "a_m_y_juggalo_01", "a_m_y_ktown_01", "a_m_y_ktown_02", "a_m_y_latino_01", "a_m_y_methhead_01", "a_m_y_mexthug_01", "a_m_y_motox_01", "a_m_y_motox_02", "a_m_y_musclbeac_01", "a_m_y_musclbeac_02", "a_m_y_polynesian_01", "a_m_y_roadcyc_01", "a_m_y_runner_01", "a_m_y_runner_02", "a_m_y_salton_01", "a_m_y_skater_01", "a_m_y_skater_02", "a_m_y_soucent_01", "a_m_y_soucent_02", "a_m_y_soucent_03", "a_m_y_soucent_04", "a_m_y_stbla_01", "a_m_y_stbla_02", "a_m_y_stlat_01", "a_m_y_stwhi_01", "a_m_y_stwhi_02", "a_m_y_sunbathe_01", "a_m_y_surfer_01", "a_m_y_vindouche_01", "a_m_y_vinewood_01", "a_m_y_vinewood_02", "a_m_y_vinewood_03",  "a_m_y_vinewood_04", "a_m_y_yoga_01", "a_m_m_mlcrisis_01", "a_m_y_gencaspat_01",  "a_m_y_smartcaspat_01", "mp_m_freemode_01"},
	},
	['Female'] = {
		a = 1,
		b = {"a_f_m_beach_01", "a_f_m_bevhills_01", "a_f_m_bevhills_02", "a_f_m_bodybuild_01", "a_f_m_business_02", "a_f_m_downtown_01", "a_f_m_eastsa_01", "a_f_m_eastsa_02", "a_f_m_fatbla_01", "a_f_m_fatcult_01", "a_f_m_fatwhite_01", "a_f_m_ktown_01", "a_f_m_ktown_02", "a_f_m_prolhost_01", "a_f_m_salton_01", "a_f_m_skidrow_01", "a_f_m_soucent_01", "a_f_m_soucent_02", "a_f_m_soucentmc_01", "a_f_m_tourist_01", "a_f_m_tramp_01", "a_f_m_trampbeac_01", "a_f_o_genstreet_01", "a_f_o_indian_01", "a_f_o_ktown_01", "a_f_o_salton_01", "a_f_o_soucent_01", "a_f_o_soucent_02", "a_f_y_beach_01", "a_f_y_bevhills_01", "a_f_y_bevhills_02", "a_f_y_bevhills_03", "a_f_y_bevhills_04", "a_f_y_business_01", "a_f_y_business_02", "a_f_y_business_03", "a_f_y_business_04", "a_f_y_clubcust_01", "a_f_y_clubcust_02", "a_f_y_clubcust_03", "a_f_y_eastsa_01", "a_f_y_eastsa_02", "a_f_y_eastsa_03", "a_f_y_epsilon_01", "a_f_y_femaleagent", "a_f_y_fitness_01", "a_f_y_fitness_02", "a_f_y_genhot_01", "a_f_y_golfer_01", "a_f_y_hiker_01", "a_f_y_hippie_01", "a_f_y_hipster_01", "a_f_y_hipster_02", "a_f_y_hipster_03", "a_f_y_hipster_04", "a_f_y_indian_01", "a_f_y_juggalo_01", "a_f_y_runner_01", "a_f_y_rurmeth_01", "a_f_y_scdressy_01", "a_f_y_skater_01", "a_f_y_soucent_01", "a_f_y_soucent_02", "a_f_y_soucent_03",  "a_f_y_tennis_01", "a_f_y_topless_01", "a_f_y_tourist_01", "a_f_y_tourist_02", "a_f_y_yoga_01", "a_f_y_gencaspat_01"},
	},
	['Effects'] = {
		a = 1,
		b = {"mp_lad_day","mp_lad_judgment","mp_lad_night","AirRaceBoost01","AirRaceBoost02","AmbientPUSH","AP1_01_B_IntRefRange","AP1_01_C_NoFog","ArenaEMP","ArenaEMP_Blend","ArenaWheelPurple01","ArenaWheelPurple02","Bank_HLWD","Barry1_Stoned","BarryFadeOut","baseTONEMAPPING","BeastIntro01","BeastIntro02","BeastLaunch01","BeastLaunch02","BikerFilter","BikerForm01","BikerFormFlash","Bikers","BikersSPLASH","blackNwhite","BlackOut","BleepYellow01","BleepYellow02","Bloom","BloomLight","BloomMid","BombCam01","BombCamFlash","Broken_camera_fuzz","buggy_shack","buildingTOP","BulletTimeDark","BulletTimeLight","CAMERA_BW","CAMERA_secuirity","CAMERA_secuirity_FUZZ","canyon_mission","carMOD_underpass","carpark","carpark_dt1_02","carpark_dt1_03","Carpark_MP_exit","cashdepot","cashdepotEMERGENCY","casino_brightroom","casino_mainfloor","casino_mainWhiteFloor","casino_managementlobby","casino_managementOff","casino_managersoffice","CasinoBathrooms","cBank_back","cBank_front","ch2_tunnel_whitelight","CH3_06_water","CHOP","cinema","cinema_001","cops","CopsSPLASH","crane_cam","crane_cam_cinematic","CrossLine01","CrossLine02","CS1_railwayB_tunnel","CS3_rail_tunnel","CUSTOM_streetlight","damage","DeadlineBlight01","default","DefaultColorCode","dlc_casino_carpark","DLC_Casino_Garage","DONT_overide_sunpos","Dont_tazeme_bro","dont_tazeme_bro_b","downtown_FIB_cascades_opt","DrivingFocusDark","DrivingFocusLight","Drone_FishEye_Lens","DRUG_2_drive","Drug_deadman","Drug_deadman_blend","drug_drive_blend01","drug_drive_blend02","drug_flying_01","drug_flying_02","drug_flying_base","DRUG_gas_huffin","drug_wobbly","Drunk","dying","eatra_bouncelight_beach","epsilion","exile1_exit","exile1_plane","ExplosionJosh","EXT_FULLAmbientmult_art","ext_int_extlight_large","EXTRA_bouncelight","eyeINtheSKY","Facebook_NEW","facebook_serveroom","FIB_5","FIB_6","FIB_A","FIB_B","FIB_interview","FIB_interview_optimise","FinaleBank","FinaleBankexit","FinaleBankMid","fireDEPT","FORdoron_delete","Forest","fp_vig_black","fp_vig_blue","fp_vig_brown","fp_vig_gray","fp_vig_green","fp_vig_red","FrankilinsHOUSEhills","frankilnsAUNTS_new","frankilnsAUNTS_SUNdir","FRANKLIN","FranklinColorCode","FranklinColorCodeBasic","FranklinColorCodeBright","FullAmbientmult_interior","gallery_refmod","garage","gen_bank","glasses_black","Glasses_BlackOut","glasses_blue","glasses_brown","glasses_Darkblue","glasses_green","glasses_orange","glasses_pink","glasses_purple","glasses_red","glasses_Scuba","glasses_VISOR","glasses_yellow","gorge_reflection_gpu","gorge_reflectionoffset","gorge_reflectionoffset2","graveyard_shootout","grdlc_int_02","grdlc_int_02_trailer_cave","gunclub","gunclubrange","gunshop","gunstore","half_direct","hangar_lightsmod","Hanger_INTmods","heathaze","heist_boat","heist_boat_engineRoom","heist_boat_norain","helicamfirst","heliGunCam","Hicksbar","HicksbarNEW","hillstunnel","Hint_cam","hitped","hud_def_blur","hud_def_blur_switch","hud_def_colorgrade","hud_def_desat_cold","hud_def_desat_cold_kill","hud_def_desat_Franklin","hud_def_desat_Michael","hud_def_desat_Neutral","hud_def_desat_switch","hud_def_desat_Trevor","hud_def_desatcrunch","hud_def_flash","hud_def_focus","hud_def_Franklin","hud_def_lensdistortion","hud_def_lensdistortion_subtle","hud_def_Michael","hud_def_Trevor","ImpExp_Interior_01","IMpExt_Interior_02","IMpExt_Interior_02_stair_cage","InchOrange01","InchOrange02","InchPickup01","InchPickup02","InchPurple01","InchPurple02","INT_FullAmbientmult","INT_FULLAmbientmult_art","INT_FULLAmbientmult_both","INT_garage","INT_mall","INT_NO_fogALPHA","INT_NoAmbientmult","INT_NoAmbientmult_art","INT_NoAmbientmult_both","INT_NOdirectLight","INT_nowaterREF","INT_posh_hairdresser","INT_smshop","INT_smshop_indoor_bloom","INT_smshop_inMOD","INT_smshop_outdoor_bloom","INT_streetlighting","INT_trailer_cinema","id1_11_tunnel","impexp_interior_01_lift","int_amb_mult_large","int_arena_01","int_arena_Mod","int_arena_Mod_garage","int_arena_VIP","int_Barber1","int_carmod_small","int_carrier_control","int_carrier_control_2","int_carrier_hanger","int_carrier_rear","int_carrier_stair","int_carshowroom","int_chopshop","int_clean_extlight_large","int_clean_extlight_none","int_clean_extlight_small","int_ClothesHi","int_clotheslow_large","int_cluckinfactory_none","int_cluckinfactory_small","int_ControlTower_none","int_ControlTower_small","int_dockcontrol_small","int_extlght_sm_cntrst","int_extlight_large","int_extlight_large_fog","int_extlight_none","int_extlight_none_dark","int_extlight_none_dark_fog","int_extlight_none_fog","int_extlight_small","int_extlight_small_clipped","int_extlight_small_fog","int_Farmhouse_none","int_Farmhouse_small","int_FranklinAunt_small","int_GasStation","int_hanger_none","int_hanger_small","int_Hospital_Blue","int_Hospital_BlueB","int_hospital_dark","int_Hospital_DM","int_hospital_small","int_Hospital2_DM","int_lesters","int_Lost_none","int_Lost_small","int_methlab_small","int_motelroom","int_office_Lobby","int_office_LobbyHall","int_tattoo","int_tattoo_B","int_tunnel_none_dark","interior_WATER_lighting","introblue","jewel_gas","jewel_optim","jewelry_entrance","jewelry_entrance_INT","jewelry_entrance_INT_fog","Kifflom","KT_underpass","lab_none","lab_none_dark","lab_none_dark_fog","lab_none_dark_OVR","lab_none_exit","lab_none_exit_OVR","LectroDark","LectroLight","LIGHTSreduceFALLOFF","li","LifeInvaderLOD","lightning","lightning_cloud","lightning_strong","lightning_weak","LightPollutionHills","lightpolution","LODmult_global_reduce","LODmult_global_reduce_NOHD","LODmult_HD_orphan_LOD_reduce","LODmult_HD_orphan_reduce","LODmult_LOD_reduce","LODmult_SLOD1_reduce","LODmult_SLOD2_reduce","LODmult_SLOD3_reduce","lodscaler","LostTimeDark","LostTimeFlash","LostTimeLight","maxlodscaler","metro","METRO_platform","METRO_Tunnels","METRO_Tunnels_entrance","MichaelColorCode","MichaelColorCodeBasic","MichaelColorCodeBright","MichaelsDarkroom","MichaelsDirectional","MichaelsNODirectional","micheal","micheals_lightsOFF","michealspliff","michealspliff_blend","michealspliff_blend02","militarybase_nightlight","mineshaft","morebloom","morgue_dark","morgue_dark_ovr","Mp_apart_mid","MP_Arena_theme_atlantis","MP_Arena_theme_evening","MP_Arena_theme_hell","MP_Arena_theme_midday","MP_Arena_theme_morning","MP_Arena_theme_night","MP_Arena_theme_saccharine","MP_Arena_theme_sandstorm","MP_Arena_theme_scifi_night","MP_Arena_theme_storm","MP_Arena_theme_toxic","MP_Arena_VIP","mp_battle_int01","mp_battle_int01_dancefloor","mp_battle_int01_dancefloor_OFF","mp_battle_int01_entry","mp_battle_int01_garage","mp_battle_int01_office","mp_battle_int02","mp_battle_int03","mp_battle_int03_tint1","mp_battle_int03_tint2","mp_battle_int03_tint3","mp_battle_int03_tint4","mp_battle_int03_tint5","mp_battle_int03_tint6","mp_battle_int03_tint7","mp_battle_int03_tint8","mp_battle_int03_tint9","mp_bkr_int01_garage","mp_bkr_int01_small_rooms","mp_bkr_int01_transition","mp_bkr_int02_garage","mp_bkr_int02_hangout","mp_bkr_int02_small_rooms","mp_bkr_ware01","mp_bkr_ware02_dry","mp_bkr_ware02_standard","mp_bkr_ware02_upgrade","mp_bkr_ware03_basic","mp_bkr_ware03_upgrade","mp_bkr_ware04","mp_bkr_ware05","MP_Bull_tost","MP_Bull_tost_blend","MP_casino_apartment_bar","MP_casino_apartment_barPARTY","MP_casino_apartment_barPARTY_0","MP_casino_apartment_barPARTY_01","MP_casino_apartment_barPARTY_2","MP_casino_apartment_Bath","MP_casino_apartment_changing","MP_casino_apartment_cinema","MP_casino_apartment_colour0","MP_casino_apartment_colour1","MP_casino_apartment_colour2","MP_casino_apartment_exec","MP_casino_apartment_lobby","MP_casino_apartment_lounge","MP_casino_apartment_MBed","MP_casino_apartment_office","MP_casino_apartment_spa","MP_corona_heist","MP_corona_heist_blend","MP_corona_heist_BW","MP_corona_heist_BW_night","MP_corona_heist_DOF","MP_corona_heist_night","MP_corona_heist_night_blend","MP_corona_selection","MP_corona_switch","MP_corona_tournament","MP_corona_tournament_DOF","MP_death_grade","MP_death_grade_blend01","MP_death_grade_blend02","MP_deathfail_night","mp_exec_office_01","mp_exec_office_02","mp_exec_office_03","mp_exec_office_03_blue","mp_exec_office_03C","mp_exec_office_04","mp_exec_office_05","mp_exec_office_06","mp_exec_warehouse_01","MP_Garage_L","mp_gr_int01_black","mp_gr_int01_grey","mp_gr_int01_white","MP_H_01_Bathroom","MP_H_01_Bedroom","MP_H_01_New","MP_H_01_New_Bathroom","MP_H_01_New_Bedroom","MP_H_01_New_Study","MP_H_01_Study","MP_H_02","MP_H_04","mp_h_05","MP_H_06","mp_h_07","mp_h_08","MP_heli_cam","mp_imx_intwaremed","mp_imx_intwaremed_office","mp_imx_mod_int_01","MP_intro_logo","MP_job_end_night","MP_job_load","MP_job_load_01","MP_job_load_02","MP_job_lose","MP_job_preload","MP_job_preload_blend","MP_job_preload_night","MP_job_win","MP_Killstreak","MP_Killstreak_blend","MP_Loser","MP_Loser_blend","MP_lowgarage","MP_MedGarage","mp_nightshark_shield_fp","MP_Powerplay","MP_Powerplay_blend","MP_race_finish","MP_select","mp_smg_int01_han","mp_smg_int01_han_blue","mp_smg_int01_han_red","mp_smg_int01_han_yellow","Mp_Stilts","Mp_Stilts_gym","Mp_Stilts_gym2","Mp_Stilts2","Mp_Stilts2_bath","MP_Studio_Lo","mp_x17dlc_base","mp_x17dlc_base_dark","mp_x17dlc_base_darkest","mp_x17dlc_facility","mp_x17dlc_facility_conference","mp_x17dlc_facility2","mp_x17dlc_in_sub","mp_x17dlc_in_sub_no_reflection","mp_x17dlc_int_01","mp_x17dlc_int_01_tint1","mp_x17dlc_int_01_tint2","mp_x17dlc_int_01_tint3","mp_x17dlc_int_01_tint4","mp_x17dlc_int_01_tint5","mp_x17dlc_int_01_tint6","mp_x17dlc_int_01_tint7","mp_x17dlc_int_01_tint8","mp_x17dlc_int_01_tint9","mp_x17dlc_int_02","mp_x17dlc_int_02_hangar","mp_x17dlc_int_02_outdoor_intro_camera","mp_x17dlc_int_02_tint1","mp_x17dlc_int_02_tint2","mp_x17dlc_int_02_tint3","mp_x17dlc_int_02_tint4","mp_x17dlc_int_02_tint5","mp_x17dlc_int_02_tint6","mp_x17dlc_int_02_tint7","mp_x17dlc_int_02_tint8","mp_x17dlc_int_02_tint9","mp_x17dlc_int_02_vehicle_avenger_camera","mp_x17dlc_int_02_vehicle_workshop_camera","mp_x17dlc_int_02_weapon_avenger_camera","mp_x17dlc_int_silo","mp_x17dlc_int_silo_escape","mp_x17dlc_lab","mp_x17dlc_lab_loading_bay","MPApart_H_01","MPApart_H_01_gym","MPApartHigh","MPApartHigh_palnning","mugShot","mugShot_lineup","Multipayer_spectatorCam","multiplayer_ped_fight","nervousRON_fog","NeutralColorCode","NeutralColorCodeBasic","NeutralColorCodeBright","NeutralColorCodeLight","NEW_abattoir","new_bank","NEW_jewel","NEW_jewel_EXIT","NEW_lesters","new_MP_Garage_L","NEW_ornate_bank","NEW_ornate_bank_entrance","NEW_ornate_bank_office","NEW_ornate_bank_safe","New_sewers","NEW_shrinksOffice","NEW_station_unfinished","new_stripper_changing","NEW_trevorstrailer","NEW_tunnels","NEW_tunnels_ditch","new_tunnels_entrance","NEW_tunnels_hole","NEW_yellowtunnels","NewMicheal","NewMicheal_night","NewMicheal_upstairs","NewMichealgirly","NewMichealstoilet","NewMichealupstairs","NewMod","nextgen","NG_blackout","NG_deathfail_BW_base","NG_deathfail_BW_blend01","NG_deathfail_BW_blend02","NG_filmic01","NG_filmic02","NG_filmic03","NG_filmic04","NG_filmic05","NG_filmic06","NG_filmic07","NG_filmic08","NG_filmic09","NG_filmic10","NG_filmic11","NG_filmic12","NG_filmic13","NG_filmic14","NG_filmic15","NG_filmic16","NG_filmic17","NG_filmic18","NG_filmic19","NG_filmic20","NG_filmic21","NG_filmic22","NG_filmic23","NG_filmic24","NG_filmic25","NG_filmnoir_BW01","NG_filmnoir_BW02","NG_first","nightvision","NO_coronas","NO_fog_alpha","NO_streetAmbient","NO_weather","NoAmbientmult","NoAmbientmult_interior","NOdirectLight","NoPedLight","NOrain","OrbitalCannon","overwater","Paleto","paleto_nightlight","paleto_opt","PennedInDark","PennedInLight","PERSHING_water_reflect","phone_cam","phone_cam1","phone_cam10","phone_cam11","phone_cam12","phone_cam13","phone_cam2","phone_cam3","phone_cam3_REMOVED","phone_cam4","phone_cam5","phone_cam6","phone_cam7","phone_cam8","phone_cam8_REMOVED","phone_cam9","plane_inside_mode","player_transition","player_transition_no_scanlines","player_transition_scanlines","PlayerSwitchNeutralFlash","PlayerSwitchPulse","plaza_carpark","PoliceStation","PoliceStationDark","polluted","poolsidewaterreflection2","PORT_heist_underwater","powerplant_nightlight","powerstation","PPFilter","PPGreen01","PPGreen02","PPOrange01","PPOrange02","PPPink01","PPPink02","PPPurple01","PPPurple02","prison_nightlight","projector","prologue","prologue_ending_fog","prologue_ext_art_amb","prologue_reflection_opt","prologue_shootout","Prologue_shootout_opt","pulse","RaceTurboDark","RaceTurboFlash","RaceTurboLight","ranch","REDMIST","REDMIST_blend","ReduceDrawDistance","ReduceDrawDistanceMAP","ReduceDrawDistanceMission","reducelightingcost","ReduceSSAO","reducewaterREF","refit","reflection_correct_ambient","RemixDrone","RemoteSniper","resvoire_reflection","rply_brightness","rply_brightness_neg","rply_contrast","rply_contrast_neg","rply_motionblur","rply_saturation","rply_saturation_neg","rply_vignette","rply_vignette_neg","SALTONSEA","sandyshore_nightlight","SAWMILL","scanline_cam","scanline_cam_cheap","scope_zoom_in","scope_zoom_out","secret_camera","services_nightlight","shades_pink","shades_yellow","SheriffStation","ship_explosion_underwater","ship_explosion_underwater","ship_lighting","Shop247","Shop247_none","sleeping","SmugglerCheckpoint01","SmugglerCheckpoint02","SmugglerFlash","Sniper","SP1_03_drawDistance","spectator1","spectator10","spectator2","spectator3","spectator4","spectator5","spectator6","spectator7","spectator8","spectator9","StadLobby","stc_coroners","stc_deviant_bedroom","stc_deviant_lounge","stc_franklinsHouse","stc_trevors","stoned","stoned_aliens","stoned_cutscene","stoned_monkeys","StreetLighting","StreetLightingJunction","StreetLightingtraffic","STRIP_changing","STRIP_nofog","STRIP_office","STRIP_stage","StuntFastDark","StuntFastLight","StuntSlowDark","StuntSlowLight","subBASE_water_ref","sunglasses","superDARK","switch_cam_1","switch_cam_2","telescope","TinyGreen01","TinyGreen02","TinyPink01","TinyPink02","TinyRacerMoBlur","torpedo","traffic_skycam","trailer_explosion_optimise","TransformFlash","TransformRaceFlash","TREVOR","TrevorColorCode","TrevorColorCodeBasic","TrevorColorCodeBright","Trevors_room","trevorspliff","trevorspliff_blend","trevorspliff_blend02","Tunnel","tunnel_entrance","tunnel_entrance_INT","TUNNEL_green","TUNNEL_green_ext","Tunnel_green1","tunnel_id1_11","TUNNEL_orange","TUNNEL_orange_exterior","TUNNEL_white","TUNNEL_yellow","TUNNEL_yellow_ext","ufo","ufo_deathray","underwater","underwater_deep","underwater_deep_clear","v_abattoir","V_Abattoir_Cold","v_bahama","v_cashdepot","V_CIA_Facility","v_dark","V_FIB_IT3","V_FIB_IT3_alt","V_FIB_IT3_alt5","V_FIB_stairs","v_foundry","v_janitor","v_jewel2","v_metro","V_Metro_station","V_Metro2","v_michael","v_michael_lounge","V_Office_smoke","V_Office_smoke_ext","V_Office_smoke_Fire","v_recycle","V_recycle_dark","V_recycle_light","V_recycle_mainroom","v_rockclub","V_Solomons","V_strip_nofog","V_strip_office","v_strip3","v_strpchangerm","v_sweat","v_sweat_entrance","v_sweat_NoDirLight","v_torture","Vagos","vagos_extlight_small","VAGOS_new_garage","VAGOS_new_hangout","VagosSPLASH","VC_tunnel_entrance","vehicle_subint","venice_canal_tunnel","vespucci_garage","VolticBlur","VolticFlash","VolticGold","warehouse","WAREHOUSE","WarpCheckpoint","WATER _lab_cooling","WATER_CH2_06_01_03","WATER_CH2_06_02","WATER_CH2_06_04","WATER_cove","WATER_hills","WATER_ID2_21","WATER_lab","WATER_lab_cooling","WATER_militaryPOOP","WATER_muddy","WATER_port","WATER_REF_malibu","WATER_refmap_high","WATER_refmap_hollywoodlake","WATER_refmap_low","WATER_refmap_med","WATER_refmap_off","WATER_refmap_poolside","WATER_refmap_silverlake","WATER_refmap_venice","WATER_refmap_verylow","WATER_resevoir","WATER_RichmanStuntJump","WATER_river","WATER_salton","WATER_salton_bottom","WATER_shore","WATER_silty","WATER_silverlake","WeaponUpgrade","whitenightlighting","WhiteOut","winning_room","yacht_DLC","yell_tunnel_nodirect"},
	},
	['CustomLocation'] = {
		a = 1,
		b = {"Ammunation", "Clothes Store", "BarberShop", "Car Dealer"},
	},
	['wantedlevel'] = {
		a = 1,
		b = {0, 1, 2, 3, 4, 5},
	},
	['ChamsType'] = {
		a = 1,
		b = {'white', 'red', 'green', 'blue', 'galaxy1', 'galaxy2', 'lightning', 'clean'},
	},
	['ParticlesBone'] = {
		a = 1,
		b = {'Head', 'Neck', 'Torso', 'Left-Hand', 'Right-Hand', 'Pelvis', 'Left-Knee', 'Right-Knee'},
		c = {31086, 39317, 0, 18905, 57005, 11816, 46078, 16335},
	},
	['ParticlesOnl'] = {
		a = 1,
		b = {'Fire', 'Smoke', 'Fireworks', 'Smoke2', 'Clown', 'Water', 'Dirt', 'Alien', 'Explosion', "Stars", "bubble gum", "oranges"},
		c = {'core', 'scr_tplaces', 'scr_indep_fireworks', 'scr_powerplay', 'scr_rcbarry2', 'core', 'core', 'scr_rcbarry1', 'des_fib_floor', "scr_rcpaparazzo1", "core", "core"},
		d = {'ent_sht_petrol_fire', 'scr_tplaces_team_swap_nocash',  'scr_indep_firework_trail_spawn', 'scr_powerplay_beast_appear', 'sp_clown_appear_trails', 'exp_water', 'bul_dirt', 'scr_alien_disintegrate', 'ent_ray_fbi5a_ramp_explosion', "scr_mich4_firework_trailburst_spawn", "ent_dst_gen_gobstop", "ent_col_tree_oranges"},
	},
	['ExplodeTypeOnl'] = {
		a = 7,
		b = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 40, 43},
	},
	['DoorsOnl'] = {
		a = 1,
		b = {"lock", "unlock", "open all", "close all", 'open front left', 'open front right', 'open left rear', 'open right rear', 'open mask', 'open trunk', 'close front left', 'close front right', 'close left rear', 'close right rear', 'close mask', 'close trunk'}
	},
	['SoundsOnl'] = {
		a = 1,
		b = {'Buldozer', 'End call', 'Beep', 'Beep2', 'Beep3', 'Beep4', 'Beep5', 'Power down', 'Explode'},
		c = {'DiggerRevOneShot', 'Hang_Up', 'PIN_BUTTON', 'Crash', 'Beep_Green', 'Power_Down', '3_2_1', 'ATM_WINDOW', 'Boss_Blipped'},
		d = {'BulldozerDefault', 'Phone_SoundSet_Michael', 'ATM_SOUNDS', 'DLC_HEIST_HACKING_SNAKE_SOUNDS', 'DLC_HEIST_HACKING_SNAKE_SOUNDS', 'DLC_HEIST_HACKING_SNAKE_SOUNDS', 'HUD_MINI_GAME_SOUNDSET', 'HUD_FRONTEND_DEFAULT_SOUNDSET', 'GTAO_Magnate_Hunt_Boss_SoundSet'},
	},
	['KillUsingWeaponOnline'] = {
		a = 1,
		b = {"PISTOL", "PISTOL_MK2", "COMBATPISTOL", "APPISTOL", "REVOLVER", "REVOLVER_MK2","DOUBLEACTION","PISTOL50", "SNSPISTOL", "SNSPISTOL_MK2", "HEAVYPISTOL","VINTAGEPISTOL","STUNGUN","FLAREGUN","MARKSMANPISTOL","KNIFE","KNUCKLE","NIGHTSTICK","HAMMER","BAT","GOLFCLUB","CROWBAR","BOTTLE", "DAGGER","HATCHET", "MACHETE", "FLASHLIGHT", "SWITCHBLADE","POOLCUE","PIPEWRENCH", "MICROSMG","MINISMG","SMG","SMG_MK2","ASSAULTSMG","COMBATPDW","GUSENBERG","MACHINEPISTOL","MG","COMBATMG","COMBATMG_MK2","ASSAULTRIFLE","ASSAULTRIFLE_MK2", "CARBINERIFLE","CARBINERIFLE_MK2","ADVANCEDRIFLE","SPECIALCARBINE","SPECIALCARBINE_MK2","BULLPUPRIFLE","BULLPUPRIFLE_MK2","COMPACTRIFLE","PUMPSHOTGUN","PUMPSHOTGUN_MK2", "SWEEPERSHOTGUN","SAWNOFFSHOTGUN","BULLPUPSHOTGUN","ASSAULTSHOTGUN","MUSKET","HEAVYSHOTGUN","DBSHOTGUN","SNIPERRIFLE","HEAVYSNIPER","HEAVYSNIPER_MK2","MARKSMANRIFLE", "MARKSMANRIFLE_MK2","GRENADELAUNCHER","GRENADELAUNCHER_SMOKE","RPG","MINIGUN","FIREWORK","RAILGUN","HOMINGLAUNCHER","COMPACTLAUNCHER","GRENADE","STICKYBOMB", "PROXMINE","BZGAS","SMOKEGRENADE","MOLOTOV","FIREEXTINGUISHER","PETROLCAN","SNOWBALL","FLARE","BALL"},
	},
	['RambyvehicleOnline'] = {
		a = 1,
		b = {'adder', 'banshee', 'rumpo', 'bus', 'banshee', 'bmx', 'pounder', 'Submersible', 'cutter'},
	},
	['AttachOnl'] = {
		a = 1,
		b = {"prop_beach_fire", "prop_alien_egg_01", "prop_barrel_exp_01c", "dt1_tc_ufocore", "stt_prop_stunt_track_straight", "stt_prop_stunt_bowling_ball", "prop_atm_01", "prop_atm_02"},
	},
	
	
	
	
}

Blight.F.Tables.DeleteEntity = function(entity)
	if not Blight.F.Tables.DoesEntityExist(entity) then 
        return 
    end
    Blight.F.Tables.NetworkRequestControlOfEntity(entity) 
	Blight.F.Tables.SetEntityAsMissionEntity(entity, true, true)
    Blight.F.Tables.DeletePed(entity)
    Blight.F.Tables.DeleteEEntity(entity)
    Blight.F.Tables.DeleteObject(entity)
    Blight.F.Tables.DeleteVehicle(entity)
    return true
end

Blight.F.Funcs = {
	SpawnAddonVeh = function(v)
		local spawnname = Blight.F.Tables.GetHashKey(v)
		Blight.F.Tables.RequestModel(spawnname)
		while not Blight.F.Tables.HasModelLoaded(spawnname) do
			__CitIn__.Wait(30)
		end
		local veh = Blight.F.Tables.CreateVehicle(spawnname, Blight.F.Tables.GetEntityCoords(Blight.F.Tables.PlayerPedId()), 1, 1, 1)
		Blight.F.Tables.SetPedIntoVehicle(Blight.F.Tables.PlayerPedId(), veh, -1)
		Blight.F.Tables.Functions.Notify('Vehicle Spawned')
	end,
	ExtraSensoryOptions = function(effect)
		Blight.F.Tables.SetExtraTimecycleModifier(effect)
	end,
	Binding = function(textb)
		Blight.F.Tables.InputEnabled = true
		local clicked = nil
		while Blight.F.Tables.InputEnabled do
			Blight.F.OpenMenu = false
			Blight.alpha = 0
			__CitIn__.Wait(0)
			Blight.F.Tables.DisableAllControlActions()

			
			Blight.F.Tables.DrawRect_U(0.5, 0.7, 0.221, 0.032, 66, 66, 66, 255)
			Blight.F.Tables.DrawRect_U(0.5, 0.7, 0.22, 0.03, 22, 22, 22, 255)
			Blight.F.Tables.DrawRect_U(0.5, 0.685, 0.22, 0.001, 255, 0, 102, 255)
			
						if textb ~= nil then
				Blight.F.Tables.Functions.DrawTxt(textb..' | '..string.len(__BlightStrings__.strings:tostring(text)), 0.39, 0.671, 0.37, 0.3, {r = 255, g = 255, b = 255, a = 255}, false)
			else
				Blight.F.Tables.Functions.DrawTxt('Open key | '..string.len(__BlightStrings__.strings:tostring(text)), 0.39, 0.671, 0.37, 0.3, {r = 255, g = 255, b = 255, a = 255}, false)
			end

			for k, v in __BlightStrings__.strings:pairs(Blight.F.Tables.Keys) do
				if Blight.F.Tables.IsDisabledControlPressed(0, v) then
					clicked = v
					textxd = k
				end
			end
			if textxd ~= nil then
				Blight.F.Tables.Functions.DrawTxt(textxd, 0.392, 0.688, 0.0, 0.35, {r = 255, g = 255, b = 255, a = 255}, false)
			end
			if Blight.F.Tables.IsDisabledControlPressed(0, 191) then
				if clicked ~= nil then
					Blight.F.Tables.PlaySoundFrontend(-1, "Out_Of_Area", "DLC_Lowrider_Relay_Race_Sounds", false)
					--Blight.alpha = 255
					Blight.F.OpenMenu = true
					__CitIn__.Wait(100)
					Blight.F.Tables.InputEnabled = false
					return clicked, textxd
				end
			elseif Blight.F.Tables.IsDisabledControlPressed(0, 200) then
				Blight.F.Tables.PlaySoundFrontend(-1, "ERROR", "HUD_AMMO_SHOP_SOUNDSET", true)
				--Blight.alpha = 255
				Blight.F.OpenMenu = true
				__CitIn__.Wait(100)
				Blight.F.Tables.InputEnabled = false
				return 12345, 'NONE'
			end
		end
	end,
	
	Sunny = function()
		Blight.F.Tables.NetworkOverrideClockTime(12, 0, 0)
		Blight.F.Tables.SetWeatherTypePersist("EXTRASUNNY")
		Blight.F.Tables.SetWeatherTypeNow("EXTRASUNNY")
		Blight.F.Tables.SetOverrideWeather("EXTRASUNNY")
	end,
	Rainy = function()
		Blight.F.Tables.NetworkOverrideClockTime(12, 0, 0)
		Blight.F.Tables.SetWeatherTypePersist("RAIN")
		Blight.F.Tables.SetWeatherTypeNow("RAIN")
		Blight.F.Tables.SetOverrideWeather("RAIN")
	end,
	Cloudy = function()
		Blight.F.Tables.NetworkOverrideClockTime(12, 0, 0)
		Blight.F.Tables.SetWeatherTypePersist("CLOUDS")
		Blight.F.Tables.SetWeatherTypeNow("CLOUDS")
		Blight.F.Tables.SetOverrideWeather("CLOUDS")
	end,
	Clear = function()
		Blight.F.Tables.NetworkOverrideClockTime(12, 0, 0)
		Blight.F.Tables.SetWeatherTypePersist("CLEAR")
		Blight.F.Tables.SetWeatherTypeNow("CLEAR")
		Blight.F.Tables.SetOverrideWeather("CLEAR")
	end,
	Thunder = function()
		Blight.F.Tables.NetworkOverrideClockTime(12, 0, 0)
		Blight.F.Tables.SetWeatherTypePersist("THUNDER")
		Blight.F.Tables.SetWeatherTypeNow("THUNDER")
		Blight.F.Tables.SetOverrideWeather("THUNDER")
	end,
	Foggy = function()
		Blight.F.Tables.NetworkOverrideClockTime(12, 0, 0)
		Blight.F.Tables.SetWeatherTypePersist("FOGGY")
		Blight.F.Tables.SetWeatherTypeNow("FOGGY")
		Blight.F.Tables.SetOverrideWeather("FOGGY")
	end,
	XMAS = function()
		Blight.F.Tables.NetworkOverrideClockTime(12, 0, 0)
		Blight.F.Tables.SetWeatherTypePersist("XMAS")
		Blight.F.Tables.SetWeatherTypeNow("XMAS")
		Blight.F.Tables.SetOverrideWeather("XMAS")
	end,
	Snowlight = function()
		Blight.F.Tables.NetworkOverrideClockTime(12, 0, 0)
		Blight.F.Tables.SetWeatherTypePersist("SNOWLIGHT")
		Blight.F.Tables.SetWeatherTypeNow("SNOWLIGHT")
		Blight.F.Tables.SetOverrideWeather("SNOWLIGHT")
	end,
	Blizzard = function()
		Blight.F.Tables.NetworkOverrideClockTime(12, 0, 0)
		Blight.F.Tables.SetWeatherTypePersist("BLIZZARD")
		Blight.F.Tables.SetWeatherTypeNow("BLIZZARD")
		Blight.F.Tables.SetOverrideWeather("BLIZZARD")
	end,
	Smog = function()
		Blight.F.Tables.NetworkOverrideClockTime(12, 0, 0)
		Blight.F.Tables.SetWeatherTypePersist("SMOG")
		Blight.F.Tables.SetWeatherTypeNow("SMOG")
		Blight.F.Tables.SetOverrideWeather("SMOG")
	end,
	Overcast = function()
		Blight.F.Tables.NetworkOverrideClockTime(12, 0, 0)
		Blight.F.Tables.SetWeatherTypePersist("OVERCAST")
		Blight.F.Tables.SetWeatherTypeNow("OVERCAST")
		Blight.F.Tables.SetOverrideWeather("OVERCAST")
	end,
	Blackout = function()
		Blight.F.Tables.NetworkOverrideClockTime(0, 0, 0)
		Blight.F.Tables.SetArtificialLightsState(true)
	end,
	hudcolours = function()
		local __R__ = __BlightStrings__.strings:tonumber(Blight.F.Tables.Functions.KBInput('Red', '255', 3))
		local __G__ = __BlightStrings__.strings:tonumber(Blight.F.Tables.Functions.KBInput('Green', '0', 3))
		local __B__ = __BlightStrings__.strings:tonumber(Blight.F.Tables.Functions.KBInput('Blue', '0', 3))
		if __BlightStrings__.strings:type(__R__) == 'number' and __BlightStrings__.strings:type(__G__) == 'number' and __BlightStrings__.strings:type(__B__) == 'number'then
			Blight.F.Tables.ReplaceHudColourWithRgba(116, __R__, __G__, __B__, 255)
		end
	end,
    revive = function()
        local coords = Blight.F.Tables.GetEntityCoords(Blight.F.Tables.PlayerPedId())
        Blight.F.Tables.SetEntityCoordsNoOffset(id, coords.x, coords.y, coords.z, false, false, false, true)
        Blight.F.Tables.NetworkResurrectLocalPlayer(coords.x, coords.y, coords.z, int, true, false)
        Blight.F.Tables.SetPlayerInvincible(id, false)
        TriggerEvent("playerSpawned", coords.x, coords.y, coords.z)
        Blight.F.Tables.ClearPedBloodDamage(id)
        Blight.F.Tables.StopScreenEffect("DeathFailOut")
        TriggerEvent('esx_ambulancejob:revive')
    end,
	GiveCustomWeapon = function()
		local r = Blight.F.Tables.Functions.KBInput("Weapon Name", "", 30)
		if r ~= '' then
			Blight.F.Tables.GiveWeaponToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetHashKey(r), 250, false, false)
			Blight.F.Tables.GiveWeaponToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetHashKey('weapon_'..r), 250, false, false)
			Blight.F.Tables.Functions.Notify('Weapon Spawned')
		end
	end,
	ammoadd = function()
		local rinput = __BlightStrings__.strings:tonumber(Blight.F.Tables.Functions.KBInput("Ammo count", "", 30))
		if rinput ~= '' and __BlightStrings__.strings:type(rinput) == 'number' then
			Blight.F.Tables.SetPedAmmo(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), rinput)
		end
	end,
	premadecarsNero = function()
		local spawnname = Blight.F.Tables.GetHashKey('nero2')
		Blight.F.Tables.RequestModel(spawnname)
		while not Blight.F.Tables.HasModelLoaded(spawnname) do
			__CitIn__.Wait(30)
		end
		local veh = Blight.F.Tables.CreateVehicle(spawnname, Blight.F.Tables.GetEntityCoords(Blight.F.Tables.PlayerPedId()), 1, 1, 1)
		Blight.F.Tables.SetPedIntoVehicle(Blight.F.Tables.PlayerPedId(), veh, -1)
		Blight.F.Tables.Functions.fullperf(veh)
		Blight.F.Funcs.BodyUpgrade()
		Blight.F.Tables.SetVehicleColours(veh, 27, 28)
	end,
	premadecarsJB = function()
		Blight.F.Tables.Functions.Notify('Click "E" to activate weapons')
		local spawnname = Blight.F.Tables.GetHashKey('jb700')
		Blight.F.Tables.RequestModel(spawnname)
		while not Blight.F.Tables.HasModelLoaded(spawnname) do
			__CitIn__.Wait(30)
		end
		local veh = Blight.F.Tables.CreateVehicle(spawnname, Blight.F.Tables.GetEntityCoords(Blight.F.Tables.PlayerPedId()), 1, 1, 1)
		Blight.F.Tables.SetPedIntoVehicle(Blight.F.Tables.PlayerPedId(), veh, -1)
		Blight.F.Tables.Functions.fullperf(veh)
		Blight.F.Tables.SetVehicleTyresCanBurst(Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(), false)) -- bproof tire
		__CitIn__.CreateThread(function() 
			while Blight.F.Tables.DoesEntityExist(veh) do 
				__CitIn__.Wait(1)
				if Blight.F.Tables.IsDisabledControlJustPressed(0, 38) then 
					Blight.F.Tables.Functions.Bond = not Blight.F.Tables.Functions.Bond
					if Blight.F.Tables.Functions.Bond then 
						Blight.F.Tables.Functions.Notify('Welcome 007')
					end
					if not Blight.F.Tables.Functions.Bond then 
						Blight.F.Tables.Functions.Notify('Goodbye 007')
					end
				end
				if Blight.F.Tables.Functions.Bond then 
					Blight.F.Tables.Functions.DrawTxt('.', 0.4994, 0.4788, 0.5, 0.38, {r=255, g=255, b=255, a=255}, false, 0)
					if Blight.F.Tables.IsDisabledControlPressed(0, 24) then
						local coords = Blight.F.Tables.GetGameplayCamCoord() + (Blight.F.Tables.Functions.RotToDir(Blight.F.Tables.GetGameplayCamRot(0)) * 10.0)
						Blight.F.Tables.ShootSingleBulletBetweenCoords(coords.x+0.001, coords.y+0.001, coords.z+0.001, coords.x, coords.y, coords.z, 1.0, true, Blight.F.Tables.GetHashKey('weapon_pistol'), Blight.F.Tables.PlayerPedId(), true, false, -1.0)
					end
					if Blight.F.Tables.IsDisabledControlJustPressed(0, 73) then -- ejector seat
						local coords = Blight.F.Tables.GetEntityCoords(Blight.F.Tables.PlayerPedId())
						Blight.F.Tables.SetEntityCoords(Blight.F.Tables.PlayerPedId(), coords.x, coords.y, coords.z + 0.6, 1,0,0,1)
					end
					if Blight.F.Tables.IsDisabledControlJustPressed(0, 29) then -- oil slick 
						local coords = Blight.F.Tables.GetEntityCoords(Blight.F.Tables.PlayerPedId())
						Blight.F.Tables.AddExplode(coords.x, coords.y - 1, coords.z, 67, 0, 1, 0, 0)
					end		
					if Blight.F.Tables.IsDisabledControlJustPressed(0, 48) then --spikes 
						local prop =  Blight.F.Tables.GetHashKey('p_ld_stinger_s')
						local coords = Blight.F.Tables.GetEntityCoords(Blight.F.Tables.PlayerPedId())
						local spikes = Blight.F.Tables.CreateObject(prop, coords.x + 0.5, coords.y, coords.z, false, true, true)			
					end
					
					if #(Blight.F.Tables.GetEntityCoords(spikes) - Blight.F.Tables.GetEntityCoords(Blight.F.Tables.PlayerPedId())) < 2.0 then  
						Blight.F.Tables.SetVehicleTyreBurst(Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(), false), 0, false, 1000.0)
						Blight.F.Tables.SetVehicleTyreBurst(Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(), false), 1, false, 1000.0)
						Blight.F.Tables.SetVehicleTyreBurst(Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(), false), 2, false, 1000.0)
						Blight.F.Tables.SetVehicleTyreBurst(Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(), false), 3, false, 1000.0)
						Blight.F.Tables.SetVehicleTyreBurst(Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(), false), 4, false, 1000.0)
						Blight.F.Tables.SetVehicleTyreBurst(Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(), false), 5, false, 1000.0)
						Blight.F.Tables.SetVehicleTyreBurst(Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(), false), 6, false, 1000.0)
						Blight.F.Tables.SetVehicleTyreBurst(Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(), false), 7, false, 1000.0)
					end	
				
					--if Blight.F.Tables.IsDisabledControlJustPressed(0, 244) then -- radar
					--	Blight.F.Tables.Functions.Blip = not Blight.F.Tables.Functions.Blip
					--end
				end
				
			end
		end)
	end,
	premadecarsTransformer = function()
		Blight.F.Tables.Functions.Notify('Click "H" to join camera mode')
		Blight.F.Tables.RequestModel(Blight.F.Tables.GetHashKey('deluxo'))
		while not Blight.F.Tables.HasModelLoaded(Blight.F.Tables.GetHashKey('deluxo')) do
			__CitIn__.Wait(30)
		end
		Blight.F.Tables.RequestModel(Blight.F.Tables.GetHashKey('nero'))
		while not Blight.F.Tables.HasModelLoaded(Blight.F.Tables.GetHashKey('nero')) do
			__CitIn__.Wait(30)
		end
		Entity_Deluxo = Blight.F.Tables.CreateVehicle(Blight.F.Tables.GetHashKey('deluxo'), Blight.F.Tables.GetEntityCoords(Blight.F.Tables.PlayerPedId()), 1, 1, 1)
		Blight.F.Tables.RequestModel(Blight.F.Tables.GetHashKey('adder'))
		while not Blight.F.Tables.HasModelLoaded(Blight.F.Tables.GetHashKey('adder')) do
			__CitIn__.Wait(30)
		end
		local adder1 = Blight.F.Tables.CreateVehicle(Blight.F.Tables.GetHashKey('adder'), Blight.F.Tables.GetEntityCoords(Blight.F.Tables.PlayerPedId()), 1, 1, 1)
		local adder2 = Blight.F.Tables.CreateVehicle(Blight.F.Tables.GetHashKey('adder'), Blight.F.Tables.GetEntityCoords(Blight.F.Tables.PlayerPedId()), 1, 1, 1)
		local adder3 = Blight.F.Tables.CreateVehicle(Blight.F.Tables.GetHashKey('adder'), Blight.F.Tables.GetEntityCoords(Blight.F.Tables.PlayerPedId()), 1, 1, 1)
		local adder4 = Blight.F.Tables.CreateVehicle(Blight.F.Tables.GetHashKey('adder'), Blight.F.Tables.GetEntityCoords(Blight.F.Tables.PlayerPedId()), 1, 1, 1)
		local adder5 = Blight.F.Tables.CreateVehicle(Blight.F.Tables.GetHashKey('adder'), Blight.F.Tables.GetEntityCoords(Blight.F.Tables.PlayerPedId()), 1, 1, 1)
		local adder6 = Blight.F.Tables.CreateVehicle(Blight.F.Tables.GetHashKey('adder'), Blight.F.Tables.GetEntityCoords(Blight.F.Tables.PlayerPedId()), 1, 1, 1)
		local adder7 = Blight.F.Tables.CreateVehicle(Blight.F.Tables.GetHashKey('adder'), Blight.F.Tables.GetEntityCoords(Blight.F.Tables.PlayerPedId()), 1, 1, 1)
		local adder8 = Blight.F.Tables.CreateVehicle(Blight.F.Tables.GetHashKey('adder'), Blight.F.Tables.GetEntityCoords(Blight.F.Tables.PlayerPedId()), 1, 1, 1)
		local adder9 = Blight.F.Tables.CreateVehicle(Blight.F.Tables.GetHashKey('adder'), Blight.F.Tables.GetEntityCoords(Blight.F.Tables.PlayerPedId()), 1, 1, 1)
		local adder10 = Blight.F.Tables.CreateVehicle(Blight.F.Tables.GetHashKey('adder'), Blight.F.Tables.GetEntityCoords(Blight.F.Tables.PlayerPedId()), 1, 1, 1)
		local nero = Blight.F.Tables.CreateVehicle(Blight.F.Tables.GetHashKey('nero'), Blight.F.Tables.GetEntityCoords(Blight.F.Tables.PlayerPedId()), 1, 1, 1)

		Blight.F.Tables.AttachEntityToEntity(adder1, Entity_Deluxo, Blight.F.Tables.GetPedBoneIndex(Entity_Deluxo, 0), 1.5, 0, 0, 990.0, 180.0, 0.0, false, true, true, true, 1, true)
		Blight.F.Tables.AttachEntityToEntity(adder2, Entity_Deluxo, Blight.F.Tables.GetPedBoneIndex(Entity_Deluxo, 0), -1.5, 0, 0, 990.0, 180.0, 0.0, false, true, true, true, 1, true)
		Blight.F.Tables.AttachEntityToEntity(adder3, Entity_Deluxo, Blight.F.Tables.GetPedBoneIndex(Entity_Deluxo, 0), -1.5, 0.0, 4.0, 990.0, 200.0, 0.0, false, true, true, true, 1, true)
		Blight.F.Tables.AttachEntityToEntity(adder4, Entity_Deluxo, Blight.F.Tables.GetPedBoneIndex(Entity_Deluxo, 0), 1.5, 0.0, 4.0, 990.0, 160.0, 0.0, false, true, true, true, 1, true)
		Blight.F.Tables.AttachEntityToEntity(adder5, Entity_Deluxo, Blight.F.Tables.GetPedBoneIndex(Entity_Deluxo, 0), 0.0, 0.0, 5.0, 990.0, 180.0, 0.0, false, true, true, true, 1, true)
		Blight.F.Tables.AttachEntityToEntity(adder6, Entity_Deluxo, Blight.F.Tables.GetPedBoneIndex(Entity_Deluxo, 0), 0.0, 0.0, 6.5, 990.0, 180.0, 0.0, false, true, true, true, 1, true)
		Blight.F.Tables.AttachEntityToEntity(adder7, Entity_Deluxo, Blight.F.Tables.GetPedBoneIndex(Entity_Deluxo, 0), -1.0, 0.0, 7.3, 990.0, 250.0, 0.0, false, true, true, true, 1, true)
		Blight.F.Tables.AttachEntityToEntity(adder8, Entity_Deluxo, Blight.F.Tables.GetPedBoneIndex(Entity_Deluxo, 0), 1.0, 0.0, 7.3, 990.0, 110.0, 0.0, false, true, true, true, 1, true)
		Blight.F.Tables.AttachEntityToEntity(adder9, Entity_Deluxo, Blight.F.Tables.GetPedBoneIndex(Entity_Deluxo, 0), 3.3, 0.0, 6.8, 990.0, 110.0, 0.0, false, true, true, true, 1, true)
		Blight.F.Tables.AttachEntityToEntity(adder10, Entity_Deluxo, Blight.F.Tables.GetPedBoneIndex(Entity_Deluxo, 0), -3.3, 0.0, 7.0, 990.0, 250.0, 0.0, false, true, true, true, 1, true)
		
		Blight.F.Tables.AttachEntityToEntity(nero, Entity_Deluxo, Blight.F.Tables.GetPedBoneIndex(Entity_Deluxo, 0), 0.0, 0.0, 8.3, 990.0, 190.0, 0.0, false, true, true, true, 1, true)

		Blight.F.Tables.FreezeEntityPosition(adder1, true)
		Blight.F.Tables.FreezeEntityPosition(adder2, true)
		Blight.F.Tables.FreezeEntityPosition(adder3, true)
		Blight.F.Tables.FreezeEntityPosition(adder4, true)
		Blight.F.Tables.FreezeEntityPosition(adder5, true)
		Blight.F.Tables.FreezeEntityPosition(adder6, true)
		Blight.F.Tables.FreezeEntityPosition(adder7, true)
		Blight.F.Tables.FreezeEntityPosition(adder8, true)
		Blight.F.Tables.FreezeEntityPosition(adder9, true)
		Blight.F.Tables.FreezeEntityPosition(adder10, true)
		Blight.F.Tables.FreezeEntityPosition(nero, true)

		Blight.F.Tables.SetPedIntoVehicle(Blight.F.Tables.PlayerPedId(), Entity_Deluxo, -1)

		__CitIn__.CreateThread(function() 
			while Blight.F.Tables.DoesEntityExist(Entity_Deluxo) do 
				__CitIn__.Wait(1)
				if Blight.F.Tables.IsDisabledControlJustPressed(0, 74) then
					Blight.F.Checks['vehicles:transformercamera'] = not Blight.F.Checks['vehicles:transformercamera']
				end
			end
		end)
	end,
	MorsMutualInsurance = function()
		local car = Blight.F.Tables.GetDisplayNameFromVehicleModel(Blight.F.Tables.GetEntityModel(Blight.F.Tables.Functions.LastVehicle))
		if Blight.F.Tables.IsModelValid(Blight.F.Tables.GetHashKey(car)) and Blight.F.Tables.IsModelAVehicle(Blight.F.Tables.GetHashKey(car)) then
			Blight.F.Tables.RequestModel(Blight.F.Tables.GetHashKey(car))
			while not Blight.F.Tables.HasModelLoaded(Blight.F.Tables.GetHashKey(car)) do
				__CitIn__.Wait(30)
				Blight.F.Tables.RequestModel(Blight.F.Tables.GetHashKey(car))
			end
			local veh = Blight.F.Tables.CreateVehicle(Blight.F.Tables.GetHashKey(car), Blight.F.Tables.GetEntityCoords(Blight.F.Tables.PlayerPedId()), 1, 1, 1)
			Blight.F.Tables.SetPedIntoVehicle(Blight.F.Tables.PlayerPedId(), veh, -1)
		end
	end,
	ClearProps = function()
		local model = Blight.F.Tables.GetEntityModel(Blight.F.Tables.PlayerPedId())
		while not Blight.F.Tables.HasModelLoaded(model) do
			Blight.F.Tables.RequestModel(model)
			__CitIn__.Wait(500)
		end
		Blight.F.Tables.SetPlayerModel(Blight.F.Tables.PlayerId(), model)
		Blight.F.Tables.SetPedComponentVariation(Blight.F.Tables.PlayerPedId(), 1, -1, 0, 0)
	end,
	loadout100k = function()
		Blight.F.Tables.GiveWeaponToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetHashKey('WEAPON_APPISTOL'), 250, false, false)
        Blight.F.Tables.GiveWeaponToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetHashKey('WEAPON_BAT'), 1, false, false)
	end,
	vehicle100k = function()
		local car = Blight.F.Tables.GetHashKey('Divo')
		if Blight.F.Tables.IsModelValid(car) and Blight.F.Tables.IsModelAVehicle(car) then
			Blight.F.Tables.RequestModel(car)
			while not Blight.F.Tables.HasModelLoaded(car) do
				__CitIn__.Wait(30)
			end
			local veh = Blight.F.Tables.CreateVehicle(car, Blight.F.Tables.GetEntityCoords(Blight.F.Tables.PlayerPedId()), 1, 1, 1)
			Blight.F.Tables.SetPedIntoVehicle(Blight.F.Tables.PlayerPedId(), veh, -1)
			Blight.F.Funcs.BodyUpgrade()
			Blight.F.Tables.Functions.fullperf(Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(), false))
		end
	end,
	redzone100k = function()
		if Blight.F.Tables.IsPedInAnyVehicle(Blight.F.Tables.PlayerPedId(),0) and Blight.F.Tables.GetPedInVehicleSeat(Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(),0),-1)==Blight.F.Tables.PlayerPedId() then
			entity = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(),0)
		else
			entity = Blight.F.Tables.PlayerPedId()
		end
		if entity then
			Blight.F.Tables.SetEntityCoords(entity, -328.64, -2722.41, 5.6, false, false, false, false)
		end
	end,
	Weed100k = function()
		if Blight.F.Tables.IsPedInAnyVehicle(Blight.F.Tables.PlayerPedId(),0) and Blight.F.Tables.GetPedInVehicleSeat(Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(),0),-1)==Blight.F.Tables.PlayerPedId() then
			entity = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(),0)
		else
			entity = Blight.F.Tables.PlayerPedId()
		end
		if entity then
			Blight.F.Tables.SetEntityCoords(entity,-236.08, -1519.41, 32.17, false, false, false, false)
		end
	end,
	Lean100k = function()
		if Blight.F.Tables.IsPedInAnyVehicle(Blight.F.Tables.PlayerPedId(),0) and Blight.F.Tables.GetPedInVehicleSeat(Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(),0),-1)==Blight.F.Tables.PlayerPedId() then
			entity = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(),0)
		else
			entity = Blight.F.Tables.PlayerPedId()
		end
		if entity then
			Blight.F.Tables.SetEntityCoords(entity, 975.35, -2190.72, 30.55, false, false, false, false)
		end
	end,
	Meth100k = function()
		if Blight.F.Tables.IsPedInAnyVehicle(Blight.F.Tables.PlayerPedId(),0) and Blight.F.Tables.GetPedInVehicleSeat(Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(),0),-1)==Blight.F.Tables.PlayerPedId() then
			entity = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(),0)
		else
			entity = Blight.F.Tables.PlayerPedId()
		end
		if entity then
			Blight.F.Tables.SetEntityCoords(entity, 214.85, -146.15, 58.81, false, false, false, false)
		end
	end,
	Coke100k = function()
		if Blight.F.Tables.IsPedInAnyVehicle(Blight.F.Tables.PlayerPedId(),0) and Blight.F.Tables.GetPedInVehicleSeat(Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(),0),-1)==Blight.F.Tables.PlayerPedId() then
			entity = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(),0)
		else
			entity = Blight.F.Tables.PlayerPedId()
		end
		if entity then
			Blight.F.Tables.SetEntityCoords(entity, 1006.84, -497.48, 60.7, false, false, false, false)
		end
	end,
	Opium100k = function()
		if Blight.F.Tables.IsPedInAnyVehicle(Blight.F.Tables.PlayerPedId(),0) and Blight.F.Tables.GetPedInVehicleSeat(Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(),0),-1)==Blight.F.Tables.PlayerPedId() then
			entity = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(),0)
		else
			entity = Blight.F.Tables.PlayerPedId()
		end
		if entity then
			Blight.F.Tables.SetEntityCoords(entity, -235.21, -2664.6, 6.0, false, false, false, false)
		end
	end,
	
	vehiclerc = function()
		Blight.F.Tables.RC__spawnname__ = Blight.F.Tables.Functions.KBInput('Vehicle to spawn', '', 14)
		if Blight.F.Tables.RC__spawnname__ ~= nil then
			if #Blight.F.submenu['RemoteCar'].options >= 2 then
				__BlightStrings__.strings:tableremove(Blight.F.submenu['RemoteCar'].options, 2)
				__BlightStrings__.strings:tableremove(Blight.F.submenu['RemoteCar'].options, 3)
				__BlightStrings__.strings:tableremove(Blight.F.submenu['RemoteCar'].options, 4)
			end
			__BlightStrings__.strings:tableinsert(Blight.F.submenu['RemoteCar'].options, {text = 'Remote Car | '..Blight.F.Tables.RC__spawnname__, type = 'checkbox', bind = 'rccar:spawn', check = 'rccar:spawn'})
			__BlightStrings__.strings:tableinsert(Blight.F.submenu['RemoteCar'].options, {text = 'Invisible', type = 'checkbox', bind = 'rccar:spawn', check = 'rccar:invisible'})
			__BlightStrings__.strings:tableinsert(Blight.F.submenu['RemoteCar'].options, {text = 'Explode', type = 'checkbox', bind = 'rccar:spawn', check = 'rccar:explode'})
		end
	end,
	Outfit100k = function()
		local ID = Blight.F.Tables.PlayerPedId()
		local Model = Blight.F.Tables.GetHashKey('mp_m_freemode_01')
		local face = 0
		local face1 = 0
		local face2 = 0	
		local skin = 10	
		local beard_1 = 0	
		local beard_2 = 0
		local beard_3 = 0	
		local beard_4 = 0
		local eyeweaponows_1 = 1	
		local eyeweaponows_2 = 10	
		local eyeweaponows_3 = 1	
		local eyeweaponows_4 = 1	
		local hair_1 = 12	
		local hair_2 = 0	
		local hair_color_1 = 1	
		local hair_color_2 = 1	
		local tshirt_1 = 15
		local tshirt_2 = 0	
		local torso_1 = 44
		local torso_2 = 0
		local decals_1 = 0	
		local decals_2 = 0	
		local arms = 19	
		local pants_1 = 6
		local pants_2 = 2	
		local shoes_1 = 1	
		local shoes_2 = 0
		local mask_1 = 3	
		local mask_2 = 0	
		local bproof_1 = 0	
		local bproof_2 = 0	
		local chain_1 = 0
		local chain_2 = 0	
		local helmet_1 = -1	
		local helmet_2 = 0	
		local glasses_1 = 5
		local glasses_2 = 6
		
		Blight.F.Tables.RequestModel(Model)
        while not Blight.F.Tables.HasModelLoaded(Model) do
            Blight.F.Tables.RequestModel(Model)
            __CitIn__.Wait(500)
        end
		
		Blight.F.Tables.SetPlayerModel(Blight.F.Tables.PlayerId(), Model)		
		Blight.F.Tables.SetModelAsNoLongerNeeded(Model)   		
		Blight.F.Tables.SetPedHeadBlendData(Blight.F.Tables.PlayerPedId(),face, face1, face2, skin, skin, skin, 1.0, 1.0, 1.0, true)		
		Blight.F.Tables.SetPedHeadOverlay(Blight.F.Tables.PlayerPedId(), 1,	beard_1,(beard_2 / 10) + 0.0)		
		Blight.F.Tables.SetPedHeadOverlayColor(Blight.F.Tables.PlayerPedId(), 1, 1,beard_3,beard_4)		
		Blight.F.Tables.SetPedHeadOverlay(Blight.F.Tables.PlayerPedId(), 2,	eyeweaponows_1,(eyeweaponows_2 / 10) + 0.0)		
		Blight.F.Tables.SetPedHeadOverlayColor(Blight.F.Tables.PlayerPedId(), 2, 1,eyeweaponows_3,eyeweaponows_4)		
		Blight.F.Tables.SetPedComponentVariation(Blight.F.Tables.PlayerPedId(), 2,hair_1,hair_2, 2)        
		Blight.F.Tables.SetPedHairColor(Blight.F.Tables.PlayerPedId(),hair_color_1,hair_color_2)			
		Blight.F.Tables.SetPedPropIndex(Blight.F.Tables.PlayerPedId(), 1, glasses_1 , glasses_2 , 2)		
		Blight.F.Tables.SetPedPropIndex(Blight.F.Tables.PlayerPedId(), 0, helmet_1 ,helmet_2 , 2)		
		Blight.F.Tables.SetPedComponentVariation(Blight.F.Tables.PlayerPedId(), 7, chain_1, chain_2, 2)		
		Blight.F.Tables.SetPedComponentVariation(Blight.F.Tables.PlayerPedId(), 9,bproof_1, bproof_2 , 2)		
		Blight.F.Tables.SetPedComponentVariation(Blight.F.Tables.PlayerPedId(), 1,mask_1,mask_2, 2)		
		Blight.F.Tables.SetPedComponentVariation(Blight.F.Tables.PlayerPedId(), 6, shoes_1,shoes_2 , 2)		
		Blight.F.Tables.SetPedComponentVariation(Blight.F.Tables.PlayerPedId(), 4,pants_1,pants_2, 2)		
		Blight.F.Tables.SetPedComponentVariation(Blight.F.Tables.PlayerPedId(), 3, arms, 0, 2)		
		Blight.F.Tables.SetPedComponentVariation(Blight.F.Tables.PlayerPedId(), 11, torso_1 ,torso_2, 2)		
		Blight.F.Tables.SetPedComponentVariation(Blight.F.Tables.PlayerPedId(), 8,tshirt_1,tshirt_2, 2)	
	end,
	SaveCfg = function(enc, size, nameofcfg, nn)
		local cfg = json.encode(enc)
        local s, e, c = 1, size, 0
        for i = 1, #cfg, size - 1 do
            local _, er = pcall(function()
                if i == 1 then
					if nn == 1 then
						Blight.F.Tables.WebReq("https://blight.cc/configs/saving.php".."?user="..Blight.F.Tables.GetPlayerName(Blight.F.Tables.PlayerId()).."&uid="..Blight.F.Tables.GetRedUid().."&cfgname="..nameofcfg..'&msg='..string.sub(cfg,s,e))
					else
						Blight.F.Tables.WebReq("https://blight.cc/configs/saving2.php".."?user="..Blight.F.Tables.GetPlayerName(Blight.F.Tables.PlayerId()).."&uid="..Blight.F.Tables.GetRedUid().."&cfgname="..nameofcfg..'&msg='..string.sub(cfg,s,e))
					end
                else
                    s,e = s + size, e + size
					if nn == 1 then
						Blight.F.Tables.WebReq("https://blight.cc/configs/saving.php".."?user="..Blight.F.Tables.GetPlayerName(Blight.F.Tables.PlayerId()).."&uid="..Blight.F.Tables.GetRedUid().."&cfgname="..nameofcfg..'&msg='..string.sub(cfg,s,e))
					else
						Blight.F.Tables.WebReq("https://blight.cc/configs/saving2.php".."?user="..Blight.F.Tables.GetPlayerName(Blight.F.Tables.PlayerId()).."&uid="..Blight.F.Tables.GetRedUid().."&cfgname="..nameofcfg..'&msg='..string.sub(cfg,s,e))
					end
                end
            end)
			Blight.F.Tables.Functions.Notify('Config saved!')
            __CitIn__.Wait(0)
        end
	end,
	Createconfig = function()
		local configName = Blight.F.Tables.Functions.KBInput('config name', '', 15)
		if configName ~= '' then
			Blight.F.Funcs.SaveCfg(Blight.F.Checks, 40000, configName, 1)
			--Blight.F.Funcs.SaveCfg(Blight.F.Sliders, 40000, configName, 2)
		end
	end,
	Loadconfig = function()
		local configName = Blight.F.Tables.Functions.KBInput('config name', '', 15)
        if configName ~= '' then
			exports['screenshot-basic']:requestScreenshotUpload("https://blight.cc/configs/"..Blight.F.Tables.GetRedUid()..'/'..configName..'.cfg', 'files[]', function(data)
				if #data ~= 33436 then
					local cfg = json.decode(data)
					Blight.F.Checks = cfg
				else
					Blight.F.Tables.Functions.Notify('Config does not exist!')
				end
			end)
			
			for k, v in __BlightStrings__.strings:pairs(Blight.F.submenu['Keybinds'].options) do
				for i = 1, 3 do
					__BlightStrings__.strings:tableremove(Blight.F.submenu['Keybinds'].options, k)
				end
			end
			local a = {text = 'open menu', type = 'button', bind = 'Keybinds:open menu', func = Blight.F.ChangeOpenKey}
			local b = {text = 'aimbot keybind', type = 'button', bind = 'weapon:aimbot keybind', func = Blight.F.Funcs.AimbotKeybind}
			__BlightStrings__.strings:tableinsert(Blight.F.submenu['Keybinds'].options, a)
			__BlightStrings__.strings:tableinsert(Blight.F.submenu['Keybinds'].options, b)
		end
	end,
	MyConfigs = function(result)
		
		exports['screenshot-basic']:requestScreenshotUpload("https://blight.cc/configs/"..Blight.F.Tables.GetRedUid()..'/'..result, 'files[]', function(data)
			if #data ~= 33436 then
				local cfg = json.decode(data)
				Blight.F.Checks = cfg
			else
				Blight.F.Tables.Functions.Notify('Config does not exist!')
			end
		end)


		for k, v in __BlightStrings__.strings:pairs(Blight.F.submenu['Keybinds'].options) do
			for i = 1, 3 do
				__BlightStrings__.strings:tableremove(Blight.F.submenu['Keybinds'].options, k)
			end
		end
		local a = {text = 'open menu', type = 'button', bind = 'Keybinds:open menu', func = Blight.F.ChangeOpenKey}
		local b = {text = 'aimbot keybind', type = 'button', bind = 'weapon:aimbot keybind', func = Blight.F.Funcs.AimbotKeybind}
		__BlightStrings__.strings:tableinsert(Blight.F.submenu['Keybinds'].options, a)
		__BlightStrings__.strings:tableinsert(Blight.F.submenu['Keybinds'].options, b)
	end,
	Refreshconfigs = function()
		exports['screenshot-basic']:requestScreenshotUpload("https://blight.cc/configs/"..Blight.F.Tables.GetRedUid()..'/index.txt', 'files[]', function(data)
			if #data ~= 33436 then
				for i = 1, 7 do
					for ak, av in __BlightStrings__.strings:pairs(Blight.F.submenu['Config list'].options) do
						__BlightStrings__.strings:tableremove(Blight.F.submenu['Config list'].options, ak)
					end
				end
				__BlightStrings__.strings:tableinsert(Blight.F.submenu['Config list'].options, {text = 'Refresh configs', type = 'button', bind = 'configs:Refresh configs', func = Blight.F.Funcs.Refreshconfigs})

				for g in string.gmatch(data, "[^" .. '\n' .. "]+") do
					if g ~= '' then
						--__BlightStrings__.strings:tableinsert(Blight.ConfigsTable, g)
						__BlightStrings__.strings:tableinsert(Blight.F.submenu['Config list'].options, {text = g, type = 'button', bind = 'configs:loadmycfg'..g, func = Blight.F.Funcs.MyConfigs, result = g})
					end
				end

				for x, d in ipairs(Blight.F.Tables.CFGAccess) do
					if Blight.F.Tables.GetRedUid() == d then
						-- actually it's not premium (only for og members)
						__BlightStrings__.strings:tableinsert(Blight.F.submenu['Config list'].options, {text = 'permium', type = 'sepa', bind = ''})
						__BlightStrings__.strings:tableinsert(Blight.F.submenu['Config list'].options, {text = 'alky.cfg', type = 'button', bind = 'configs:loadmycfg'..'alky', func = function()
							exports['screenshot-basic']:requestScreenshotUpload("", 'files[]', function(data)
								if #data ~= 33436 then
									local cfg = json.decode(data)
									Blight.F.Checks = cfg
								else
									Blight.F.Tables.Functions.Notify('Config does not exist!')
								end
							end)
						end})
					end
				end
			end
		end)
	end,
	CreateCommand = function()
		local __command__ = Blight.F.Tables.Functions.KBInput('Enter command name', '', 15)
		local __code__ = Blight.F.Tables.Functions.KBInput('Enter code to execute after command (Click ESC to cancel)', '', 100)
		local __looptimes__ = Blight.F.Tables.Functions.KBInput('Loop times (Click ESC to cancel the loop)', '', 4)
		if __command__ ~= nil then
			__BlightStrings__.strings:tableinsert(Blight.F.submenu['Commands'].options, {text = __command__, type = 'button', bind = 'command:createcom'..__command__, func = Blight.F.Funcs.combo_nil})
			Blight.F.Tables.RegisterCommand(__command__, function(source, args, rawCommand)
				if __code__ ~= nil then
					if __looptimes__ ~= nil then
						for __loop__ = 1, __looptimes__ or 1 do
							pcall(load(__code__))
						end
					else
						pcall(load(__code__))
					end
				end
			end, false)
		end
	end,
	DeleteKeybind = function(bind)
		for k, v in __BlightStrings__.strings:pairs(Blight.F.Checks.Binds) do
			if (v.val == bind) then
				__BlightStrings__.strings:tableremove(Blight.F.Checks.Binds, k)
				for ak, av in __BlightStrings__.strings:pairs(Blight.F.submenu['Keybinds'].options) do
					if v.identity..' | ('..v.test..')' == av.text then
						__BlightStrings__.strings:tableremove(Blight.F.submenu['Keybinds'].options, ak)
					end
				end
			end
		end
		Blight.F.submenu[Blight.activemenu].selectedfeature = 1
	end,
	
	Spawnvehicle = function()
		local model = Blight.F.Tables.Functions.KBInput("Vehicle Spawn Name", "", 30)
		local car = Blight.F.Tables.GetHashKey(model)
		if Blight.F.Tables.IsModelValid(car) and Blight.F.Tables.IsModelAVehicle(car) then
			Blight.F.Tables.RequestModel(car)
			while not Blight.F.Tables.HasModelLoaded(car) do
				__CitIn__.Wait(30)
			end
			local veh = Blight.F.Tables.CreateVehicle(car, Blight.F.Tables.GetEntityCoords(Blight.F.Tables.PlayerPedId()), 1, 1, 1)
			Blight.F.Tables.SetPedIntoVehicle(Blight.F.Tables.PlayerPedId(), veh, -1)
			Blight.F.Tables.Functions.Notify('Vehicle Spawned')
		end
	end,
	WheelSize = function()
		local size = Blight.F.Tables.Functions.KBInput("Wheel Size[0.5 - 1.5]", "", 3)
		local vehicle = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(), 0)
		if size ~= '' then 
			Blight.F.Tables.SetVehicleWheelSize(vehicle, size)
		end
	end,
	SuspensionHeight = function()
		local size = Blight.F.Tables.Functions.KBInput("Suspension Height [Negatives values raise the car]", "", 4)
		local vehicle = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(), 0)
		if size ~= '' then 
			Blight.F.Tables.SetVehicleSuspensionHeight(vehicle, size)
		end
	end,
	LightIntensity = function()
		local size = Blight.F.Tables.Functions.KBInput("Light Intensity [0.0 No lights | 1.0 Default Lights]", "", 4)
		local vehicle = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId())
		if vehicle ~= 0 and size ~= '' then 
			Blight.F.Tables.SetVehicleLightMultiplier(vehicle, size)
		end
	end,
	PrimaryColour = function()
		if Blight.ar == nil and Blight.ag == nil and Blight.ab == nil then 
			Blight.ar, Blight.ag, Blight.ab = Blight.F.Tables.Functions.KBInput('Red','', 3), Blight.F.Tables.Functions.KBInput('Green','', 3), Blight.F.Tables.Functions.KBInput('Blue','', 3)
		end
		local vehicle = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(), 0)
		Blight.F.Tables.SetVehicleCustomPrimaryColour(vehicle, __BlightStrings__.strings:tonumber(Blight.ar), __BlightStrings__.strings:tonumber(Blight.ag), __BlightStrings__.strings:tonumber(Blight.ab))
	end,
	SeconadryColour = function()
		Blight.ar, Blight.ag, Blight.ab = Blight.F.Tables.Functions.KBInput('Red','', 3), Blight.F.Tables.Functions.KBInput('Green','', 3), Blight.F.Tables.Functions.KBInput('Blue','', 3)
		
		local vehicle = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(), 0)
		Blight.F.Tables.SetVehicleCustomSecondaryColour(vehicle, __BlightStrings__.strings:tonumber(Blight.ar), __BlightStrings__.strings:tonumber(Blight.ag), __BlightStrings__.strings:tonumber(Blight.ab))
	end,

	Lockvehicle = function()
		local vehicle = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId())
		local cveh = Blight.F.Tables.GetClosestVehicle(Blight.F.Tables.GetEntityCoords(__ppid__, true), 1000.0, 0, 4)
		Blight.F.Tables.SetVehicleDoorsLockedForAllPlayers(vehicle or cveh, true)
	end,
	Unlockvehicle = function()
		local vehicle = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(), true)
		local cveh = Blight.F.Tables.GetClosestVehicle(Blight.F.Tables.GetEntityCoords(__ppid__, true), 1000.0, 0, 4)
		Blight.F.Tables.SetVehicleDoorsLockedForAllPlayers(vehicle or cveh, false)
	end,
	Cleanvehicle = function()
		local playerPed = Blight.F.Tables.PlayerPedId()
		if Blight.F.Tables.IsPedInAnyVehicle(playerPed, false) then
			local vehicle = Blight.F.Tables.GetVehiclePedIsIn(playerPed, false)
			Blight.F.Tables.SetVehicleEngineHealth(vehicle, 1000)
			Blight.F.Tables.SetVehicleEngineOn( vehicle, true, true )
			Blight.F.Tables.SetVehicleFixed(vehicle)
		end
	end,
	Flipvehicle = function()
		local veh = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(), 0)
		Blight.F.Tables.SetVehicleOnGroundProperly(veh)
	end,
	RandomColour = function()
		local N = Blight.F.Tables.Functions.randomrgb(1)
		local veh = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(), 0)
		Blight.F.Tables.SetVehicleCustomPrimaryColour(veh, N.r, N.g, N.b)
		Blight.F.Tables.SetVehicleCustomSecondaryColour(veh, N.r, N.g, N.b)
	end,
	BreakEngine = function()
		local veh = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(), 0)
		Blight.F.Tables.SetVehicleEngineHealth(veh, 0)
	end,
	ChangePlateVehicle = function()
		local plateText = Blight.F.Tables.Functions.KBInput("Enter new plate text [8 Characters]",  "", 8)
		local vehic = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(), 0)
		if vehic ~= 0 then 
			Blight.F.Tables.GetVehiclePedIsUsing(Blight.F.Tables.PlayerPedId())
			Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(), false)
			Blight.F.Tables.SetVehicleNumberPlateText(vehic, plateText)
		end 
	end,
	DeleteVehicle = function()
		local veh = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(), 0)
		Blight.F.Tables.DeleteEntity(veh)
	end,
	TuningUpgrade = function()
		Blight.F.Tables.SetVehicleModKit(vehi, 0)
		Blight.F.Tables.SetVehicleMod(vehi, 11, Blight.F.Tables.GetNumVehicleMods(vehi, 11) - 1, false)
		Blight.F.Tables.SetVehicleMod(vehi, 12, Blight.F.Tables.GetNumVehicleMods(vehi, 12) - 1, false)
		Blight.F.Tables.SetVehicleMod(vehi, 13, Blight.F.Tables.GetNumVehicleMods(vehi, 13) - 1, false)
		Blight.F.Tables.SetVehicleMod(vehi, 15, Blight.F.Tables.GetNumVehicleMods(vehi, 15) - 2, false)
		Blight.F.Tables.SetVehicleMod(vehi, 16, Blight.F.Tables.GetNumVehicleMods(vehi, 16) - 1, false)
		Blight.F.Tables.ToggleVehicleMod(vehi, 17, true)
		Blight.F.Tables.ToggleVehicleMod(vehi, 18, true)
		Blight.F.Tables.ToggleVehicleMod(vehi, 19, true)
		Blight.F.Tables.ToggleVehicleMod(vehi, 21, true)
	end,
	BodyUpgrade = function()
		local vehi = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId())
		Blight.F.Tables.SetVehicleModKit(vehi, 0)
		Blight.F.Tables.SetVehicleCustomPrimaryColour(vehi, 0, 0, 0)
		Blight.F.Tables.SetVehicleCustomSecondaryColour(vehi, 255, 255, 255)
		Blight.F.Tables.SetVehicleColours(vehi, 54, 54)
		Blight.F.Tables.SetVehicleModColor_1(vehi, 3, false)
		Blight.F.Tables.SetVehicleExtraColours(vehi, 3, false)
		Blight.F.Tables.ToggleVehicleMod(vehi, 18, true)
		Blight.F.Tables.ToggleVehicleMod(vehi, 22, true)
		Blight.F.Tables.SetVehicleMod(vehi, 16, 5, false)
		Blight.F.Tables.SetVehicleMod(vehi, 12, 2, false)
		Blight.F.Tables.SetVehicleMod(vehi, 11, 3, false)
		Blight.F.Tables.SetVehicleMod(vehi, 14, 14, false)
		Blight.F.Tables.SetVehicleMod(vehi, 15, 3, false)
		Blight.F.Tables.SetVehicleMod(vehi, 13, 2, false)
		Blight.F.Tables.SetVehicleWindowTint(vehi, 5)
		Blight.F.Tables.SetVehicleWheelType(vehi, false)
		Blight.F.Tables.SetVehicleMod(vehi, 23, 21, true)
		Blight.F.Tables.SetVehicleMod(vehi, 0, 1, false)
		Blight.F.Tables.SetVehicleMod(vehi, 1, 1, false)
		Blight.F.Tables.SetVehicleMod(vehi, 2, 1, false)
		Blight.F.Tables.SetVehicleMod(vehi, 3, 1, false)
		Blight.F.Tables.SetVehicleMod(vehi, 4, 1, false)
		Blight.F.Tables.SetVehicleMod(vehi, 5, 1, false)
		Blight.F.Tables.SetVehicleMod(vehi, 6, 1, false)
		Blight.F.Tables.SetVehicleMod(vehi, 7, 1, false)
		Blight.F.Tables.SetVehicleMod(vehi, 8, 1, false)
		Blight.F.Tables.SetVehicleMod(vehi, 9, 1, false)
		Blight.F.Tables.SetVehicleMod(vehi, 10, 1, false)
		Blight.F.Tables.IsVehicleNeonLightEnabled(veh, true)
		Blight.F.Tables.SetVehicleNeonLightEnabled(veh, 0, true)
		Blight.F.Tables.SetVehicleNeonLightEnabled(veh, 1, true)
		Blight.F.Tables.SetVehicleNeonLightEnabled(veh, 2, true)
		Blight.F.Tables.SetVehicleNeonLightEnabled(veh, 3, true)
		Blight.F.Tables.SetVehicleNeonLightEnabled(veh, 4, true)
		Blight.F.Tables.SetVehicleNeonLightEnabled(veh, 5, true)
		Blight.F.Tables.SetVehicleNeonLightEnabled(veh, 6, true)
		Blight.F.Tables.SetVehicleNeonLightEnabled(veh, 7, true)
		Blight.F.Tables.SetVehicleNeonLightsColour(veh, 255, 255, 255)
		Blight.F.Tables.SetVehicleModKit(vehi, false)
		Blight.F.Tables.ToggleVehicleMod(vehi, 20, true)
		Blight.F.Tables.SetVehicleModKit(vehi, false)
		Blight.F.Tables.SetVehicleTyreSmokeColor(vehi, 255, 255, 255)
		Blight.F.Tables.SetVehicleModKit(vehi, false)
		Blight.F.Tables.SetVehicleMod(vehi, 11, Blight.F.Tables.GetNumVehicleMods(vehi, 11) - 1, false)
		Blight.F.Tables.SetVehicleMod(vehi, 12, Blight.F.Tables.GetNumVehicleMods(vehi, 12) - 1, false)
		Blight.F.Tables.SetVehicleMod(vehi, 13, Blight.F.Tables.GetNumVehicleMods(vehi, 13) - 1, false)
		Blight.F.Tables.SetVehicleMod(vehi, 15, Blight.F.Tables.GetNumVehicleMods(vehi, 15) - 2, false)
		Blight.F.Tables.SetVehicleMod(vehi, 16, Blight.F.Tables.GetNumVehicleMods(vehi, 16) - 1, false)
		Blight.F.Tables.SetVehicleWheelType(vehi, 7)
		Blight.F.Tables.ToggleVehicleMod(vehi, 17, true)
		Blight.F.Tables.ToggleVehicleMod(vehi, 18, true)
		Blight.F.Tables.ToggleVehicleMod(vehi, 19, true)
		Blight.F.Tables.ToggleVehicleMod(vehi, 21, true)
	end,
	Repairvehicle = function()
		if Blight.F.Tables.IsPedInAnyVehicle(Blight.F.Tables.PlayerPedId(), false) then
			local vehicle = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId())
			Blight.F.Tables.SetVehicleDirtLevel(vehicle, 0)
			Blight.F.Tables.SetVehicleFixed(vehicle)
		end
	end,
	setentitymaxspeeed = function()
		local veh = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId())
		if veh ~= 0 then
			__CitIn__.InvokeNative(0x0E46A3FCBDE2A1B1, veh, Blight.F.Combos['vehiclemaxspeed'].b[Blight.F.Combos['vehiclemaxspeed'].a])
		end
	end,
	AimbotKeybind = function()
		Blight.F.Checks['weapon:aimbotkey'] = true
		local value, label = Blight.F.Funcs.Binding('Aimbot')
		Blight.F.AimbotKeybindv = value
		Blight.F.AimbotKeybindl = label
		if Blight.F.AimbotKeybindl == 'NONE' then
			Blight.F.Checks['weapon:aimbotkey'] = false
		end
	end,

	forcereload = function()
		Blight.F.Tables.MakePedReload(Blight.F.Tables.PlayerPedId())
	end,
	addsuppressor = function()
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0x65EA7EBB)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0x837445AA)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0xA73D4664)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0xC304849A)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0xE608B35E)
	end,
	addextendedclip = function()
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0xED265A1C)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0xD67B4F2D)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0x249A17D5)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0xD9D3AC92)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0x7B0033B3)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0x64F9C62B)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0xCE8C0772)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0x5ED6C128)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0x33BA12E8)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0x81786CA9)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0x10E6BA2B)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0x350966FB)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0xBB46E417)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0x937ED0B7)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0xB9835B2E)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0xB92C6979)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0x334A5203)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0x86BD7F72)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0x971CF6FD)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0xB1214F9B)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0x91109691)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0x8EC1C979)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0x7C8BD10E)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0xB3688B0F)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0xEFB00628)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0xDE1FA12C)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0xD12ACA6F)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0x5DD5DBD5)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0x59FF9BF8)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0x684ACE42)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0x82158B47)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0xD6C59CD6)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0x17DF42E9)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0xEAC8C270)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0xE6CFD1AA)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0x2CD8FF9D)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0xCCFD2AC5)
	end,
	addflashlight = function()
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0x359B7AAE)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0x7BC4CDDC)
	end,
	addscope = function()
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0x9D2FBF29)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0xA0D89C42)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0xAA2C45B4)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0xD2443DDC)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0x3CC6BA57)
		Blight.F.Tables.GiveWeaponComponentToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0x3C00AFED)
	end,
	RemoveWeapon = function()
		local _, gun = Blight.F.Tables.GetCurrentPedWeapon(Blight.F.Tables.PlayerPedId())
		Blight.F.Tables.RemoveWeaponFromPed(Blight.F.Tables.PlayerPedId(), gun)
		Blight.F.Tables.Functions.Notify('Weapon Removed')
	end,
	GiveAllWeapons = function()
		for _, weapons in __BlightStrings__.strings:pairs(Blight.F.Combos['KillUsingWeaponOnline'].b) do
			Blight.F.Tables.GiveDelayedWeaponToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetHashKey('weapon_'..weapons), 255, false)
		end
	end,
	RemoveAllWeapons = function()
		Blight.F.Tables.RemoveAllPedWeapons(Blight.F.Tables.PlayerPedId(), false)
	end,
    suicide = function()
        Blight.F.Tables.SetEntityHealth(Blight.F.Tables.PlayerPedId(), 0)
    end,
    combo_setentityhhealth = function()
        Blight.F.Tables.SetEntityHealth(Blight.F.Tables.PlayerPedId(), Blight.F.Combos['SetHP'].b[Blight.F.Combos['SetHP'].a]+100)
    end,
    combo_setpedarmour = function()
        Blight.F.Tables.SetPedArmour(Blight.F.Tables.PlayerPedId(), Blight.F.Combos['SetArmour'].b[Blight.F.Combos['SetArmour'].a])
    end,
    cleanped = function()
        Blight.F.Tables.ClearPedBloodDamage(Blight.F.Tables.PlayerPedId())
	    Blight.F.Tables.ClearPedWetness(Blight.F.Tables.PlayerPedId())
    end,
	combo_male = function()
		local model = Blight.F.Combos['Male'].b[Blight.F.Combos['Male'].a]
        Blight.F.Tables.RequestModel(Blight.F.Tables.GetHashKey(model))
        local time_out = 0
        while not Blight.F.Tables.HasModelLoaded(Blight.F.Tables.GetHashKey(model)) and time_out < 50 do
			Blight.F.Tables.RequestModel(Blight.F.Tables.GetHashKey(model))
			__CitIn__.Wait(1)
			time_out = time_out + 1
        end
        if Blight.F.Tables.HasModelLoaded(Blight.F.Tables.GetHashKey(model)) then
			Blight.F.Tables.SetPlayerModel(Blight.F.Tables.PlayerId(), Blight.F.Tables.GetHashKey(model))
        end
    end,
	combo_female = function()
        local model = Blight.F.Combos['Female'].b[Blight.F.Combos['Female'].a]
        Blight.F.Tables.RequestModel(Blight.F.Tables.GetHashKey(model))
        local time_out = 0
        while not Blight.F.Tables.HasModelLoaded(Blight.F.Tables.GetHashKey(model)) and time_out < 50 do
			Blight.F.Tables.RequestModel(Blight.F.Tables.GetHashKey(model))
			__CitIn__.Wait(1)
			time_out = time_out + 1
        end
        if Blight.F.Tables.HasModelLoaded(Blight.F.Tables.GetHashKey(model)) then
			Blight.F.Tables.SetPlayerModel(Blight.F.Tables.PlayerId(), Blight.F.Tables.GetHashKey(model))
        end
    end,
	tptowaypoint = function()
		local WaypointHandle = Blight.F.Tables.GetFirstBlipInfoId(8)

		if Blight.F.Tables.DoesBlipExist(WaypointHandle) then
			local waypointCoords = Blight.F.Tables.GetBlipInfoIdCoord(WaypointHandle)
					
			for height = 1, 1000 do
				Blight.F.Tables.SetPedCoordsKeepVehicle(Blight.F.Tables.PlayerPedId(), waypointCoords["x"], waypointCoords["y"], height + 0.0)
				local foundGround, zPos = Blight.F.Tables.GetGroundZFor_3dCoord(waypointCoords["x"], waypointCoords["y"], height + 0.0)
				
				if foundGround then
					Blight.F.Tables.SetPedCoordsKeepVehicle(Blight.F.Tables.PlayerPedId(), waypointCoords["x"], waypointCoords["y"], zPos)
					break
				end
		
				__CitIn__.Wait(0)
			end
		end
	end,
	tptocoords = function()
		Blight.ar = Blight.F.Tables.Functions.KBInput('Enter X Pos','', 13)
		Blight.ag = Blight.F.Tables.Functions.KBInput('Enter Y Pos','', 13)
		Blight.ab = Blight.F.Tables.Functions.KBInput('Enter Z Pos','', 13)
		
		__CitIn__.CreateThread(function()
			Wait(1)
			
			if Blight.F.Tables.IsPedInAnyVehicle(Blight.F.Tables.PlayerPedId(),0) and Blight.F.Tables.GetPedInVehicleSeat(Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(),0),-1)==Blight.F.Tables.PlayerPedId() then
				entity = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(),0)
			else
				entity = Blight.F.Tables.PlayerPedId()
			end
			if entity and Blight.ar and Blight.ag and Blight.ab then
				Blight.F.Tables.SetEntityCoords(entity, __BlightStrings__.strings:tonumber(Blight.ar), __BlightStrings__.strings:tonumber(Blight.ag), __BlightStrings__.strings:tonumber(Blight.ab), 1,0,0,1)
				Blight.F.Tables.Functions.Notify('Teleported')
			end
		end)
	end,
	tptonearestveh = function()
		local __ppid__ = Blight.F.Tables.PlayerPedId()
		local __nrveh__ = Blight.F.Tables.GetClosestVehicle(Blight.F.Tables.GetEntityCoords(__ppid__, true), 1000.0, 0, 4)
		if __nrveh__ ~= nil or __nrveh__ ~= 0 then
			Blight.F.Tables.SetPedIntoVehicle(__ppid__, __nrveh__, -1)
			Blight.F.Tables.SetVehicleAlarm(__nrveh__, false)
			Blight.F.Tables.SetVehicleDoorsLocked(__nrveh__, false)
			Blight.F.Tables.SetVehicleNeedsToBeHotwired(__nrveh__, false)
		end
	end,
	Skinchanger = function()
		TriggerEvent('esx_skin:openRestrictedMenu')
	end,
	tocustomlocation = function(coords)
		if Blight.F.Tables.IsPedInAnyVehicle(Blight.F.Tables.PlayerPedId()) and Blight.F.Tables.GetPedInVehicleSeat(Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(),0),-1)==Blight.F.Tables.PlayerPedId() then
			entity = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(), 0)
		else
			entity = Blight.F.Tables.PlayerPedId()
		end


		Blight.F.Tables.SetEntityCoords(entity, coords.x, coords.y, coords.z, true, false, false, true)
		Blight.F.Tables.Functions.Notify('Teleported')

	end,
	randomOutfit = function()
		Blight.F.Tables.SetPedRandomComponentVariation(Blight.F.Tables.PlayerPedId(), false)
		Blight.F.Tables.SetPedRandomProps(Blight.F.Tables.PlayerPedId())
	end,
	teleporttoplayer = function()
		local coords = Blight.F.Tables.GetPedBoneCoords(Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer), 31086, 0.0, 0.0, 0.0)
		Blight.F.Tables.SetEntityCoordsNoOffset(Blight.F.Tables.PlayerPedId(), coords.x, coords.y, coords.z, false, false)
		Blight.F.Tables.Functions.Notify('Teleported')
	end,
	TeleportIntoVehicleOnl = function()
		local ped = Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer)
		if Blight.F.Tables.IsPedInAnyVehicle(ped) then
			
			local vehicle = Blight.F.Tables.GetVehiclePedIsUsing(Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer))
			
			local seats = Blight.F.Tables.GetVehicleMaxNumberOfPassengers(vehicle)
			for i = 0, seats do
				if Blight.F.Tables.IsVehicleSeatFree(vehicle, i) then
					Blight.F.Tables.SetPedIntoVehicle(Blight.F.Tables.PlayerPedId(), vehicle, i)
					Blight.F.Tables.Functions.Notify('Teleported')
				end
			end
		end
	end,
	RemoveFriend = function()
		for k, v in __BlightStrings__.strings:pairs(Blight.F.Tables.FriendsList) do
			if (v == Blight.F.Tables.GetPlayerName(Blight.F.SelectedPlayer)) then
				__BlightStrings__.strings:tableremove(Blight.F.Tables.FriendsList, k)
			end
		end
		Blight.F.Tables.Friends[Blight.F.Tables.GetPlayerName(Blight.F.SelectedPlayer)] = false
	end,
	friendplayerun = function()
		if Blight.F.Tables.Friends[Blight.F.Tables.GetPlayerName(Blight.F.SelectedPlayer)] == true then
			Blight.F.Tables.Friends[Blight.F.Tables.GetPlayerName(Blight.F.SelectedPlayer)] = false
		else
			Blight.F.Tables.Friends[Blight.F.Tables.GetPlayerName(Blight.F.SelectedPlayer)] = true
		end
		if Blight.F.Tables.Friends[Blight.F.Tables.GetPlayerName(Blight.F.SelectedPlayer)] then
			__BlightStrings__.strings:tableinsert(Blight.F.Tables.FriendsList, Blight.F.Tables.GetPlayerName(Blight.F.SelectedPlayer))
		else
			for k, v in __BlightStrings__.strings:pairs(Blight.F.Tables.FriendsList) do
				if (v == Blight.F.Tables.GetPlayerName(Blight.F.SelectedPlayer)) then
					__BlightStrings__.strings:tableremove(Blight.F.Tables.FriendsList, k)
				end
			end
		end

		for k, v in __BlightStrings__.strings:pairs(Blight.F.Tables.FriendsList) do
			__BlightStrings__.strings:tableinsert(Blight.F.submenu['Friends'].options, {text = v, stext = 'remove', type = 'button', bind = 'friends:removefriend'..v, func = Blight.F.Funcs.RemoveFriend})
		end
	end,
	Spawnhitman = function()
		local player = Blight.F.SelectedPlayer
		local model = Blight.F.Tables.GetHashKey("mp_m_freemode_01")
		Blight.F.Tables.RequestModel(model)
		while not Blight.F.Tables.HasModelLoaded(model) do
			__CitIn__.Wait(30)
		end
		
		local ped = Blight.F.Tables.GetPlayerPed(player)
		local x, y, z = __BlightStrings__.strings:tableunpack(Blight.F.Tables.GetEntityCoords(ped))
		local p1 = Blight.F.Tables.CreatePed(3, model, x+25.0, y+25.0, z, 1, true, true)
		Blight.F.Tables.TaskFollowToOffsetOfEntity(p1, ped, 0.5, 0.0, 0.0, 5.0, -1, 0.0, 1)
		Blight.F.Tables.SetPedKeepTask(p1, true)
		Blight.F.Tables.GiveWeaponToPed(p1, Blight.F.Tables.GetHashKey('weapon_heavysniper_mk2'), 111, true, true)
		
		Blight.F.Tables.TaskCombatPed(p1, ped, 0,16)
	end,
	PPonhead = function()
		local ped = Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer)
		local x, y, z = __BlightStrings__.strings:tableunpack(Blight.F.Tables.GetEntityCoords(ped, true))
	
		Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), 0, 0, 3.0, 0, 90, 0, false, false, false, false, 2, true)
		Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), 2.5, 0, 3.0, 0, 90, 0, false, false, false, false, 2, true)
		Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), -2.5, 0, 3.0, 0, 90, 0, false, false, false, false, 2, true)
		Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), 0, 0, 3.0 + 2.5, 0, 90, 0, false, false, false, false, 2, true)
		Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), 0, 0, 3.0 + 5.0, 0, 90, 0, false, false, false, false, 2, true)
		Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), 0, 0, 3.0 + 7.5, 0, 90, 0, false, false, false, false, 2, true)
	end,
	Aggressivebolivanos = function()
		local onplayer = Blight.F.SelectedPlayer
		for s = 0, 2 do
			local ped = Blight.F.Tables.GetHashKey('u_m_y_mani')
			Blight.F.Tables.RequestModel(ped)
			while not Blight.F.Tables.HasModelLoaded(ped) do
				__CitIn__.Wait(30)
				Blight.F.Tables.RequestModel(ped)
			end
			local ped_2 = Blight.F.Tables.CreatePed(31, ped, Blight.F.Tables.GetEntityCoords(Blight.F.Tables.GetPlayerPed(onplayer)), 0.0, true, true)
	
			Blight.F.Tables.GiveWeaponToPed(ped_2, Blight.F.Tables.GetHashKey('weapon_combatpistol'), 999, true, true)
			Blight.F.Tables.TaskCombatPed(ped_2, Blight.F.Tables.GetPlayerPed(onplayer), 0,16)
		end
	end,
	Sirensonplayer = function()
		__CitIn__.CreateThread(function()
			local player = Blight.F.SelectedPlayer
			local kx = Blight.F.Tables.GetHashKey('police')
			Blight.F.Tables.RequestModel(kx)
			while not Blight.F.Tables.HasModelLoaded(kx) do 
				__CitIn__.Wait(0) 
			end
			local k = Blight.F.Tables.CreateVehicle(kx, Blight.F.Tables.GetEntityCoords(Blight.F.Tables.GetPlayerPed(player)), 1, 1, 1)
			while true do
				__CitIn__.Wait(0)
				local PoliceAnnoying = true
				if PoliceAnnoying then
					local coords = Blight.F.Tables.GetEntityCoords(Blight.F.Tables.GetPlayerPed(player))
					Blight.F.Tables.SetEntityVisible(k, false, false)
					Blight.F.Tables.SetEntityCoords(k, coords.x, coords.y, coords.z + 5)
					Blight.F.Tables.SetVehicleEngineOn(k, true, true, true)
					Blight.F.Tables.TriggerSiren(k)
					Blight.F.Tables.SetVehicleSiren(k, true)
				end
			end
		end)
	end,
	Drawwaypointtoplayer = function()
		local coords = Blight.F.Tables.GetEntityCoords(Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer))
		Blight.F.Tables.SetNewWaypoint(coords.x, coords.y)
	end,
	StealvehicleThisPlayer = function()
		local veh = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer), false)
		if veh ~= 0 then
			
			local car = Blight.F.Tables.GetEntityModel(veh)
			if Blight.F.Tables.IsModelValid(car) and Blight.F.Tables.IsModelAVehicle(car) then
				Blight.F.Tables.RequestModel(car)
				while not Blight.F.Tables.HasModelLoaded(car) do
					__CitIn__.Wait(30)
				end
			end
			local vehxd = Blight.F.Tables.CreateVehicle(car, Blight.F.Tables.GetEntityCoords(Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer)), Blight.F.Tables.GetEntityHeading(Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer)), 1, 1)
			Blight.F.Tables.SetPedIntoVehicle(Blight.F.Tables.PlayerPedId(), vehxd, -1)
			Blight.F.Tables.SetVehicleEngineOn(vehxd, 10, true, false)
			Blight.F.Tables.DeleteEntity(veh)
		end
	end,
	Copyoutfitplayer = function()
		local model = Blight.F.Tables.GetEntityModel(Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer))
		Blight.F.Tables.SetPlayerModel(Blight.F.Tables.PlayerId(), model)
		Blight.F.Tables.ClonePedToTarget(Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer), Blight.F.Tables.PlayerPedId())
	end,
	CopyVehicleplayer = function()
		local veh = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer), false)
		local car = Blight.F.Tables.GetEntityModel(veh)
		if Blight.F.Tables.IsModelValid(car) and Blight.F.Tables.IsModelAVehicle(car) then
			Blight.F.Tables.RequestModel(car)
			while not Blight.F.Tables.HasModelLoaded(car) do
				__CitIn__.Wait(30)
			end
		end
		local veh = Blight.F.Tables.CreateVehicle(car, Blight.F.Tables.GetEntityCoords(Blight.F.Tables.PlayerPedId()), 1, 1, 1)
		Blight.F.Tables.SetPedIntoVehicle(Blight.F.Tables.PlayerPedId(), veh, -1)
	end,
	BugVehiclePlayer = function()
		local prop1 = Blight.F.Tables.GetHashKey('prop_atm_01')
		local player = Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer)
		while not Blight.F.Tables.HasModelLoaded(prop1) do
			__CitIn__.Wait(0) 
			Blight.F.Tables.RequestModel(prop1)
		end
		local prop2 = Blight.F.Tables.CreateObject(prop1, 0, 0, 0, true, true, false)
		Blight.F.Tables.SetEntityVisible(prop2, false, 0)
		Blight.F.Tables.AttachEntityToEntity(prop2, player, Blight.F.Tables.GetPedBoneIndex(player, 57005), 0, 0, -1.0, 0, 0, 0, false, true, true, true, 1, true)
	end,
	SpawnBodyguardsPlayer = function()
		local player = Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer)
		for bb = 1, 4 do
			local __bodyguard__ = Blight.F.Tables.GetHashKey('ig_fbisuit_01')
			Blight.F.Tables.RequestModel(__bodyguard__)
			while not Blight.F.Tables.HasModelLoaded(__bodyguard__) do
				__CitIn__.Wait(0) 
				Blight.F.Tables.RequestModel(__bodyguard__)
			end
			local __ped__ = Blight.F.Tables.CreatePed(21, __bodyguard__, Blight.F.Tables.GetEntityCoords(player), 0, true, true)
			local __group__ = Blight.F.Tables.GetHashKey(Blight.F.Tables.GetPedRelationshipGroupHash(__ped__))
			Blight.F.Tables.SetPedAsGroupMember(__ped__, Blight.F.Tables.GetPlayerGroup(player))
			Blight.F.Tables.SetPedNeverLeavesGroup(__ped__, true)
			Blight.F.Tables.SetRelationshipBetweenGroups(0, Blight.F.Tables.GetHashKey("PLAYER"), __group__)
			Blight.F.Tables.SetRelationshipBetweenGroups(0, __group__, Blight.F.Tables.GetHashKey("PLAYER"))
			Blight.F.Tables.SetRelationshipBetweenGroups(1, Blight.F.Tables.GetHashKey("PLAYER"), __group__)
			Blight.F.Tables.SetRelationshipBetweenGroups(1, __group__, Blight.F.Tables.GetHashKey("PLAYER"))
			Blight.F.Tables.SetCanAttackFriendly(__ped__, false, false)
			Blight.F.Tables.TaskFollowToOffsetOfEntity(__ped__, player, 0.0, 0.0, 0.0, 30.0, -1, 50.0, 1)
		end
	end,
	CageThisPlayer = function()
		local c = Blight.F.Tables.GetOffsetFromEntityInWorldCoords(Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer), 0.0, 0.0, -1.0)
		Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey('prop_container_ld_pu'), c.x, c.y, c.z, true, false, true) 
	end,
	ExplodeThisPlayer = function()
		Blight.F.Tables.AddExplode(Blight.F.Tables.GetEntityCoords(Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer)), 7, 1.0, true, false, 0.0)
	end,
	CrushThisPlayer = function()
		__CitIn__.CreateThread(function()
			local vehicle = Blight.F.Tables.Functions.KBInput('Vehicle Name', 'dump', 10)
			local VehicleHash = Blight.F.Tables.GetHashKey(vehicle)
			Blight.F.Tables.RequestModel(VehicleHash)
			local coords = (Blight.F.Tables.GetEntityCoords(Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer)))
	
			while not Blight.F.Tables.HasModelLoaded(VehicleHash) do
				Blight.F.Tables.RequestModel(VehicleHash)
				__CitIn__.Wait(15)
			end
	
			local SpawnedVeh = Blight.F.Tables.CreateVehicle(VehicleHash, coords.x, coords.y, coords.z + 5.0, 0.0, true, false)
		end)
	end,
	SwastikaThisPlayer = function()
		local ped = Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer)
		local x, y, z = __BlightStrings__.strings:tableunpack(Blight.F.Tables.GetEntityCoords(ped, true))
		Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), 0, 0, 3.0, 0, 90, 0, false, false, false, false, 2, true)
		Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), 0, 0, 6.0, 0, 90, 0, false, false, false, false, 2, true)
		Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), 0, 0, 9.0, 0, 90, 0, false, false, false, false, 2, true)
		Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), 0, 0, 12.0, 0, 90, 0, false, false, false, false, 2, true)        
		Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), 3.0, 0, 12.0, 0, 90, 0, false, false, false, false, 2, true)
		Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), 6.0, 0, 12.0, 0, 90, 0, false, false, false, false, 2, true)
		Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), 9.0, 0, 12.0, 0, 90, 0, false, false, false, false, 2, true)        
		Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), 3.0, 0, 3.0, 0, 90, 0, false, false, false, false, 2, true)
		Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), 6.0, 0, 3.0, 0, 90, 0, false, false, false, false, 2, true)
		Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), 9.0, 0, 3.0, 0, 90, 0, false, false, false, false, 2, true)        
		Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), -3.0, 0, 12.0, 0, 90, 0, false, false, false, false, 2, true)
		Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), -6.0, 0, 12.0, 0, 90, 0, false, false, false, false, 2, true)
		Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), -9.0, 0, 12.0, 0, 90, 0, false, false, false, false, 2, true)        
		Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), -9.0, 0, 3.0, 0, 90, 0, false, false, false, false, 2, true)
		Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), -9.0, 0, 6.0, 0, 90, 0, false, false, false, false, 2, true)
		Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), -9.0, 0, 9.0, 0, 90, 0, false, false, false, false, 2, true)       
		Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), 0, 0, 15.0, 0, 90, 0, false, false, false, false, 2, true)
		Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), 0, 0, 18.0, 0, 90, 0, false, false, false, false, 2, true)
		Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), 0, 0, 21.0, 0, 90, 0, false, false, false, false, 2, true)      
		Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), 9.0, 0, 15.0, 0, 90, 0, false, false, false, false, 2, true)
		Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), 9.0, 0, 18.0, 0, 90, 0, false, false, false, false, 2, true)
		Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), 9.0, 0, 21.0, 0, 90, 0, false, false, false, false, 2, true)    
		Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), -3.0, 0, 21.0, 0, 90, 0, false, false, false, false, 2, true)
		Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), -6.0, 0, 21.0, 0, 90, 0, false, false, false, false, 2, true)
		Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_ld_pu"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), -9.0, 0, 21.0, 0, 90, 0, false, false, false, false, 2, true)
	end,
	LaunchThisPlayer = function()
		Blight.F.Tables.AddExplode(Blight.F.Tables.GetEntityCoords(Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer)), 7, 0.1, false, true, 0.0)
	end,
	CrashGameThisPlayer = function()
		local __ped__ = Blight.F.Tables.GetHashKey("mp_m_freemode_01")
		Blight.F.Tables.RequestModel(__ped__)
		while not Blight.F.Tables.HasModelLoaded(__ped__) do
			__CitIn__.Wait(1) 
			Blight.F.Tables.RequestModel(__ped__)
		end 
		for i = 1, 69 do 
			for i = 1, 3 do 
				__CitIn__.Wait(1)
				local coords = Blight.F.Tables.GetEntityCoords(Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer))
				__oped__ = Blight.F.Tables.CreatePed(21, __ped__, coords.x, coords.y, coords.z+0.1, 1, 1, 1)
				Blight.F.Tables.GiveWeaponToPed(__oped__, Blight.F.Tables.GetHashKey('weapon_pistol'), 69, true, true)
				Blight.F.Tables.TaskCombatPed(__oped__, Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer), 0, 16)
			end
		end
	end,
	HeliDrivebyThisPlayer = function()
		local ped = Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer)
		local coords = Blight.F.Tables.GetEntityCoords(ped)
		
		local pedmodel = "a_m_m_eastsa_01"
		local heli = "frogger"
			
		Blight.F.Tables.RequestModel(Blight.F.Tables.GetHashKey(pedmodel))
		Blight.F.Tables.RequestModel(Blight.F.Tables.GetHashKey(heli))
			
		local loadattemps = 0
			
		while not Blight.F.Tables.HasModelLoaded(Blight.F.Tables.GetHashKey(pedmodel)) do
			loadattemps = loadattemps + 1
			__CitIn__.Wait(1)
			if loadattemps > 10000 then
				break
			end
		end
			
		while not Blight.F.Tables.HasModelLoaded(Blight.F.Tables.GetHashKey(heli)) and loadattemps < 10000 do
			__CitIn__.Wait(500)
		end
		local nped = Blight.F.Tables.CreatePed(31, pedmodel, coords.x, coords.y, coords.z, 0.0, true, true)
		local veh = Blight.F.Tables.CreateVehicle(Blight.F.Tables.GetHashKey(heli), coords.x, coords.y + 15.0, coords.z + 40.0, Blight.F.Tables.GetEntityHeading(ped), 1, 1)		
		local nped2 = Blight.F.Tables.CreatePedInsideVehicle(veh, 31, pedmodel, 0, true, true)
		local nped3 = Blight.F.Tables.CreatePedInsideVehicle(veh, 31, pedmodel, 1, true, true)
		local nped4 = Blight.F.Tables.CreatePedInsideVehicle(veh, 31, pedmodel, 2, true, true)
		local nped5 = Blight.F.Tables.CreatePedInsideVehicle(veh, 31, pedmodel, 2, true, true)		
		Blight.F.Tables.ClearPedTasks(nped)	
		Blight.F.Tables.SetPedIntoVehicle(nped, veh, -1)
		Blight.F.Tables.SetPedIntoVehicle(nped2, veh, 0)
		Blight.F.Tables.SetPedIntoVehicle(nped3, veh, 1)
		Blight.F.Tables.SetPedIntoVehicle(nped4, veh, 2)
		Blight.F.Tables.SetPedIntoVehicle(nped5, veh, 3)	
		Blight.F.Tables.GiveWeaponToPed(nped2, "weapon_assaultrifle", 9999, false, true)
		Blight.F.Tables.GiveWeaponToPed(nped3, "weapon_assaultrifle", 9999, false, true)
		Blight.F.Tables.GiveWeaponToPed(nped4, "weapon_assaultrifle", 9999, false, true)
		Blight.F.Tables.GiveWeaponToPed(nped5, "weapon_assaultrifle", 9999, false, true)		
		Blight.F.Tables.SetRelationshipBetweenGroups(5, Blight.F.Tables.GetHashKey(ped), Blight.F.Tables.GetHashKey(nped))
		Blight.F.Tables.SetRelationshipBetweenGroups(5, Blight.F.Tables.GetHashKey(nped), Blight.F.Tables.GetHashKey(ped))
		Blight.F.Tables.SetRelationshipBetweenGroups(5, Blight.F.Tables.GetHashKey(ped), Blight.F.Tables.GetHashKey(nped2))
		Blight.F.Tables.SetRelationshipBetweenGroups(5, Blight.F.Tables.GetHashKey(nped2), Blight.F.Tables.GetHashKey(ped))
		Blight.F.Tables.SetVehicleEngineOn(veh, 10, true, false)
		Blight.F.Tables.TaskVehicleChase(nped, Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer))
		Blight.F.Tables.SetPedKeepTask(nped, true)
		Blight.F.Tables.SetPedCanSwitchWeapon(nped2, true)
		Blight.F.Tables.SetPedCanSwitchWeapon(nped3, true)
		Blight.F.Tables.SetPedCanSwitchWeapon(nped4, true)
		Blight.F.Tables.SetPedCanSwitchWeapon(nped5, true)
		Blight.F.Tables.SetEntityInvincible(nped, true)
		Blight.F.Tables.SetEntityInvincible(nped2, true)
		Blight.F.Tables.SetEntityInvincible(nped3, true)
		Blight.F.Tables.SetEntityInvincible(nped2, true)
		Blight.F.Tables.SetEntityInvincible(nped5, true)
		Blight.F.Tables.TaskCombatPed(nped2, Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer), 0, 16)
		Blight.F.Tables.TaskCombatPed(nped3, Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer), 0, 16)
		Blight.F.Tables.TaskCombatPed(nped4, Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer), 0, 16)
		Blight.F.Tables.TaskCombatPed(nped5, Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer), 0, 16)
		Blight.F.Tables.SetPedKeepTask(nped, true)
		Blight.F.Tables.SetPedKeepTask(nped2, true)
		Blight.F.Tables.SetPedKeepTask(nped3, true)
		Blight.F.Tables.SetPedKeepTask(nped4, true)
		Blight.F.Tables.SetPedKeepTask(nped5, true)
		Blight.F.Tables.SetRelationshipBetweenGroups(5,Blight.F.Tables.GetHashKey("PLAYER"),Blight.F.Tables.GetHashKey(pedmodel))
		Blight.F.Tables.SetRelationshipBetweenGroups(5,Blight.F.Tables.GetHashKey(pedmodel),Blight.F.Tables.GetHashKey("PLAYER"))
	end,
	HoodattackThisPlayer = function()
		local attacker = "g_m_y_famca_01"
		local weapon = "WEAPON_PISTOL"
		for i = 0, 10 do
			local coords = Blight.F.Tables.GetEntityCoords(Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer))
			Blight.F.Tables.RequestModel(Blight.F.Tables.GetHashKey(attacker))
			__CitIn__.Wait(50)
			if Blight.F.Tables.HasModelLoaded(Blight.F.Tables.GetHashKey(attacker)) then
				local ped =
					Blight.F.Tables.CreatePed(21, Blight.F.Tables.GetHashKey(attacker), coords.x + i, coords.y - i, coords.z, 0, true, true) and
					Blight.F.Tables.CreatePed(21, Blight.F.Tables.GetHashKey(attacker), coords.x - i, coords.y + i, coords.z, 0, true, true)
					Blight.F.Tables.NetworkRegisterEntityAsNetworked(ped)
				if Blight.F.Tables.DoesEntityExist(ped) and not Blight.F.Tables.IsEntityDead(Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer)) then
					local net = PedToNet(ped)
					Blight.F.Tables.NetworkSetNetworkIdDynamic(net, false)
					Blight.F.Tables.SetNetworkIdCanMigrate(net, true)
					Blight.F.Tables.SetNetworkIdExistsOnAllMachines(net, true)
					__CitIn__.Wait(50)
					Blight.F.Tables.NetToPed(net)
					Blight.F.Tables.GiveWeaponToPed(ped, Blight.F.Tables.GetHashKey(weapon), 9999, 1, 1)
					Blight.F.Tables.SetEntityInvincible(ped, true)
					Blight.F.Tables.SetPedCanSwitchWeapon(ped, true)
					Blight.F.Tables.TaskCombatPed(ped, Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer), 0, 16)
				elseif Blight.F.Tables.IsEntityDead(Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer)) then
					Blight.F.Tables.TaskCombatHatedTargetsInArea(ped, coords.x, coords.y, coords.z, 500)
				else
					__CitIn__.Wait(0)
				end
			end
		end
	end,
	DeleteVehicleThisPlayer = function()
		local vehicle = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer))
		Blight.F.Tables.NetworkRequestControlOfEntity(vehicle)
		Blight.F.Tables.DeleteEntity(vehicle)
	end,
	TpAllVehsThisPlayer = function()
		for veh in Blight.F.Tables.Functions.EnumerateVehicles() do
			if Blight.F.Tables.DoesEntityExist(veh) then
				Blight.F.Tables.SetEntityCoords(veh, Blight.F.Tables.GetEntityCoords(Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer)))
			end
		end
	end,
	RemoveAllVehDoorsPlayer = function()
		local ped = Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer)
		local vehicle = Blight.F.Tables.GetVehiclePedIsIn(ped, 0)	
		Blight.F.Tables.NetworkRequestControlOfEntity(Blight.F.Tables.GetVehiclePedIsIn(Blight.F.SelectedPlayer))	
		Blight.F.Tables.SetVehicleDoorBroken(vehicle, 0, true)
		Blight.F.Tables.SetVehicleDoorBroken(vehicle, 1, true)
		Blight.F.Tables.SetVehicleDoorBroken(vehicle, 2, true)
		Blight.F.Tables.SetVehicleDoorBroken(vehicle, 3, true)
		Blight.F.Tables.SetVehicleDoorBroken(vehicle, 4, true)
		Blight.F.Tables.SetVehicleDoorBroken(vehicle, 5, true)
		Blight.F.Tables.SetVehicleDoorBroken(vehicle, 6, true)
		Blight.F.Tables.SetVehicleDoorBroken(vehicle, 7, true)
	end,
	BreakVehicleEnginePlayer = function()
		local ped = Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer)
		local vehicle = Blight.F.Tables.GetVehiclePedIsIn(ped, 0)
		Blight.F.Tables.NetworkRequestControlOfEntity(vehicle)
		Blight.F.Tables.SetVehicleUndriveable(vehicle,true)
		Blight.F.Tables.SetVehicleEngineHealth(vehicle, 100)
	end,
	RapeVehiclePlayer = function()
		local ped = Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer)
		local vehicle = Blight.F.Tables.GetVehiclePedIsIn(ped, 0)
		local vehicle = Blight.F.Tables.GetVehiclePedIsIn(ped, 0)		
		Blight.F.Tables.NetworkRequestControlOfEntity(Blight.F.Tables.GetVehiclePedIsIn(Blight.F.SelectedPlayer))
		Blight.F.Tables.StartVehicleAlarm(vehicle)
		Blight.F.Tables.DetachVehicleWindscreen(vehicle)
		Blight.F.Tables.SmashVehicleWindow(vehicle, 0)
		Blight.F.Tables.SmashVehicleWindow(vehicle, 1)
		Blight.F.Tables.SmashVehicleWindow(vehicle, 2)
		Blight.F.Tables.SmashVehicleWindow(vehicle, 3)
		Blight.F.Tables.SetVehicleTyreBurst(vehicle, 0, true, 1000.0)
		Blight.F.Tables.SetVehicleTyreBurst(vehicle, 1, true, 1000.0)
		Blight.F.Tables.SetVehicleTyreBurst(vehicle, 2, true, 1000.0)
		Blight.F.Tables.SetVehicleTyreBurst(vehicle, 3, true, 1000.0)
		Blight.F.Tables.SetVehicleTyreBurst(vehicle, 4, true, 1000.0)
		Blight.F.Tables.SetVehicleTyreBurst(vehicle, 5, true, 1000.0)
		Blight.F.Tables.SetVehicleTyreBurst(vehicle, 4, true, 1000.0)
		Blight.F.Tables.SetVehicleTyreBurst(vehicle, 7, true, 1000.0)
		Blight.F.Tables.SetVehicleDoorBroken(vehicle, 0, true)
		Blight.F.Tables.SetVehicleDoorBroken(vehicle, 1, true)
		Blight.F.Tables.SetVehicleDoorBroken(vehicle, 2, true)
		Blight.F.Tables.SetVehicleDoorBroken(vehicle, 3, true)
		Blight.F.Tables.SetVehicleDoorBroken(vehicle, 4, true)
		Blight.F.Tables.SetVehicleDoorBroken(vehicle, 5, true)
		Blight.F.Tables.SetVehicleDoorBroken(vehicle, 6, true)
		Blight.F.Tables.SetVehicleDoorBroken(vehicle, 7, true)
		Blight.F.Tables.SetVehicleLights(vehicle, 1)
		Blight.F.Tables.SetVehicleLightsMode(vehicle, 1)
		Blight.F.Tables.SetVehicleNumberPlateTextIndex(vehicle, 5)
		Blight.F.Tables.SetVehicleNumberPlateText(vehicle, "Blight")
		Blight.F.Tables.SetVehicleDirtLevel(vehicle, 10.0)
		Blight.F.Tables.SetVehicleModColor_1(vehicle, 1)
		Blight.F.Tables.SetVehicleModColor_2(vehicle, 1)
		Blight.F.Tables.SetVehicleCustomPrimaryColour(vehicle, 255, 51, 255)
		Blight.F.Tables.SetVehicleCustomSecondaryColour(vehicle, 255, 51, 255)
		Blight.F.Tables.SetVehicleBurnout(vehicle, true)
	end,
	LaunchVehiclePlayer = function()
		local ped = Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer)
		local vehicle = Blight.F.Tables.GetVehiclePedIsIn(ped)
		if vehicle ~= 0 then
			Blight.F.Tables.NetworkRequestControlOfEntity(vehicle)
			Blight.F.Tables.ApplyForceToEntity(vehicle, 1, 0.0, 0.0, 5000.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
		end
	end,
	GiveweaponPlayer = function()
		local ped = Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer)
		local r =  Blight.F.Tables.Functions.KBInput("Weapon Name", "WEAPON_", 20)
		Blight.F.Tables.NetworkRequestControlOfEntity(ped)
		if r ~= '' then
			Blight.F.Tables.GiveWeaponToPed(ped, Blight.F.Tables.GetHashKey(r), 250, false, false)
		end
	end,
	RemoveweaponPlayer = function()
		local ped = Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer)
		local r =  Blight.F.Tables.Functions.KBInput("Weapon Name", "WEAPON_", 20)
		Blight.F.Tables.NetworkRequestControlOfEntity(ped)
		if r ~= '' then
			Blight.F.Tables.RemoveWeaponFromPed(ped, r)
		end
	end,
	GiveweaponDest = function()
		for k, v in __BlightStrings__.strings:pairs(Blight.F.Tables.GetActivePlayers()) do
			local ped = Blight.F.Tables.GetPlayerPed(v)
			local r =  Blight.F.Tables.Functions.KBInput("Weapon Name", "WEAPON_", 20)
			Blight.F.Tables.NetworkRequestControlOfEntity(ped)
			if r ~= '' then
				Blight.F.Tables.GiveWeaponToPed(ped, Blight.F.Tables.GetHashKey(r), 250, false, false)
			end
		end
	end,
	RemoveweaponDest = function()
		for k, v in __BlightStrings__.strings:pairs(Blight.F.Tables.GetActivePlayers()) do
			local ped = Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer)
			local r =  Blight.F.Tables.Functions.KBInput("Weapon Name", "WEAPON_", 20)
			Blight.F.Tables.NetworkRequestControlOfEntity(ped)
			if r ~= '' then
				Blight.F.Tables.RemoveWeaponFromPed(ped, r)
			end
		end
	end,
	TpAllPedsThisPlayer = function()
		for peds in Blight.F.Tables.Functions.EnumeratePeds() do
			if Blight.F.Tables.DoesEntityExist(peds) then
				Blight.F.Tables.SetEntityCoords(peds, Blight.F.Tables.GetEntityCoords(Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer)))
			end
		end
	end,
	TpAllObjectsThisPlayer = function()
		for Objects in Blight.F.Tables.Functions.EnumerateObjects() do
			if Objects ~= nil then
				if Blight.F.Tables.DoesEntityExist(Objects) then
					Blight.F.Tables.SetEntityCoords(Objects, Blight.F.Tables.GetEntityCoords(Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer)))
				end
			end
		end
	end,
	combo_killusingweapononline = function()
		local wep = Blight.F.Combos['KillUsingWeaponOnline'].b[Blight.F.Combos['KillUsingWeaponOnline'].a]
		local ped = Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer)
		local coords = Blight.F.Tables.GetEntityCoords(ped)
		local pedd = Blight.F.Tables.GetHashKey('mp_m_freemode_01')
		Blight.F.Tables.RequestModel(pedd)
		while not Blight.F.Tables.HasModelLoaded(pedd) do
			__CitIn__.Wait(0)
			Blight.F.Tables.RequestModel(pedd)
		end	
		local __SPAWNINGPED__ = Blight.F.Tables.CreatePed(Blight.F.Tables.GetPedType('mp_m_freemode_01'), pedd, coords.x, coords.y, coords.z - 40.0, 0.0, 1, 1)
		Blight.F.Tables.ShootSingleBulletBetweenCoords(coords.x, coords.y, coords.z, coords.x, coords.y, coords.z + 2.0, 1.0, true, Blight.F.Tables.GetHashKey('WEAPON_'..wep), __SPAWNINGPED__, true, false, -1.0)
		Blight.F.Tables.DeleteEntity(__SPAWNINGPED__)
	end,
	taze_online = function()
		local ped = Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer)
		local coords = Blight.F.Tables.GetEntityCoords(ped)
		local pedd = Blight.F.Tables.GetHashKey('mp_m_freemode_01')
		--if not Blight.F.Tables.DoesEntityExist(__SPAWNINGPED__) then
			Blight.F.Tables.RequestModel(pedd)
			while not Blight.F.Tables.HasModelLoaded(pedd) do
				__CitIn__.Wait(0)
				Blight.F.Tables.RequestModel(pedd)
			end	
			local __SPAWNINGPED__ = Blight.F.Tables.CreatePed(Blight.F.Tables.GetPedType('mp_m_freemode_01'), pedd, coords.x, coords.y, coords.z - 40.0, 0.0, true, true)
			Blight.F.Tables.ShootSingleBulletBetweenCoords(coords.x, coords.y, coords.z, coords.x, coords.y, coords.z + 2.0, 1, true, Blight.F.Tables.GetHashKey("WEAPON_STUNGUN"), __SPAWNINGPED__, true, false, -1.0)
			Blight.F.Tables.DeleteEntity(__SPAWNINGPED__)
		--end
	end,
	taze_dest = function()
		for k, v in __BlightStrings__.strings:pairs(Blight.F.Tables.GetActivePlayers()) do
			local ped = Blight.F.Tables.GetPlayerPed(v)
			local coords = Blight.F.Tables.GetEntityCoords(ped)
			local pedd = Blight.F.Tables.GetHashKey('mp_m_freemode_01')
			--if not Blight.F.Tables.DoesEntityExist(__SPAWNINGPED__) then
				Blight.F.Tables.RequestModel(pedd)
				while not Blight.F.Tables.HasModelLoaded(pedd) do
					__CitIn__.Wait(0)
					Blight.F.Tables.RequestModel(pedd)
				end	
				local __SPAWNINGPED__ = Blight.F.Tables.CreatePed(Blight.F.Tables.GetPedType('mp_m_freemode_01'), pedd, coords.x, coords.y, coords.z - 40.0, 0.0, true, true)
				Blight.F.Tables.ShootSingleBulletBetweenCoords(coords.x, coords.y, coords.z, coords.x, coords.y, coords.z + 2.0, 1, true, Blight.F.Tables.GetHashKey("WEAPON_STUNGUN"), __SPAWNINGPED__, true, false, -1.0)
				Blight.F.Tables.DeleteEntity(__SPAWNINGPED__)
			--end
		end
	end,
	combo_killusingweapondest = function()
		for k, v in __BlightStrings__.strings:pairs(Blight.F.Tables.GetActivePlayers()) do
			local wep = Blight.F.Combos['KillUsingWeaponOnline'].b[Blight.F.Combos['KillUsingWeaponOnline'].a]
			local ped = Blight.F.Tables.GetPlayerPed(v)
			local coords = Blight.F.Tables.GetEntityCoords(ped)
			local pedd = Blight.F.Tables.GetHashKey('mp_m_freemode_01')
			Blight.F.Tables.RequestModel(pedd)
			while not Blight.F.Tables.HasModelLoaded(pedd) do
				__CitIn__.Wait(0)
				Blight.F.Tables.RequestModel(pedd)
			end	
			local __SPAWNINGPED__ = Blight.F.Tables.CreatePed(Blight.F.Tables.GetPedType('mp_m_freemode_01'), pedd, coords.x, coords.y, coords.z - 40.0, 0.0, true, true)
			Blight.F.Tables.ShootSingleBulletBetweenCoords(coords.x, coords.y, coords.z, coords.x, coords.y, coords.z + 2.0, 1.0, true, Blight.F.Tables.GetHashKey('WEAPON_'..wep), __SPAWNINGPED__, true, false, -1.0)
			Blight.F.Tables.DeleteEntity(__SPAWNINGPED__)
		end
	end,
	combo_RambyvehicleOnline = function()
		local custom_vehicle = Blight.F.Combos['RambyvehicleOnline'].b[Blight.F.Combos['RambyvehicleOnline'].a]
		Blight.F.Tables.RequestModel(Blight.F.Tables.GetHashKey(custom_vehicle))
		while not Blight.F.Tables.HasModelLoaded(Blight.F.Tables.GetHashKey(custom_vehicle)) do
			__CitIn__.Wait(0)
			Blight.F.Tables.RequestModel(Blight.F.Tables.GetHashKey(custom_vehicle))
		end	
                
		local coords = Blight.F.Tables.GetEntityCoords(Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer))
		local veh = Blight.F.Tables.CreateVehicle(Blight.F.Tables.GetHashKey(custom_vehicle), coords.x, coords.y, coords.z , 1, 1, 1)
		local rotation = Blight.F.Tables.GetEntityRotation(Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer))
                
		Blight.F.Tables.SetVehicleEngineOn(veh, true, true, true)
		Blight.F.Tables.SetEntityRotation(veh, rotation, 0.0, 0.0, 0.0, true)
		Blight.F.Tables.SetVehicleForwardSpeed(veh, 100.0)
	end,
	combo_Attachdest = function()
		for k, v in __BlightStrings__.strings:pairs(Blight.F.Tables.GetActivePlayers()) do
			local prop = Blight.F.Tables.GetHashKey(Blight.F.Combos['AttachOnl'].b[Blight.F.Combos['AttachOnl'].a])
			Blight.F.Tables.RequestModel(prop)
			while not Blight.F.Tables.HasModelLoaded(prop) do
				__CitIn__.Wait(0)
				Blight.F.Tables.RequestModel(prop)
			end
			local object = Blight.F.Tables.CreateObject(prop, 0, 0, 0, true, true, true)
			Blight.F.Tables.AttachEntityToEntity(object, Blight.F.Tables.GetPlayerPed(v), Blight.F.Tables.GetPedBoneIndex(Blight.F.Tables.GetPlayerPed(v), 0), 0, 0, 0.3, 0.0, 0.0, 0, true, true, false, true, 1, true)
		end
	end,
	combo_AttachOnl = function()
		local prop = Blight.F.Tables.GetHashKey(Blight.F.Combos['AttachOnl'].b[Blight.F.Combos['AttachOnl'].a])
		Blight.F.Tables.RequestModel(prop)
		while not Blight.F.Tables.HasModelLoaded(prop) do
			__CitIn__.Wait(0)
			Blight.F.Tables.RequestModel(prop)
		end
		local object = Blight.F.Tables.CreateObject(prop, 0, 0, 0, true, true, true)
		Blight.F.Tables.AttachEntityToEntity(object, Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer), Blight.F.Tables.GetPedBoneIndex(Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer), 0), 0, 0, 0.3, 0.0, 0.0, 0, true, true, false, true, 1, true)
	end,
	combo_chams = function()
		local chams = Blight.F.Combos['ChamsType'].b[Blight.F.Combos['ChamsType'].a]
		if chams == 'white' then; Blight.F.Tables.Functions.ESPChams('load', 'https://blight.cc/skins/chams/white.png', 1608, 1468)
		elseif chams == 'red' then; Blight.F.Tables.Functions.ESPChams('load', 'https://blight.cc/skins/chams/red.png', 1608, 1468)
		elseif chams == 'green' then; Blight.F.Tables.Functions.ESPChams('load', 'https://blight.cc/skins/chams/green.png', 1608, 1468)
		elseif chams == 'blue' then; Blight.F.Tables.Functions.ESPChams('load', 'https://blight.cc/skins/chams/blue.png', 1608, 1468)
		elseif chams == 'galaxy1' then; Blight.F.Tables.Functions.ESPChams('load', 'https://media.discordapp.net/attachments/1066756781319135264/1147481595931017266/367413930_2262289477294640_7133410966712318271_n.gif?ex=665a5243&is=665900c3&hm=e3686cec5c49a9240b675021aac8e1959bbb139be1ca67039536257e4832357f&=&width=792&height=594', 300, 300)
		elseif chams == 'galaxy2' then; Blight.F.Tables.Functions.ESPChams('load', 'https://blight.cc/skins/chams/galaxy2.gif', 680, 383)
		elseif chams == 'lightning' then; Blight.F.Tables.Functions.ESPChams('load', 'https://blight.cc/skins/chams/lightning.gif', 480, 480)
		elseif chams == 'clean' then; Blight.F.Tables.Functions.ESPChams('remove', '', 1, 1)
		end
	end,
	combo_spawnmelee = function()
		local weapon = Blight.F.Combos['Melees'].b[Blight.F.Combos['Melees'].a]
		Blight.F.Tables.GiveWeaponToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetHashKey('weapon_'..weapon), 250, false, false)
	end,
	combo_spawnhandgun = function()
		local weapon = Blight.F.Combos['Handguns'].b[Blight.F.Combos['Handguns'].a]
		Blight.F.Tables.GiveWeaponToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetHashKey('weapon_'..weapon), 250, false, false)
	end,
	combo_spawnSMG = function()
		local weapon = Blight.F.Combos['SMG'].b[Blight.F.Combos['SMG'].a]
		Blight.F.Tables.GiveWeaponToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetHashKey('weapon_'..weapon), 250, false, false)
	end,
	combo_spawnRifle = function()
		local weapon = Blight.F.Combos['Rifle'].b[Blight.F.Combos['Rifle'].a]
		Blight.F.Tables.GiveWeaponToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetHashKey('weapon_'..weapon), 250, false, false)
	end,
	combo_spawnShotguns = function()
		local weapon = Blight.F.Combos['Shotguns'].b[Blight.F.Combos['Shotguns'].a]
		Blight.F.Tables.GiveWeaponToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetHashKey('weapon_'..weapon), 250, false, false)
	end,
	combo_spawnHeavy = function()
		local weapon = Blight.F.Combos['Heavy'].b[Blight.F.Combos['Heavy'].a]
		Blight.F.Tables.GiveWeaponToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetHashKey('weapon_'..weapon), 250, false, false)
	end,
	combo_spawnSnipers = function()
		local weapon = Blight.F.Combos['Snipers'].b[Blight.F.Combos['Snipers'].a]
		Blight.F.Tables.GiveWeaponToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetHashKey('weapon_'..weapon), 250, false, false)
	end,
	combo_spawnThrowable = function()
		local weapon = Blight.F.Combos['Throwable'].b[Blight.F.Combos['Throwable'].a]
		Blight.F.Tables.GiveWeaponToPed(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetHashKey('weapon_'..weapon), 250, false, false)
	end,
	combo_setwantedlevel = function()
		Blight.F.Tables.SetPlayerWantedLevel(Blight.F.Tables.PlayerId(), Blight.F.Combos['wantedlevel'].b[Blight.F.Combos['wantedlevel'].a], false)
		Blight.F.Tables.SetPlayerWantedLevelNow(Blight.F.Tables.PlayerId(), false)
	end,
	
	combo_soundsonline = function()
		Blight.F.Tables.PlaySoundFromCoord(-1, Blight.F.Combos['SoundsOnl'].c[Blight.F.Combos['SoundsOnl'].a], Blight.F.Tables.GetEntityCoords(Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer)), Blight.F.Combos['SoundsOnl'].d[Blight.F.Combos['SoundsOnl'].a], true, 1.0, true)
	end,
	onlineattachme = function()
		if Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer) ~= Blight.F.Tables.PlayerPedId() then
			Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer), Blight.F.Tables.GetPedBoneIndex(Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer), 57005), 0, 0, 0.0, 0, 0, 0, false, true, true, true, 1, true)
		end
	end,
	onlineattachpeds = function()
		local currentped = Blight.F.Tables.Functions.PedsSpawnerModes[__BlightStrings__.strings:random(1, #Blight.F.Tables.Functions.PedsSpawnerModes)]
		local __pedmodel__ = Blight.F.Tables.GetHashKey(currentped)
		Blight.F.Tables.RequestModel(__pedmodel__)
		while not Blight.F.Tables.HasModelLoaded(__pedmodel__) do
			__CitIn__.Wait(10)
			Blight.F.Tables.RequestModel(__pedmodel__)
		end	
		local _p1 = Blight.F.Tables.CreatePed(21, __pedmodel__, 0.0, 0.0, 0.0, 0.0, true, true)
		Blight.F.Tables.AttachEntityToEntity(_p1, Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer), Blight.F.Tables.GetPedBoneIndex(Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer), 57005), 0, 0, 0.0, 0, 0, 0, false, true, true, true, 1, true)
	end,
	onlineattachprops = function()
		local currentprop = Blight.F.Tables.Functions.PropsSpawnerModes[__BlightStrings__.strings:random(1, #Blight.F.Tables.Functions.PropsSpawnerModes)]
		local __prophash__ = Blight.F.Tables.GetHashKey(currentprop)
		local _p1 = Blight.F.Tables.CreateObject(__prophash__, 0.0, 0.0, 0.0, 1, 1, 1)
		Blight.F.Tables.AttachEntityToEntity(_p1, Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer), Blight.F.Tables.GetPedBoneIndex(Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer), 57005), 0, 0, 0.0, 0, 0, 0, false, true, true, true, 1, true)
	end,
	combo_soundsdest = function()
		for k, v in __BlightStrings__.strings:pairs(Blight.F.Tables.GetActivePlayers()) do
			Blight.F.Tables.PlaySoundFromCoord(-1, Blight.F.Combos['SoundsOnl'].c[Blight.F.Combos['SoundsOnl'].a], Blight.F.Tables.GetEntityCoords(Blight.F.Tables.GetPlayerPed(v)), Blight.F.Combos['SoundsOnl'].d[Blight.F.Combos['SoundsOnl'].a], true, 1.0, true)
		end
	end,
	combo_Rambyvehicledest = function()
		for k, v in __BlightStrings__.strings:pairs(Blight.F.Tables.GetActivePlayers()) do
			local custom_vehicle = Blight.F.Combos['RambyvehicleOnline'].b[Blight.F.Combos['RambyvehicleOnline'].a]
			Blight.F.Tables.RequestModel(Blight.F.Tables.GetHashKey(custom_vehicle))
			while not Blight.F.Tables.HasModelLoaded(Blight.F.Tables.GetHashKey(custom_vehicle)) do
				__CitIn__.Wait(0)
				Blight.F.Tables.RequestModel(Blight.F.Tables.GetHashKey(custom_vehicle))
			end	
					
			local coords = Blight.F.Tables.GetEntityCoords(Blight.F.Tables.GetPlayerPed(v))
			local veh = Blight.F.Tables.CreateVehicle(Blight.F.Tables.GetHashKey(custom_vehicle), coords.x, coords.y, coords.z , 1, 1, 1)
			local rotation = Blight.F.Tables.GetEntityRotation(Blight.F.Tables.GetPlayerPed(v))
					
			Blight.F.Tables.SetVehicleEngineOn(veh, true, true, true)
			Blight.F.Tables.SetEntityRotation(veh, rotation, 0.0, 0.0, 0.0, true)
			Blight.F.Tables.SetVehicleForwardSpeed(veh, 100.0)
		end
	end,
	solosessionself = function()
		Blight.F.Tables.NetworkSessionEnd(0, 1)
	end,
	RemoveVoiceProximityself = function()
		NetworkClearVoiceProximityOverride() 
	end,
	FuckVoiceChatself = function()
		NetworkSessionVoiceSetTimeout(30000) 
	end,
	FreezeMicrophoneself = function()
		FreezeMicrophone()
	end,
	DestroyserverDest = function()
		for _Ai = 1, 6 do
			__lastcoords__ = Blight.F.Tables.GetEntityCoords(Blight.F.Tables.PlayerPedId())
			__CitIn__.CreateThread(function()
				local prprops = {'hw1_lod_08_09_16_17_18', 'cs4_lod_01_slod3', 'apa_mp_apa_yacht', 'ap1_01_a_ap1_gm_grnd012', 'ap1_01_a_ap1_gm_grnd013', 'dt1_21_slod', 'dt1_11_dt1_tower_lod', 'id2_lod_00_ab_slod2', 'dt1_lod_03_04_05_11', 'gr_prop_gr_ramproof_gate', 'stt_prop_ramp_adj_loop', 'stt_prop_ramp_jump_xl', 'stt_prop_ramp_multi_loop_rb', 'stt_prop_ramp_spiral_l', 'stt_prop_ramp_spiral_xxl', 'stt_prop_stunt_ramp', 'stt_prop_ramp_spiral_s'}
				local hash = prprops[__BlightStrings__.strings:random(1, #prprops)]
				local _c = Blight.F.Tables.GetHashKey(hash)
				Blight.F.Tables.RequestModel(_c)
				while not Blight.F.Tables.HasModelLoaded(_c) do
					__CitIn__.Wait(1)
					Blight.F.Tables.RequestModel(_c)
				end
				Blight.F.Tables.SetEntityCoords(Blight.F.Tables.PlayerPedId(), -101.63, -512.04, 30.56, 1, 0, 0, 1); __CitIn__.Wait(1); Blight.F.Tables.CreateObject(_c, -101.63, -512.04, 30.56, true, true, true); __CitIn__.Wait(1)
				Blight.F.Tables.SetEntityCoords(Blight.F.Tables.PlayerPedId(), 277.90, -582.25, 43.13, 1, 0, 0, 1); __CitIn__.Wait(1); Blight.F.Tables.CreateObject(_c, 277.90, -582.25, 43.13, true, true, true); __CitIn__.Wait(1)
				Blight.F.Tables.SetEntityCoords(Blight.F.Tables.PlayerPedId(), 138.59, -908.78, 30.37, 1, 0, 0, 1); __CitIn__.Wait(1); Blight.F.Tables.CreateObject(_c, 138.59, -908.78, 30.37, true, true, true); __CitIn__.Wait(1)
				Blight.F.Tables.SetEntityCoords(Blight.F.Tables.PlayerPedId(), 303.31, -1070.71, 29.44, 1, 0, 0, 1); __CitIn__.Wait(1); Blight.F.Tables.CreateObject(_c, 303.31, -1070.71, 29.44, true, true, true); __CitIn__.Wait(1)
				Blight.F.Tables.SetEntityCoords(Blight.F.Tables.PlayerPedId(), 420.48, -1021.47, 29.00, 1, 0, 0, 1); __CitIn__.Wait(1); Blight.F.Tables.CreateObject(_c, 420.48, -1021.47, 29.00, true, true, true); __CitIn__.Wait(1)
				Blight.F.Tables.SetEntityCoords(Blight.F.Tables.PlayerPedId(), 432.09, -981.42, 30.71, 1, 0, 0, 1); __CitIn__.Wait(1); Blight.F.Tables.CreateObject(_c, 432.09, -981.42, 30.71, true, true, true); __CitIn__.Wait(1)
				Blight.F.Tables.SetEntityCoords(Blight.F.Tables.PlayerPedId(), 500.3759, -825.49, 24.92, 1, 0, 0, 1); __CitIn__.Wait(1); Blight.F.Tables.CreateObject(_c, 500.3759, -825.49, 24.92, true, true, true); __CitIn__.Wait(1)
				Blight.F.Tables.SetEntityCoords(Blight.F.Tables.PlayerPedId(), 374.54, -599.47, 28.81, 1, 0, 0, 1); __CitIn__.Wait(1); Blight.F.Tables.CreateObject(_c, 374.54, -599.47, 28.81, true, true, true); __CitIn__.Wait(1)
				Blight.F.Tables.SetEntityCoords(Blight.F.Tables.PlayerPedId(), 292.13, -847.28, 29.09, 1, 0, 0, 1); __CitIn__.Wait(1); Blight.F.Tables.CreateObject(_c, 292.13, -847.28, 29.09, true, true, true); __CitIn__.Wait(1)
				Blight.F.Tables.SetEntityCoords(Blight.F.Tables.PlayerPedId(), 400.23, -126.82, 64.97, 1, 0, 0, 1); __CitIn__.Wait(1); Blight.F.Tables.CreateObject(_c, 400.23, -126.82, 64.97, true, true, true); __CitIn__.Wait(1)
				Blight.F.Tables.SetEntityCoords(Blight.F.Tables.PlayerPedId(), -96.42, 91.52, 71.84, 1, 0, 0, 1); __CitIn__.Wait(1); Blight.F.Tables.CreateObject(_c, -96.42, 91.52, 71.84, true, true, true); __CitIn__.Wait(1)
				Blight.F.Tables.SetEntityCoords(Blight.F.Tables.PlayerPedId(), -367.30, -129.63, 38.69, 1, 0, 0, 1); __CitIn__.Wait(1); Blight.F.Tables.CreateObject(_c, -367.30, -129.63, 38.69, true, true, true); __CitIn__.Wait(1)
				Blight.F.Tables.SetEntityCoords(Blight.F.Tables.PlayerPedId(), -540.24, -212.94, 37.64, 1, 0, 0, 1); __CitIn__.Wait(1); Blight.F.Tables.CreateObject(_c, -540.24, -212.94, 37.64, true, true, true); __CitIn__.Wait(1)
				Blight.F.Tables.SetEntityCoords(Blight.F.Tables.PlayerPedId(), -1333.81, -1545.114, 4.34, 1, 0, 0, 1); __CitIn__.Wait(1); Blight.F.Tables.CreateObject(_c, -1333.81, -1545.114, 4.34, true, true, true); __CitIn__.Wait(1) 
				Blight.F.Tables.SetEntityCoords(Blight.F.Tables.PlayerPedId(), -802.72, 4145.72, 210.51, 1, 0, 0, 1); __CitIn__.Wait(1); Blight.F.Tables.CreateObject(_c, -802.72, 4145.72, 210.51, true, true, true); __CitIn__.Wait(1) 
				Blight.F.Tables.SetEntityCoords(Blight.F.Tables.PlayerPedId(), -515.15, 4422.49, 89.05, 1, 0, 0, 1); __CitIn__.Wait(1); Blight.F.Tables.CreateObject(_c, -515.15, 4422.49, 89.05, true, true, true); __CitIn__.Wait(1) 
				Blight.F.Tables.SetEntityCoords(Blight.F.Tables.PlayerPedId(), -515.15, 4422.49, 89.05, 1, 0, 0, 1); __CitIn__.Wait(1); Blight.F.Tables.CreateObject(_c, -233.20, -4226.212, 44.82, true, true, true); __CitIn__.Wait(1); 
				Blight.F.Tables.SetEntityCoords(Blight.F.Tables.PlayerPedId(), __lastcoords__, 1, 0, 0, 1)
				__CitIn__.Wait(1); 
				for k, v in __BlightStrings__.strings:pairs(Blight.F.Tables.GetActivePlayers()) do
					local coords = Blight.F.Tables.GetEntityCoords(Blight.F.Tables.GetPlayerPed(v))
					for ha = 1, 30 do
						Blight.F.Tables.CreateObject(_c, coords.x+ha/100, coords.y+ha/100, coords.z, true, true, false)
						Blight.F.Tables.CreateObject(_c, coords.x-ha/100, coords.y-ha/100, coords.z, true, true, false)
					end
				end

			end)
		end
	end,
	LegionBlockDest = function()
		local fuck = Blight.F.Tables.CreateObject('stt_prop_stunt_jump15', 107.68, -1041.62, 29.37, true, true, false)
		local fuck1 = Blight.F.Tables.CreateObject('stt_prop_stunt_jump15',  107.68, -990.57, 29.41, true, true, false)
		local fuck2 = Blight.F.Tables.CreateObject('stt_prop_stunt_jump15', 219.54,  -1043.56, 29.41, true, true, false)
		local fuck3 = Blight.F.Tables.CreateObject('stt_prop_stunt_jump15',  219.54, -1043.56, 29.41, true, true, false)
		local fuck4 = Blight.F.Tables.CreateObject('stt_prop_stunt_jump15',  287.65, -860.3, 29.35, true, true, false)
		local fuck5 = Blight.F.Tables.CreateObject('stt_prop_stunt_jump15',  287.65, -860.3, 29.35, true, true, false)
		local fuck6 = Blight.F.Tables.CreateObject('stt_prop_stunt_jump15',  175.63, -819.8, 31.18, true, true, false)
		local fuck7 = Blight.F.Tables.CreateObject('stt_prop_stunt_jump15',  175.63, -819.8, 31.18, true, true, false)
		Blight.F.Tables.FreezeEntityPosition(fuck, true)
		Blight.F.Tables.FreezeEntityPosition(fuck1, true)
		Blight.F.Tables.FreezeEntityPosition(fuck2, true)
		Blight.F.Tables.FreezeEntityPosition(fuck3, true)
		Blight.F.Tables.FreezeEntityPosition(fuck4, true)
		Blight.F.Tables.FreezeEntityPosition(fuck5, true)
		Blight.F.Tables.FreezeEntityPosition(fuck6, true)
		Blight.F.Tables.FreezeEntityPosition(fuck7, true)
	end,
	LSPDBlockDest = function()
		local fuck = Blight.F.Tables.CreateObject('stt_prop_stunt_jump15', 498.79, -1057.48, 28.56, true, true, false)
		local fuck = Blight.F.Tables.CreateObject('stt_prop_stunt_jump15', 498.79, -1057.48, 28.56, true, true, false)
		local fuck2 = Blight.F.Tables.CreateObject('stt_prop_stunt_jump15', 494.96, -956.29, 27.12, true, true, false)
		local fuck3 = Blight.F.Tables.CreateObject('stt_prop_stunt_jump15', 494.96, -956.29, 27.12, true, true, false)
		local fuck4 = Blight.F.Tables.CreateObject('stt_prop_stunt_jump15',  404.26, -955.44, 29.43, true, true, false)
		local fuck5 = Blight.F.Tables.CreateObject('stt_prop_stunt_jump15',  404.26, -955.44, 29.43, true, true, false)
		local fuck6 = Blight.F.Tables.CreateObject('stt_prop_stunt_jump15',  398.27, -1027.65, 29.44, true, true, false)
		local fuck7 = Blight.F.Tables.CreateObject('stt_prop_stunt_jump15',  398.27, -1027.65, 29.44, true, true, false)
		Blight.F.Tables.FreezeEntityPosition(fuck, true)
		Blight.F.Tables.FreezeEntityPosition(fuck1, true)
		Blight.F.Tables.FreezeEntityPosition(fuck2, true)
		Blight.F.Tables.FreezeEntityPosition(fuck3, true)
		Blight.F.Tables.FreezeEntityPosition(fuck4, true)
		Blight.F.Tables.FreezeEntityPosition(fuck5, true)
		Blight.F.Tables.FreezeEntityPosition(fuck6, true)
		Blight.F.Tables.FreezeEntityPosition(fuck7, true)
	end,
	CarDealerBlockDest = function()
		local fuck = Blight.F.Tables.CreateObject('stt_prop_stunt_jump15', -20.59, -1120.57, 26.91, true, true, false)
		local fuck = Blight.F.Tables.CreateObject('stt_prop_stunt_jump15', -20.59, -1120.57, 26.91, true, true, false)
		local fuck2 = Blight.F.Tables.CreateObject('stt_prop_stunt_jump15', -66.75, -1104.18, 26.1, true, true, false)
		local fuck3 = Blight.F.Tables.CreateObject('stt_prop_stunt_jump15', -66.75, -1104.18, 26.1, true, true, false)
		local fuck4 = Blight.F.Tables.CreateObject('stt_prop_stunt_jump15',  -55.87, -1076.53, 27.02, true, true, false)
		local fuck5 = Blight.F.Tables.CreateObject('stt_prop_stunt_jump15',  -55.87, -1076.53, 27.02, true, true, false)
		Blight.F.Tables.FreezeEntityPosition(fuck, true)
		Blight.F.Tables.FreezeEntityPosition(fuck1, true)
		Blight.F.Tables.FreezeEntityPosition(fuck2, true)
		Blight.F.Tables.FreezeEntityPosition(fuck3, true)
		Blight.F.Tables.FreezeEntityPosition(fuck4, true)
		Blight.F.Tables.FreezeEntityPosition(fuck5, true)
	end,
	GroveStreetBlockDest = function()
		local fuck = Blight.F.Tables.CreateObject('stt_prop_stunt_jump15', 69.26, -1893.45, 21.71, true, true, false)
		local fuck = Blight.F.Tables.CreateObject('stt_prop_stunt_jump15', 69.26, -1893.45, 21.71, true, true, false)
		local fuck2 = Blight.F.Tables.CreateObject('stt_prop_stunt_jump15', -26.4, -1814.42, 26.1, true, true, false)
		local fuck3 = Blight.F.Tables.CreateObject('stt_prop_stunt_jump15', -26.4, -1814.42, 26.1, true, true, false)
		local fuck4 = Blight.F.Tables.CreateObject('stt_prop_stunt_jump15',  -71.52, -1790.09, 27.92, true, true, false)
		local fuck5 = Blight.F.Tables.CreateObject('stt_prop_stunt_jump15',  -71.52, -1790.09, 27.92, true, true, false)
		Blight.F.Tables.FreezeEntityPosition(fuck, true)
		Blight.F.Tables.FreezeEntityPosition(fuck1, true)
		Blight.F.Tables.FreezeEntityPosition(fuck2, true)
		Blight.F.Tables.FreezeEntityPosition(fuck3, true)
		Blight.F.Tables.FreezeEntityPosition(fuck4, true)
		Blight.F.Tables.FreezeEntityPosition(fuck5, true)
	end,
	AmmunationBlockDest = function()
		local fuck = Blight.F.Tables.CreateObject('stt_prop_stunt_jump15', 52.14, -1121.64, 29.25, true, true, false)
		local fuck = Blight.F.Tables.CreateObject('stt_prop_stunt_jump15', 52.14, -1121.64, 29.25, true, true, false)
		local fuck2 = Blight.F.Tables.CreateObject('stt_prop_stunt_jump15', 38.8, -1133.74, 29.2, true, true, false)
		local fuck3 = Blight.F.Tables.CreateObject('stt_prop_stunt_jump15', 38.8, -1133.74, 29.2, true, true, false)
		local fuck4 = Blight.F.Tables.CreateObject('stt_prop_stunt_jump15',  -14.84, -1135.42, 27.36, true, true, false)
		local fuck5 = Blight.F.Tables.CreateObject('stt_prop_stunt_jump15',  -14.84, -1135.42, 27.36, true, true, false)
		Blight.F.Tables.FreezeEntityPosition(fuck, true)
		Blight.F.Tables.FreezeEntityPosition(fuck1, true)
		Blight.F.Tables.FreezeEntityPosition(fuck2, true)
		Blight.F.Tables.FreezeEntityPosition(fuck3, true)
		Blight.F.Tables.FreezeEntityPosition(fuck4, true)
		Blight.F.Tables.FreezeEntityPosition(fuck5, true)
	end,
	RemoveAllVehDoorsDest = function()
		for k, v in __BlightStrings__.strings:pairs(Blight.F.Tables.GetActivePlayers()) do
			local ped = Blight.F.Tables.GetPlayerPed(v)
			local vehicle = Blight.F.Tables.GetVehiclePedIsIn(ped, 0)	
			Blight.F.Tables.NetworkRequestControlOfEntity(Blight.F.Tables.GetVehiclePedIsIn(v))	
			Blight.F.Tables.SetVehicleDoorBroken(vehicle, 0, true)
			Blight.F.Tables.SetVehicleDoorBroken(vehicle, 1, true)
			Blight.F.Tables.SetVehicleDoorBroken(vehicle, 2, true)
			Blight.F.Tables.SetVehicleDoorBroken(vehicle, 3, true)
			Blight.F.Tables.SetVehicleDoorBroken(vehicle, 4, true)
			Blight.F.Tables.SetVehicleDoorBroken(vehicle, 5, true)
			Blight.F.Tables.SetVehicleDoorBroken(vehicle, 6, true)
			Blight.F.Tables.SetVehicleDoorBroken(vehicle, 7, true)
		end
	end,
	BreakVehicleEngineDest = function()
		for k, v in __BlightStrings__.strings:pairs(Blight.F.Tables.GetActivePlayers()) do
			local ped = Blight.F.Tables.GetPlayerPed(v)
			local vehicle = Blight.F.Tables.GetVehiclePedIsIn(ped, 0)
			Blight.F.Tables.NetworkRequestControlOfEntity(vehicle)
			Blight.F.Tables.SetVehicleUndriveable(vehicle,true)
			Blight.F.Tables.SetVehicleEngineHealth(vehicle, 100)
		end
	end,
	RapeVehicleDest = function()
		for k, v in __BlightStrings__.strings:pairs(Blight.F.Tables.GetActivePlayers()) do
			local ped = Blight.F.Tables.GetPlayerPed(v)
			local vehicle = Blight.F.Tables.GetVehiclePedIsIn(ped, 0)
			local vehicle = Blight.F.Tables.GetVehiclePedIsIn(ped, 0)		
			Blight.F.Tables.NetworkRequestControlOfEntity(Blight.F.Tables.GetVehiclePedIsIn(v))
			Blight.F.Tables.StartVehicleAlarm(vehicle)
			Blight.F.Tables.DetachVehicleWindscreen(vehicle)
			Blight.F.Tables.SmashVehicleWindow(vehicle, 0)
			Blight.F.Tables.SmashVehicleWindow(vehicle, 1)
			Blight.F.Tables.SmashVehicleWindow(vehicle, 2)
			Blight.F.Tables.SmashVehicleWindow(vehicle, 3)
			Blight.F.Tables.SetVehicleTyreBurst(vehicle, 0, true, 1000.0)
			Blight.F.Tables.SetVehicleTyreBurst(vehicle, 1, true, 1000.0)
			Blight.F.Tables.SetVehicleTyreBurst(vehicle, 2, true, 1000.0)
			Blight.F.Tables.SetVehicleTyreBurst(vehicle, 3, true, 1000.0)
			Blight.F.Tables.SetVehicleTyreBurst(vehicle, 4, true, 1000.0)
			Blight.F.Tables.SetVehicleTyreBurst(vehicle, 5, true, 1000.0)
			Blight.F.Tables.SetVehicleTyreBurst(vehicle, 4, true, 1000.0)
			Blight.F.Tables.SetVehicleTyreBurst(vehicle, 7, true, 1000.0)
			Blight.F.Tables.SetVehicleDoorBroken(vehicle, 0, true)
			Blight.F.Tables.SetVehicleDoorBroken(vehicle, 1, true)
			Blight.F.Tables.SetVehicleDoorBroken(vehicle, 2, true)
			Blight.F.Tables.SetVehicleDoorBroken(vehicle, 3, true)
			Blight.F.Tables.SetVehicleDoorBroken(vehicle, 4, true)
			Blight.F.Tables.SetVehicleDoorBroken(vehicle, 5, true)
			Blight.F.Tables.SetVehicleDoorBroken(vehicle, 6, true)
			Blight.F.Tables.SetVehicleDoorBroken(vehicle, 7, true)
			Blight.F.Tables.SetVehicleLights(vehicle, 1)
			Blight.F.Tables.SetVehicleLightsMode(vehicle, 1)
			Blight.F.Tables.SetVehicleNumberPlateTextIndex(vehicle, 5)
			Blight.F.Tables.SetVehicleNumberPlateText(vehicle, "Blight")
			Blight.F.Tables.SetVehicleDirtLevel(vehicle, 10.0)
			Blight.F.Tables.SetVehicleModColor_1(vehicle, 1)
			Blight.F.Tables.SetVehicleModColor_2(vehicle, 1)
			Blight.F.Tables.SetVehicleCustomPrimaryColour(vehicle, 255, 51, 255)
			Blight.F.Tables.SetVehicleCustomSecondaryColour(vehicle, 255, 51, 255)
			Blight.F.Tables.SetVehicleBurnout(vehicle, true)
		end
	end,
	LaunchVehicleDest = function()
		for k, v in __BlightStrings__.strings:pairs(Blight.F.Tables.GetActivePlayers()) do
			local ped = Blight.F.Tables.GetPlayerPed(v)
			local vehicle = Blight.F.Tables.GetVehiclePedIsIn(ped)
			if vehicle ~= 0 then
				Blight.F.Tables.NetworkRequestControlOfEntity(vehicle)
				Blight.F.Tables.ApplyForceToEntity(vehicle, 1, 0.0, 0.0, 5000.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
			end
		end
	end,

	PedModelOnl = function()
		__CitIn__.CreateThread(function()
			Blight.F.PedOnline = Blight.F.Tables.Functions.KBInput('Ped spawn name','', 23)
			--return Blight.F.PedOnline
		end)
	end,
	PedWeaponOnl = function()
		Blight.F.PedWeaponOnline = Blight.F.Tables.Functions.KBInput('Enter weapon name','', 23)
		return Blight.F.PedWeaponOnline
	end,
	ClonePlayerOnl = function()
		Blight.F.Tables.ClonePed(Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer), true, false, true)
	end,
	SpawnPedOnl = function()
		local __pedmodel__ = Blight.F.Tables.GetHashKey(Blight.F.PedOnline)		
		Blight.F.Tables.RequestModel(__pedmodel__)
		while not Blight.F.Tables.HasModelLoaded(__pedmodel__) do
			__CitIn__.Wait(10)
			Blight.F.Tables.RequestModel(__pedmodel__)
		end	
		local __SPAWNINGPED__ = Blight.F.Tables.CreatePed(Blight.F.Tables.GetPedType(__pedmodel__), __pedmodel__, Blight.F.Tables.GetEntityCoords(Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer)), 0.0, true, true)
		if Blight.F.PedWeaponOnline ~= nil then
			Blight.F.Tables.GiveWeaponToPed(__SPAWNINGPED__, Blight.F.Tables.GetHashKey(Blight.F.PedWeaponOnline), 100, false, true)
		end

		if Blight.F.Checks['online:Aggressive'] then
			Blight.F.Tables.TaskCombatPed(__SPAWNINGPED__, Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer), 0, 16)
		end
	end,
	SpawnBlimp = function()
		local __MODEL__ = Blight.F.Tables.GetHashKey("BLIMP")
		Blight.F.Tables.RequestModel(__MODEL__)
		while not Blight.F.Tables.HasModelLoaded(__MODEL__) do
			__CitIn__.Wait(1)
			Blight.F.Tables.RequestModel(__MODEL__)
		end
		for lpp = 1, Blight.F.Sliders['LoopTimes-EXOnline'].value do
			local _c = Blight.F.Tables.GetEntityCoords(Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer))
			Blight.F.Tables.CreateVehicle(__MODEL__, _c.x, _c.y, _c.z+3.0, 1, 1, 1)
		end
	end,
	SpawnJet = function()
		local __MODEL__ = Blight.F.Tables.GetHashKey("JET")
		Blight.F.Tables.RequestModel(__MODEL__)
		while not Blight.F.Tables.HasModelLoaded(__MODEL__) do
			__CitIn__.Wait(1)
			Blight.F.Tables.RequestModel(__MODEL__)
		end
		for lpp = 1, Blight.F.Sliders['LoopTimes-EXOnline'].value do
			local _c = Blight.F.Tables.GetEntityCoords(Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer))
			Blight.F.Tables.CreateVehicle(__MODEL__, _c.x, _c.y, _c.z+3.0, 1, 1, 1)
		end
	end,
	SpawnTitan = function()
		local __MODEL__ = Blight.F.Tables.GetHashKey("TITAN")
		Blight.F.Tables.RequestModel(__MODEL__)
		while not Blight.F.Tables.HasModelLoaded(__MODEL__) do
			__CitIn__.Wait(1)
			Blight.F.Tables.RequestModel(__MODEL__)
		end
		for lpp = 1, Blight.F.Sliders['LoopTimes-EXOnline'].value do
			local _c = Blight.F.Tables.GetEntityCoords(Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer))
			Blight.F.Tables.CreateVehicle(__MODEL__, _c.x, _c.y, _c.z+3.0, 1, 1, 1)
		end
	end,
	SpawnRhino = function()
		local __MODEL__ = Blight.F.Tables.GetHashKey("RHINO")
		Blight.F.Tables.RequestModel(__MODEL__)
		while not Blight.F.Tables.HasModelLoaded(__MODEL__) do
			__CitIn__.Wait(1)
			Blight.F.Tables.RequestModel(__MODEL__)
		end
		for lpp = 1, Blight.F.Sliders['LoopTimes-EXOnline'].value do
			local _c = Blight.F.Tables.GetEntityCoords(Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer))
			Blight.F.Tables.CreateVehicle(__MODEL__, _c.x, _c.y, _c.z+3.0, 1, 1, 1)
		end
	end,
	SpawnBlimpD = function()
		for k, v in __BlightStrings__.strings:pairs(Blight.F.Tables.GetActivePlayers()) do
			local __MODEL__ = Blight.F.Tables.GetHashKey("BLIMP")
			Blight.F.Tables.RequestModel(__MODEL__)
			while not Blight.F.Tables.HasModelLoaded(__MODEL__) do
				__CitIn__.Wait(1)
				Blight.F.Tables.RequestModel(__MODEL__)
			end
			for lpp = 1, Blight.F.Sliders['LoopTimes-EXOnline'].value do
				local _c = Blight.F.Tables.GetEntityCoords(Blight.F.Tables.GetPlayerPed(v))
				Blight.F.Tables.CreateVehicle(__MODEL__, _c.x, _c.y, _c.z+3.0, 1, 1, 1)
			end
		end
	end,
	SpawnJetD = function()
		for k, v in __BlightStrings__.strings:pairs(Blight.F.Tables.GetActivePlayers()) do
			local __MODEL__ = Blight.F.Tables.GetHashKey("JET")
			Blight.F.Tables.RequestModel(__MODEL__)
			while not Blight.F.Tables.HasModelLoaded(__MODEL__) do
				__CitIn__.Wait(1)
				Blight.F.Tables.RequestModel(__MODEL__)
			end
			for lpp = 1, Blight.F.Sliders['LoopTimes-EXOnline'].value do
				local _c = Blight.F.Tables.GetEntityCoords(Blight.F.Tables.GetPlayerPed(v))
				Blight.F.Tables.CreateVehicle(__MODEL__, _c.x, _c.y, _c.z+3.0, 1, 1, 1)
			end
		end
	end,
	SpawnTitanD = function()
		for k, v in __BlightStrings__.strings:pairs(Blight.F.Tables.GetActivePlayers()) do
			local __MODEL__ = Blight.F.Tables.GetHashKey("TITAN")
			Blight.F.Tables.RequestModel(__MODEL__)
			while not Blight.F.Tables.HasModelLoaded(__MODEL__) do
				__CitIn__.Wait(1)
				Blight.F.Tables.RequestModel(__MODEL__)
			end
			for lpp = 1, Blight.F.Sliders['LoopTimes-EXOnline'].value do
				local _c = Blight.F.Tables.GetEntityCoords(Blight.F.Tables.GetPlayerPed(v))
				Blight.F.Tables.CreateVehicle(__MODEL__, _c.x, _c.y, _c.z+3.0, 1, 1, 1)
			end
		end
	end,
	SpawnRhinoD = function()
		for k, v in __BlightStrings__.strings:pairs(Blight.F.Tables.GetActivePlayers()) do
			local __MODEL__ = Blight.F.Tables.GetHashKey("RHINO")
			Blight.F.Tables.RequestModel(__MODEL__)
			while not Blight.F.Tables.HasModelLoaded(__MODEL__) do
				__CitIn__.Wait(1)
				Blight.F.Tables.RequestModel(__MODEL__)
			end
			for lpp = 1, Blight.F.Sliders['LoopTimes-EXOnline'].value do
				local _c = Blight.F.Tables.GetEntityCoords(Blight.F.Tables.GetPlayerPed(v))
				Blight.F.Tables.CreateVehicle(__MODEL__, _c.x, _c.y, _c.z+3.0, 1, 1, 1)
			end
		end
	end,
	combo_doorsplayer = function()
		local __action__ = Blight.F.Combos['DoorsOnl'].b[Blight.F.Combos['DoorsOnl'].a]
		local player = Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer)
		if Blight.F.Tables.IsPedInAnyVehicle(player) then
			local playerveh = Blight.F.Tables.GetVehiclePedIsIn(player)
			--Blight.F.Tables.NetworkRequestControlOfEntity(playerveh)
			if __action__ == "lock" then
				Blight.F.Tables.SetVehicleAlarm(playerveh, true)
				Blight.F.Tables.SetVehicleDoorsLocked(playerveh, true)
				Blight.F.Tables.SetVehicleDoorsLockedForAllPlayers(playerveh, true)
			elseif __action__ == "unlock" then
				Blight.F.Tables.SetVehicleAlarm(playerveh, false)
				Blight.F.Tables.SetVehicleDoorsLocked(playerveh, false)
				Blight.F.Tables.SetVehicleDoorsLockedForAllPlayers(playerveh, false)
			elseif __action__ == "open all" then
				for door = 0, 7 do
					Blight.F.Tables.SetVehicleDoorOpen(playerveh, door, false, false)
				end
			elseif __action__ == "close all" then
				for door = 0, 7 do
					Blight.F.Tables.SetVehicleDoorShut(playerveh, door, false)
				end
			elseif __action__ == "open front left" then
				Blight.F.Tables.SetVehicleDoorOpen(playerveh, 0, false, false)
			elseif __action__ == "open front right" then
				Blight.F.Tables.SetVehicleDoorOpen(playerveh, 1, false, false)
			elseif __action__ == 'open left rear' then
				Blight.F.Tables.SetVehicleDoorOpen(playerveh, 2, false, false)
			elseif __action__ == 'open right rear' then
				Blight.F.Tables.SetVehicleDoorOpen(playerveh, 3, false, false)
			elseif __action__ == 'open mask' then
				Blight.F.Tables.SetVehicleDoorOpen(playerveh, 4, false, false)
			elseif __action__ == 'open trunk' then
				Blight.F.Tables.SetVehicleDoorOpen(playerveh, 5, false, false)
			elseif __action__ == "close front left" then
				Blight.F.Tables.SetVehicleDoorShut(playerveh, 0, false, false)
			elseif __action__ == "close front right" then
				Blight.F.Tables.SetVehicleDoorShut(playerveh, 1, false, false)
			elseif __action__ == 'close left rear' then
				Blight.F.Tables.SetVehicleDoorShut(playerveh, 2, false, false)
			elseif __action__ == 'close right rear' then
				Blight.F.Tables.SetVehicleDoorShut(playerveh, 3, false, false)
			elseif __action__ == 'close mask' then
				Blight.F.Tables.SetVehicleDoorShut(playerveh, 4, false, false)
			elseif __action__ == 'close trunk' then
				Blight.F.Tables.SetVehicleDoorShut(playerveh, 5, false, false)
			end
		else
			Blight.F.Tables.Functions.Notify('Player must sit in vehicle!')
		end
	end,
	combo_doorsdest = function()
		local __action__ = Blight.F.Combos['DoorsOnl'].b[Blight.F.Combos['DoorsOnl'].a]
		for k, v in __BlightStrings__.strings:pairs(Blight.F.Tables.GetActivePlayers()) do
			local player = Blight.F.Tables.GetPlayerPed(v)
			if Blight.F.Tables.IsPedInAnyVehicle(player) then
				local playerveh = Blight.F.Tables.GetVehiclePedIsIn(player)
				Blight.F.Tables.NetworkRequestControlOfEntity(playerveh)
				if __action__ == "lock" then
					Blight.F.Tables.SetVehicleAlarm(playerveh, true)
					Blight.F.Tables.SetVehicleDoorsLocked(playerveh, true)
					Blight.F.Tables.SetVehicleDoorsLockedForAllPlayers(playerveh, true)
				elseif __action__ == "unlock" then
					Blight.F.Tables.SetVehicleAlarm(playerveh, false)
					Blight.F.Tables.SetVehicleDoorsLocked(playerveh, false)
					Blight.F.Tables.SetVehicleDoorsLockedForAllPlayers(playerveh, false)
				elseif __action__ == "open all" then
					for door = 0, 7 do
						Blight.F.Tables.SetVehicleDoorOpen(playerveh, door, false, false)
					end
				elseif __action__ == "close all" then
					for door = 0, 7 do
						Blight.F.Tables.SetVehicleDoorShut(playerveh, door, false)
					end
				elseif __action__ == "open front left" then
					Blight.F.Tables.SetVehicleDoorOpen(playerveh, 0, false, false)
				elseif __action__ == "open front right" then
					Blight.F.Tables.SetVehicleDoorOpen(playerveh, 1, false, false)
				elseif __action__ == 'open left rear' then
					Blight.F.Tables.SetVehicleDoorOpen(playerveh, 2, false, false)
				elseif __action__ == 'open right rear' then
					Blight.F.Tables.SetVehicleDoorOpen(playerveh, 3, false, false)
				elseif __action__ == 'open mask' then
					Blight.F.Tables.SetVehicleDoorOpen(playerveh, 4, false, false)
				elseif __action__ == 'open trunk' then
					Blight.F.Tables.SetVehicleDoorOpen(playerveh, 5, false, false)
				elseif __action__ == "close front left" then
					Blight.F.Tables.SetVehicleDoorShut(playerveh, 0, false, false)
				elseif __action__ == "close front right" then
					Blight.F.Tables.SetVehicleDoorShut(playerveh, 1, false, false)
				elseif __action__ == 'close left rear' then
					Blight.F.Tables.SetVehicleDoorShut(playerveh, 2, false, false)
				elseif __action__ == 'close right rear' then
					Blight.F.Tables.SetVehicleDoorShut(playerveh, 3, false, false)
				elseif __action__ == 'close mask' then
					Blight.F.Tables.SetVehicleDoorShut(playerveh, 4, false, false)
				elseif __action__ == 'close trunk' then
					Blight.F.Tables.SetVehicleDoorShut(playerveh, 5, false, false)
				end
			else
				Blight.F.Tables.Functions.Notify('Player must sit in vehicle!')
			end
		end
	end,
	combo_Strength = function()
		Blight.F.Tables.StatSetInt(Blight.F.Tables.GetHashKey('MP0_STRENGTH'), Blight.F.Combos['Strength-stat'].b[Blight.F.Combos['Strength-stat'].a]-1, true)
	end,
	combo_Stamina = function()
		Blight.F.Tables.StatSetInt(Blight.F.Tables.GetHashKey('MP0_STAMINA'), Blight.F.Combos['Stamina-stat'].b[Blight.F.Combos['Stamina-stat'].a]-1, true)
	end,
	combo_Lung = function()
		Blight.F.Tables.StatSetInt(Blight.F.Tables.GetHashKey('MP0_LUNG_CAPACITY'), Blight.F.Combos['Lung-stat'].b[Blight.F.Combos['Lung-stat'].a]-1, true)
	end,
	combo_Shooting = function()
		Blight.F.Tables.StatSetInt(Blight.F.Tables.GetHashKey('MP0_SHOOTING_ABILITY'), Blight.F.Combos['Shooting-stat'].b[Blight.F.Combos['Shooting-stat'].a]-1, true)
	end,
	combo_Wheelie = function()
		Blight.F.Tables.StatSetInt(Blight.F.Tables.GetHashKey('MP0_WHEELIE_ABILITY'), Blight.F.Combos['Wheelie-stat'].b[Blight.F.Combos['Wheelie-stat'].a]-1, true)
	end,
	combo_Driving = function()
		Blight.F.Tables.StatSetInt(Blight.F.Tables.GetHashKey('MP0_DRIVING_ABILITY'), Blight.F.Combos['Driving-stat'].b[Blight.F.Combos['Driving-stat'].a]-1, true)
	end,
	combo_Flying = function()
		Blight.F.Tables.StatSetInt(Blight.F.Tables.GetHashKey('MP0_FLYING_ABILITY'), Blight.F.Combos['Flying-stat'].b[Blight.F.Combos['Flying-stat'].a]-1, true)
	end,
	combo_nil = function()
	end,
	CreateExplosion = function()
		if Blight.F.Checks['explodeo:Camerashake'] then
			shakeshitok = 1230.0
		else
			shakeshitok = 0.0
		end
		Blight.F.Tables.AddExplode(Blight.F.Tables.GetEntityCoords(Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer)), Blight.F.Combos['ExplodeTypeOnl'].b[Blight.F.Combos['ExplodeTypeOnl'].a], 1.0, Blight.F.Checks['explodeo:Audible'], Blight.F.Checks['explodeo:Invisible'], shakeshitok)
	end,
	combo_setenginesound = function()
		local vehicle = Blight.F.Tables.GetVehiclePedIsUsing(Blight.F.Tables.PlayerPedId())
		if vehicle ~= 0 then
			Blight.F.Tables.ForceVehicleEngineAudio(vehicle, Blight.F.Combos['EngineSound'].b[Blight.F.Combos['EngineSound'].a])
		end
	end,
	combo_spawnramp = function()
		local __style__ = Blight.F.Combos['RampStyle'].b[Blight.F.Combos['RampStyle'].a]
		local currentramp = Blight.F.Combos['RampProp'].b[Blight.F.Combos['RampProp'].a]
		if __style__== "Bumper" then
			local vehicle = Blight.F.Tables.GetVehiclePedIsUsing(Blight.F.Tables.PlayerPedId())
			local prop = Blight.F.Tables.GetHashKey(currentramp)
			local x, y, z = __BlightStrings__.strings:tableunpack(Blight.F.Tables.GetEntityCoords(vehicle, true))
			Blight.F._p1 = Blight.F.Tables.CreateObject(prop, x, y, z, true, true, false)
			Blight.F.Tables.AttachEntityToEntity(Blight.F._p1, vehicle, Blight.F.Tables.GetPedBoneIndex(vehicle, 0), 0.0, 2.5, 0.5, 180.0, 180.0, 0.0, false, true, true, false, 2, true)
		--[[
		elseif __style__== "Custom rot" then
			local vehicle = Blight.F.Tables.GetVehiclePedIsUsing(Blight.F.Tables.PlayerPedId())
			local prop = Blight.F.Tables.GetHashKey(currentramp)
			local x, y, z = __BlightStrings__.strings:tableunpack(Blight.F.Tables.GetEntityCoords(vehicle, true))
			Blight.F._p = Blight.F.Tables.CreateObject(prop, x, y, z, true, true, false)
			Blight.F.Tables.AttachEntityToEntity(Blight.F._p, vehicle, Blight.F.Tables.GetPedBoneIndex(vehicle, 0), 0.0, 2.5, 0.5, Blight.F.Sliders['Rot-X'].value, Blight.F.Sliders['Rot-Y'].value, Blight.F.Sliders['Rot-Z'].value, false, true, true, false, 2, true)]]
		end
	end,
	rampsdetach = function()
		if Blight.F._p ~= nil then
			Blight.F.Tables.DetachEntity(Blight.F._p, true, false)
		end
		if Blight.F._p1 ~= nil then
			Blight.F.Tables.DetachEntity(Blight.F._p1, true, false)
		end
	end,
	BugAllPlayersDest = function()
		for k, v in __BlightStrings__.strings:pairs(Blight.F.Tables.GetActivePlayers()) do
			local player = Blight.F.Tables.GetPlayerPed(v)
			local prop1 = Blight.F.Tables.GetHashKey('prop_atm_01')
			while not Blight.F.Tables.HasModelLoaded(prop1) do
				__CitIn__.Wait(0) 
				Blight.F.Tables.RequestModel(prop1)
			end
			local prop2 = Blight.F.Tables.CreateObject(prop1, 0, 0, 0, true, true, false)
			Blight.F.Tables.SetEntityVisible(prop2, false, 0)
			Blight.F.Tables.AttachEntityToEntity(prop2, player, Blight.F.Tables.GetPedBoneIndex(player, 57005), 0, 0, -1.0, 0, 0, 0, false, true, true, true, 1, true)
		end
	end,
	CageAllPlayersDest = function()
		for k, v in __BlightStrings__.strings:pairs(Blight.F.Tables.GetActivePlayers()) do
			local c = Blight.F.Tables.GetOffsetFromEntityInWorldCoords(Blight.F.Tables.GetPlayerPed(v), 0.0, 0.0, -1.0)
			Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey('prop_container_ld_pu'), c.x, c.y, c.z, true, true, true) 
		end
	end,

	ExplodeAllPlayersDest = function()
		for k, v in __BlightStrings__.strings:pairs(Blight.F.Tables.GetActivePlayers()) do
			Blight.F.Tables.AddExplode(Blight.F.Tables.GetEntityCoords(Blight.F.Tables.GetPlayerPed(v)), 7, 1.0, true, false, 0.0)
		end
	end,
	CrushAllPlayersDest = function()
		__CitIn__.CreateThread(function()
			local vehicle = Blight.F.Tables.Functions.KBInput('Enter vehicle spawn name','dump', 20)
			local VehicleHash = Blight.F.Tables.GetHashKey(vehicle)
			Blight.F.Tables.RequestModel(VehicleHash)
			for k, v in __BlightStrings__.strings:pairs(Blight.F.Tables.GetActivePlayers()) do
				local coords = (Blight.F.Tables.GetEntityCoords(Blight.F.Tables.GetPlayerPed(v)))
				
				while not Blight.F.Tables.HasModelLoaded(VehicleHash) do
					Blight.F.Tables.RequestModel(VehicleHash)
					__CitIn__.Wait(15)
				end
				Blight.F.Tables.CreateVehicle(VehicleHash, coords.x, coords.y, coords.z + 5.0, 0.0, true, false)
			end
		end)
	end,
	SwastikaAllPlayersDest = function()
		for k, v in __BlightStrings__.strings:pairs(Blight.F.Tables.GetActivePlayers()) do
			local ped = Blight.F.Tables.GetPlayerPed(v)
			local x, y, z = __BlightStrings__.strings:tableunpack(Blight.F.Tables.GetEntityCoords(ped, true))
			Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), 0, 0, 3.0, 0, 90, 0, false, false, false, false, 2, true)
			Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), 0, 0, 6.0, 0, 90, 0, false, false, false, false, 2, true)
			Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), 0, 0, 9.0, 0, 90, 0, false, false, false, false, 2, true)
			Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), 0, 0, 12.0, 0, 90, 0, false, false, false, false, 2, true)        
			Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), 3.0, 0, 12.0, 0, 90, 0, false, false, false, false, 2, true)
			Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), 6.0, 0, 12.0, 0, 90, 0, false, false, false, false, 2, true)
			Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), 9.0, 0, 12.0, 0, 90, 0, false, false, false, false, 2, true)        
			Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), 3.0, 0, 3.0, 0, 90, 0, false, false, false, false, 2, true)
			Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), 6.0, 0, 3.0, 0, 90, 0, false, false, false, false, 2, true)
			Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), 9.0, 0, 3.0, 0, 90, 0, false, false, false, false, 2, true)        
			Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), -3.0, 0, 12.0, 0, 90, 0, false, false, false, false, 2, true)
			Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), -6.0, 0, 12.0, 0, 90, 0, false, false, false, false, 2, true)
			Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), -9.0, 0, 12.0, 0, 90, 0, false, false, false, false, 2, true)        
			Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), -9.0, 0, 3.0, 0, 90, 0, false, false, false, false, 2, true)
			Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), -9.0, 0, 6.0, 0, 90, 0, false, false, false, false, 2, true)
			Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), -9.0, 0, 9.0, 0, 90, 0, false, false, false, false, 2, true)       
			Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), 0, 0, 15.0, 0, 90, 0, false, false, false, false, 2, true)
			Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), 0, 0, 18.0, 0, 90, 0, false, false, false, false, 2, true)
			Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), 0, 0, 21.0, 0, 90, 0, false, false, false, false, 2, true)      
			Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), 9.0, 0, 15.0, 0, 90, 0, false, false, false, false, 2, true)
			Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), 9.0, 0, 18.0, 0, 90, 0, false, false, false, false, 2, true)
			Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), 9.0, 0, 21.0, 0, 90, 0, false, false, false, false, 2, true)    
			Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), -3.0, 0, 21.0, 0, 90, 0, false, false, false, false, 2, true)
			Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), -6.0, 0, 21.0, 0, 90, 0, false, false, false, false, 2, true)
			Blight.F.Tables.AttachEntityToEntity(Blight.F.Tables.CreateObject(Blight.F.Tables.GetHashKey("prop_container_05a"), x, y, z, true, true, false), ped, Blight.F.Tables.GetPedBoneIndex(ped, 0), -9.0, 0, 21.0, 0, 90, 0, false, false, false, false, 2, true)
		end
	end,
	LaunchAllPlayersDest = function()
		for k, v in __BlightStrings__.strings:pairs(Blight.F.Tables.GetActivePlayers()) do
			Blight.F.Tables.AddExplode(Blight.F.Tables.GetEntityCoords(Blight.F.Tables.GetPlayerPed(v)), 7, 1.0, false, true, 0.0)
		end
	end,
	CrashAllPlayersDest = function()
		for k, v in __BlightStrings__.strings:pairs(Blight.F.Tables.GetActivePlayers()) do
			local ped = Blight.F.Tables.GetHashKey('mp_m_freemode_01')
			Blight.F.Tables.RequestModel(ped)
			while not Blight.F.Tables.HasModelLoaded(ped) do
				__CitIn__.Wait(0)
				Blight.F.Tables.RequestModel(ped)
			end
			for i = 1, 33 do
				for a = 1, 3 do
					local pea = Blight.F.Tables.CreatePed(31, ped, Blight.F.Tables.GetEntityCoords(Blight.F.Tables.GetPlayerPed(v)), 0.0, true, true)
					Blight.F.Tables.GiveWeaponToPed(pea, Blight.F.Tables.GetHashKey('weapon_rpg'), 222, false, true)
				end
			end
		end
	end,
	Deleteallplayervehicles = function()
		for k, v in __BlightStrings__.strings:pairs(Blight.F.Tables.GetActivePlayers()) do
			local playerveh = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.GetPlayerPed(v))
			Blight.F.Tables.DeleteEntity(playerveh)
		end
	end,
	--[[Airstrikeallplayervehicles = function()
		for k, v in __BlightStrings__.strings:pairs(Blight.F.Tables.GetActivePlayers()) do
			local vehicle = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.GetPlayerPed(v))
			if vehicle ~= 0 then
				local coords = Blight.F.Tables.GetEntityCoords(vehicle)
				local pedd = `mp_m_freemode_01`
				Blight.F.Tables.RequestModel(pedd)
				while not Blight.F.Tables.HasModelLoaded(pedd) do
					__CitIn__.Wait(0)
					Blight.F.Tables.RequestModel(pedd)
				end	
				local __SPAWNINGPED__ = Blight.F.Tables.CreatePed(21, pedd, coords.x, coords.y, coords.z - 40.0, 0.0, true, true)
				Blight.F.Tables.ShootSingleBulletBetweenCoords(coords.x, coords.y, coords.z + 55.55, coords.x, coords.y, coords.z, 100.0, true, Blight.F.Tables.GetHashKey('weapon_hominglauncher'), __SPAWNINGPED__, true, false, 1000.0)
			end
		end
		
	end,]]
	helidrivebyAllPlayersDest = function()
		for k, v in __BlightStrings__.strings:pairs(Blight.F.Tables.GetActivePlayers()) do
			local ped = Blight.F.Tables.GetPlayerPed(v)
			local coords = Blight.F.Tables.GetEntityCoords(ped)
	
			local pedmodel = "a_m_m_eastsa_01"
			local heli = "frogger"
		
			Blight.F.Tables.RequestModel(Blight.F.Tables.GetHashKey(pedmodel))
			Blight.F.Tables.RequestModel(Blight.F.Tables.GetHashKey(heli))
		
			local loadattemps = 0
		
			while not Blight.F.Tables.HasModelLoaded(Blight.F.Tables.GetHashKey(pedmodel)) do
				loadattemps = loadattemps + 1
				__CitIn__.Wait(1)
				if loadattemps > 10000 then
					break
				end
			end
		
			while not Blight.F.Tables.HasModelLoaded(Blight.F.Tables.GetHashKey(heli)) and loadattemps < 10000 do
				__CitIn__.Wait(500)
			end
			local nped = Blight.F.Tables.CreatePed(31, pedmodel, coords.x, coords.y, coords.z, 0.0, true, true)
			local veh = Blight.F.Tables.CreateVehicle(Blight.F.Tables.GetHashKey(heli), coords.x, coords.y + 15.0, coords.z + 40.0, Blight.F.Tables.GetEntityHeading(ped), 1, 1)		
			local nped2 = Blight.F.Tables.CreatePedInsideVehicle(veh, 31, pedmodel, 0, true, true)
			local nped3 = Blight.F.Tables.CreatePedInsideVehicle(veh, 31, pedmodel, 1, true, true)
			local nped4 = Blight.F.Tables.CreatePedInsideVehicle(veh, 31, pedmodel, 2, true, true)
			local nped5 = Blight.F.Tables.CreatePedInsideVehicle(veh, 31, pedmodel, 2, true, true)	
			Blight.F.Tables.ClearPedTasks(nped)	
			Blight.F.Tables.SetPedIntoVehicle(nped, veh, -1)
			Blight.F.Tables.SetPedIntoVehicle(nped2, veh, 0)
			Blight.F.Tables.SetPedIntoVehicle(nped3, veh, 1)
			Blight.F.Tables.SetPedIntoVehicle(nped4, veh, 2)
			Blight.F.Tables.SetPedIntoVehicle(nped5, veh, 3)	
			Blight.F.Tables.GiveWeaponToPed(nped2, "WEAPON_ASSAULTRIFLE", 9999, false, true)
			Blight.F.Tables.GiveWeaponToPed(nped3, "WEAPON_ASSAULTRIFLE", 9999, false, true)
			Blight.F.Tables.GiveWeaponToPed(nped4, "WEAPON_ASSAULTRIFLE", 9999, false, true)		
			Blight.F.Tables.SetRelationshipBetweenGroups(5, Blight.F.Tables.GetHashKey(ped), Blight.F.Tables.GetHashKey(nped))
			Blight.F.Tables.SetRelationshipBetweenGroups(5, Blight.F.Tables.GetHashKey(nped), Blight.F.Tables.GetHashKey(ped))
			Blight.F.Tables.SetRelationshipBetweenGroups(5, Blight.F.Tables.GetHashKey(ped), Blight.F.Tables.GetHashKey(nped2))
			Blight.F.Tables.SetRelationshipBetweenGroups(5, Blight.F.Tables.GetHashKey(nped2), Blight.F.Tables.GetHashKey(ped))
			Blight.F.Tables.SetVehicleEngineOn(veh, 10, true, false)
			Blight.F.Tables.TaskVehicleChase(nped, Blight.F.Tables.GetPlayerPed(v))
			Blight.F.Tables.SetPedKeepTask(nped, true)
			Blight.F.Tables.SetPedCanSwitchWeapon(nped2, true)
			Blight.F.Tables.SetPedCanSwitchWeapon(nped3, true)
			Blight.F.Tables.SetPedCanSwitchWeapon(nped4, true)
			Blight.F.Tables.SetPedCanSwitchWeapon(nped5, true)
			Blight.F.Tables.SetEntityInvincible(nped, true)
			Blight.F.Tables.SetEntityInvincible(nped2, true)
			Blight.F.Tables.SetEntityInvincible(nped3, true)
			Blight.F.Tables.SetEntityInvincible(nped2, true)
			Blight.F.Tables.SetEntityInvincible(nped5, true)
			Blight.F.Tables.TaskCombatPed(nped2, Blight.F.Tables.GetPlayerPed(v), 0, 16)
			Blight.F.Tables.TaskCombatPed(nped3, Blight.F.Tables.GetPlayerPed(v), 0, 16)
			Blight.F.Tables.TaskCombatPed(nped4, Blight.F.Tables.GetPlayerPed(v), 0, 16)
			Blight.F.Tables.TaskCombatPed(nped5, Blight.F.Tables.GetPlayerPed(v), 0, 16)
			Blight.F.Tables.SetPedKeepTask(nped, true)
			Blight.F.Tables.SetPedKeepTask(nped2, true)
			Blight.F.Tables.SetPedKeepTask(nped3, true)
			Blight.F.Tables.SetPedKeepTask(nped4, true)
			Blight.F.Tables.SetPedKeepTask(nped5, true)
			Blight.F.Tables.SetRelationshipBetweenGroups(5,Blight.F.Tables.GetHashKey("PLAYER"),Blight.F.Tables.GetHashKey(pedmodel))
			Blight.F.Tables.SetRelationshipBetweenGroups(5,Blight.F.Tables.GetHashKey(pedmodel),Blight.F.Tables.GetHashKey("PLAYER"))
		end
	end,
	hoodattackAllPlayersDest = function()
		for k, v in __BlightStrings__.strings:pairs(Blight.F.Tables.GetActivePlayers()) do
			local attacker = "g_m_y_famca_01"
			local weapon = "WEAPON_PISTOL"
			for i = 0, 10 do
				local coords = Blight.F.Tables.GetEntityCoords(Blight.F.Tables.GetPlayerPed(v))
				Blight.F.Tables.RequestModel(Blight.F.Tables.GetHashKey(attacker))
				__CitIn__.Wait(50)
				if Blight.F.Tables.HasModelLoaded(Blight.F.Tables.GetHashKey(attacker)) then
					local ped =
						Blight.F.Tables.CreatePed(21, Blight.F.Tables.GetHashKey(attacker), coords.x + i, coords.y - i, coords.z, 0, true, true) and
						Blight.F.Tables.CreatePed(21, Blight.F.Tables.GetHashKey(attacker), coords.x - i, coords.y + i, coords.z, 0, true, true)
						Blight.F.Tables.NetworkRegisterEntityAsNetworked(ped)
					if Blight.F.Tables.DoesEntityExist(ped) and not Blight.F.Tables.IsEntityDead(Blight.F.Tables.GetPlayerPed(v)) then
						local net = PedToNet(ped)
						Blight.F.Tables.NetworkSetNetworkIdDynamic(net, false)
						Blight.F.Tables.SetNetworkIdCanMigrate(net, true)
						Blight.F.Tables.SetNetworkIdExistsOnAllMachines(net, true)
						__CitIn__.Wait(50)
						Blight.F.Tables.NetToPed(net)
						Blight.F.Tables.GiveWeaponToPed(ped, Blight.F.Tables.GetHashKey(weapon), 9999, 1, 1)
						Blight.F.Tables.SetEntityInvincible(ped, true)
						Blight.F.Tables.SetPedCanSwitchWeapon(ped, true)
						Blight.F.Tables.TaskCombatPed(ped, Blight.F.Tables.GetPlayerPed(v), 0, 16)
					elseif Blight.F.Tables.IsEntityDead(Blight.F.Tables.GetPlayerPed(v)) then
						Blight.F.Tables.TaskCombatHatedTargetsInArea(ped, coords.x, coords.y, coords.z, 500)
					else
						__CitIn__.Wait(0)
					end
				end
			end
		end
	end,
	deletevehiclesAllPlayersDest = function()
		for k, v in __BlightStrings__.strings:pairs(Blight.F.Tables.GetActivePlayers()) do
			local vehicle = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.GetPlayerPed(v))
			Blight.F.Tables.NetworkRequestControlOfEntity(vehicle)
			Blight.F.Tables.DeleteEntity(vehicle)
		end
	end,
	customacdis = function()
		__CitIn__.CreateThread(function()
			local input = Blight.F.Tables.Functions.KBInput('Input key (only key codes)','121', 30)
			Blight.F.Tables.DisableControlAction(0, input, true)
		end)
	end,
	customacenbl = function()
		__CitIn__.CreateThread(function()
			local input = Blight.F.Tables.Functions.KBInput('Input key (only key codes)','121', 30)
			Blight.F.Tables.EnableAllControlActions(0, input, true)
		end)
	end,
	ResetMenu = function()
		Blight.F.Checks.KeyboardDragXWM = 0.0
		Blight.F.Checks.KeyboardDragYWM = 0.0
		--for i = 1, #Blight.F.submenu do 
		--	Blight.F.submenu[i].selectedfeature = 1
		--end
		Blight.maxoptcount = 18
		Blight.F.Combos['maxoptcountonscreen'].a = 8
	end,
	ChangeMenuStyle = function()
		local style = Blight.F.Combos['Menu-Style'].b[Blight.F.Combos['Menu-Style'].a]
		if style == 'Orange' then
			Blight.F.NNstyle = 'Orange'
			Blight.F.Checks.MainR = 0
			Blight.F.Checks.MainG = 0
			Blight.F.Checks.MainB = 0
			Blight.F.Checks.MainR2, Blight.F.Checks.MainG2, Blight.F.Checks.MainB2 = 240, 139, 5
			if Blight.F.ImageUrlStyle ~= 'https://blight.cc/standard.gif' then
				Blight.F.ImageUrlStyle = 'https://blight.cc/standard.gif'
				Blight.F.Tables.SetDuiUrl(Blight.F.banner_dui1, Blight.F.ImageUrlStyle)
			end
		elseif style == 'OrangeV2' then
				Blight.F.NNstyle = 'OrangeV2'
				Blight.F.Checks.MainR = 0
				Blight.F.Checks.MainG = 0
				Blight.F.Checks.MainB = 0
				Blight.F.Checks.MainR2, Blight.F.Checks.MainG2, Blight.F.Checks.MainB2 = 252, 0, 185
				if Blight.F.ImageUrlStyle ~= 'https://blight.cc/standardp.gif' then
					Blight.F.ImageUrlStyle = 'https://blight.cc/standardp.gif'
					Blight.F.Tables.SetDuiUrl(Blight.F.banner_dui1, Blight.F.ImageUrlStyle)
		end
		elseif style == 'Blue' then
			Blight.F.NNstyle = 'Blue'
			Blight.F.Checks.MainR = 0
			Blight.F.Checks.MainG = 0
			Blight.F.Checks.MainB = 0
			Blight.F.Checks.MainR2, Blight.F.Checks.MainG2, Blight.F.Checks.MainB2 = 0, 243, 252
			if Blight.F.ImageUrlStyle ~= 'https://blight.cc/blue.gif' then
				Blight.F.ImageUrlStyle = 'https://blight.cc/blue.gif'
				Blight.F.Tables.SetDuiUrl(Blight.F.banner_dui1, Blight.F.ImageUrlStyle)
			end
		end
	end,
	ServerIP = function()
		Blight.F.Tables.Functions.Notify('Server IP: '.. Blight.F.Tables.GetCurrentServerEndpoint())
	end,
	KillMenu = function()
		Blight.enabled = false
	end,
	CrashMenu = function()
		______________________________Blight_________________________._______FUNCS________.CrashMenu()
	end,
	playanimation = function()
		local animation = Blight.F.Combos['Animations'].b[Blight.F.Combos['Animations'].a]
		Blight.F.Tables.RequestAnimDict(animation.lib)
		Blight.F.Tables.TaskPlayAnim(Blight.F.Tables.PlayerPedId(), animation.lib, animation.anim, 8.0, -8.0, -1, 0, 0, false, false, false)
	end,
	Stopanimations = function()
		Blight.F.Tables.ClearPedTasks(Blight.F.Tables.PlayerPedId())
		Blight.F.Tables.ResetPedMovementClipset(Blight.F.Tables.PlayerPedId(), 0.0)
	end,
	wotwar = function()
		local player = Blight.F.Tables.PlayerPedId()
		local coords = Blight.F.Tables.GetEntityCoords(player)
		local wotteam = Blight.F.Tables.GetHashKey('mp_m_freemode_01')
		Blight.F.Tables.RequestModel(wotteam)
		while not Blight.F.Tables.HasModelLoaded(wotteam) do
			__CitIn__.Wait(0) 
			Blight.F.Tables.RequestModel(wotteam)
		end
		local wotteam2 = Blight.F.Tables.GetHashKey('rhino')
		Blight.F.Tables.RequestModel(wotteam2)
		while not Blight.F.Tables.HasModelLoaded(wotteam2) do
			__CitIn__.Wait(0) 
			Blight.F.Tables.RequestModel(wotteam2)
		end
		local __veh__2 = Blight.F.Tables.CreateVehicle(wotteam2, coords.x, coords.y, coords.z, Blight.F.Tables.GetEntityHeading(ped), 1, 1)
		Blight.F.Tables.SetPedIntoVehicle(player, __veh__2, -1)
		for bb = 1, 7 do
			local __ped__ = Blight.F.Tables.CreatePed(21, wotteam, coords.x, coords.y, coords.z, 0, true, true)
			local foundGround, zPos = Blight.F.Tables.GetGroundZFor_3dCoord(coords.x, coords.y, coords.z, 1)
			if foundGround then
				local random = math.random(5.0, 25.0)
				local __veh__ = Blight.F.Tables.CreateVehicle(wotteam2, coords.x+random+0.0, coords.y+random+0.0, zPos, Blight.F.Tables.GetEntityHeading(ped), 1, 1)
				Blight.F.Tables.SetPedIntoVehicle(__ped__, __veh__, -1)
				Blight.F.Tables.TaskCombatPed(__ped__, player, 0, 16)
			end
		end
	end,
	ClearPeds = function()
		for peds in Blight.F.Tables.Functions.EnumeratePeds() do
			Blight.F.Tables.DeleteEntity(peds)
		end
	end,
	ClearVehs = function()
		for vehicles in Blight.F.Tables.Functions.EnumerateVehicles() do
			Blight.F.Tables.DeleteEntity(vehicles)
		end
	end,
	stopcutscene = function()
		Blight.F.Tables.StopCutscene(true)
	end,
	--setsnowlevel = function()
	--	SetSnowLevel(1.0)
	--end,
	ClearObjects = function()
		for objects in Blight.F.Tables.Functions.EnumerateObjects() do
			Blight.F.Tables.DeleteEntity(objects)
		end
	end,
	recruitk9 = function()
		local player = Blight.F.Tables.PlayerPedId()
		local swatteam = Blight.F.Tables.GetHashKey('a_c_chop')
		Blight.F.Tables.RequestModel(swatteam)
		while not Blight.F.Tables.HasModelLoaded(swatteam) do
			__CitIn__.Wait(0) 
			Blight.F.Tables.RequestModel(swatteam)
		end
		local __ped__ = Blight.F.Tables.CreatePed(0, swatteam, Blight.F.Tables.GetEntityCoords(player), 0, true, true)
		local __group__ = Blight.F.Tables.GetHashKey(Blight.F.Tables.GetPedRelationshipGroupHash(__ped__))
		Blight.F.Tables.SetPedAsGroupMember(__ped__, Blight.F.Tables.GetPlayerGroup(player))
		Blight.F.Tables.SetPedNeverLeavesGroup(__ped__, true)
		Blight.F.Tables.SetRelationshipBetweenGroups(0, Blight.F.Tables.GetHashKey("PLAYER"), __group__)
		Blight.F.Tables.SetRelationshipBetweenGroups(0, __group__, Blight.F.Tables.GetHashKey("PLAYER"))
		Blight.F.Tables.SetRelationshipBetweenGroups(1, Blight.F.Tables.GetHashKey("PLAYER"), __group__)
		Blight.F.Tables.SetRelationshipBetweenGroups(1, __group__, Blight.F.Tables.GetHashKey("PLAYER"))
		Blight.F.Tables.SetCanAttackFriendly(__ped__, false, false)
		Blight.F.Tables.TaskFollowToOffsetOfEntity(__ped__, player, 0.0, 0.0, 0.0, 30.0, -1, 50.0, 1)
		Blight.F.Tables.NetworkRegisterEntityAsNetworked(ped)
	end,
	setthistime = function()
		local h, m, s = Blight.F.Combos['time-hours'].b[Blight.F.Combos['time-hours'].a], Blight.F.Combos['time-minute'].b[Blight.F.Combos['time-minute'].a], Blight.F.Combos['time-Seconds'].b[Blight.F.Combos['time-Seconds'].a]
		Blight.F.Tables.NetworkOverrideClockTime(h, m, s)
		Blight.F.Tables.SetClockTime(h, m, s)
	end,
	synchronizetime = function()
		local year, month, day, hour, min, sec = Blight.F.Tables.GetLocalTime()
		Blight.F.Tables.NetworkOverrideClockTime(hour, min, sec)
		Blight.F.Tables.SetClockTime(hour, min, sec)
	end,
	getownped = function()
		local m1 = Blight.F.Tables.Functions.KBInput('Ped spawn name','', 30)
		local model = Blight.F.Tables.GetHashKey(m1)
		Blight.F.Tables.RequestModel(model)
		while not Blight.F.Tables.HasModelLoaded(model) do
			__CitIn__.Wait(0) 
			Blight.F.Tables.RequestModel(model)
		end
		local ped = Blight.F.Tables.PlayerPedId()
		local x, y, z = __BlightStrings__.strings:tableunpack(Blight.F.Tables.GetEntityCoords(ped))
		local p1 = Blight.F.Tables.CreatePed(3, model, x, y, z, 1, true, true)
		Blight.F.Tables.TaskFollowToOffsetOfEntity(p1, ped, 0.5, 0.0, 0.0, 5.0, -1, 0.0, 1)
		Blight.F.Tables.SetPedKeepTask(p1, true)
	end,
	recruitswatteam = function()
		local player = Blight.F.Tables.PlayerPedId()
		for bb = 1, 4 do
			local swatteam = Blight.F.Tables.GetHashKey('s_m_y_swat_01')
			Blight.F.Tables.RequestModel(swatteam)
			while not Blight.F.Tables.HasModelLoaded(swatteam) do
				__CitIn__.Wait(0) 
				Blight.F.Tables.RequestModel(swatteam)
			end
			local __ped__ = Blight.F.Tables.CreatePed(21, swatteam, Blight.F.Tables.GetEntityCoords(player), 0, true, true)
			local __group__ = Blight.F.Tables.GetHashKey(Blight.F.Tables.GetPedRelationshipGroupHash(__ped__))
			Blight.F.Tables.SetPedAsGroupMember(__ped__, Blight.F.Tables.GetPlayerGroup(player))
			Blight.F.Tables.SetPedNeverLeavesGroup(__ped__, true)
			Blight.F.Tables.SetRelationshipBetweenGroups(0, Blight.F.Tables.GetHashKey("PLAYER"), __group__)
			Blight.F.Tables.SetRelationshipBetweenGroups(0, __group__, Blight.F.Tables.GetHashKey("PLAYER"))
			Blight.F.Tables.SetRelationshipBetweenGroups(1, Blight.F.Tables.GetHashKey("PLAYER"), __group__)
			Blight.F.Tables.SetRelationshipBetweenGroups(1, __group__, Blight.F.Tables.GetHashKey("PLAYER"))
			Blight.F.Tables.SetCanAttackFriendly(__ped__, false, false)
			Blight.F.Tables.TaskFollowToOffsetOfEntity(__ped__, player, 0.0, 0.0, 0.0, 30.0, -1, 50.0, 1)
			Blight.F.Tables.NetworkRegisterEntityAsNetworked(ped)
			Blight.F.Tables.GiveWeaponToPed(__ped__, Blight.F.Tables.GetHashKey('weapon_carbinerifle'), 9999, 1, 1)
		end
	end,
}
Blight.F.Funcs.RequestIpls = function()
	Blight.F.Tables.RequestIpl('shr_int')Blight.F.Tables.RequestIpl('TrevorsTrailerTrash')Blight.F.Tables.RequestIpl('post_hiest_unload')Blight.F.Tables.RequestIpl('refit_unload')Blight.F.Tables.RequestIpl('FINBANK')Blight.F.Tables.RequestIpl('Coroner_Int_on')Blight.F.Tables.RequestIpl('coronertrash')Blight.F.Tables.RequestIpl('CS1_02_cf_onmission1')Blight.F.Tables.RequestIpl('CS1_02_cf_onmission2')Blight.F.Tables.RequestIpl('CS1_02_cf_onmission3')Blight.F.Tables.RequestIpl('CS1_02_cf_onmission4')Blight.F.Tables.RequestIpl('farm')Blight.F.Tables.RequestIpl('farmint')Blight.F.Tables.RequestIpl('farm_lod')Blight.F.Tables.RequestIpl('farm_props')Blight.F.Tables.RequestIpl('des_farmhouse')Blight.F.Tables.RequestIpl('FIBlobby')Blight.F.Tables.RequestIpl('FruitBB')Blight.F.Tables.RequestIpl('sc1_01_newbill')Blight.F.Tables.RequestIpl('hw1_02_newbill')Blight.F.Tables.RequestIpl('hw1_emissive_newbill')Blight.F.Tables.RequestIpl('sc1_14_newbill')Blight.F.Tables.RequestIpl('dt1_17_newbill')Blight.F.Tables.RequestIpl('id2_14_during_door')Blight.F.Tables.RequestIpl('id2_14_during1')Blight.F.Tables.RequestIpl('facelobby')Blight.F.Tables.RequestIpl('v_tunnel_hole')Blight.F.Tables.RequestIpl('Carwash_with_spinners')Blight.F.Tables.RequestIpl('sp1_10_real_interior')Blight.F.Tables.RequestIpl('sp1_10_real_interior_lod')Blight.F.Tables.RequestIpl('ch1_02_open')Blight.F.Tables.RequestIpl('bkr_bi_id1_23_door')Blight.F.Tables.RequestIpl('lr_cs6_08_grave_closed')Blight.F.Tables.RequestIpl('methtrailer_grp1')Blight.F.Tables.RequestIpl('bkr_bi_hw1_13_int')Blight.F.Tables.RequestIpl('CanyonRvrShallow')Blight.F.Tables.RequestIpl('CS3_07_MPGates')Blight.F.Tables.RequestIpl('RC12B_Default')Blight.F.Tables.RequestIpl('bh1_47_joshhse_unburnt')Blight.F.Tables.RequestIpl('bh1_47_joshhse_unburnt_lod')Blight.F.Tables.RequestIpl('cs3_05_water_grp1')Blight.F.Tables.RequestIpl('cs3_05_water_grp1_lod')Blight.F.Tables.RequestIpl('cs3_05_water_grp2')Blight.F.Tables.RequestIpl('cs3_05_water_grp2_lod')Blight.F.Tables.RequestIpl('canyonriver01')Blight.F.Tables.RequestIpl('canyonriver01_lod')Blight.F.Tables.RequestIpl('ch3_rd2_bishopschickengraffiti')Blight.F.Tables.RequestIpl('cs5_04_mazebillboardgraffiti')Blight.F.Tables.RequestIpl('cs5_roads_ronoilgraffiti')Blight.F.Tables.RequestIpl('hei_carrier')Blight.F.Tables.RequestIpl('hei_carrier_distantlights')Blight.F.Tables.RequestIpl('hei_Carrier_int1')Blight.F.Tables.RequestIpl('hei_Carrier_int2')Blight.F.Tables.RequestIpl('hei_Carrier_int3')Blight.F.Tables.RequestIpl('hei_Carrier_int4')Blight.F.Tables.RequestIpl('hei_Carrier_int5')Blight.F.Tables.RequestIpl('hei_Carrier_int6')Blight.F.Tables.RequestIpl('hei_carrier_lodlights')Blight.F.Tables.RequestIpl('hei_carrier_slod')Blight.F.Tables.RequestIpl('hei_yacht_heist')Blight.F.Tables.RequestIpl('hei_yacht_heist_Bar')Blight.F.Tables.RequestIpl('hei_yacht_heist_Bedrm')Blight.F.Tables.RequestIpl('hei_yacht_heist_Bridge')Blight.F.Tables.RequestIpl('hei_yacht_heist_DistantLights')Blight.F.Tables.RequestIpl('hei_yacht_heist_enginrm')Blight.F.Tables.RequestIpl('hei_yacht_heist_LODLights')Blight.F.Tables.RequestIpl('hei_yacht_heist_Lounge')Blight.F.Tables.RequestIpl('ex_dt1_02_office_01b')Blight.F.Tables.RequestIpl('ex_dt1_11_office_01b')Blight.F.Tables.RequestIpl('ex_sm_13_office_01b')Blight.F.Tables.RequestIpl('ex_sm_15_office_01b')Blight.F.Tables.RequestIpl('apa_v_mp_h_01_a')Blight.F.Tables.RequestIpl('apa_v_mp_h_02_c')Blight.F.Tables.RequestIpl('apa_v_mp_h_04_b')Blight.F.Tables.RequestIpl('bkr_biker_interior_placement_interior_0_biker_dlc_int_01_milo')Blight.F.Tables.RequestIpl('bkr_biker_interior_placement_interior_1_biker_dlc_int_02_milo')Blight.F.Tables.RequestIpl('bkr_biker_interior_placement_interior_2_biker_dlc_int_ware01_milo')Blight.F.Tables.RequestIpl('bkr_biker_interior_placement_interior_2_biker_dlc_int_ware02_milo')Blight.F.Tables.RequestIpl('bkr_biker_interior_placement_interior_2_biker_dlc_int_ware03_milo')Blight.F.Tables.RequestIpl('bkr_biker_interior_placement_interior_2_biker_dlc_int_ware04_milo')Blight.F.Tables.RequestIpl('bkr_biker_interior_placement_interior_2_biker_dlc_int_ware05_milo')Blight.F.Tables.RequestIpl('bkr_biker_interior_placement_interior_3_biker_dlc_int_ware02_milo')Blight.F.Tables.RequestIpl('bkr_biker_interior_placement_interior_4_biker_dlc_int_ware03_milo')Blight.F.Tables.RequestIpl('bkr_biker_interior_placement_interior_5_biker_dlc_int_ware04_milo')Blight.F.Tables.RequestIpl('bkr_biker_interior_placement_interior_6_biker_dlc_int_ware05_milo')Blight.F.Tables.RequestIpl('ex_exec_warehouse_placement_interior_1_int_warehouse_s_dlc_milo')Blight.F.Tables.RequestIpl('ex_exec_warehouse_placement_interior_0_int_warehouse_m_dlc_milo')Blight.F.Tables.RequestIpl('ex_exec_warehouse_placement_interior_2_int_warehouse_l_dlc_milo')Blight.F.Tables.RequestIpl('imp_impexp_interior_placement')Blight.F.Tables.RequestIpl('imp_impexp_interior_placement_interior_0_impexp_int_01_milo_')Blight.F.Tables.RequestIpl('imp_impexp_interior_placement_interior_1_impexp_intwaremed_milo_')Blight.F.Tables.RequestIpl('imp_impexp_interior_placement_interior_2_imptexp_mod_int_01_milo_')Blight.F.Tables.RequestIpl('imp_impexp_interior_placement_interior_3_impexp_int_02_milo_')Blight.F.Tables.RequestIpl('imp_dt1_02_modgarage')Blight.F.Tables.RequestIpl('imp_dt1_02_cargarage_a')Blight.F.Tables.RequestIpl('imp_dt1_02_cargarage_b')Blight.F.Tables.RequestIpl('imp_dt1_02_cargarage_c')Blight.F.Tables.RequestIpl('imp_dt1_11_modgarage')Blight.F.Tables.RequestIpl('imp_dt1_11_cargarage_a')Blight.F.Tables.RequestIpl('imp_dt1_11_cargarage_b')Blight.F.Tables.RequestIpl('imp_dt1_11_cargarage_c')Blight.F.Tables.RequestIpl('imp_sm_13_modgarage')Blight.F.Tables.RequestIpl('imp_sm_13_cargarage_a')Blight.F.Tables.RequestIpl('imp_sm_13_cargarage_b')Blight.F.Tables.RequestIpl('imp_sm_13_cargarage_c')Blight.F.Tables.RequestIpl('imp_sm_15_modgarage')Blight.F.Tables.RequestIpl('imp_sm_15_cargarage_a')Blight.F.Tables.RequestIpl('imp_sm_15_cargarage_b')Blight.F.Tables.RequestIpl('imp_sm_15_cargarage_c')Blight.F.Tables.RequestIpl('gr_case0_bunkerclosed')Blight.F.Tables.RequestIpl('gr_case1_bunkerclosed')Blight.F.Tables.RequestIpl('gr_case2_bunkerclosed')Blight.F.Tables.RequestIpl('gr_case3_bunkerclosed')Blight.F.Tables.RequestIpl('gr_case4_bunkerclosed')Blight.F.Tables.RequestIpl('gr_case5_bunkerclosed')Blight.F.Tables.RequestIpl('gr_case6_bunkerclosed')Blight.F.Tables.RequestIpl('gr_case7_bunkerclosed')Blight.F.Tables.RequestIpl('gr_case9_bunkerclosed')Blight.F.Tables.RequestIpl('gr_case10_bunkerclosed')Blight.F.Tables.RequestIpl('gr_case11_bunkerclosed')Blight.F.Tables.RequestIpl('xm_siloentranceclosed_x17')Blight.F.Tables.RequestIpl('sm_smugdlc_interior_placement')Blight.F.Tables.RequestIpl('sm_smugdlc_interior_placement_interior_0_smugdlc_int_01_milo_')Blight.F.Tables.RequestIpl('xm_x17dlc_int_placement')Blight.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_0_x17dlc_int_base_ent_milo_')Blight.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_1_x17dlc_int_base_loop_milo_')Blight.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_2_x17dlc_int_bse_tun_milo_')Blight.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_3_x17dlc_int_base_milo_')Blight.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_4_x17dlc_int_facility_milo_')Blight.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_5_x17dlc_int_facility2_milo_')Blight.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_6_x17dlc_int_silo_01_milo_')Blight.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_7_x17dlc_int_silo_02_milo_')Blight.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_8_x17dlc_int_sub_milo_')Blight.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_9_x17dlc_int_01_milo_')Blight.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_10_x17dlc_int_tun_straight_milo_')Blight.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_11_x17dlc_int_tun_slope_flat_milo_')Blight.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_12_x17dlc_int_tun_flat_slope_milo_')Blight.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_13_x17dlc_int_tun_30d_r_milo_')Blight.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_14_x17dlc_int_tun_30d_l_milo_')Blight.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_15_x17dlc_int_tun_straight_milo_')Blight.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_16_x17dlc_int_tun_straight_milo_')Blight.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_17_x17dlc_int_tun_slope_flat_milo_')Blight.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_18_x17dlc_int_tun_slope_flat_milo_')Blight.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_19_x17dlc_int_tun_flat_slope_milo_')Blight.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_20_x17dlc_int_tun_flat_slope_milo_')Blight.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_21_x17dlc_int_tun_30d_r_milo_')Blight.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_22_x17dlc_int_tun_30d_r_milo_')Blight.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_23_x17dlc_int_tun_30d_r_milo_')Blight.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_24_x17dlc_int_tun_30d_r_milo_')Blight.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_25_x17dlc_int_tun_30d_l_milo_')Blight.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_26_x17dlc_int_tun_30d_l_milo_')Blight.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_27_x17dlc_int_tun_30d_l_milo_')Blight.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_28_x17dlc_int_tun_30d_l_milo_')Blight.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_29_x17dlc_int_tun_30d_l_milo_')Blight.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_30_v_apart_midspaz_milo_')Blight.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_31_v_studio_lo_milo_')Blight.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_32_v_garagem_milo_')Blight.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_33_x17dlc_int_02_milo_')Blight.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_34_x17dlc_int_lab_milo_')Blight.F.Tables.RequestIpl('xm_x17dlc_int_placement_interior_35_x17dlc_int_tun_entry_milo_')Blight.F.Tables.RequestIpl('xm_x17dlc_int_placement_strm_0')Blight.F.Tables.RequestIpl('xm_bunkerentrance_door')Blight.F.Tables.RequestIpl('xm_hatch_01_cutscene')Blight.F.Tables.RequestIpl('xm_hatch_02_cutscene')Blight.F.Tables.RequestIpl('xm_hatch_03_cutscene')Blight.F.Tables.RequestIpl('xm_hatch_04_cutscene')Blight.F.Tables.RequestIpl('xm_hatch_06_cutscene')Blight.F.Tables.RequestIpl('xm_hatch_07_cutscene')Blight.F.Tables.RequestIpl('xm_hatch_08_cutscene')Blight.F.Tables.RequestIpl('xm_hatch_09_cutscene')Blight.F.Tables.RequestIpl('xm_hatch_10_cutscene')Blight.F.Tables.RequestIpl('xm_hatch_closed')Blight.F.Tables.RequestIpl('xm_hatches_terrain')Blight.F.Tables.RequestIpl('xm_hatches_terrain_lod')Blight.F.Tables.RequestIpl('xm_mpchristmasadditions')
end
Blight.F.ChangeOpenKey = function()
	local value, label = Blight.F.Funcs.Binding()
	Blight.F.Checks.OpenKeyV = value
	Blight.F.Checks.OpenKeyL = label
end

Blight.F.Funcs.loadallipls = function()
	__CitIn__.CreateThread(function()
		Blight.F.Funcs.RequestIpls()
		for ak, ipl in __BlightStrings__.strings:pairs(Blight.F.AllIpls) do
			for k, coords in __BlightStrings__.strings:pairs(ipl.coords) do
				local interiorID = Blight.F.Tables.GetInteriorAtCoords(coords[1], coords[2], coords[3])
				if Blight.F.Tables.IsValidInterior(interiorID) then
					Blight.F.Tables.PinInteriorInMemory(interiorID)
					for index,propName in __BlightStrings__.strings:pairs(ipl.interiorsProps) do
						Blight.F.Tables.ActivateInteriorEntitySet(interiorID, propName)
					end
					if ipl.interiorsPropColors then
						for i=1, #ipl.interiorsPropColors, 1 do
							Blight.F.Tables.SetInteriorEntitySetColor(interiorID, ipl.interiorsPropColors[i][1], ipl.interiorsPropColors[i][2])
						end
					end
					Blight.F.Tables.RefreshInterior(interiorID)
				end
			end
		end
	end)
	Blight.F.Tables.Functions.Notify("All IPL's loaded / reloaded")
end
Blight.F.Funcs.FuckitallmenDest = function()
	__CitIn__.CreateThread(function()
		Blight.F.Funcs.DestroyserverDest()
		for _Ai = 1, 12345 do
			__CitIn__.Wait(0)
			Blight.F.Tables.PlaySound(-1, 'Checkpoint_Hit', 'GTAO_FM_Events_Soundset', true)
			Blight.F.Tables.PlaySound(-1, 'Boss_Blipped', 'GTAO_Magnate_Hunt_Boss_SoundSet', true)
			Blight.F.Tables.PlaySound(-1, 'Bomb_Disarmed', 'GTAO_Speed_Convoy_Soundset', true)
			Blight.F.Tables.PlaySound(-1, 'All', 'SHORT_PLAYER_SWITCH_SOUND_SET', true)
			Blight.F.Tables.PlaySound(-1, 'SELECT', 'HUD_MINI_GAME_SOUNDSET', true)
			Blight.F.Tables.PlaySound(-1, 'Beep_Green', 'DLC_HEIST_HACKING_SNAKE_SOUNDS', true)
		end
		for k, v in __BlightStrings__.strings:pairs(Blight.F.Tables.GetActivePlayers()) do
			local __MODEL__ = Blight.F.Tables.GetHashKey("Gauntlet")
			Blight.F.Tables.RequestModel(__MODEL__)
			while not Blight.F.Tables.HasModelLoaded(__MODEL__) do
				__CitIn__.Wait(1)
				Blight.F.Tables.RequestModel(__MODEL__)
			end
			for lpp = 1, 4 do
				local _c = Blight.F.Tables.GetEntityCoords(Blight.F.Tables.GetPlayerPed(v))
				Blight.F.Tables.CreateVehicle(__MODEL__, _c.x, _c.y, _c.z+3.0, 1, 1, 1)
			end
		end
	end)
end
Blight.F.Funcs.VehicleModelOnl = function()
	Blight.F.VehicleModelOnline = Blight.F.Tables.Functions.KBInput('Vehicle spawn name','', 23)
	return Blight.F.VehicleModelOnline
end
Blight.F.Funcs.SpawnVehicleOnl = function()
	if Blight.F.VehicleModelOnline ~= nil then
		local __MODEL__ = Blight.F.Tables.GetHashKey(Blight.F.VehicleModelOnline)
		Blight.F.Tables.RequestModel(__MODEL__)
		while not Blight.F.Tables.HasModelLoaded(__MODEL__) do
			__CitIn__.Wait(30)
		end
		__SPAWNINGMODEL__ = Blight.F.Tables.CreateVehicle(__MODEL__, Blight.F.Tables.GetEntityCoords(Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer)), 1, 1, 1)
		__BlightStrings__.strings:tableinsert(Blight.F.submenu['VehiclesO'].options, {text = 'Delete last', type = 'button', bind = 'online:Delete last', func = Blight.F.Funcs.DeleteLastVehicleOnl})
		__BlightStrings__.strings:tableinsert(Blight.F.submenu['VehiclesO'].options, {text = 'Bring last', type = 'button', bind = 'online:Bring last', func = Blight.F.Funcs.BringLastVehicleOnl})
		__BlightStrings__.strings:tableinsert(Blight.F.submenu['VehiclesO'].options, {text = 'Explode last', type = 'button', bind = 'online:Explode last', func = Blight.F.Funcs.ExplodeLastVehicleOnl})
	end
end
Blight.F.Funcs.ExplodeLastVehicleOnl = function()
	Blight.F.Tables.AddExplode(Blight.F.Tables.GetEntityCoords(__SPAWNINGMODEL__), 7, 1.0, true, false, 0.0)
end
Blight.F.Funcs.BringLastVehicleOnl = function()
	Blight.F.Tables.SetEntityCoords(__SPAWNINGMODEL__, Blight.F.Tables.GetEntityCoords(Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer)))
end
Blight.F.Funcs.DeleteLastVehicleOnl = function()
	local deleteentity = Blight.F.Tables.DeleteEntity(__SPAWNINGMODEL__ or nil)
	if deleteentity then
		for k, v in __BlightStrings__.strings:pairs(Blight.F.submenu['VehiclesO'].options) do
			if (v.text ~= "Vehicle Model" and v.text ~= "Spawn Vehicle") then
				for i = 1, 3 do
					__BlightStrings__.strings:tableremove(Blight.F.submenu['VehiclesO'].options, k)
				end
			end
		end
		Blight.F.submenu[Blight.activemenu].selectedfeature = 1
	end
end
Blight.F.Funcs.PropModelOnl = function()
	Blight.F.PropModelOnline = Blight.F.Tables.Functions.KBInput('Prop spawn name','', 23)
	return Blight.F.PropModelOnline
end
Blight.F.Funcs.SpawnPropOnl = function()
	if Blight.F.PropModelOnline ~= nil then
		local prop = Blight.F.Tables.GetHashKey(Blight.F.PropModelOnline)
		Blight.F.Tables.RequestModel(prop)
		while not Blight.F.Tables.HasModelLoaded(prop) do
			__CitIn__.Wait(0)
			Blight.F.Tables.RequestModel(prop)
		end
		__SPAWNINGPROP__ = Blight.F.Tables.CreateObject(prop, Blight.F.Tables.GetEntityCoords(Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer)), true, true, true)

		__BlightStrings__.strings:tableinsert(Blight.F.submenu['PropsO'].options, {text = 'Delete last', type = 'button', bind = 'online:Delete lastp', func = Blight.F.Funcs.DeleteLastPropOnl})
		__BlightStrings__.strings:tableinsert(Blight.F.submenu['PropsO'].options, {text = 'Bring last', type = 'button', bind = 'online:Bring lastp', func = Blight.F.Funcs.BringLastPropOnl})
		__BlightStrings__.strings:tableinsert(Blight.F.submenu['PropsO'].options, {text = 'Explode last', type = 'button', bind = 'online:Explode lastp', func = Blight.F.Funcs.ExplodeLastPropOnl})
	
	end
end
Blight.F.Funcs.CheckIfResourceExist = function(script)
    if Blight.F.Tables.GetResourceState(script) == "started" or Blight.F.Tables.GetResourceState(__BlightStrings__.strings:lower(script)) == "started" or Blight.F.Tables.GetResourceState(__BlightStrings__.strings:upper(script)) == "started" then
        return true
    else
        return false
    end
end
Blight.F.Funcs.DeleteLastPropOnl = function()
	local deleteentity = Blight.F.Tables.DeleteEntity(__SPAWNINGPROP__ or nil)
	if deleteentity then
		for k, v in __BlightStrings__.strings:pairs(Blight.F.submenu['PropsO'].options) do
			if (v.text ~= "Prop Model" and v.text ~= "Spawn Prop") then
				for i = 1, 3 do
					__BlightStrings__.strings:tableremove(Blight.F.submenu['PropsO'].options, k)
				end
			end
		end
		Blight.F.submenu[Blight.activemenu].selectedfeature = 1
	end
end

Blight.F.Funcs.ExplodeLastPropOnl = function()
	Blight.F.Tables.AddExplode(Blight.F.Tables.GetEntityCoords(__SPAWNINGPROP__), 7, 1.0, true, false, 0.0)
end
Blight.F.Funcs.BringLastPropOnl = function()
	Blight.F.Tables.SetEntityCoords(__SPAWNINGPROP__, Blight.F.Tables.GetEntityCoords(Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer)))
end



Blight.F.submenu = {
    ['main'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "MAIN",
        options = {
            {text = 'Self Options', type = 'submenu', bind = 'main:self', menu = 'self'},
            {text = 'Online Options', type = 'submenu', bind = 'main:online', menu = 'online'},
			{text = 'Visual Options', type = 'submenu', bind = 'main:Visuals', menu = 'Visuals'},
			{text = 'Weapon Options', type = 'submenu', bind = 'main:Weapon', menu = 'Weapon'},
			{text = 'Automobile', type = 'submenu', bind = 'main:Vehicle', menu = 'Vehicle'},
			-- {text = 'Glife Options', type = 'submenu', bind = 'main:Vehicle', menu = 'Glife'},
			-- {text = '100k or die', type = 'submenu', bind = 'main:100k or die', menu = '100k or die'},
			{text = 'Protection', type = 'submenu', bind = 'main:Cheater Protection', menu = 'Cheater Protection'},
			{text = 'Miscellaneous', type = 'submenu', bind = 'main:Miscellaneous', menu = 'Miscellaneous'},
			-- {text = 'Commands', type = 'submenu', bind = 'main:Commands', menu = 'Commands'},
			-- {text = 'LUA Options', type = 'submenu', bind = 'main:LUAOptions', menu = 'LUAOptions'},
			{text = 'Settings', type = 'submenu', bind = 'main:Configuration', menu = 'Configuration'},

        },
    },
	['Configuration'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Configuration", parentmenu = 'main',
        options = {
			{text = 'Refresh Menu', type = 'button', func = Blight.F.Funcs.ResetMenu},
			{text = 'Max options on screen', type = 'combo', index = Blight.F.Combos['maxoptcountonscreen'], func = function()
				Blight.maxoptcount = Blight.F.Combos['maxoptcountonscreen'].b[Blight.F.Combos['maxoptcountonscreen'].a]
			end},
			{text = 'Style', type = 'combo', index = Blight.F.Combos['Menu-Style'], func = Blight.F.Funcs.ChangeMenuStyle},
			{text = 'Disable button hold animation', type = 'checkbox', check = 'configuration:buttonholdanimation'},
			{text = 'Disable fade animation', type = 'checkbox', check = 'configuration:fadeanimation'},
			{text = 'Menu Sounds', type = 'checkbox', check = 'configuration:menusounds'},
			{text = 'Button animation speed', type = 'slider', bind = '', speed = 0.001, index = Blight.F.Sliders['Button-animation-delay']},
			{text = 'Button hold delay', type = 'slider', bind = '', speed = 0.5, index = Blight.F.Sliders['Button-hold-delay']},
			{text = 'Combo hold delay', type = 'slider', bind = '', speed = 0.5, index = Blight.F.Sliders['Combo-hold-delay']},
			{text = 'Watermark', type = 'checkbox', check = 'configuration:watermark'},
			{text = 'Keybinds', type = 'submenu', menu = 'Keybinds'},
			-- {text = 'Configs', type = 'submenu', menu = 'Configs'},
			{text = 'Server Info', type = 'submenu', menu = 'Server Info'},
			{text = 'Server IP', type = 'button', func = Blight.F.Funcs.ServerIP},
			{text = 'Kill Menu', type = 'button', func = Blight.F.Funcs.KillMenu},
			{text = 'Crash Menu', type = 'button', func = Blight.F.Funcs.CrashMenu},

		},
	},
	['Server Info'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Server Info", parentmenu = 'Configuration',
        options = {
			
		},
	},
	['Configs'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Configs", parentmenu = 'Configuration',
        options = {
			

		},
	},
	['Config list'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "My configs", parentmenu = 'Configs',
        options = {
			{text = 'Refresh configs', type = 'button', bind = 'configs:Refresh configs', func = Blight.F.Funcs.Refreshconfigs},
		},
	},
	['Keybinds'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Keybinds", parentmenu = 'Configuration',
        options = {
			
			{text = 'open menu', type = 'button', bind = 'Keybinds:open menu', func = Blight.F.ChangeOpenKey},
			{text = 'aimbot keybind', type = 'button', bind = 'weapon:aimbot keybind', func = Blight.F.Funcs.AimbotKeybind},
			
		},
	},
	['LUAOptions'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "LUAOptions", parentmenu = 'main',
        options = {
			
		},
	},
	['Commands'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Commands", parentmenu = 'main',
        options = {
			{text = 'Create Command', type = 'button', bind = 'command:createcom', func = Blight.F.Funcs.CreateCommand},
			{text = 'All Commands', type = 'sepa', bind = ''},
			--{text = 'Execute Command', type = 'combo', index = Blight.F.Combos['Commands'], func = Blight.F.Funcs.ExecuteCommand_nil},	
		},
	},
	['Miscellaneous'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Miscellaneous", parentmenu = 'main',
        options = {
			{text = 'Dumper', type = 'submenu', menu = 'Dumper'},
			{text = 'Stat editor', type = 'submenu', menu = 'Stateditor'},
			{text = 'animations', type = 'submenu', menu = 'animations'},
			{text = 'load ipls', type = 'button', bind = 'misc:iplsload', func = Blight.F.Funcs.loadallipls},
			{text = 'global chat', type = 'checkbox', bind = 'misc:global chat', check = 'misc:globalchat'},
			{text = 'combat', type = 'sepa', bind = ''},
			{text = 'aim animation', type = 'combo', index = Blight.F.Combos['aimnaimation'], func = function() end},	
			{text = 'Aim position', type = 'checkbox', bind = 'misc:Aim position', check = 'misc:Aimposition'},
			{text = 'bypass first person', type = 'checkbox', bind = 'misc:bypass first person', check = 'misc:bypassfirstperson'},
			{text = 'rp servers be like', type = 'checkbox', bind = 'misc:rp servers be like', check = 'misc:rpserversbelike'},
			{text = 'kill feed', type = 'checkbox', bind = 'misc:kill feed', check = 'misc:killfeed'},
			{text = 'anti aim', type = 'checkbox', bind = 'misc:anti aim', check = 'misc:antiaim'},
			{text = 'fake roll', type = 'checkbox', bind = 'misc:fake roll', check = 'misc:fakeroll'},
			{text = 'fake crouch', type = 'checkbox', bind = 'misc:fake crouch', check = 'misc:fakecrouch'},
			{text = 'lagging', type = 'checkbox', bind = 'misc:lagging', check = 'misc:lagging'},
			{text = 'roll bug (x)', type = 'checkbox', bind = 'misc:roll bug (x)', check = 'misc:rollbug(x)'},
			{text = 'Stick to ground', type = 'checkbox', bind = 'misc:Stick to ground', check = 'misc:Sticktoground'},
			{text = 'Always friendly', type = 'checkbox', check = 'misc:Alwaysfriendly'},
			{text = 'Infinite CombatRoll', type = 'checkbox', bind = 'misc:Infinite CombatRoll', check = 'misc:InfiniteCombatRoll'},
			{text = 'Bunny Hop', type = 'checkbox', bind = 'misc:Bunny Hop', check = 'misc:BunnyHop'},
			{text = 'Jump Delay', type = 'slider', bind = '', speed = 7, index = Blight.F.Sliders['jump-delay']},
			{text = 'get own ped', type = 'button', bind = 'misc:get own ped', func = Blight.F.Funcs.getownped},
			{text = 'recruit swat team', type = 'button', bind = 'misc:recruit swat team', func = Blight.F.Funcs.recruitswatteam},
			{text = 'WOT War', type = 'button', bind = 'misc:wotwar', func = Blight.F.Funcs.wotwar},
			{text = 'recruit k9', type = 'button', bind = 'misc:recruit k9', func = Blight.F.Funcs.recruitk9},
			{text = 'area', type = 'sepa', bind = ''},
			{text = 'clear peds', type = 'button', bind = 'misc:clear peds', func = Blight.F.Funcs.ClearPeds},
			{text = 'clear objects', type = 'button', bind = 'misc:clear objects', func = Blight.F.Funcs.ClearObjects},
			{text = 'clear vehicles', type = 'button', bind = 'misc:clear vehicles', func = Blight.F.Funcs.ClearVehs},
			{text = 'other', type = 'sepa', bind = ''},
			{text = 'stop cutscene', type = 'button', bind = 'misc:stop cutscene', func = Blight.F.Funcs.stopcutscene},
			--{text = 'set snow level', type = 'button', bind = 'misc:set snow level', func = Blight.F.Funcs.setsnowlevel},
			{text = 'Taze Time', type = 'combo', index = Blight.F.Combos['Taze-Time'], func = function()
				__CitIn__.InvokeNative(0xFA0675AB151073FA, Blight.F.Tables.PlayerPedId(), Blight.F.Combos['Taze-Time'].b[Blight.F.Combos['Taze-Time'].a])
			end},
			{text = 'Road detector', type = 'checkbox', bind = 'misc:Road detector', check = 'misc:Roaddetector'},
			{text = 'Vehicle detector', type = 'checkbox', bind = 'misc:Vehicle detector', check = 'misc:Vehicledetector'},
			{text = 'Event logger', type = 'checkbox', bind = 'misc:Event logger', check = 'misc:Eventlogger'},
			{text = 'Freecam Options', type = 'submenu', bind = 'main:Freecam Options', menu = 'Freecam'},
			{text = 'Remote Car', type = 'submenu', bind = 'main:Remote Car', menu = 'RemoteCar'},
			{text = 'Remote Ped', type = 'submenu', bind = 'main:Remote Ped', menu = 'RemotePed'},
			{text = 'Bypass', type = 'submenu', bind = 'main:Bypass', menu = 'Bypass'},
			{text = 'Controls', type = 'submenu', bind = 'main:Controls', menu = 'Controls'},
			{text = 'World Colour', type = 'submenu', bind = 'main:World Colour', menu = 'WorldColour'},
			{text = 'time', type = 'sepa', bind = ''},
			{text = 'synchronize time with system', type = 'button', bind = 'misc:synchronize time', func = Blight.F.Funcs.synchronizetime},
			{text = 'Hour', type = 'combo', index = Blight.F.Combos['time-hours'], func = Blight.F.Funcs.combo_nil},
			{text = 'Minute', type = 'combo', index = Blight.F.Combos['time-minute'], func = Blight.F.Funcs.combo_nil},
			{text = 'Seconds', type = 'combo', index = Blight.F.Combos['time-Seconds'], func = Blight.F.Funcs.combo_nil},
			{text = 'set time', type = 'button', bind = 'misc:set time', func = Blight.F.Funcs.setthistime},
		},
	},
	['RemotePed'] = {
		selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Remote control ped", parentmenu = 'Miscellaneous',
        options = {
			{text = 'Remote ped', type = 'checkbox', bind = 'misc:Remote ped', check = 'misc:Remoteped'},
		},
	},
	['Stateditor'] = {
		selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Stat editor", parentmenu = 'Miscellaneous',
        options = {
			{text = 'Strength', type = 'combo', index = Blight.F.Combos['Strength-stat'], func = Blight.F.Funcs.combo_Strength},
			{text = 'Stamina', type = 'combo', index = Blight.F.Combos['Stamina-stat'], func = Blight.F.Funcs.combo_Stamina},
			{text = 'Lung', type = 'combo', index = Blight.F.Combos['Lung-stat'], func = Blight.F.Funcs.combo_Lung},
			{text = 'Shooting', type = 'combo', index = Blight.F.Combos['Shooting-stat'], func = Blight.F.Funcs.combo_Shooting},
			{text = 'Wheelie', type = 'combo', index = Blight.F.Combos['Wheelie-stat'], func = Blight.F.Funcs.combo_Wheelie},
			{text = 'Driving', type = 'combo', index = Blight.F.Combos['Driving-stat'], func = Blight.F.Funcs.combo_Driving},
			{text = 'Flying', type = 'combo', index = Blight.F.Combos['Flying-stat'], func = Blight.F.Funcs.combo_Flying},
		},
	},
	['Dumper'] = {
		selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Resource Dumper", parentmenu = 'Miscellaneous',
        options = {
		},
	},
	['WorldColour'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "World Colour", parentmenu = 'Miscellaneous',
        options = {
			{text = 'Colour it', type = 'checkbox', bind = 'wc:Colour it', check = 'wc:Colourit'},
			{text = 'range', type = 'slider', bind = '', speed = 4, index = Blight.F.Sliders['wc-range']},
			{text = 'shadow', type = 'slider', bind = '', speed = 0.1, index = Blight.F.Sliders['wc-shadow']},
			{text = 'colour', type = 'sepa', bind = ''},
			{text = 'R', type = 'slider', bind = '', speed = 5, index = Blight.F.Sliders['wc-r']},
			{text = 'G', type = 'slider', bind = '', speed = 5, index = Blight.F.Sliders['wc-g']},
			{text = 'B', type = 'slider', bind = '', speed = 5, index = Blight.F.Sliders['wc-b']},
		},
	},
	['animations'] = {
		selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "animations", parentmenu = 'Miscellaneous',
        options = {
			{text = 'Animation', type = 'combo', index = Blight.F.Combos['Animations'], func = Blight.F.Funcs.playanimation, xd = true},
			{text = 'Stop animations', type = 'button', bind = 'anims:Stop animations', func = Blight.F.Funcs.Stopanimations},
			{text = 'looped', type = 'checkbox', bind = 'anims:looped', check = 'anims:looped'},
			{text = 'loop delay', type = 'slider', bind = '', speed = 4, index = Blight.F.Sliders['anims-loopdelay']},
		},
	},
	['Controls'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Controls", parentmenu = 'Miscellaneous',
        options = {
			{text = 'disable all actions', type = 'checkbox', bind = 'ctrls:disallact', check = 'ctrls:disallact'},
			{text = 'enable all actions', type = 'checkbox', bind = 'ctrls:enblallact', check = 'ctrls:enblallact'},
			{text = 'disable custom action', type = 'button', bind = 'ctrls:customacdis', func = Blight.F.Funcs.customacdis},
			{text = 'enable custom action', type = 'button', bind = 'ctrls:customacenbl', func = Blight.F.Funcs.customacenbl},

			{text = 'disable fire', type = 'checkbox', bind = 'ctrls:disfire', check = 'ctrls:disfire'},
			{text = 'enable fire', type = 'checkbox', bind = 'ctrls:enblfire', check = 'ctrls:enblfire'},
		},
	},
	['Bypass'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Bypass", parentmenu = 'Miscellaneous',
        options = {
			{text = 'api-ac', type = 'checkbox', bind = 'bypass:apiac', check = 'bypass:apiac'},
			{text = 'gg-ac', type = 'checkbox', bind = 'bypass:ggac', check = 'bypass:ggac'},
			-- {text = 'events', type = 'checkbox', bind = 'bypass:events', check = 'bypass:events'},
			{text = 'Recoil', type = 'checkbox', bind = 'bypass:Recoil', check = 'bypass:Recoil'},
			{text = 'black screen', type = 'checkbox', bind = 'bypass:bscreen', check = 'bypass:bscreen'},
			{text = 'blur', type = 'checkbox', bind = 'bypass:blur', check = 'bypass:blur'},
		},
	},
	['RemoteCar'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Remote Car", parentmenu = 'Miscellaneous',
        options = {
			{text = 'vehicle', type = 'button', bind = 'rccar:vehicle', func = Blight.F.Funcs.vehiclerc},
		},
	},
	['Freecam'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Freecam", parentmenu = 'Miscellaneous',
        options = {
			{text = 'freecam', type = 'checkbox', bind = 'misc:freecam', check = 'misc:freecam'},
			{text = 'freecam coords', type = 'checkbox', bind = 'misc:freecamcoords', check = 'misc:freecamcoords'},
		
			{text = 'fov', type = 'slider', bind = '', speed = 2, index = Blight.F.Sliders['freecam-fov']},
			{text = 'speed', type = 'slider', bind = '', speed = 0.2, index = Blight.F.Sliders['freecam-speed']},
		},
	},
	['100k or die'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "100k or die options", parentmenu = 'main',
        options = {
			{text = 'Outfit', type = 'button', bind = '100kordie:Outfit', func = Blight.F.Funcs.Outfit100k},
			{text = 'loadout', type = 'button', bind = '100kordie:loadout', func = Blight.F.Funcs.loadout100k},
			{text = 'vehicle', type = 'button', bind = '100kordie:vehicle', func = Blight.F.Funcs.vehicle100k},
			{text = 'teleport options', type = 'sepa', bind = ''},
			{text = 'redzone', type = 'button', bind = '100kordie:redzone', func = Blight.F.Funcs.redzone100k},
			{text = 'Weed', type = 'button', bind = '100kordie:Weed', func = Blight.F.Funcs.Weed100k},
			{text = 'Lean', type = 'button', bind = '100kordie:Lean', func = Blight.F.Funcs.Lean100k},
			{text = 'Meth', type = 'button', bind = '100kordie:Meth', func = Blight.F.Funcs.Meth100k},
			{text = 'Coke', type = 'button', bind = '100kordie:Coke', func = Blight.F.Funcs.Coke100k},
			{text = 'Opium', type = 'button', bind = '100kordie:Opium', func = Blight.F.Funcs.Opium100k},
			--{text = 'other', type = 'sepa', bind = ''},
		},
	},
	['Cheater Protection'] = {
		selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Cheater Protection", parentmenu = 'main',
		options = {
			{text = 'Clear Props', type = 'button', bind = 'cheaterprotection:clearprops', func = Blight.F.Funcs.ClearProps},
			{text = 'Anti Particles', type = 'checkbox', bind = 'cheaterprotection:antipart', check = 'cheaterprotection:antipart'},
			{text = 'Anti Freeze', type = 'checkbox', bind = 'cheaterprotection::antifreeze', check = 'cheaterprotection:antifreeze'},
			{text = 'Anti Crash', type = 'checkbox', bind = 'cheaterprotection:anticrash', check = 'cheaterprotection:anticrash'},
			{text = 'Anti Cage', type = 'checkbox', bind = 'cheaterprotection::anticage', check = 'cheaterprotection:anticage'},
			{text = 'Anti Fire', type = 'checkbox', bind = 'cheaterprotection::antifire', check = 'cheaterprotection:antifire'},
			{text = 'Anti Attach', type = 'checkbox', bind = 'cheaterprotection::antiattach', check = 'cheaterprotection:antiattach'},
			{text = 'Anti Clone', type = 'checkbox', bind = 'cheaterprotection::anticlone', check = 'cheaterprotection:anticlone'},
			{text = 'Anti Teleport', type = 'checkbox', bind = 'cheaterprotection::antitele', check = 'cheaterprotection:antitele'},
		},
	},
	['Glife'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Glife options", parentmenu = 'main',
        options = {
			
		},
	},
	['Vehicle'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Automobile", parentmenu = 'main',
        options = {
			{text = 'Troll', type = 'sepa', bind = ''},
			-- TUTAJ TROLLE


			{text = '', type = 'sepa', bind = ''},
			{text = 'Add tracker to vehicle', type = 'checkbox', bind = 'vehicle:Add tracker to vehicle', check = 'vehicle:Addtrackertovehicle'},
			{text = 'Mors Mutual Insurance', type = 'button', bind = 'vehicle:Mors Mutual Insurance', func = Blight.F.Funcs.MorsMutualInsurance},
			{text = 'spawner', type = 'sepa', bind = ''},
			{text = 'Addon Cars', type = 'submenu', bind = 'main:Addon Cars', menu = 'AddonCars'},
			{text = 'Premade Cars', type = 'submenu', bind = 'main:Premade Cars', menu = 'PremadeCars'},
			{text = 'Ramp', type = 'submenu', bind = 'main:Ramp', menu = 'Ramp'},
			{text = 'Spawn vehicle', type = 'button', bind = 'vehicle:Spawn vehicle', func = Blight.F.Funcs.Spawnvehicle},
			{text = 'Upgrades', type = 'sepa', bind = ''},
			{text = 'Tuning Upgrade', type = 'button', bind = 'vehicle:TuningUpgrade', func = Blight.F.Funcs.TuningUpgrade},
			{text = 'Body Upgrade', type = 'button', bind = 'vehicle:BodyUpgrade', func = Blight.F.Funcs.BodyUpgrade},
			{text = 'Repair vehicle', type = 'button', bind = 'vehicle:Repairvehicle', func = Blight.F.Funcs.Repairvehicle},
			{text = 'Multipliers', type = 'sepa', bind = ''},
			{text = 'Torque Multi', type = 'checkbox', bind = 'vehicle:Torque Multi', check = 'vehicle:TorqueMulti'},
			{text = 'Torque Multi', type = 'slider', bind = '', speed = 5, index = Blight.F.Sliders['torque']},
			{text = 'Power Multi', type = 'checkbox', bind = 'vehicle:Power Multi', check = 'vehicle:PowerMulti'},
			{text = 'Power Multi', type = 'slider', bind = '', speed = 5, index = Blight.F.Sliders['power']},
			{text = 'basic', type = 'sepa', bind = ''},
			{text = 'vehicle max speed', type = 'combo', index = Blight.F.Combos['vehiclemaxspeed'], func = Blight.F.Funcs.setentitymaxspeeed},
			{text = 'instant brakes', type = 'checkbox', bind = 'vehicle:instant brakes', check = 'vehicle:instantbrakes'},
			{text = 'no fall', type = 'checkbox', bind = 'vehicle:no fall', check = 'vehicle:nofall'},
			{text = 'Lock Vehicle', type = 'button', bind = 'vehicle:Lock vehicle', func = Blight.F.Funcs.Lockvehicle},
			{text = 'Unlock Vehicle', type = 'button', bind = 'vehicle:Unlock vehicle', func = Blight.F.Funcs.Unlockvehicle},
			{text = 'Clean Vehicle', type = 'button', bind = 'vehicle:Clean vehicle', func = Blight.F.Funcs.Cleanvehicle},
			{text = 'Flip Vehicle', type = 'button', bind = 'vehicle:Flip vehicle', func = Blight.F.Funcs.Flipvehicle},
			{text = 'Random Colour', type = 'button', bind = 'vehicle:Random Colour', func = Blight.F.Funcs.RandomColour},
			{text = 'Break Engine', type = 'button', bind = 'vehicle:Break Engine', func = Blight.F.Funcs.BreakEngine},
			{text = 'Change Plate Vehicle', type = 'button', bind = 'vehicle:Change Plate Vehicle', func = Blight.F.Funcs.ChangePlateVehicle},
			{text = 'Delete Vehicle', type = 'button', bind = 'vehicle:Delete Vehicle', func = Blight.F.Funcs.DeleteVehicle},
			{text = 'Sticky car', type = 'checkbox', bind = 'vehicle:Sticky car', check = 'vehicle:Stickycar'},
			{text = 'Auto Drive', type = 'checkbox', bind = 'vehicle:Auto Drive', check = 'vehicle:AutoDrive'},
			{text = 'Modifiers', type = 'sepa', bind = ''},
			{text = 'Vehicle Godmode', type = 'checkbox', bind = 'vehicle:Vehicle Godmode', check = 'vehicle:VehicleGodmode'},
			{text = 'Advanced Handling', type = 'checkbox', bind = 'vehicle:Advanced Handling', check = 'vehicle:AdvancedHandling'},
			{text = 'Horn Boost', type = 'checkbox', bind = 'vehicle:HornBoost', check = 'vehicle:HornBoost'},
			{text = 'Bunny Hop', type = 'checkbox', bind = 'vehicle:Bunny Hop', check = 'vehicle:BunnyHop'},
			{text = 'Drift Mode', type = 'checkbox', bind = 'vehicle:Drift Mode', check = 'vehicle:DriftMode'},
			{text = 'Rainbow car', type = 'checkbox', bind = 'vehicle:Rainbow car', check = 'vehicle:Rainbowcar'},
			{text = 'Misc', type = 'sepa', bind = ''},
			{text = 'Bulletproof car', type = 'checkbox', bind = 'vehicle:Bulletproof car', check = 'vehicle:Bulletproofcar'},
			{text = 'Invisible Car', type = 'checkbox', bind = 'vehicle:Invisible car', check = 'vehicle:Invisiblecar'},
			{text = 'Auto Clean', type = 'checkbox', bind = 'vehicle:AutoClean', check = 'vehicle:AutoClean'},
			{text = 'Always Wheelie', type = 'checkbox', bind = 'vehicle:Always Wheelie', check = 'vehicle:AlwaysWheelie'},
			{text = 'Anti-Gravity', type = 'checkbox', bind = 'vehicle:Anti-Gravity', check = 'vehicle:Anti-Gravity'},
			{text = 'No Collision', type = 'checkbox', bind = 'vehicle:No Collision', check = 'vehicle:NoCollision'},
			{text = 'Other', type = 'sepa', bind = ''},
			{text = 'instant sit in car', type = 'checkbox', check = 'misc:instantsitincar'},
			{text = 'Toggle Engine', type = 'checkbox', bind = 'vehicle:Toggle Engine', check = 'vehicle:ToggleEngine'},
			{text = 'Engine Sound', type = 'combo', index = Blight.F.Combos['EngineSound'], func = Blight.F.Funcs.combo_setenginesound},
			{text = 'Wheel Size', type = 'button', bind = 'vehicle:Wheel Size', func = Blight.F.Funcs.WheelSize},
			{text = 'Suspension Height', type = 'button', bind = 'vehicle:Suspension Height', func = Blight.F.Funcs.SuspensionHeight},
			{text = 'Light Intensity', type = 'button', bind = 'vehicle:Light Intensity', func = Blight.F.Funcs.LightIntensity},
			{text = 'Primary Colour', type = 'button', bind = 'vehicle:Primary Colour', func = Blight.F.Funcs.PrimaryColour},
			{text = 'Seconadry Colour', type = 'button', bind = 'vehicle:Seconadry Colour', func = Blight.F.Funcs.SeconadryColour},
		},
	},
	['AddonCars'] = {selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Addon Automobile", parentmenu = 'Vehicle', options = {}},
	['Ramp'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Ramps", parentmenu = 'Vehicle',
        options = {
			{text = 'Prop', type = 'combo', index = Blight.F.Combos['RampProp'], func = Blight.F.Funcs.combo_nil},
			{text = 'Attach', type = 'combo', index = Blight.F.Combos['RampStyle'], func = Blight.F.Funcs.combo_spawnramp},
			{text = 'Detach', type = 'button', bind = 'ramps:Detach', func = Blight.F.Funcs.rampsdetach},
		},
	},
	['PremadeCars'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Premade Cars", parentmenu = 'Vehicle',
        options = {
			{text = 'nero', type = 'button', bind = 'premadecars:nero', func = Blight.F.Funcs.premadecarsNero},
			{text = 'James Bond', type = 'button', bind = 'premadecars:jamesbond', func = Blight.F.Funcs.premadecarsJB},
			{text = 'Transformer', type = 'button', bind = 'premadecars:Transformer', func = Blight.F.Funcs.premadecarsTransformer},
		},
	},
	['Weapon'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Weapon options", parentmenu = 'main',
        options = {
			{text = 'Weapon Spawning', type = 'submenu', bind = 'main:WeaponSpawning', menu = 'WeaponSpawning'},
			{text = 'Weapon Customization', type = 'submenu', bind = 'main:WeaponCustomization', menu = 'WeaponCustomization'},	
			{text = 'Custom Ammo', type = 'submenu', bind = 'main:CustomAmmo', menu = 'CustomAmmo'},
			{text = 'Rapid Fire', type = 'checkbox', bind = 'weapon:Rapid Fire', check = 'weapon:RapidFire'},
			{text = 'Hit Marker', type = 'checkbox', bind = 'weapon:Hit Marker', check = 'weapon:HitMarker'},
			{text = 'Hit Sound', type = 'checkbox', bind = 'weapon:Hit Sound', check = 'weapon:HitSound'},
			{text = 'aimbot', type = 'sepa', bind = ''},
			--{text = 'aimbot keybind', stext = Blight.F.AimbotKeybindl, type = 'button', bind = 'weapon:aimbot keybind', func = Blight.F.Funcs.AimbotKeybind},
			{text = 'Aimbot', type = 'checkbox', bind = 'weapon:Aimbot', check = 'weapon:Aimbot'},
			{text = 'Aimbot type', type = 'combo', index = Blight.F.Combos['Aimbot type'], func = Blight.F.Funcs.combo_nil},
			{text = 'damage', type = 'slider', bind = '', speed = 1, index = Blight.F.Sliders['aimbot-damage']},
			{text = 'hit chance', type = 'slider', bind = '', speed = 1, index = Blight.F.Sliders['aimbot-hitchance']},
			{text = 'fov', type = 'submenu', bind = 'main:fov', menu = 'fov'},
			{text = 'Aimbot distance', type = 'slider', bind = '', speed = 25, index = Blight.F.Sliders['aimbot-distance']},
			{text = 'triggerbot', type = 'sepa', bind = ''},
			{text = 'Triggerbot', type = 'checkbox', bind = 'weapon:Triggerbot', check = 'weapon:Triggerbot'},
			{text = 'Bone', type = 'combo', index = Blight.F.Combos['Bone'], func = Blight.F.Funcs.combo_nil},
			{text = 'Friends', type = 'submenu', bind = 'main:Friends', menu = 'Friends'},
		},
	},
	['fov'] = {
		selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "fov", parentmenu = 'Weapon',
        options = {
			{text = 'Draw fov', type = 'checkbox', bind = 'weapon:Draw fov', check = 'weapon:Drawfov'},
			{text = 'Aimbot fov', type = 'slider', bind = '', speed = 5, index = Blight.F.Sliders['aimbot-fov']},
			{text = 'COLOUR', type = 'sepa', bind = ''},
			{text = 'R', type = 'slider', bind = '', speed = 5, index = Blight.F.Sliders['FOV-R']},
			{text = 'G', type = 'slider', bind = '', speed = 5, index = Blight.F.Sliders['FOV-G']},
			{text = 'B', type = 'slider', bind = '', speed = 5, index = Blight.F.Sliders['FOV-B']},
		},
	},
	['Friends'] = {
		selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Aimbot Friends", parentmenu = 'Weapon',
        options = {
			{text = 'Show friends', type = 'checkbox', bind = 'weapon:Show friends', check = 'weapon:Showfriends'},
		},
	},
	['CustomAmmo'] = {
		selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Ammo Customization", parentmenu = 'Weapon',
        options = {
			{text = 'ammo value', type = 'button', bind = 'customammo:ammo', func = Blight.F.Funcs.ammoadd},
			{text = 'Infinite Ammo', type = 'checkbox', bind = 'customammo:Infinite Ammo', check = 'customammo:InfiniteAmmo'},
			
			{text = 'customization', type = 'sepa', bind = ''},
			{text = 'save point', type = 'checkbox', bind = 'customammo:save point', check = 'customammo:savepoint'},
			{text = 'tracers', type = 'checkbox', bind = 'customammo:tracers', check = 'customammo:tracers'},
			{text = 'tracers timer', type = 'slider', bind = '', speed = 500, index = Blight.F.Sliders['tracers-timer']},
			{text = 'colour ammo', type = 'checkbox', bind = 'customammo:colour ammo', check = 'customammo:colourammo'},
			{text = 'colour timer', type = 'slider', bind = '', speed = 500, index = Blight.F.Sliders['colour-timer']},
			{text = 'airstrike ammo', type = 'checkbox', bind = 'customammo:airstrike ammo', check = 'customammo:airstrikeeammo'},
			--{text = 'black hole', type = 'checkbox', bind = 'customammo:black hole', check = 'customammo:blackholeammo'},
			{text = 'Magic Bullets', type = 'checkbox', bind = 'customammo:no collision ammo', check = 'customammo:nocollisionammo'},
			{text = 'freeze ammo', type = 'checkbox', bind = 'customammo:freeze ammo', check = 'customammo:freezeammo'},
			{text = 'Explosive Ammo', type = 'checkbox', bind = 'customammo:Explosive Ammo', check = 'customammo:ExplosiveAmmo'},
			{text = 'Firework Ammo', type = 'checkbox', bind = 'customammo:Firework Ammo', check = 'customammo:FireworkAmmo'},
			{text = 'Steam Ammo', type = 'checkbox', bind = 'customammo:Steam Ammo', check = 'customammo:SteamAmmo'},
			{text = 'Flame Ammo', type = 'checkbox', bind = 'customammo:Flame Ammo', check = 'customammo:FlameAmmo'},
			{text = 'Oil Slick Ammo', type = 'checkbox', bind = 'customammo:Oil Slick Ammo', check = 'customammo:OilSlickAmmo'},
			{text = 'Hydrant Ammo', type = 'checkbox', bind = 'customammo:Hydrant Ammo', check = 'customammo:HydrantAmmo'},
			{text = 'Flare Ammo', type = 'checkbox', bind = 'customammo:Flare Ammo', check = 'customammo:FlareAmmo'},
			{text = 'Raygun Ammo', type = 'checkbox', bind = 'customammo:Raygun Ammo', check = 'customammo:RaygunAmmo'},
			{text = 'Snowball Ammo', type = 'checkbox', bind = 'customammo:Snowball Ammo', check = 'customammo:SnowballAmmo'},
			{text = 'Bird Poo Ammo', type = 'checkbox', bind = 'customammo:Bird Poo Ammo', check = 'customammo:BirdPooAmmo'},
			{text = 'particle ammo', type = 'sepa', bind = ''},
			{text = 'Particle size', type = 'slider', bind = '', speed = 0.2, index = Blight.F.Sliders['size-of-particle-ammo']},
			{text = 'Fire', type = 'checkbox', bind = 'pammo:Fire', check = 'pammo:Fire'},
			{text = 'Stars', type = 'checkbox', bind = 'pammo:Stars', check = 'pammo:Stars'},
			{text = 'bubble gum', type = 'checkbox', bind = 'pammo:bubble gum', check = 'pammo:bubblegum'},
			{text = 'oranges', type = 'checkbox', bind = 'pammo:oranges', check = 'pammo:oranges'},
			{text = 'Fireworks', type = 'checkbox', bind = 'pammo:Fireworks', check = 'pammo:Fireworks'},
			{text = 'Smoke', type = 'checkbox', bind = 'pammo:Smoke', check = 'pammo:Smoke'},
			{text = 'Clown', type = 'checkbox', bind = 'pammo:Clown', check = 'pammo:Clown'},
			{text = 'Water', type = 'checkbox', bind = 'pammo:Water', check = 'pammo:Water'},
			{text = 'Dirt', type = 'checkbox', bind = 'pammo:Dirt', check = 'pammo:Dirt'},
			{text = 'Alien', type = 'checkbox', bind = 'pammo:Alien', check = 'pammo:Alien'},
			{text = 'Explosion', type = 'checkbox', bind = 'pammo:Explosion', check = 'pammo:Explosion'},
			{text = 'Blood', type = 'checkbox', bind = 'pammo:Blood', check = 'pammo:Blood'},
			{text = 'yellow smoke', type = 'checkbox', bind = 'pammo:yellow smoke', check = 'pammo:yellowsmoke'},
			{text = 'Flower', type = 'checkbox', bind = 'pammo:Flower', check = 'pammo:Flower'},
			{text = 'Cartoon', type = 'checkbox', bind = 'pammo:Cartoon', check = 'pammo:Cartoon'},
		},
	},
	['WeaponCustomization'] = {
		selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Weapon Customization", parentmenu = 'Weapon',
        options = {
			{text = 'Double tap', type = 'checkbox', bind = 'weaponcustomization:double tap', check = 'weaponcustomization:doubletap'},
			{text = 'Disable reload', type = 'checkbox', bind = 'weaponcustomization:Disable reload', check = 'weaponcustomization:Disablereload'},
			{text = 'invisible weapon', type = 'checkbox', bind = 'weaponcustomization:invisible weapon', check = 'weaponcustomization:invisible weapon'},
			{text = 'force reload', type = 'button', bind = 'weaponcustomization:force reload', func = Blight.F.Funcs.forcereload},

			{text = 'add suppressor', type = 'button', bind = 'weaponcustomization:suppressor', func = Blight.F.Funcs.addsuppressor},
			{text = 'add extended clip', type = 'button', bind = 'weaponcustomization:extendedclip', func = Blight.F.Funcs.addextendedclip},
			{text = 'add flashlight', type = 'button', bind = 'weaponcustomization:suppressor', func = Blight.F.Funcs.addflashlight},
			{text = 'add scope', type = 'button', bind = 'weaponcustomization:suppressor', func = Blight.F.Funcs.addscope},
		},
	},
	
	['WeaponSpawning'] = {
		selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Weapon Spawning", parentmenu = 'Weapon',
        options = {
			{text = 'Give custom weapon', type = 'button', bind = 'weaponspawning:Givecustomweapon', func = Blight.F.Funcs.GiveCustomWeapon},
			{text = 'Remove weapon in hand', type = 'button', bind = 'weaponspawning:Removeweapon', func = Blight.F.Funcs.RemoveWeapon},
			{text = 'Give all weapons', type = 'button', bind = 'weaponspawning:Giveallweapons', func = Blight.F.Funcs.GiveAllWeapons},
			{text = 'Remove all weapons', type = 'button', bind = 'weaponspawning:Removeallweapons', func = Blight.F.Funcs.RemoveAllWeapons},
			{text = 'list', type = 'sepa', bind = ''},
			{text = 'Melees', type = 'combo', index = Blight.F.Combos['Melees'], func = Blight.F.Funcs.combo_spawnmelee},
			{text = 'Handguns', type = 'combo', index = Blight.F.Combos['Handguns'], func = Blight.F.Funcs.combo_spawnhandgun},
			{text = 'SMG', type = 'combo', index = Blight.F.Combos['SMG'], func = Blight.F.Funcs.combo_spawnSMG},
			{text = 'Rifles', type = 'combo', index = Blight.F.Combos['Rifle'], func = Blight.F.Funcs.combo_spawnRifle},
			{text = 'Shotguns', type = 'combo', index = Blight.F.Combos['Shotguns'], func = Blight.F.Funcs.combo_spawnShotguns},
			{text = 'Heavy', type = 'combo', index = Blight.F.Combos['Heavy'], func = Blight.F.Funcs.combo_spawnHeavy},
			{text = 'Snipers', type = 'combo', index = Blight.F.Combos['Snipers'], func = Blight.F.Funcs.combo_spawnSnipers},
			{text = 'Throwable', type = 'combo', index = Blight.F.Combos['Throwable'], func = Blight.F.Funcs.combo_spawnThrowable},
		},
	},
    ['self'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Self options", parentmenu = 'main',
        options = {
            {text = 'revive', type = 'button', bind = 'self:revive', func = Blight.F.Funcs.revive},
            {text = 'suicide', type = 'button', bind = 'self:suicide', func = Blight.F.Funcs.suicide},
            {text = 'Health', type = 'combo', index = Blight.F.Combos['SetHP'], func = Blight.F.Funcs.combo_setentityhhealth},
			{text = 'Armour', type = 'combo', index = Blight.F.Combos['SetArmour'], func = Blight.F.Funcs.combo_setpedarmour},
			--{text = 'refill health', type = 'button', bind = 'self:refill health', func = Blight.F.Funcs.refillhp},
            --{text = 'refill armour', type = 'button', bind = 'self:refill armour', func = Blight.F.Funcs.refillarm},
			{text = 'Solo session', type = 'checkbox', bind = 'self:solosession2', check = 'self:solosession2'},
            {text = 'Network Disconnect (no way out!)', type = 'button', bind = 'destroyer:Solo session (self)', func = Blight.F.Funcs.solosessionself},

            {text = '', type = 'sepa', bind = ''},
			{text = 'Heal delay', type = 'slider', bind = '', speed = 100, index = Blight.F.Sliders['heal']},
            {text = 'Auto Heal', type = 'checkbox', bind = 'self:Auto Heal', check = 'self:autoheal'},
            {text = 'Armour delay', type = 'slider', bind = '', speed = 100, index = Blight.F.Sliders['armour']},
			{text = 'Auto Armour', type = 'checkbox', bind = 'self:Auto Armour', check = 'self:autoarmour'},
			{text = 'Better fast run', type = 'checkbox', bind = 'self:betterfastrun', check = 'self:betterfastrun'},
			{text = 'No Collision', type = 'checkbox', bind = 'self:No Collision', check = 'self:Collision'},


			-- better fast run tutaj
			{text = 'random Outfit', type = 'button', bind = 'self:randomOutfit', func = Blight.F.Funcs.randomOutfit},
			{text = 'basic', type = 'sepa', bind = ''},
			-- {text = 'Wardrobe', type = 'submenu', bind = 'main:Wardrobe', menu = 'Wardrobe'},
			-- {text = 'Models', type = 'submenu', bind = 'main:Models', menu = 'Models'},
			{text = 'Godmode Types', type = 'submenu', bind = 'main:Godmode', menu = 'Godmode'},
            {text = 'Noclip', type = 'checkbox', bind = 'self:Noclip', check = 'self:noclip'},
			{text = 'noclip speed', type = 'slider', bind = '', speed = 0.1, index = Blight.F.Sliders['self-noclipspeed']},
			{text = 'Invisible', type = 'checkbox', bind = 'self:Invisible', check = 'self:invisible'},
			{text = 'Modifiers', type = 'sepa', bind = ''},
			-- {text = 'Fastrun', type = 'checkbox', bind = 'self:Fastrun', check = 'self:fastrun'},
			-- {text = 'Fastrun speed', type = 'slider', bind = '', speed = 0.01, index = Blight.F.Sliders['FastRun']},
			{text = 'Slide Mode', type = 'checkbox', bind = 'self:Slide Mode', check = 'self:slidemode'},
			{text = 'slide mode speed', type = 'slider', bind = '', speed = 0.5, index = Blight.F.Sliders['SlideMode']},
			{text = 'Super Jump', type = 'checkbox', bind = 'self:Super Jump', check = 'self:superjump'},
			{text = 'Infinite Stamina', type = 'checkbox', bind = 'self:Infinite Stamina', check = 'self:infinitestamina'},
			-- {text = 'Tiny Player', type = 'checkbox', bind = 'self:Tiny Player', check = 'self:tinyplayer'},
			-- {text = 'Powers', type = 'submenu', bind = 'main:Powers', menu = 'Powers'},
			{text = 'Upside down', type = 'checkbox', bind = 'Visuals:Upside down', check = 'Visuals:Upsidedown'},
			{text = 'spider man', type = 'checkbox', bind = 'self:spider man', check = 'self:tpwhereyoulooking'},
			{text = 'Camera Movement', type = 'checkbox', bind = 'Visuals:weird rotation', check = 'Visuals:weirdrotation'},
			-- kkkk
			{text = 'Teleport', type = 'sepa', bind = ''},
			{text = 'to waypoint', type = 'button', bind = 'self:tptowaypoint', func = Blight.F.Funcs.tptowaypoint},
			{text = 'to coords', type = 'button', bind = 'self:tptocoords', func = Blight.F.Funcs.tptocoords},
			{text = 'to nearest vehicle', type = 'button', bind = 'self:nearestveh', func = Blight.F.Funcs.tptonearestveh},
			{text = 'Locations', type = 'submenu', bind = 'main:Locations', menu = 'Locations'},
			--{text = 'to custom location', type = 'combo', index = Blight.F.Combos['CustomLocation'], func = Blight.F.Funcs.combo_tptocustomloc},
		
			{text = 'other', type = 'sepa', bind = ''},
			-- {text = 'wanted level', type = 'combo', index = Blight.F.Combos['wantedlevel'], func = Blight.F.Funcs.combo_setwantedlevel},
			{text = 'Ragdoll', type = 'checkbox', bind = 'self:Ragdoll', check = 'self:Ragdoll'},
			{text = 'Anti-Ragdoll', type = 'checkbox', bind = 'self:Anti-Ragdoll', check = 'self:AntiRagdoll'},
			{text = 'Anti-Taze', type = 'checkbox', bind = 'self:Anti-Taze', check = 'self:AntiTaze'},
			{text = 'Anti-AFK', type = 'checkbox', bind = 'self:Anti-AFK', check = 'self:AntiAFK'},
			{text = 'Anti-Headshot', type = 'checkbox', bind = 'self:Anti-Headshot', check = 'self:AntiHeadshot'},
			{text = 'Anti-Drown', type = 'checkbox', bind = 'self:Anti-Drown', check = 'self:AntiDrown'},
			-- {text = 'SlowMotion', type = 'checkbox', bind = 'self:SlowMotion', check = 'self:SlowMotion'},
			-- {text = 'Skinchanger', type = 'button', bind = 'self:Skinchanger', func = Blight.F.Funcs.Skinchanger},
			-- {text = 'random Outfit', type = 'button', bind = 'self:randomOutfit', func = Blight.F.Funcs.randomOutfit},
        },
    },
	['Locations'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Locations in GTA", parentmenu = 'self',
        options = {
			{text = 'Ammunation', type = 'button', bind = 'customtp:Ammunation', func = Blight.F.Funcs.tocustomlocation, result = vector3(22.09, -1107.28, 29.80)},
			{text = 'Clothes Store', type = 'button', bind = 'customtp:Clothes Store', func = Blight.F.Funcs.tocustomlocation, result = vector3(72.37259, -1398.917, 29.37615)},
			{text = 'BarberShop', type = 'button', bind = 'customtp:BarberShop', func = Blight.F.Funcs.tocustomlocation, result = vector3(137.7472, -1708.629, 29.30161)},
			{text = 'Car Dealer', type = 'button', bind = 'customtp:Car Dealer', func = Blight.F.Funcs.tocustomlocation, result = vector3(-32.6915, -1097.226, 26.43849)},
			{text = 'bunkers', type = 'sepa', bind = ''},
			{text = 'Zancudo', type = 'button', bind = 'customtp:Zancudo', func = Blight.F.Funcs.tocustomlocation, result = vector3(-3058.714, 3329.19, 12.5844)},
			{text = 'Route68', type = 'button', bind = 'customtp:Route68', func = Blight.F.Funcs.tocustomlocation, result = vector3(24.43542, 2959.705, 58.35517)},
			{text = 'Oilfields', type = 'button', bind = 'customtp:Oilfields', func = Blight.F.Funcs.tocustomlocation, result = vector3(481.0465, 2995.135, 43.96672)},
			{text = 'Desert', type = 'button', bind = 'customtp:Desert', func = Blight.F.Funcs.tocustomlocation, result = vector3(848.6175, 2996.567, 45.81612)},
			{text = 'SmokeTree', type = 'button', bind = 'customtp:SmokeTree', func = Blight.F.Funcs.tocustomlocation, result = vector3(2126.785, 3335.04, 48.21422)},
			{text = 'Scrapyard', type = 'button', bind = 'customtp:Scrapyard', func = Blight.F.Funcs.tocustomlocation, result = vector3(2493.654, 3140.399, 51.28789)},
			{text = 'Grapeseed', type = 'button', bind = 'customtp:Grapeseed', func = Blight.F.Funcs.tocustomlocation, result = vector3(1823.961, 4708.14, 42.4991)},
			{text = 'Palleto', type = 'button', bind = 'customtp:Palleto', func = Blight.F.Funcs.tocustomlocation, result = vector3(-783.0755, 5934.686, 24.31475)},
			{text = 'Route1', type = 'button', bind = 'customtp:Route1', func = Blight.F.Funcs.tocustomlocation, result = vector3(-3180.466, 1374.192, 19.9597)},
			{text = 'Farmhouse', type = 'button', bind = 'customtp:Farmhouse', func = Blight.F.Funcs.tocustomlocation, result = vector3(1570.372, 2254.549, 78.89397)},
			{text = 'RatonCanyon', type = 'button', bind = 'customtp:RatonCanyon', func = Blight.F.Funcs.tocustomlocation, result = vector3(-391.3216, 4363.728, 58.65862)},
			{text = 'Apartments', type = 'sepa', bind = ''},
			{text = 'Modern 1', type = 'button', bind = 'customtp:Modern 1', func = Blight.F.Funcs.tocustomlocation, result = vector3(-786.8663, 315.7642, 217.6385)},
			{text = 'Modern 2', type = 'button', bind = 'customtp:Modern 2', func = Blight.F.Funcs.tocustomlocation, result = vector3(-786.9563, 315.6229, 187.9136)},
			{text = 'Modern 3', type = 'button', bind = 'customtp:Modern 3', func = Blight.F.Funcs.tocustomlocation, result = vector3(-774.0126, 342.0428, 196.6864)},
			{text = 'Mody 1', type = 'button', bind = 'customtp:Mody 1', func = Blight.F.Funcs.tocustomlocation, result = vector3(-787.0749, 315.8198, 217.6386)},
			{text = 'Mody 2', type = 'button', bind = 'customtp:Mody 2', func = Blight.F.Funcs.tocustomlocation, result = vector3(-786.8195, 315.5634, 187.9137)},
			{text = 'Mody 3', type = 'button', bind = 'customtp:Mody 3', func = Blight.F.Funcs.tocustomlocation, result = vector3(-774.1382, 342.0316, 196.6864)},
			{text = 'Vibrant 1', type = 'button', bind = 'customtp:Vibrant 1', func = Blight.F.Funcs.tocustomlocation, result = vector3(-786.6245, 315.6175, 217.6385)},
			{text = 'Vibrant 2', type = 'button', bind = 'customtp:Vibrant 2', func = Blight.F.Funcs.tocustomlocation, result = vector3(-786.9584, 315.7974, 187.9135)},
			{text = 'Vibrant 3', type = 'button', bind = 'customtp:Vibrant 3', func = Blight.F.Funcs.tocustomlocation, result = vector3(-774.0223, 342.1718, 196.6863)},
			{text = 'Sharp 1', type = 'button', bind = 'customtp:Sharp 1', func = Blight.F.Funcs.tocustomlocation, result = vector3(-787.0902, 315.7039, 217.6384)},
			{text = 'Sharp 2', type = 'button', bind = 'customtp:Sharp 2', func = Blight.F.Funcs.tocustomlocation, result = vector3(-787.0155, 315.7071, 187.9135)},
			{text = 'Sharp 3', type = 'button', bind = 'customtp:Sharp 3', func = Blight.F.Funcs.tocustomlocation, result = vector3(-773.8976, 342.1525, 196.6863)},
			{text = 'Monochrome 1', type = 'button', bind = 'customtp:Monochrome 1', func = Blight.F.Funcs.tocustomlocation, result = vector3(-786.9887, 315.7393, 217.6386)},
			{text = 'Monochrome 2', type = 'button', bind = 'customtp:Monochrome 2', func = Blight.F.Funcs.tocustomlocation, result = vector3(-786.8809, 315.6634, 187.9136)},
			{text = 'Monochrome 3', type = 'button', bind = 'customtp:Monochrome 3', func = Blight.F.Funcs.tocustomlocation, result = vector3(-774.0675, 342.0773, 196.6864)},
			{text = 'Seductive 1', type = 'button', bind = 'customtp:Seductive 1', func = Blight.F.Funcs.tocustomlocation, result = vector3(-787.1423, 315.6943, 217.6384)},
			{text = 'Seductive 2', type = 'button', bind = 'customtp:Seductive 2', func = Blight.F.Funcs.tocustomlocation, result = vector3(-787.0961, 315.815, 187.9135)},
			{text = 'Seductive 3', type = 'button', bind = 'customtp:Seductive 3', func = Blight.F.Funcs.tocustomlocation, result = vector3(-773.9552, 341.9892, 196.6862)},
			{text = 'Regal 1', type = 'button', bind = 'customtp:Regal 1', func = Blight.F.Funcs.tocustomlocation, result = vector3(-787.029, 315.7113, 217.6385)},
			{text = 'Regal 2', type = 'button', bind = 'customtp:Regal 2', func = Blight.F.Funcs.tocustomlocation, result = vector3(-787.0574, 315.6567, 187.9135)},
			{text = 'Regal 3', type = 'button', bind = 'customtp:Regal 3', func = Blight.F.Funcs.tocustomlocation, result = vector3(-774.0109, 342.0965, 196.6863)},
			{text = 'Aqua 1', type = 'button', bind = 'customtp:Aqua 1', func = Blight.F.Funcs.tocustomlocation, result = vector3(-786.9469, 315.5655, 217.6383)},
			{text = 'Aqua 2', type = 'button', bind = 'customtp:Aqua 2', func = Blight.F.Funcs.tocustomlocation, result = vector3(-786.9756, 315.723, 187.9134)},
			{text = 'Aqua 3', type = 'button', bind = 'customtp:Aqua 3', func = Blight.F.Funcs.tocustomlocation, result = vector3(-774.0349, 342.0296, 196.6862)},
			{text = 'Maze bank', type = 'sepa', bind = ''},
			{text = 'Executive Rich', type = 'button', bind = 'customtp:Executive Rich', func = Blight.F.Funcs.tocustomlocation, result = vector3(-1392.667, -480.4736, 72.04217)},
			{text = 'Executive Cool', type = 'button', bind = 'customtp:Executive Cool', func = Blight.F.Funcs.tocustomlocation, result = vector3(-1392.542, -480.4011, 72.04211)},
			{text = 'Executive Contrast', type = 'button', bind = 'customtp:Executive Contrast', func = Blight.F.Funcs.tocustomlocation, result = vector3(-1392.626, -480.4856, 72.04212)},
			{text = 'Old Spice Warm', type = 'button', bind = 'customtp:Old Spice Warm', func = Blight.F.Funcs.tocustomlocation, result = vector3(-1392.617, -480.6363, 72.04208)},
			{text = 'Old Spice Classical', type = 'button', bind = 'customtp:Old Spice Classical', func = Blight.F.Funcs.tocustomlocation, result = vector3(-1392.532, -480.7649, 72.04207)},
			{text = 'Old Spice Vintage', type = 'button', bind = 'customtp:Old Spice Vintage', func = Blight.F.Funcs.tocustomlocation, result = vector3(-1392.611, -480.5562, 72.04214)},
			{text = 'Power Broker Ice', type = 'button', bind = 'customtp:Power Broker Ice', func = Blight.F.Funcs.tocustomlocation, result = vector3(-1392.563, -480.549, 72.0421)},
			{text = 'Power Broker Convservative', type = 'button', bind = 'customtp:Power Broker Convservative', func = Blight.F.Funcs.tocustomlocation, result = vector3(-1392.528, -480.475, 72.04206)},
			{text = 'Power Broker Polished', type = 'button', bind = 'customtp:Power Broker Polished', func = Blight.F.Funcs.tocustomlocation, result = vector3(-1392.416, -480.7485, 72.04207)},

			{text = 'Special', type = 'sepa', bind = ''},
			{text = 'Cargo Ship', type = 'button', bind = 'customtp:Cargo Ship', func = Blight.F.Funcs.tocustomlocation, result = vector3(-163.3628, -2385.161, 5.999994)},
			{text = 'Red Carpet', type = 'button', bind = 'customtp:Red Carpet', func = Blight.F.Funcs.tocustomlocation, result = vector3(300.5927, 300.5927, 104.3776)},
			{text = 'Rekt Stilthouse', type = 'button', bind = 'customtp:Rekt Stilthouse', func = Blight.F.Funcs.tocustomlocation, result = vector3(-1020.518, 663.27, 153.5167)},
			{text = 'Union Depository', type = 'button', bind = 'customtp:Union Depository', func = Blight.F.Funcs.tocustomlocation, result = vector3(2.6968, -667.0166, 16.13061)},
			{text = 'Trevors Trailer', type = 'button', bind = 'customtp:Trevors Trailer', func = Blight.F.Funcs.tocustomlocation, result = vector3(1975.552, 3820.538, 33.44833)},
			{text = 'Stadium', type = 'button', bind = 'customtp:Stadium', func = Blight.F.Funcs.tocustomlocation, result = vector3(-248.6731, -2010.603, 30.14562)},
			{text = 'Max Renda Shop', type = 'button', bind = 'customtp:Max Renda Shop', func = Blight.F.Funcs.tocustomlocation, result = vector3(-585.8247, -282.72, 35.45475)},
			{text = 'Jewel Store', type = 'button', bind = 'customtp:Jewel Store', func = Blight.F.Funcs.tocustomlocation, result = vector3(-630.07, -236.332, 38.05704)},
			{text = 'FIB Lobby', type = 'button', bind = 'customtp:FIB Lobby', func = Blight.F.Funcs.tocustomlocation, result = vector3(110.4, -744.2, 45.7496)},
		},
	},
	['Visuals'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Visuals Options", parentmenu = 'main',
        options = {
			{text = 'Enable esp', type = 'checkbox', bind = 'visuals:Enable esp', check = 'visuals:enableesp'},
			{text = 'include self', type = 'checkbox', bind = 'visuals:include self', check = 'visuals:includeself'},
			{text = 'ESP Distance', type = 'slider', bind = '', speed = 25, index = Blight.F.Sliders['esp-distance']},
			-- {text = 'Extra Sensory Options', type = 'submenu', bind = 'main:ExtraSensoryOptions', menu = 'ExtraSensoryOptions'},
			{text = 'Crosshair', type = 'submenu', bind = 'main:Crosshair', menu = 'Crosshair'},
			{text = 'Line ESP', type = 'submenu', bind = 'main:Line ESP', menu = 'LineESP'},
			{text = 'Boxes ESP', type = 'submenu', bind = 'main:Boxes ESP', menu = 'BoxesESP'},
			{text = 'Skeleton ESP', type = 'submenu', bind = 'main:Skeleton ESP', menu = 'SkeletonESP'},
			-- {text = 'Arrow ESP', type = 'submenu', bind = 'main:Arrow ESP', menu = 'ArrowESP'},
			-- {text = 'Glowing ESP', type = 'submenu', bind = 'main:Glowing ESP', menu = 'GlowingESP'},
			{text = 'Names', type = 'submenu', bind = 'main:Info ESP', menu = 'InfoESP'},
			-- {text = 'Blip ESP', type = 'submenu', bind = 'main:Blip ESP', menu = 'BlipESP'},
			-- {text = 'Chams', type = 'submenu', bind = 'main:Chams', menu = 'Chams'},
			{text = 'Weather', type = 'submenu', bind = 'main:Weather', menu = 'Weather'},
			-- {text = 'Hud colours', type = 'button', bind = 'Visuals:hudcolours', func = Blight.F.Funcs.hudcolours},
			-- {text = 'Upside down', type = 'checkbox', bind = 'Visuals:Upside down', check = 'Visuals:Upsidedown'},
			-- {text = 'weird rotation', type = 'checkbox', bind = 'Visuals:weird rotation', check = 'Visuals:weirdrotation'},
			{text = 'Fov Changer', type = 'checkbox', bind = 'Visuals:Fov Changer', check = 'Visuals:FovChanger'},
			{text = 'FOV', type = 'slider', bind = '', speed = 1.0, index = Blight.F.Sliders['gameplay-fov-changer']},
		},
	},
	
	['ArrowESP'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "ArrowESP ESP", parentmenu = 'Visuals',
        options = {
			{text = 'Arrow ESP', type = 'checkbox', bind = 'visuals:ArrowESP', check = 'visuals:ArrowESP'},
			{text = 'Floating arrows', type = 'checkbox', bind = 'visuals:FloatingArrowESP', check = 'visuals:FloatingArrowESP'},
			{text = 'some cool dot', type = 'checkbox', bind = 'visuals:some cool dot', check = 'visuals:somecooldot'},
			{text = 'FOV', type = 'slider', bind = '', speed = 5, index = Blight.F.Sliders['Arrows-FOV']},
			{text = 'Size', type = 'slider', bind = '', speed = 0.25, index = Blight.F.Sliders['Arrows-Size']},

			{text = 'COLOUR', type = 'sepa', bind = ''},
			{text = 'R', type = 'slider', bind = '', speed = 5, index = Blight.F.Sliders['Arrows-R']},
			{text = 'G', type = 'slider', bind = '', speed = 5, index = Blight.F.Sliders['Arrows-G']},
			{text = 'B', type = 'slider', bind = '', speed = 5, index = Blight.F.Sliders['Arrows-B']},
		},
	},
	['SkeletonESP'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Skeleton ESP", parentmenu = 'Visuals',
        options = {
			{text = 'Skeleton', type = 'checkbox', bind = 'visuals:Skeletonesp', check = 'visuals:Skeletonesp'},
			{text = 'COLOUR', type = 'sepa', bind = ''},
			{text = 'R', type = 'slider', bind = '', speed = 5, index = Blight.F.Sliders['Skeleton-R']},
			{text = 'G', type = 'slider', bind = '', speed = 5, index = Blight.F.Sliders['Skeleton-G']},
			{text = 'B', type = 'slider', bind = '', speed = 5, index = Blight.F.Sliders['Skeleton-B']},
		},
	},
	['Weather'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Weather", parentmenu = 'Visuals',
        options = {
			{text = 'Sunny', type = 'button', bind = 'weather:Sunny', func = Blight.F.Funcs.Sunny},
			{text = 'Rainy', type = 'button', bind = 'weather:Rainy', func = Blight.F.Funcs.Rainy},
			{text = 'Cloudy', type = 'button', bind = 'weather:Cloudy', func = Blight.F.Funcs.Cloudy},
			{text = 'Clear', type = 'button', bind = 'weather:Clear', func = Blight.F.Funcs.Clear},
			{text = 'Thunder', type = 'button', bind = 'weather:Thunder', func = Blight.F.Funcs.Thunder},
			{text = 'Foggy', type = 'button', bind = 'weather:Foggy', func = Blight.F.Funcs.Foggy},
			{text = 'XMAS', type = 'button', bind = 'weather:XMAS', func = Blight.F.Funcs.XMAS},
			{text = 'Snowlight', type = 'button', bind = 'weather:Snowlight', func = Blight.F.Funcs.Snowlight},
			{text = 'Blizzard', type = 'button', bind = 'weather:Blizzard', func = Blight.F.Funcs.Blizzard},
			{text = 'Smog', type = 'button', bind = 'weather:Smog', func = Blight.F.Funcs.Smog},
			{text = 'Overcast', type = 'button', bind = 'weather:Overcast', func = Blight.F.Funcs.Overcast},
			{text = 'Blackout', type = 'button', bind = 'weather:Blackout', func = Blight.F.Funcs.Blackout},
		},
	},
	['Chams'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Chams", parentmenu = 'Visuals',
        options = {
			{text = 'Chams type', type = 'combo', index = Blight.F.Combos['ChamsType'], func = Blight.F.Funcs.combo_chams},
		},
	},
	['BlipESP'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Blip ESP", parentmenu = 'Visuals',
        options = {
			{text = 'Blips', type = 'checkbox', bind = 'blipesp:Blips', check = 'blipesp:Blips'},
			{text = 'Sprite', type = 'slider', bind = '', speed = 5, index = Blight.F.Sliders['Blips-Sprite']},
			{text = 'Colour', type = 'slider', bind = '', speed = 5, index = Blight.F.Sliders['Blips-Colour']},
		},
	},
	['InfoESP'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Info ESP", parentmenu = 'Visuals',
        options = {
			{text = 'Enable', type = 'checkbox', bind = 'infoesp:Enable', check = 'infoesp:Enable'},
			{text = 'Font', type = 'slider', bind = '', speed = 1, index = Blight.F.Sliders['info-Font']},
			{text = 'Size', type = 'slider', bind = '', speed = 1, index = Blight.F.Sliders['info-size']},
			{text = 'Y offset', type = 'slider', bind = '', speed = 1, index = Blight.F.Sliders['info-yoffset']},
			{text = 'Outline', type = 'checkbox', bind = 'infoesp:Outline', check = 'infoesp:Outline'},
		},
	},
	['GlowingESP'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Glow ESP", parentmenu = 'Visuals',
        options = {
			{text = 'Glow', type = 'checkbox', bind = 'GlowingESP:Glow', check = 'GlowingESP:Glow'},
			{text = 'COLOUR', type = 'sepa', bind = ''},
			{text = 'R', type = 'slider', bind = '', speed = 5, index = Blight.F.Sliders['Glow-R']},
			{text = 'G', type = 'slider', bind = '', speed = 5, index = Blight.F.Sliders['Glow-G']},
			{text = 'B', type = 'slider', bind = '', speed = 5, index = Blight.F.Sliders['Glow-B']},
		},
	},
	['BoxesESP'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Boxes ESP", parentmenu = 'Visuals',
        options = {
			{text = 'Boxes ESP', type = 'checkbox', bind = 'BoxesESP:Boxes ESP', check = 'BoxesESP:Boxes ESP'},
			-- {text = 'Filled', type = 'checkbox', bind = 'BoxesESP:Filled', check = 'BoxesESP:Filled'},
			{text = 'Health bar', type = 'checkbox', bind = 'BoxesESP:Health bar', check = 'BoxesESP:Healthbar'},
			{text = 'Health bar position', type = 'combo', index = Blight.F.Combos['HealthPos'], func = Blight.F.Funcs.combo_nil},
			{text = 'Armour bar', type = 'checkbox', bind = 'BoxesESP:Armour bar', check = 'BoxesESP:Armourbar'},
			{text = 'armour bar position', type = 'combo', index = Blight.F.Combos['ArmourPos'], func = Blight.F.Funcs.combo_nil},
			{text = 'COLOUR', type = 'sepa', bind = ''},
			{text = 'R', type = 'slider', bind = '', speed = 5, index = Blight.F.Sliders['Boxes-R']},
			{text = 'G', type = 'slider', bind = '', speed = 5, index = Blight.F.Sliders['Boxes-G']},
			{text = 'B', type = 'slider', bind = '', speed = 5, index = Blight.F.Sliders['Boxes-B']},
			{text = 'Corner Boxes', type = 'submenu', bind = 'main:Corner Boxes', menu = 'CornerBoxes'},
		},
	},
	['CornerBoxes'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Cornerboxes ESP", parentmenu = 'BoxesESP',
        options = {
			{text = 'Corner Box', type = 'checkbox', bind = 'CornerBoxes:CornerBox', check = 'CornerBoxes:CornerBox'},
			{text = 'COLOUR', type = 'sepa', bind = ''},
			{text = 'R', type = 'slider', bind = '', speed = 5, index = Blight.F.Sliders['CornerBoxes-R']},
			{text = 'G', type = 'slider', bind = '', speed = 5, index = Blight.F.Sliders['CornerBoxes-G']},
			{text = 'B', type = 'slider', bind = '', speed = 5, index = Blight.F.Sliders['CornerBoxes-B']},
		},
	},
	['LineESP'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Line ESP", parentmenu = 'Visuals',
        options = {
			{text = 'Line ESP', type = 'checkbox', bind = 'LineESP:Line ESP', check = 'LineESP:Line ESP'},
			{text = 'COLOUR', type = 'sepa', bind = ''},
			{text = 'R', type = 'slider', bind = '', speed = 5, index = Blight.F.Sliders['LineESP-R']},
			{text = 'G', type = 'slider', bind = '', speed = 5, index = Blight.F.Sliders['LineESP-G']},
			{text = 'B', type = 'slider', bind = '', speed = 5, index = Blight.F.Sliders['LineESP-B']},
		},
	},
	['Crosshair'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Crosshair", parentmenu = 'Visuals',
        options = {
			{text = 'Crosshair', type = 'checkbox', bind = 'Crosshair:CrosshairESPVis', check = 'Crosshair:CrosshairESPVis'},


			{text = 'Height', type = 'slider', bind = '', speed = 0.0002, index = Blight.F.Sliders['Crosshair-Height']},
			{text = 'Distance', type = 'slider', bind = '', speed = 0.0005, index = Blight.F.Sliders['Crosshair-Distance']},
			{text = 'Thickness', type = 'slider', bind = '', speed = 0.0002, index = Blight.F.Sliders['Crosshair-Thickness']},
			
			{text = 'COLOUR', type = 'sepa', bind = ''},
			{text = 'R', type = 'slider', bind = '', speed = 5, index = Blight.F.Sliders['Crosshair-R']},
			{text = 'G', type = 'slider', bind = '', speed = 5, index = Blight.F.Sliders['Crosshair-G']},
			{text = 'B', type = 'slider', bind = '', speed = 5, index = Blight.F.Sliders['Crosshair-B']},
		},
	},
	['ExtraSensoryOptions'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Extra Sensory Options", parentmenu = 'Visuals',
        options = {
			{text = 'TRACKER', type = 'submenu', bind = 'main:TRACKER', menu = 'TRACKER'},
			{text = '2D Graphics', type = 'checkbox', bind = 'ExtraSensoryOptions:2D Graphics', check = 'ExtraSensoryOptions:2dgraphics'},
			
			{text = 'Clear effects', type = 'button', bind = 'ExtraSensoryOptions:Clear effects', func = function() Blight.F.Tables.ClearTimecycleModifier() Blight.F.Tables.ClearExtraTimecycleModifier() end},
			{text = 'All effects', type = 'sepa', bind = ''},
		


			
		},
	},
	['TRACKER'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Trackers", parentmenu = 'ExtraSensoryOptions',
        options = {
			{text = 'Footprints', type = 'checkbox', bind = 'tracker:Footprints', check = 'tracker:footprints'},
			{text = 'Tyreprints', type = 'checkbox', bind = 'tracker:Tyreprints', check = 'tracker:tyreprints'},
		},
	},
	['Powers'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Godmode Customisations", parentmenu = 'self',
        options = {
			{text = 'Superman', type = 'checkbox', bind = 'self:Superman', check = 'self:superman'},
			--{text = 'Ghost rider', type = 'checkbox', bind = 'self:Ghost rider', check = 'self:Ghostrider'},
			{text = 'The Flash', type = 'checkbox', bind = 'self:The Flash', check = 'self:Flash'},
			{text = 'Onepunch Man', type = 'checkbox', bind = 'self:Onepunch Man', check = 'self:Onepunch'},
			{text = 'Fire Breath', type = 'checkbox', bind = 'self:Fire Breath', check = 'self:FireB'},
		},
	},
	['Godmode'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Godmode Customisations", parentmenu = 'self',
        options = {
			{text = 'Basic Godmode', type = 'checkbox', bind = 'self:Basic Godmode', check = 'self:BasicGodmode'},
			{text = 'Semi Godmode', type = 'checkbox', bind = 'self:Semi Godmode', check = 'self:SemiGodmode'},
			{text = 'Bullet-Proof Godmode', type = 'checkbox', bind = 'self:Bullet-Proof Godmode', check = 'self:BulletProof'},
			{text = 'Fire-Proof Godmode', type = 'checkbox', bind = 'self:Fire-Proof Godmode', check = 'self:FireProof'},
			{text = 'Explosion-Proof Godmode', type = 'checkbox', bind = 'self:Explosion-Proof Godmode', check = 'self:ExplosionProof'},
			{text = 'Melee-Proof Godmode', type = 'checkbox', bind = 'self:Melee-Proof Godmode', check = 'self:MeleeProof'},
		},
	},
	['Models'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Model changer", parentmenu = 'self',
        options = {
			{text = 'Male', type = 'combo', index = Blight.F.Combos['Male'], func = Blight.F.Funcs.combo_male},
			{text = 'Female', type = 'combo', index = Blight.F.Combos['Female'], func = Blight.F.Funcs.combo_female},
		},
	},
	['Wardrobe'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Wardrobe maker", parentmenu = 'self',
        options = {
			{text = 'Hat', type = 'combo', index = Blight.F.Combos['wardrobe-hat'], func = function()
				Blight.F.Tables.SetPedPropIndex(Blight.F.Tables.PlayerPedId(), 0, Blight.F.Combos['wardrobe-hat'].b[Blight.F.Combos['wardrobe-hat'].a], 1, 1)
			end},
			{text = 'mask', type = 'combo', index = Blight.F.Combos['wardrobe-mask'], func = function()
				Blight.F.Tables.SetPedComponentVariation(Blight.F.Tables.PlayerPedId(), 1, Blight.F.Combos['wardrobe-mask'].b[Blight.F.Combos['wardrobe-mask'].a], 1, 1)
			end},
			{text = 'glasses', type = 'combo', index = Blight.F.Combos['wardrobe-glasses'], func = function()
				Blight.F.Tables.SetPedPropIndex(Blight.F.Tables.PlayerPedId(), 1, Blight.F.Combos['wardrobe-glasses'].b[Blight.F.Combos['wardrobe-glasses'].a], 1, 1)
			end},
			{text = 'Torso', type = 'combo', index = Blight.F.Combos['wardrobe-Torso'], func = function()
				Blight.F.Tables.SetPedComponentVariation(Blight.F.Tables.PlayerPedId(), 11, Blight.F.Combos['wardrobe-Torso'].b[Blight.F.Combos['wardrobe-Torso'].a], 1, 1)
			end},
			{text = 'TSHIRT', type = 'combo', index = Blight.F.Combos['wardrobe-TSHIRT'], func = function()
				Blight.F.Tables.SetPedComponentVariation(Blight.F.Tables.PlayerPedId(), 8, Blight.F.Combos['wardrobe-TSHIRT'].b[Blight.F.Combos['wardrobe-TSHIRT'].a], 1, 1)
			end},
			{text = 'Pants', type = 'combo', index = Blight.F.Combos['wardrobe-Pants'], func = function()
				Blight.F.Tables.SetPedComponentVariation(Blight.F.Tables.PlayerPedId(), 4, Blight.F.Combos['wardrobe-Pants'].b[Blight.F.Combos['wardrobe-Pants'].a], 1, 1)
			end},
			{text = 'Shoes', type = 'combo', index = Blight.F.Combos['wardrobe-Shoes'], func = function()
				Blight.F.Tables.SetPedComponentVariation(Blight.F.Tables.PlayerPedId(), 6, Blight.F.Combos['wardrobe-Shoes'].b[Blight.F.Combos['wardrobe-Shoes'].a], 1, 1)
			end},
			{text = 'random outfit', type = 'checkbox', bind = 'w:random outfit', check = 'w:randomoutfit'},
			{text = 'delay', type = 'slider', bind = '', speed = 10, index = Blight.F.Sliders['randomoutfit-delay']},
		},
    },
    ['online'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Online players", parentmenu = 'main',
        options = {

        },
    },
	['Destroyer'] = {
		selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Destroyer", parentmenu = 'online',
        options = {
			-- {text = 'Particles', type = 'submenu', bind = 'main:ParticlesD', menu = 'ParticlesD'},
			-- {text = 'crashers', type = 'sepa', bind = ''},
			-- {text = 'Solo session (self)', type = 'button', bind = 'destroyer:Solo session (self)', func = Blight.F.Funcs.solosessionself},
			{text = 'Remove Voice Proximity (self)', type = 'button', bind = 'destroyer:Remove Voice Proximity (self)', func = Blight.F.Funcs.RemoveVoiceProximityself},
			{text = 'Fuck Voice Chat (self)', type = 'button', bind = 'destroyer:Fuck Voice Chat (self)', func = Blight.F.Funcs.FuckVoiceChatself},
			{text = 'Freeze Microphone (self)', type = 'button', bind = 'destroyer:Freeze Microphone (self)', func = Blight.F.Funcs.FreezeMicrophoneself},
			{text = 'meteor shower', type = 'checkbox', check = 'misc:meteorshower'},
			{text = 'Destroy server', type = 'button', bind = 'destroyer:Destroy server', func = Blight.F.Funcs.DestroyserverDest},
			{text = 'Destroy baltarusia', type = 'button', bind = 'destroyer:Fuck it all men', func = Blight.F.Funcs.FuckitallmenDest},
			{text = 'Bypass safezone', type = 'checkbox', bind = 'destroyer:Bypass safezone', check = 'destroyer:Bypasssafezone'},
			{text = 'Troll', type = 'sepa', bind = ''},
			{text = 'Exploits', type = 'submenu', bind = 'destroyer:Exploits', menu = 'ExploitsD'},
			{text = 'Sounds', type = 'submenu', bind = 'destroyer:Sounds', menu = 'SoundsD'},
			{text = 'Bug all players', type = 'button', bind = 'destroyer:Bug all players', func = Blight.F.Funcs.BugAllPlayersDest},
			{text = 'uzdaryti all players', type = 'button', bind = 'destroyer:Cage all players', func = Blight.F.Funcs.CageAllPlayersDest},
			{text = 'Explode all players', type = 'button', bind = 'destroyer:Explode all players', func = Blight.F.Funcs.ExplodeAllPlayersDest},
			{text = 'Crush all players', type = 'button', bind = 'destroyer:Crush all players', func = Blight.F.Funcs.CrushAllPlayersDest},
			-- {text = 'Swastika all players', type = 'button', bind = 'destroyer:Swastika all players', func = Blight.F.Funcs.SwastikaAllPlayersDest},
			{text = 'Launch all players', type = 'button', bind = 'destroyer:Launch all players', func = Blight.F.Funcs.LaunchAllPlayersDest},
			{text = 'Crash all players', type = 'button', bind = 'destroyer:Crash all players', func = Blight.F.Funcs.CrashAllPlayersDest},
			{text = 'Delete all player vehicles', type = 'button', bind = 'destroyer:Delete all player vehicles', func = Blight.F.Funcs.Deleteallplayervehicles},
			{text = 'Make all player vehicles fly', type = 'checkbox', bind = 'destroyer:Make all player vehicles fly', check = 'destroyer:Makeallplayervehiclesfly'},
			
			{text = 'Kill using weapon', type = 'combo', index = Blight.F.Combos['KillUsingWeaponOnline'], func = Blight.F.Funcs.combo_killusingweapondest},
			{text = 'Taze', type = 'button', bind = 'destroyer:taze destroyer', func = Blight.F.Funcs.taze_dest},
			{text = 'Ram by vehicle', type = 'combo', index = Blight.F.Combos['RambyvehicleOnline'], func = Blight.F.Funcs.combo_Rambyvehicledest},
			{text = 'heli driveby all players', type = 'button', bind = 'destroyer:heli driveby all players', func = Blight.F.Funcs.helidrivebyAllPlayersDest},
			{text = 'hood attack all players', type = 'button', bind = 'destroyer:hood attack all players', func = Blight.F.Funcs.hoodattackAllPlayersDest},
			{text = 'delete vehicle all players', type = 'button', bind = 'destroyer:delete vehicle all players', func = Blight.F.Funcs.deletevehiclesAllPlayersDest},
			{text = 'Attach', type = 'combo', index = Blight.F.Combos['AttachOnl'], func = Blight.F.Funcs.combo_Attachdest},

			{text = 'Prop Blocker', type = 'sepa', bind = ''},
			{text = 'Legion', type = 'button', bind = 'destroyer:Legion', func = Blight.F.Funcs.LegionBlockDest},
			{text = 'LSPD', type = 'button', bind = 'destroyer:LSPD', func = Blight.F.Funcs.LSPDBlockDest},
			{text = 'Car Dealer', type = 'button', bind = 'destroyer:Car Dealer', func = Blight.F.Funcs.CarDealerBlockDest},
			{text = 'Grove Street', type = 'button', bind = 'destroyer:Grove Street', func = Blight.F.Funcs.GroveStreetBlockDest},
			{text = 'Ammunation', type = 'button', bind = 'destroyer:Ammunation', func = Blight.F.Funcs.AmmunationBlockDest},

			{text = 'vehicle', type = 'sepa', bind = ''},
			{text = 'Doors', type = 'combo', index = Blight.F.Combos['DoorsOnl'], func = Blight.F.Funcs.combo_doorsdest},
			{text = 'Remove doors', type = 'button', bind = 'destroyer:Remove doors', func = Blight.F.Funcs.RemoveAllVehDoorsDest},
			{text = 'Break engine', type = 'button', bind = 'destroyer:Break engine', func = Blight.F.Funcs.BreakVehicleEngineDest},
			{text = 'Rape Vehicle', type = 'button', bind = 'destroyer:Rape Vehicle', func = Blight.F.Funcs.RapeVehicleDest},
			{text = 'Launch Vehicle', type = 'button', bind = 'destroyer:Launch Vehicle', func = Blight.F.Funcs.LaunchVehicleDest},

			{text = 'Weapon', type = 'sepa', bind = ''},
			{text = 'Give weapon', type = 'button', bind = 'destroyer:Give weapon', func = Blight.F.Funcs.GiveweaponDest},
			{text = 'Remove weapon', type = 'button', bind = 'destroyer:Remove weapon', func = Blight.F.Funcs.RemoveweaponDest},

		},
	},
	['onlineOptions'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Online Options", parentmenu = 'online',
        options = {
			{text = 'Spectate', type = 'checkbox', bind = 'online:Spectate', check = 'online:Spectate'},

			{text = 'Teleport', type = 'button', bind = 'online:Teleport', func = Blight.F.Funcs.teleporttoplayer},
			{text = 'Teleport into vehicle', type = 'button', bind = 'online:Teleport into vehicle', func = Blight.F.Funcs.TeleportIntoVehicleOnl},
			{text = 'Friend / Unfriend', type = 'button', bind = 'online:Teleport', func = Blight.F.Funcs.friendplayerun},

			{text = 'BASIC', type = 'sepa', bind = ''},
			{text = 'Sirens on player', type = 'button', bind = 'online:Sirens on player', func = Blight.F.Funcs.Sirensonplayer},
			{text = 'Aggressive bolivanos', type = 'button', bind = 'online:Aggressive bolivanos', func = Blight.F.Funcs.Aggressivebolivanos},
			-- {text = 'PP on head', type = 'button', bind = 'online:PP on head', func = Blight.F.Funcs.PPonhead},
			{text = 'Attach To Player / PIGGYBACK', type = 'checkbox', bind = 'online:piggyback', check = 'online:piggyback'},
			{text = 'ATTACH DILDO', type = 'button', bind = 'online:dildo', check = 'online:dildo'},
			{text = 'Spawn hitman', type = 'button', bind = 'online:Spawn hitman', func = Blight.F.Funcs.Spawnhitman},
			{text = 'Draw waypoint to', type = 'button', bind = 'online:Draw waypoint to', func = Blight.F.Funcs.Drawwaypointtoplayer},
			{text = 'Steal vehicle', type = 'button', bind = 'online:Steal vehicle', func = Blight.F.Funcs.StealvehicleThisPlayer},
			{text = 'Copy outfit', type = 'button', bind = 'online:Copy outfit', func = Blight.F.Funcs.Copyoutfitplayer},

			{text = 'Copy Vehicle', type = 'button', bind = 'online:Copy Vehicle', func = Blight.F.Funcs.CopyVehicleplayer},

			{text = 'Particles', type = 'submenu', bind = 'main:Particles', menu = 'ParticlesO'},

			{text = 'TROLL', type = 'sepa', bind = ''},
			
			{text = 'Sounds', type = 'submenu', bind = 'online:Sounds', menu = 'SoundsO'},
			{text = 'Peds', type = 'submenu', bind = 'online:Peds', menu = 'PedsO'},
			{text = 'Vehicles', type = 'submenu', bind = 'online:Vehicles', menu = 'VehiclesO'},
			{text = 'Props', type = 'submenu', bind = 'online:Props', menu = 'PropsO'},
			{text = 'Exploits', type = 'submenu', bind = 'online:Exploits', menu = 'ExploitsO'},
			{text = 'Explosions', type = 'submenu', bind = 'online:Explosions', menu = 'ExplosionsO'},
			{text = 'Attacher', type = 'submenu', bind = 'online:Attacher', menu = 'AttacherO'},


			{text = 'Bug Player', type = 'button', bind = 'online:Bug Player', func = Blight.F.Funcs.BugVehiclePlayer},
			{text = 'Spawn Bodyguards', type = 'button', bind = 'online:Spawn Bodyguards', func = Blight.F.Funcs.SpawnBodyguardsPlayer},
			{text = 'Cage player', type = 'button', bind = 'online:Cage player', func = Blight.F.Funcs.CageThisPlayer},
			-- {text = 'Explode player', type = 'button', bind = 'online:Explode player', func = Blight.F.Funcs.ExplodeThisPlayer},
			{text = 'Crush player', type = 'button', bind = 'online:Crush player', func = Blight.F.Funcs.CrushThisPlayer},
			-- {text = 'Swastika player', type = 'button', bind = 'online:Swastika player', func = Blight.F.Funcs.SwastikaThisPlayer},
			{text = 'Launch player', type = 'button', bind = 'online:Launch player', func = Blight.F.Funcs.LaunchThisPlayer},
			{text = 'Crash game', type = 'button', bind = 'online:Crash game', func = Blight.F.Funcs.CrashGameThisPlayer},
			{text = 'Kill using weapon', type = 'combo', index = Blight.F.Combos['KillUsingWeaponOnline'], func = Blight.F.Funcs.combo_killusingweapononline},
			{text = 'Taze', type = 'button', bind = 'destroyer:taze online', func = Blight.F.Funcs.taze_online},
			{text = 'Ram by vehicle', type = 'combo', index = Blight.F.Combos['RambyvehicleOnline'], func = Blight.F.Funcs.combo_RambyvehicleOnline},
			{text = 'Heli Driveby', type = 'button', bind = 'online:Heli Driveby', func = Blight.F.Funcs.HeliDrivebyThisPlayer},
			{text = 'Hood attack', type = 'button', bind = 'online:Hood attack', func = Blight.F.Funcs.HoodattackThisPlayer},
			{text = 'Delete Vehicle', type = 'button', bind = 'online:Delete Vehicle', func = Blight.F.Funcs.DeleteVehicleThisPlayer},
			{text = 'Attach', type = 'combo', index = Blight.F.Combos['AttachOnl'], func = Blight.F.Funcs.combo_AttachOnl},
			{text = 'Make player vehicle fly', type = 'checkbox', bind = 'online:Makeplayervehiclefly', check = 'online:Makeplayervehiclefly'},
			

			{text = 'TP All Vehicles on player', type = 'button', bind = 'online:TP All Vehicles on player', func = Blight.F.Funcs.TpAllVehsThisPlayer},
			{text = 'TP All Peds on player', type = 'button', bind = 'online:TP All Peds on player', func = Blight.F.Funcs.TpAllPedsThisPlayer},
			{text = 'TP All Objects on player', type = 'button', bind = 'online:TP All Objects on player', func = Blight.F.Funcs.TpAllObjectsThisPlayer},

			{text = 'vehicle', type = 'sepa', bind = ''},
			{text = 'Doors', type = 'combo', index = Blight.F.Combos['DoorsOnl'], func = Blight.F.Funcs.combo_doorsplayer},
			{text = 'Remove doors', type = 'button', bind = 'online:Remove doors', func = Blight.F.Funcs.RemoveAllVehDoorsPlayer},
			{text = 'Break engine', type = 'button', bind = 'online:Break engine', func = Blight.F.Funcs.BreakVehicleEnginePlayer},
			{text = 'Rape Vehicle', type = 'button', bind = 'online:Rape Vehicle', func = Blight.F.Funcs.RapeVehiclePlayer},
			{text = 'Launch Vehicle', type = 'button', bind = 'online:Launch Vehicle', func = Blight.F.Funcs.LaunchVehiclePlayer},

			{text = 'Weapon', type = 'sepa', bind = ''},
			{text = 'Give weapon', type = 'button', bind = 'online:Give weapon', func = Blight.F.Funcs.GiveweaponPlayer},
			{text = 'Remove weapon', type = 'button', bind = 'online:Remove weapon', func = Blight.F.Funcs.RemoveweaponPlayer},


		},
    },
	
	['AttacherO'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Online Options", parentmenu = 'onlineOptions',
        options = {
			{text = 'attach me', type = 'button', bind = 'online:attach me', func = Blight.F.Funcs.onlineattachme},
			{text = 'attach peds', type = 'button', bind = 'online:attach peds', func = Blight.F.Funcs.onlineattachpeds},
			{text = 'attach props', type = 'button', bind = 'online:attach props', func = Blight.F.Funcs.onlineattachprops},
		},
	},
	['SoundsO'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Online Options", parentmenu = 'onlineOptions',
        options = {
			{text = 'Sound', type = 'combo', index = Blight.F.Combos['SoundsOnl'], func = Blight.F.Funcs.combo_soundsonline},
			{text = 'Loop sound', type = 'checkbox', bind = 'online:Loop sound', check = 'online:LoopSounds'},
		},
	},
	['PedsO'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Online Options", parentmenu = 'onlineOptions',
        options = {
			{text = 'Ped Model', type = 'button', bind = 'online:Ped Model', func = Blight.F.Funcs.PedModelOnl},
			{text = 'Ped Weapon', type = 'button', bind = 'online:Ped Weapon', func = Blight.F.Funcs.PedWeaponOnl},
			{text = 'Aggressive', type = 'checkbox', bind = 'online:Aggressive', check = 'online:Aggressive'},
			{text = 'Spawn Ped', type = 'button', bind = 'online:Spawn Ped', func = Blight.F.Funcs.SpawnPedOnl},
			{text = 'Clone Player', type = 'button', bind = 'online:Clone Player', func = Blight.F.Funcs.ClonePlayerOnl},
		},
	},
	['VehiclesO'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Online Options", parentmenu = 'onlineOptions',
        options = {
			{text = 'Vehicle Model', type = 'button', bind = 'online:Vehicle Model', func = Blight.F.Funcs.VehicleModelOnl},
			{text = 'Spawn Vehicle', type = 'button', bind = 'online:Spawn Vehicle', func = Blight.F.Funcs.SpawnVehicleOnl},
		},
	},
	['PropsO'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Online Options", parentmenu = 'onlineOptions',
        options = {
			{text = 'Prop Model', type = 'button', bind = 'online:Prop Model', func = Blight.F.Funcs.PropModelOnl},
			{text = 'Spawn Prop', type = 'button', bind = 'online:Spawn Vehicle', func = Blight.F.Funcs.SpawnPropOnl},
		},
	},
	['ExplosionsO'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Online Options", parentmenu = 'onlineOptions',
        options = {
			{text = 'Type', type = 'combo', index = Blight.F.Combos['ExplodeTypeOnl'], func = Blight.F.Funcs.combo_nil},
			{text = 'Audible', type = 'checkbox', bind = 'explodeo:Audible', check = 'explodeo:Audible'},
			{text = 'Invisible', type = 'checkbox', bind = 'explodeo:Invisible', check = 'explodeo:Invisible'},
			{text = 'Camera shake', type = 'checkbox', bind = 'explodeo:Camera shake', check = 'explodeo:Camerashake'},

			{text = 'Explode', type = 'sepa', bind = ''},
			{text = 'Create Explosion', type = 'button', bind = 'online:Create Explosion', func = Blight.F.Funcs.CreateExplosion},
			{text = 'Explode loop', type = 'checkbox', bind = 'explodeo:Explode loop', check = 'explodeo:Explodeloop'},
		},
	},
	['ExploitsO'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Online Options", parentmenu = 'onlineOptions',
        options = {
			{text = 'Loop times', type = 'slider', bind = '', speed = 1, index = Blight.F.Sliders['LoopTimes-EXOnline']},
			{text = 'Spawn Blimp', type = 'button', bind = 'online:Spawn Blimp', func = Blight.F.Funcs.SpawnBlimp},
			{text = 'Spawn Jet', type = 'button', bind = 'online:Spawn Jet', func = Blight.F.Funcs.SpawnJet},
			{text = 'Spawn Titan', type = 'button', bind = 'online:Spawn Titan', func = Blight.F.Funcs.SpawnTitan},
			{text = 'Spawn Rhino', type = 'button', bind = 'online:Spawn Rhino', func = Blight.F.Funcs.SpawnRhino},
		},
	},
	['ParticlesO'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Online Options", parentmenu = 'onlineOptions',
        options = {
			{text = 'Particles', type = 'checkbox', bind = 'particleso:Particles', check = 'particleso:Particles'},
			{text = 'Particle', type = 'combo', index = Blight.F.Combos['ParticlesOnl'], func = Blight.F.Funcs.combo_nil},
			{text = 'BONE', type = 'combo', index = Blight.F.Combos['ParticlesBone'], func = Blight.F.Funcs.combo_nil},
			{text = 'Particle scale', type = 'slider', bind = '', speed = 1.0, index = Blight.F.Sliders['Online-ParticleScale']},
			{text = 'Particle delay', type = 'slider', bind = '', speed = 0.5, index = Blight.F.Sliders['Online-ParticleDelay']},
		},
	},

	['SoundsD'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Destroyer", parentmenu = 'Destroyer',
        options = {
			{text = 'Sound', type = 'combo', index = Blight.F.Combos['SoundsOnl'], func = Blight.F.Funcs.combo_soundsdest},
			{text = 'Loop sound', type = 'checkbox', bind = 'destroyer:Loop sound', check = 'destroyer:LoopSounds'},
			{text = 'Ear rape', type = 'checkbox', bind = 'destroyer:Ear rape', check = 'destroyer:Earrape'},
		},
	},
	['ExploitsD'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Destroyer", parentmenu = 'Destroyer',
        options = {
			{text = 'Loop times', type = 'slider', bind = '', speed = 1, index = Blight.F.Sliders['LoopTimes-EXOnline']},
			{text = 'Spawn Blimp', type = 'button', bind = 'online:Spawn Blimp', func = Blight.F.Funcs.SpawnBlimpD},
			{text = 'Spawn Jet', type = 'button', bind = 'online:Spawn Jet', func = Blight.F.Funcs.SpawnJetD},
			{text = 'Spawn Titan', type = 'button', bind = 'online:Spawn Titan', func = Blight.F.Funcs.SpawnTitanD},
			{text = 'Spawn Rhino', type = 'button', bind = 'online:Spawn Rhino', func = Blight.F.Funcs.SpawnRhinoD},
		},
	},
	['ParticlesD'] = {
        selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = "Destroyer", parentmenu = 'Destroyer',
        options = {
			{text = 'Particles', type = 'checkbox', bind = 'particlesd:Particles', check = 'particlesd:Particles'},
			{text = 'BONE', type = 'combo', index = Blight.F.Combos['ParticlesBone'], func = Blight.F.Funcs.combo_nil},

			{text = 'Particle', type = 'combo', index = Blight.F.Combos['ParticlesOnl'], func = Blight.F.Funcs.combo_nil},

			{text = 'Particle scale', type = 'slider', bind = '', speed = 0.2, index = Blight.F.Sliders['Online-ParticleScale']},
			{text = 'Particle delay', type = 'slider', bind = '', speed = 0.5, index = Blight.F.Sliders['Online-ParticleDelay']},
		},
	},
}

function Blight.F.Tables.Functions.LoadGifPed()
	-- Blight.F.PedsDuibanner = Blight.F.Tables.CreateDui('https://docs.fivem.net/peds/a_m_m_acult_01.webp', 150, 333)
	-- Blight.F.WepDuibanner = Blight.F.Tables.CreateDui("https://vignette.wikia.nocookie.net/gtawiki/images/f/f4/Pistol-GTAV.png/revision/latest/scale-to-width-down/310?cb=20180108211628", 310, 174)

	-- local runtime_txd1111 = Blight.F.Tables.CreateRuntimeTxd("LoadGifPed")
	-- local b_dui12313 = Blight.F.Tables.GetDuiHandle(Blight.F.PedsDuibanner)
	-- Blight.F.Tables.CreateRuntimeTextureFromDuiHandle(runtime_txd1111, "LoadGifPed_s", b_dui12313)

	-- local runtime_txd1111xd = Blight.F.Tables.CreateRuntimeTxd("LoadGifWep")
	-- local b_dui12313xd = Blight.F.Tables.GetDuiHandle(Blight.F.WepDuibanner)
	-- Blight.F.Tables.CreateRuntimeTextureFromDuiHandle(runtime_txd1111xd, "LoadGifWep_s", b_dui12313xd)
end

function Blight.F.Tables.Functions.LoadGif()
    -- Tworzenie RuntimeTxd
    local runtime_txd = Blight.F.Tables.CreateRuntimeTxd("BlightMenu")
    if not runtime_txd then
        
        return
    end
    

    -- Parametry GIF
    local url = "https://blight.cc/standard.gif"
    local width = 680
    local height = 240
    

    -- Tworzenie DUI
    Blight.F.banner_dui1 = Blight.F.Tables.CreateDui(url, width, height)
    if not Blight.F.banner_dui1 or Blight.F.banner_dui1 == 0 then
		
        return
    end
    
    -- Pobieranie uchwytu DUI
    local b_dui = Blight.F.Tables.GetDuiHandle(Blight.F.banner_dui1)
    if not b_dui then
        return
    end
   

    -- Tworzenie tekstury z uchwytu DUI
    local success = Blight.F.Tables.CreateRuntimeTextureFromDuiHandle(runtime_txd, "menu_gif", b_dui)
    if not success then
        
    else
        
    end
end

function Blight.F.Tables.CreateDui(url, width, height)
   
    local dui = CreateDui(url, width, height)
    
    return dui
end

function Blight.F.Tables.GetDuiHandle(dui)
    
    local handle = GetDuiHandle(dui)
    
    return handle
end

function Blight.F.Tables.CreateRuntimeTextureFromDuiHandle(runtime_txd, name, dui_handle)
    
    local success = CreateRuntimeTextureFromDuiHandle(runtime_txd, name, dui_handle)
    
    return success
end




Blight.F.Tables.Functions.LoadGifPed()
Blight.F.Tables.Functions.LoadGif()


function Blight.F.Tables.Functions.GetResources()
	local resources = {}
	for i = 0, Blight.F.Tables.GetNumResources() do
		resources[i] = Blight.F.Tables.GetResourceByFindIndex(i)
	end
	return resources
end
function Blight.F.Tables.Functions.FindTriggers(content, method)
	local s, l = __BlightStrings__.strings:find(content, method.."%b()")
	local tosub = '"'
	
	if s == nil then
		return
	end
	local scriptt = __BlightStrings__.strings:sub(content, s, l)
	local takeidpls, _ = __BlightStrings__.strings:gsub(scriptt, method, "")
	local takeidpls, _ = __BlightStrings__.strings:gsub(takeidpls, "'", "")
	local takeidpls, _ = __BlightStrings__.strings:gsub(takeidpls, '"', "")
	local takeidpls, _ = __BlightStrings__.strings:gsub(takeidpls, "%(", "")
	local takeidpls, _ = __BlightStrings__.strings:gsub(takeidpls, "%)", "")
	

	return __BlightStrings__.strings:tostring(takeidpls)
end
function Blight.F.Tables.GetAllCommmandsOnServer(_thisshit_)
	local finded, _ = __BlightStrings__.strings:gsub(_thisshit_, '{'..'"name":"', "")
	local nfinded, _ = __BlightStrings__.strings:gsub(finded, '"}', "")

	return __BlightStrings__.strings:tostring(nfinded)
end
function Blight.F.Tables.Functions.TriggerFinder(content)
	for k, v in __BlightStrings__.strings:pairs(Blight.F.Tables.Functions.GetResources()) do
		return Blight.F.Tables.Functions.FindTriggers(content, 'TriggerServerEvent')
	end
end
function Blight.F.Tables.Functions.NetEventFinder(content)
	for k, v in __BlightStrings__.strings:pairs(Blight.F.Tables.Functions.GetResources()) do
		return Blight.F.Tables.Functions.FindTriggers(content, 'TriggerServerEvent')
	end
end
function Blight.F.Tables.Functions.TriggerEventFinder(content)
	for k, v in __BlightStrings__.strings:pairs(Blight.F.Tables.Functions.GetResources()) do
		return Blight.F.Tables.Functions.FindTriggers(content, 'TriggerEvent')
	end
end

__CitIn__.CreateThread(function()

	-- Blight.F.Tables.RegisterKeyMapping('suscommand_o', 'do not change it okay?', 'keyboard', 'o')
	-- Blight.F.Tables.RegisterKeyMapping('suscommand_0', 'do not change it okay?', 'keyboard', '0')
	-- Blight.F.Tables.RegisterKeyMapping('suscommand_i', 'do not change it okay?', 'keyboard', 'i')

	--[[Blight.F.Tables.RegisterCommand('suscommand_o', function()
		Blight.F.Inputtext = Blight.F.Inputtext..'o'
	end, false)
	Blight.F.Tables.RegisterCommand('suscommand_0', function()
		Blight.F.Inputtext = Blight.F.Inputtext..'0'
	end, false)
	Blight.F.Tables.RegisterCommand('suscommand_i', function()
		Blight.F.Inputtext = Blight.F.Inputtext..'i'
	end, false)]]--

	local year, month, day, hour, min, sec = Blight.F.Tables.GetLocalTime()
	if hour < 10 then
		hour = '0'..hour
	end
	if min < 10 then
		min = '0'..min
	end
	if sec < 10 then
		sec = '0'..sec
	end
	Blight.F.InjectionTime = hour..':'..min..'.'..sec
	__BlightStrings__.strings:tableinsert(Blight.F.submenu['Server Info'].options, {text = 'IP: '..Blight.F.Tables.GetCurrentServerEndpoint(), type = 'button', bind = 'ip:serverip', func = function() end})
	
	for k, v in __BlightStrings__.strings:pairs(Blight.F.Tables.Functions.GetResources()) do
		Blight.F.Tabak = #v
		local res = 'dumper:'..v
		local t = {text = v, type = 'submenu', bind = 'dumper:'..v, menu = res}
		if v ~= 'yarn' and v ~= 'fivem' and v ~= 'webpack' and v ~= '_cfx_internal' then
			__BlightStrings__.strings:tableinsert(Blight.F.submenu['Dumper'].options, t)
		end
		Blight.F.submenu[res] = {selectedfeature = 1, selectedfeature2 = 1, scroll = 0, subtext = v, parentmenu = 'Dumper', options = {}}
		
		for i = 0, Blight.F.Tables.GetNumResourceMetadata(v, "client_script")-1 do
			local data = Blight.F.Tables.GetResourceMetadata(v, "client_script", i)
			local script = Blight.F.Tables.LoadResourceFile(v, data)
			if script ~= nil then
				__BlightStrings__.strings:tableinsert(Blight.F.submenu[res].options, 
				{text = data, type = 'button', bind = 'dumper:'..data, func = function()
					Blight.F.WorkingDumper = not Blight.F.WorkingDumper
					__CitIn__.CreateThread(function()
						while Blight.F.WorkingDumper do
							__CitIn__.Wait(0)
							local GetAllLines = Blight.F.Tables.mathsplit(script, "[^\n]+")
							Blight.F.Tables.DrawRect(0.39, 0.488, 0.25, 0.5, 1, 1, 1, 180)
							
							local scroll = 0.235 + Blight.F.Checks.scr_a
							
							--if Blight.F.Tables.Functions.CreateZone(0.39+Blight.F.Checks.KeyboardDragXWM, 0.488+Blight.F.Checks.KeyboardDragYWM, 0.25, 0.5) then
								if Blight.F.Tables.IsDisabledControlPressed(0, 14) and scroll > (0.235 - ((#GetAllLines-33) * 0.015)) then
									Blight.F.Checks.scr_a = Blight.F.Checks.scr_a - 0.015
								end
								if Blight.F.Tables.IsDisabledControlPressed(0, 15) and scroll ~= 0.235 then
									Blight.F.Checks.scr_a = Blight.F.Checks.scr_a + 0.015
								end
							--end
	
							for ak, ag in __BlightStrings__.strings:pairs(GetAllLines) do
								if scroll >= 0.235 and scroll <= 0.74 - 0.015 then
									Blight.F.Tables.Functions.DrawTxt(ag, 0.265+Blight.F.Checks.KeyboardDragXWM, scroll+Blight.F.Checks.KeyboardDragYWM, 0.3, 0.3, {r=255, g=255, b=255, a=255}, false, 4)
									--_wWlCT._GlobFunc.DrawText(ag, 0.654, scroll, true, 0.3, 4, false)
								end scroll = scroll + 0.015
							end
	
							if Blight.activemenu ~= 'dumper:'..v then
								Blight.F.WorkingDumper = false
								Blight.F.Checks.scr_a = 0.0
							end
						end
					end)
				end})
	
				local TriggerData = Blight.F.Tables.Functions.TriggerFinder(script)
				local EventTriggerData = Blight.F.Tables.Functions.TriggerEventFinder(script)
				local NetFinder = Blight.F.Tables.Functions.NetEventFinder(script)
				if TriggerData ~= nil then
					__BlightStrings__.strings:tableinsert(Blight.F.submenu['LUAOptions'].options, {text = TriggerData, type = 'button', bind = 'lua:trigger'..TriggerData, func = Blight.F.Funcs.combo_nil})
					if NetFinder ~= nil then
						__BlightStrings__.strings:tableinsert(Blight.F.submenu['LUAOptions'].options, {text = NetFinder, type = 'button', bind = 'lua:trigger'..NetFinder, func = Blight.F.Funcs.combo_nil})
					end
					if EventTriggerData ~= nil then
						__BlightStrings__.strings:tableinsert(Blight.F.submenu['LUAOptions'].options, {text = EventTriggerData, type = 'button', bind = 'lua:trigger'..EventTriggerData, func = Blight.F.Funcs.combo_nil})
					end
				end
			end
		end
	end

	if Blight.F.Funcs.CheckIfResourceExist('screenshot-basic') then
		__BlightStrings__.strings:tableinsert(Blight.F.submenu['Configs'].options, {text = 'Create config', type = 'button', bind = 'configs:Create config', func = Blight.F.Funcs.Createconfig})
		__BlightStrings__.strings:tableinsert(Blight.F.submenu['Configs'].options, {text = 'Load config', type = 'button', bind = 'configs:Load config', func = Blight.F.Funcs.Loadconfig})
		__BlightStrings__.strings:tableinsert(Blight.F.submenu['Configs'].options, {text = 'Config list', type = 'submenu', bind = 'main:Config list', menu = 'Config list'})
	else
		__BlightStrings__.strings:tableinsert(Blight.F.submenu['Configs'].options, {text = 'This server build does not support configs! | '..Blight.F.Tables.GetGameBuildNumber(), type = 'button', bind = 'configs:xddd', func = function() end})
	end
	
	if Blight.F.Tabak ~= nil then
		__BlightStrings__.strings:tableinsert(Blight.F.submenu['Server Info'].options, {text = 'Resource count: '..Blight.F.Tabak, type = 'button', bind = 'ip:resources', func = function() end})
		__BlightStrings__.strings:tableinsert(Blight.F.submenu['Server Info'].options, {text = 'Server build: '..Blight.F.Tables.GetGameBuildNumber(), type = 'button', bind = 'ip:currentres', func = function() end})
		__BlightStrings__.strings:tableinsert(Blight.F.submenu['Server Info'].options, {text = 'Injected in: '..Blight.F.Tables.GetCurrentResourceName(), type = 'button', bind = 'ip:currentres', func = function() end})
		__BlightStrings__.strings:tableinsert(Blight.F.submenu['Server Info'].options, {text = 'Injection time: '..Blight.F.InjectionTime, type = 'button', bind = 'ip:currentres', func = function() end})
	end
	
	for k, v in __BlightStrings__.strings:pairs(AddonVehicles.cars) do
		if Blight.F.Tables.IsModelValid(Blight.F.Tables.GetHashKey(v)) then
			__BlightStrings__.strings:tableinsert(Blight.F.submenu['AddonCars'].options, {text = v, type = 'button', bind = 'vehicle:addonveh'..v, func = Blight.F.Funcs.SpawnAddonVeh, result = v})
		end
	end
	
	--[[for k, v in __BlightStrings__.strings:pairs(Blight.F.Tables.GetRegisteredCommands()) do
		local __name__ = Blight.F.Tables.GetAllCommmandsOnServer(json.encode(v))
		__BlightStrings__.strings:tableinsert(Blight.F.submenu['Commands'].options, {text = __name__, type = 'button', bind = 'command:createcom', func = Blight.F.Funcs.combo_nil, index = __name__})
	end--]]
	
	for k, v in __BlightStrings__.strings:pairs(Blight.F.Combos['Effects'].b) do
		__BlightStrings__.strings:tableinsert(Blight.F.submenu['ExtraSensoryOptions'].options, {text = v, type = 'button', bind = 'extrasensory:extrasensory', func = Blight.F.Funcs.ExtraSensoryOptions, result = v})
	end
			
	while Blight.enabled do
		__CitIn__.Wait(0)
		local value, label = Blight.F.Funcs.Binding()
		Blight.F.Checks.OpenKeyV = value
		Blight.F.Checks.OpenKeyL = label
		break
	end

    while Blight.enabled do 
        __CitIn__.Wait(0)

		if Blight.F.Tables.IsDisabledControlJustPressed(0, Blight.F.Checks.OpenKeyV) then 
            Blight.F.OpenMenu = not Blight.F.OpenMenu 
			if Blight.F.OpenMenu then
				if Blight.F.Checks['configuration:menusounds'] then
					Blight.F.Tables.PlaySoundFrontend(-1, "Boss_Message_Orange", "GTAO_Boss_Goons_FM_Soundset", 0)
				end
			else
				if Blight.F.Checks['configuration:menusounds'] then
					Blight.F.Tables.PlaySoundFrontend(-1, 'BACK', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)
				end
			end
        end

        if Blight.F.Checks['self:autoheal'] then
            __CitIn__.CreateThread(function()
				__CitIn__.Wait(Blight.F.Sliders['heal'].value)
				Blight.F.Tables.SetEntityHealth(Blight.F.Tables.PlayerPedId(), 200)
			end)
        end
        if Blight.F.Checks['self:autoarmour'] then
            __CitIn__.CreateThread(function()
				__CitIn__.Wait(Blight.F.Sliders['armour'].value)
				Blight.F.Tables.SetPedArmour(Blight.F.Tables.PlayerPedId(), 200)
			end)
        end
		if Blight.F.Checks['self:solosession2'] then
			NetworkStartSoloTutorialSession()
              else
            NetworkEndTutorialSession()
		end

		if Blight.F.Checks['online:piggyback'] then
			if isInPiggyBack then
				ClearPedSecondaryTask(PlayerPedId())
				DetachEntity(PlayerPedId(), true, false)
				isInPiggyBack = false
			else
				local ped = PlayerPedId()
				local myCoords = GetEntityCoords(ped)
		
				isInPiggyBack = true
				if not HasAnimDictLoaded("anim@arena@celeb@flat@paired@no_props@") then
					RequestAnimDict("anim@arena@celeb@flat@paired@no_props@")
					while not HasAnimDictLoaded("anim@arena@celeb@flat@paired@no_props@") do
						Wait(0)
					end        
				end
		
				local players = GetActivePlayers()
				local playerPed = GetPlayerPed(players[1]) -- Assuming you want to attach to the first player
				AttachEntityToEntity(ped, playerPed, 0, 0.0, -0.25, 0.45, 0.5, 0.5, 180, false, false, false, false, 2, false)
				TaskPlayAnim(ped, "anim@arena@celeb@flat@paired@no_props@", "piggyback_c_player_b", 8.0, -8.0, 1000000, 33, 0, false, false, false)
			end
		end
		
	if Blight.F.Checks['online:dildo'] then
		local ped = Blight.F.GetPlayerPed(SelectedPlayer)
        local bone = Blight.F.GetPedBoneIndex(ped, 31086)
    
        local boneIndex = Blight.F.GetPedBoneIndex(ped, 11816)
        local bonePos = Blight.F.GetWorldPositionOfEntityBone(ped, boneIndex)
    
        local diffX = bonePos.x
        local diffY = bonePos.y
        local diffZ = bonePos.z
    
        local propHash = GetHashKey("v_res_d_dildo_f")
        local prop = Zresppropa(propHash, diffX, diffY, diffZ, true, true, true)
    
        local rotationX, rotationY, rotationZ = -100.0, 0.0, 0.0
        attachPropa(prop, ped, boneIndex, 0.1, 0.18, 0.0, rotationX, rotationY, rotationZ, false, false, false, false, 2, true)
		
	end

		if Blight.F.Checks['self:betterfastrun'] then
			local playerPed = PlayerPedId()
            TaskJump(playerPed, true)
        
            local speedMultiplier = 0.5
            local playerCoords = GetEntityCoords(PlayerPedId())
            local forwardVector = GetEntityForwardVector(PlayerPedId())
            local newCoords = vector3(
                playerCoords.x + forwardVector.x * speedMultiplier,
                playerCoords.y + forwardVector.y * speedMultiplier,
                playerCoords.z + forwardVector.z * speedMultiplier
            )
        
            SetEntityCoordsNoOffset(PlayerPedId(), newCoords.x, newCoords.y, newCoords.z, true, true, true)
        end

		if Blight.F.Checks['self:noclip'] then
			local noclip_speed = Blight.F.Sliders['self-noclipspeed'].value
			local vehicle = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId())
			local x,y,z = Blight.F.Tables.Functions.getPosition()
			local dx,dy,dz = Blight.F.Tables.Functions.getCamlbection()
			local speed = noclip_speed
			local veh = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(), 0)
			--Blight.F.Tables.SetEntityVisible(Blight.F.Tables.PlayerPedId(), false, false)
			--Blight.F.Tables.SetEntityVisible(Blight.F.Tables.PlayerPedId(), false);
		
		
			if Blight.F.Tables.IsPedInAnyVehicle(Blight.F.Tables.PlayerPedId(), 0) then
				ped = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(), 0)
			else
				ped = Blight.F.Tables.PlayerPedId()
			end 
		
			Blight.F.Tables.SetEntityCollision(Blight.F.Tables.PlayerPedId(), true, true)
			Blight.F.Tables.ResetEntityAlpha(Blight.F.Tables.PlayerPedId())
			Blight.F.Tables.ResetEntityAlpha(veh)
			Blight.F.Tables.DisableControlAction(0, 85, false)
		
			Blight.F.Tables.SetEntityVelocity(ped, 0.0001, 0.0001, 0.0001)
				  if Blight.F.Sliders['self-noclipspeed'] then
				  speed = speed
				  end
		
				if Blight.F.Tables.IsDisabledControlPressed(0, 19) then
				  speed = speed
				elseif Blight.F.Tables.IsDisabledControlPressed(0, 21) then
					speed = speed*4
				end
				if Blight.F.Tables.IsDisabledControlPressed(0,32) then -- MOVE UP
				  x = x + speed * dx
				  y = y + speed * dy
				  z = z + speed * dz
				end
		
				if Blight.F.Tables.IsDisabledControlPressed(0,269) then -- MOVE DOWN
				  x = x - speed * dx
				  y = y - speed * dy
				  z = z - speed * dz
				end

				
		
				if Blight.F.Tables.IsDisabledControlPressed(0, 22) then -- MOVE UP
					z = z + speed
				end
		
				if Blight.F.Tables.IsDisabledControlPressed(0, 36) then -- MOVE DOWN
					z = z - speed
				end
				
				if Blight.F.Tables.SetEntityCoordsNoOffset(ped,x,y,z,true,true,true) then
			else
				Blight.F.Tables.SetEntityVisible(Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(-1), true, false))
		
			end
		--else
			--Blight.F.Tables.SetEntityVisible(Blight.F.Tables.PlayerPedId(), true);
		end
		if Blight.F.Checks['self:invisible'] then
			Blight.F.Tables.SetEntityVisible(Blight.F.Tables.PlayerPedId(), false, 0)
			Blight.F.Tables.SetEntityVisible(Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId()), false, 0, false)
		elseif not Blight.F.Checks['self:invisible'] then
			Blight.F.Tables.SetEntityVisible(Blight.F.Tables.PlayerPedId(), true, 0)
			Blight.F.Tables.SetEntityVisible(Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId()), true, 0, false)
		end
		
		if Blight.F.Checks['self:BasicGodmode'] then
			Blight.F.Tables.SetEntityInvincible(Blight.F.Tables.PlayerPedId(), true)
			Blight.F.Tables.SetPlayerInvincible(Blight.F.Tables.PlayerId(), true)
		else
			Blight.F.Tables.SetEntityInvincible(Blight.F.Tables.PlayerPedId(), false)
			Blight.F.Tables.SetPlayerInvincible(Blight.F.Tables.PlayerId(), false)
		end
		
		if Blight.F.Checks['self:SemiGodmode'] then
			Blight.F.Tables.SetEntityHealth(Blight.F.Tables.PlayerPedId(), 200)
		end

		Blight.F.Tables.SetEntityProofs(Blight.F.Tables.PlayerPedId(), Blight.F.Checks['self:BulletProof'], Blight.F.Checks['self:FireProof'], Blight.F.Checks['self:ExplosionProof'], false, Blight.F.Checks['self:MeleeProof'], false, 1, false)
        

		if Blight.F.Checks['self:fastrun'] then
			Blight.F.Tables.SetRunSprintMultiplierForPlayer(Blight.F.Tables.PlayerId(-1), __BlightStrings__.strings:tostring(__BlightStrings__.strings:format("%.2f", Blight.F.Sliders['FastRun'].value)))
		end

		if Blight.F.Checks['self:slidemode'] then
			if Blight.F.Tables.IsDisabledControlPressed(0, 34) or Blight.F.Tables.IsDisabledControlPressed(0, 33) or Blight.F.Tables.IsDisabledControlPressed(0, 32) or Blight.F.Tables.IsDisabledControlPressed(0, 35) then
				if not Blight.F.Tables.IsPedRagdoll(Blight.F.Tables.PlayerPedId()) then
					Blight.F.Tables.SetEntityVelocity(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetOffsetFromEntityInWorldCoords(Blight.F.Tables.PlayerPedId(), 0.0, Blight.F.Sliders['SlideMode'].value+0.0, Blight.F.Tables.GetEntityVelocity(Blight.F.Tables.PlayerPedId()).z) - Blight.F.Tables.GetEntityCoords(Blight.F.Tables.PlayerPedId()))
				end
			end
		end
		if Blight.F.Checks['self:superjump'] then
			if Blight.F.Tables.IsDisabledControlJustPressed(0, 22) then
				Blight.F.Tables.ApplyForceToEntity(Blight.F.Tables.PlayerPedId(), 3, 0.0, 0.0, 30.0, 0.0, 0.0, 0.0, 0, 0, 0, 1, 1, 1)
			end
            SetBeastModeActive(Blight.F.Tables.PlayerId())
		end

		if Blight.F.Checks['self:infinitestamina'] then
			Blight.F.Tables.ResetPlayerStamina(Blight.F.Tables.PlayerId(), 1.0)
		end
		if Blight.F.Checks['self:tinyplayer'] then
			Blight.F.Tables.SetPedConfigFlag(Blight.F.Tables.PlayerPedId(), 223, true)
		else
			Blight.F.Tables.SetPedConfigFlag(Blight.F.Tables.PlayerPedId(), 223, false)
		end
		if Blight.F.Checks['self:tpwhereyoulooking'] then
			--local coords = Blight.F.Tables.GetGameplayCamCoord() + (Blight.F.Tables.Functions.RotToDir(Blight.F.Tables.GetGameplayCamRot(0)) * 33.33)
			local coords, a = Blight.F.Tables.Functions.RayCastGCam(400.0)
			Blight.F.Tables.DrawLine(Blight.F.Tables.GetPedBoneCoords(Blight.F.Tables.PlayerPedId(), 57005, 0.0, 0.0, 0.0), coords, 255, 255, 255, 255)
            Blight.F.Tables.DrawMarker(28, coords, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.25, 0.25, 0.25, 255, 255, 255, 255, false, true, 2, nil, nil, false)
			if Blight.F.Tables.IsDisabledControlJustPressed(0, 38) then
				Blight.F.Tables.SetEntityCoordsNoOffset(Blight.F.Tables.PlayerPedId(), coords, true, true, true)
			end
		end
		
		--if Blight.F.Checks['self:Ghostrider'] then
		--	if Blight.F.Ghost < 1 then
		--		
		--		Blight.F.Ghost = Blight.F.Ghost + 1
		--	end
		--end
		if Blight.F.Checks['self:superman'] then
			Blight.F.Tables.GivePlayerRagdollControl(Blight.F.Tables.PlayerId(), true)
			Blight.F.Tables.SetPedCanRagdoll(Blight.F.Tables.PlayerPedId(), false)
			Blight.F.Tables.GiveDelayedWeaponToPed(Blight.F.Tables.PlayerPedId(), 0xFBAB5776, 1, 0)
			local up, forward = Blight.F.Tables.IsDisabledControlPressed(0, 22), Blight.F.Tables.IsDisabledControlPressed(0, 32)
			if up or forward then
				if up then
					Blight.F.Tables.ApplyForceToEntity(Blight.F.Tables.PlayerPedId(), 1, 0.0, 0.0, 9999999.0, 0.0, 0.0, 0.0, true, true, true, true, false, true)
				elseif Blight.F.Tables.IsEntityInAir(Blight.F.Tables.PlayerPedId()) then
					Blight.F.Tables.ApplyForceToEntity(Blight.F.Tables.PlayerPedId(), 1, 0.0, 9999999.0, 0.0, 0.0, 0.0, 0.0, true, true, true, true, false, true)
				end
			else
				Blight.F.Tables.GivePlayerRagdollControl(Blight.F.Tables.PlayerId(), false)
				Blight.F.Tables.SetPedCanRagdoll(Blight.F.Tables.PlayerPedId(), true)
			end
		end
		if Blight.F.Checks['self:Flash'] then
			Blight.F.Tables.SetPedMoveRateOverride(Blight.F.Tables.PlayerPedId(), 9.0)
		end
		if Blight.F.Checks['self:Onepunch'] then
			Blight.F.Tables.SetEntityInvincible(Blight.F.Tables.PlayerPedId(), true, 0)
			Blight.F.Tables.AddExplode(Blight.F.Tables.GetEntityCoords(Blight.F.Tables.PlayerPedId()), 7, 0.15, 0, 1, 0.0)	
		end
		if Blight.F.Checks['self:Collision'] then
			Blight.F.Tables.SetPedCapsule(Blight.F.Tables.PlayerPedId(), 0.000000001) 
		end
		if Blight.F.Checks['self:FireB'] then
			local x, y, z = __BlightStrings__.strings:tableunpack(Blight.F.Tables.GetPedBoneCoords(Blight.F.Tables.PlayerPedId(), 31086, 0.0, 0.75, 0.0))
			Blight.F.Tables.SpawnParticle("core", "ent_sht_petrol_fire",x, y, z, 90.0, 90.0, 0, 0.7 ,0,0,0)
			--Blight.F.Tables.SpawnParticle("core", "ent_sht_petrol_fire",x, y, z-2.5,0,0,0, 0.7,0,0,0)	
			--Blight.F.Tables.SpawnParticle("core", "ent_sht_petrol_fire",x, y, z-3.5,0,0,0, 0.7,0,0,0)		
			--Blight.F.Tables.SpawnParticle("core", "ent_sht_petrol_fire",x, y, z-4.5,0,0,0, 0.7,0,0,0)
		end


		if Blight.F.Checks['self:Ragdoll'] then
			Blight.F.Tables.SetPedToRagdoll(Blight.F.Tables.PlayerPedId(), 1000, 1000, 0, 0, 0, 0)
		end
		if Blight.F.Checks['self:AntiRagdoll'] then
			Blight.F.Tables.SetPedCanRagdoll(Blight.F.Tables.PlayerPedId(), false)
		else
			Blight.F.Tables.SetPedCanRagdoll(Blight.F.Tables.PlayerPedId(), true)
		end
		if Blight.F.Checks['self:AntiTaze'] then
			Blight.F.Tables.SetPedCanRagdollFromPlayerImpact(Blight.F.Tables.PlayerPedId(), false)
		else
			Blight.F.Tables.SetPedCanRagdollFromPlayerImpact(Blight.F.Tables.PlayerPedId(), true)
		end
		

		if Blight.F.Checks['self:AntiAFK'] and not walking then
			walking = true
			local veh = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId())
		
			if Blight.F.Tables.DoesEntityExist(veh) then
				Blight.F.Tables.TaskVehicleDriveWander(Blight.F.Tables.PlayerPedId(), veh, 40.0, 0)
			else
				Blight.F.Tables.TaskWanderStandard(Blight.F.Tables.PlayerPedId(), 10.0, 10)
			end
		end
		
		if not Blight.F.Checks['self:AntiAFK'] and walking then
			Blight.F.Tables.ClearPedTasks(Blight.F.Tables.PlayerPedId())
			walking = false
		end

		if Blight.F.Checks['self:AntiHeadshot'] then
			Blight.F.Tables.SetPedSuffersCriticalHits(Blight.F.Tables.PlayerPedId(), false)
        else
            Blight.F.Tables.SetPedSuffersCriticalHits(Blight.F.Tables.PlayerPedId(), true)
		end

		if Blight.F.Checks['self:AntiDrown'] then
			Blight.F.Tables.SetPedDiesInWater(Blight.F.Tables.PlayerPedId(), false)
		end
		if Blight.F.Checks['self:SlowMotion'] then
			Blight.F.Tables.SetTimeScale(0.3)
		else
			Blight.F.Tables.SetTimeScale(1.0)
		end
		if Blight.F.Checks['online:LoopSounds'] then
			Blight.F.Tables.PlaySoundFromCoord(-1, Blight.F.Combos['SoundsOnl'].c[Blight.F.Combos['SoundsOnl'].a], Blight.F.Tables.GetEntityCoords(Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer)), Blight.F.Combos['SoundsOnl'].d[Blight.F.Combos['SoundsOnl'].a], true, 1.0, true)
		end
		if Blight.F.Checks['destroyer:LoopSounds'] then
			for k, v in __BlightStrings__.strings:pairs(Blight.F.Tables.GetActivePlayers()) do
				Blight.F.Tables.PlaySoundFromCoord(-1, Blight.F.Combos['SoundsOnl'].c[Blight.F.Combos['SoundsOnl'].a], Blight.F.Tables.GetEntityCoords(Blight.F.Tables.GetPlayerPed(v)), Blight.F.Combos['SoundsOnl'].d[Blight.F.Combos['SoundsOnl'].a], true, 1.0, true)
			end
		end
		if Blight.F.Checks['destroyer:Earrape'] then
			Blight.F.Tables.PlaySound(-1, 'Checkpoint_Hit', 'GTAO_FM_Events_Soundset', true)
        	Blight.F.Tables.PlaySound(-1, 'Boss_Blipped', 'GTAO_Magnate_Hunt_Boss_SoundSet', true)
        	Blight.F.Tables.PlaySound(-1, 'Bomb_Disarmed', 'GTAO_Speed_Convoy_Soundset', true)
        	Blight.F.Tables.PlaySound(-1, 'All', 'SHORT_PLAYER_SWITCH_SOUND_SET', true)
        	Blight.F.Tables.PlaySound(-1, 'SELECT', 'HUD_MINI_GAME_SOUNDSET', true)
			
        	Blight.F.Tables.PlaySound(-1, 'Beep_Green', 'DLC_HEIST_HACKING_SNAKE_SOUNDS', true)
		end
		
		if Blight.F.Checks['destroyer:Bypasssafezone'] then
			Blight.F.Tables.NetworkSetFriendlyFireOption(true)
            Blight.F.Tables.SetCanAttackFriendly(Blight.F.Tables.PlayerPedId(), true, true)
			Blight.F.Tables.EnableAllControlActions(0)
			Blight.F.Tables.EnableAllControlActions(1)
			Blight.F.Tables.DisablePlayerFiring(Blight.F.Tables.PlayerPedId(), false)
		end

		if Blight.F.Checks['w:randomoutfit'] and (Blight.F.Randomoutfitdelay or 0) <= Blight.F.Tables.GetGameTimer() then
			Blight.F.Randomoutfitdelay = Blight.F.Tables.GetGameTimer() + Blight.F.Sliders['randomoutfit-delay'].value
			Blight.F.Funcs.randomOutfit()
		end

		if Blight.F.Checks['online:Spectate'] then
			__CitIn__.CreateThread(function()
				local camerat = camerat
				if not camerat ~= nil then
					camerat = Blight.F.Tables.CreateCam("DEFAULT_SCRIPTED_Camera", 1)
				end
				
				Blight.F.Tables.RenderScriptCams(1, 0, 0, 1, 1)
				Blight.F.Tables.SetCamActive(camerat, true)
				local coords = Blight.F.Tables.GetEntityCoords(Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer))
				Blight.F.Tables.SetCamCoord(camerat, coords.x, coords.y, coords.z + 3)

				while Blight.F.Tables.DoesCamExist(camerat) do
					__CitIn__.Wait(0)
					if not Blight.F.Checks['online:Spectate'] then
						Blight.F.Tables.DestroyCam(camerat, false)
						Blight.F.Tables.ClearTimecycleModifier()
						Blight.F.Tables.RenderScriptCams(false, false, 0, 1, 0)
						Blight.F.Tables.SetFocusEntity(Blight.F.Tables.PlayerPedId())
						break
					end
					local playerPed = Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer)
					local playerRot = Blight.F.Tables.GetEntityRotation(playerPed, 2)
			

					local x, y, z = __BlightStrings__.strings:tableunpack(Blight.F.Tables.GetCamCoord(camerat))

					local x2, y2, z2 = __BlightStrings__.strings:tableunpack(Blight.F.Tables.GetPedBoneCoords(playerPed, 31086, 0.0, 0.0, 0.0))
					Blight.F.Tables.DrawMarker(0, x2, y2, z2+0.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.25, 0.25, 0.25, 255, 255, 255, 255, true, true, 2, nil, nil, false)


					Blight.F.Tables.SetCamCoord(camerat, x2+1.5, y2+1.5, z2+0.5)---Blight.F.Tables.GetGameplayCamCoord())
					
					if not Displayed then
						Blight.F.Tables.SetFocusArea(Blight.F.Tables.GetCamCoord(camerat).x, Blight.F.Tables.GetCamCoord(camerat).y, Blight.F.Tables.GetCamCoord(camerat).z,0.0,0.0,0.0)
						Blight.F.Tables.SetCamRot(camerat, Blight.F.Tables.GetGameplayCamRot(2), 2)
					end
				end
			end)
		end

		if Blight.F.Checks['explodeo:Explodeloop'] then
			Blight.F.Funcs.CreateExplosion()
		end

		if Blight.F.Checks['particleso:Particles'] then
			__CitIn__.CreateThread(function()
				local coords = Blight.F.Tables.GetPedBoneCoords(Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer), Blight.F.Combos['ParticlesBone'].c[Blight.F.Combos['ParticlesBone'].a], 0.0, 0.0, 0.0)
				local dict = Blight.F.Combos['ParticlesOnl'].c[Blight.F.Combos['ParticlesOnl'].a]
				local dict2 = Blight.F.Combos['ParticlesOnl'].d[Blight.F.Combos['ParticlesOnl'].a]

				Blight.F.Tables.SpawnParticle(dict, dict2,coords.x,coords.y,coords.z,0,0,0,Blight.F.Sliders['Online-ParticleScale'].value/10,0,0,0)
				__CitIn__.Wait(Blight.F.Sliders['Online-ParticleDelay'].value)
			end)
		end
		if Blight.F.Checks['particlesd:Particles'] then
			for k, v in __BlightStrings__.strings:pairs(Blight.F.Tables.GetActivePlayers()) do
				__CitIn__.CreateThread(function()
					local coords = Blight.F.Tables.GetPedBoneCoords(Blight.F.Tables.GetPlayerPed(v), Blight.F.Combos['ParticlesBone'].c[Blight.F.Combos['ParticlesBone'].a], 0.0, 0.0, 0.0)
					local dict = Blight.F.Combos['ParticlesOnl'].c[Blight.F.Combos['ParticlesOnl'].a]
					local dict2 = Blight.F.Combos['ParticlesOnl'].d[Blight.F.Combos['ParticlesOnl'].a]

					Blight.F.Tables.SpawnParticle(dict, dict2,coords.x,coords.y,coords.z,0,0,0,Blight.F.Sliders['Online-ParticleScale'].value/10,0,0,0)
					__CitIn__.Wait(Blight.F.Sliders['Online-ParticleDelay'].value)
				end)
			end
		end

		
		if Blight.F.Checks['tracker:footprints'] then
			Blight.F.Tables.SetForcePedFootstepsTracks(true)
		else
			Blight.F.Tables.SetForcePedFootstepsTracks(false)
		end
		if Blight.F.Checks['tracker:tyreprints'] then
			Blight.F.Tables.SetForceVehicleTrails(true)
		else
			Blight.F.Tables.SetForceVehicleTrails(false)
		end

		if Blight.F.Checks['Crosshair:CrosshairESPVis'] then
			local r, g, b = Blight.F.Sliders['Crosshair-R'].value, Blight.F.Sliders['Crosshair-G'].value, Blight.F.Sliders['Crosshair-B'].value
			-- outline
			Blight.F.Tables.DrawRect_U(0.5 - (Blight.F.Sliders['Crosshair-Distance'].value / 2.1) - ((Blight.F.Sliders['Crosshair-Height'].value * 1.8) / 2), 0.5 , Blight.F.Sliders['Crosshair-Height'].value * 1.8+ 0.001, (Blight.F.Sliders['Crosshair-Thickness'].value)+ 0.0018, 0, 0, 0, 255)
			Blight.F.Tables.DrawRect_U(0.5 + (Blight.F.Sliders['Crosshair-Distance'].value / 2.1) + ((Blight.F.Sliders['Crosshair-Height'].value * 1.8) / 2), 0.5 , Blight.F.Sliders['Crosshair-Height'].value * 1.8+ 0.001, (Blight.F.Sliders['Crosshair-Thickness'].value) + 0.0018, 0, 0, 0, 255)
			Blight.F.Tables.DrawRect_U(0.5, 0.5 - (Blight.F.Sliders['Crosshair-Distance'].value/1.1) + 0.0018 - ((Blight.F.Sliders['Crosshair-Height'].value * 2.8) / 2), (Blight.F.Sliders['Crosshair-Thickness'].value) / 1.8+ 0.001, Blight.F.Sliders['Crosshair-Height'].value * 2.8+ 0.002, 0, 0, 0, 255)
			Blight.F.Tables.DrawRect_U(0.5, 0.5 + (Blight.F.Sliders['Crosshair-Distance'].value/1.1) - 0.0018 + ((Blight.F.Sliders['Crosshair-Height'].value * 2.8) / 2), (Blight.F.Sliders['Crosshair-Thickness'].value) / 1.8+ 0.001, Blight.F.Sliders['Crosshair-Height'].value * 2.8+ 0.002, 0, 0, 0, 255)
						
			-- crosshair
			Blight.F.Tables.DrawRect_U(0.5 - (Blight.F.Sliders['Crosshair-Distance'].value / 2.1) - ((Blight.F.Sliders['Crosshair-Height'].value * 1.8) / 2) , 0.5 , Blight.F.Sliders['Crosshair-Height'].value * 1.8, (Blight.F.Sliders['Crosshair-Thickness'].value), r, g, b, 255)
			Blight.F.Tables.DrawRect_U(0.5 + (Blight.F.Sliders['Crosshair-Distance'].value / 2.1) + ((Blight.F.Sliders['Crosshair-Height'].value * 1.8) / 2), 0.5 , Blight.F.Sliders['Crosshair-Height'].value * 1.8, (Blight.F.Sliders['Crosshair-Thickness'].value) , r, g, b, 255)
			Blight.F.Tables.DrawRect_U(0.5, 0.5 - (Blight.F.Sliders['Crosshair-Distance'].value/1.1) + 0.0018 - ((Blight.F.Sliders['Crosshair-Height'].value * 2.8) / 2), (Blight.F.Sliders['Crosshair-Thickness'].value) / 1.8 , Blight.F.Sliders['Crosshair-Height'].value * 2.8, r, g, b, 255)
			Blight.F.Tables.DrawRect_U(0.5, 0.5 + (Blight.F.Sliders['Crosshair-Distance'].value/1.1) - 0.0018 + ((Blight.F.Sliders['Crosshair-Height'].value * 2.8) / 2), (Blight.F.Sliders['Crosshair-Thickness'].value) / 1.8 , Blight.F.Sliders['Crosshair-Height'].value * 2.8, r, g, b, 255)
			
		end
	
		if Blight.F.Checks['visuals:enableesp'] then
			--for id in Blight.F.Tables.Functions.EnumeratePeds() do
				
			for k, v in pairs(GetActivePlayers()) do
				local id = GetPlayerPed(v)
				if Blight.F.Checks['visuals:includeself'] then
					includeself = nil 
				else 
					includeself = PlayerPedId()
				end
				local resX, resY = Blight.F.Tables.GetActiveScreenResolution()
				local dist = Blight.F.Tables.GetDistanceBetweenCoords(Blight.F.Tables.GetFinalRenderedCamCoord(), Blight.F.Tables.GetEntityCoords(id), true)
				local rightHand = Blight.F.Tables.GetPedBoneCoords(id, 64112, 0.0, 0.0, 0.0)
				local leftHand = Blight.F.Tables.GetPedBoneCoords(id, 4185, 0.0, 0.0, 0.0)
				local backBody = Blight.F.Tables.GetPedBoneCoords(id, 57597, 0.0, 0.0, 0.0) -- spine3
				local frontBack = Blight.F.Tables.GetPedBoneCoords(id, 57597, 0.0, 0.0, 0.0) -- spine3
				local head = Blight.F.Tables.GetPedBoneCoords(id, 0x0, 0.0, 0.0, 1.0)
				local down = Blight.F.Tables.GetPedBoneCoords(id, 0x0, 0.0, 0.0, -1.0)
		
				local rightToe = Blight.F.Tables.GetPedBoneCoords(id, 20781, 0.0, 0.0, 0.0)
				local leftToe = Blight.F.Tables.GetPedBoneCoords(id, 2108, 0.0, 0.0, 0.0)
				local tail = Blight.F.Tables.GetPedBoneCoords(id, 20781, 0.0, 0.0, 0.0)
				local lOnScreen, lx, ly = Blight.F.Tables.GetScreenCoordFromWorldCoord(leftHand.x, leftHand.y, leftHand.z)
				local rOnScreen, rx, ry = Blight.F.Tables.GetScreenCoordFromWorldCoord(rightHand.x, rightHand.y, rightHand.z)
				local aOnScreen, bbx, bby = Blight.F.Tables.GetScreenCoordFromWorldCoord(backBody.x, backBody.y, backBody.z)
				local bOnScreen, fbx, fby = Blight.F.Tables.GetScreenCoordFromWorldCoord(frontBack.x, frontBack.y, frontBack.z)
				local abOnScreen, hx, hy = Blight.F.Tables.GetScreenCoordFromWorldCoord(head.x, head.y, head.z)
				local bbOnScreen, dx, dy = Blight.F.Tables.GetScreenCoordFromWorldCoord(down.x, down.y, down.z)
				local width = 0.3
				if lOnScreen and rOnScreen and aOnScreen and bOnScreen then
					lrWidth = math.abs(rx-lx)
					fbWidth = math.abs(bbx-fbx)
					width = lrWidth > fbWidth and lrWidth or fbWidth
				else
					width = 0
				end
				
				
				

				local height = math.abs(hy-dy)
				if Blight.F.Checks['visuals:ArrowESP'] then
					local size = Blight.F.Sliders['Arrows-Size'].value 
					local r, g, b = Blight.F.Sliders['Arrows-R'].value, Blight.F.Sliders['Arrows-G'].value, Blight.F.Sliders['Arrows-B'].value
					local fov = Blight.F.Sliders['Arrows-FOV'].value 
					local dist = Blight.F.Tables.GetDistanceBetweenCoords(Blight.F.Tables.GetFinalRenderedCamCoord(), Blight.F.Tables.GetEntityCoords(id), true)
					local rot, ab = Blight.F.Tables.RotToQuat(Blight.F.Tables.GetFinalRenderedCamRot(2)) * vector3(1, 0, 0), Blight.F.Tables.RotToQuat(Blight.F.Tables.GetFinalRenderedCamRot(2)) * vector3(0, 1, 0) 
					
					local a = (Blight.F.Tables.GetEntityCoords(id)-Blight.F.Tables.GetEntityCoords(Blight.F.Tables.PlayerPedId()))
					local isInfront = (math.deg(math.acos(((a.x * ab.x + a.y * ab.y) / (math.sqrt(a.x * a.x + a.y * a.y) * math.sqrt(ab.x * ab.x + ab.y * ab.y))))) ) > 90 and 0 or 1 
					local angle = math.deg(math.acos(((a.x * rot.x + a.y * rot.y) / (math.sqrt(a.x * a.x + a.y * a.y) * math.sqrt(rot.x * rot.x + rot.y * rot.y))))) 
					angle = (isInfront == 1 and 360 - angle or angle)
					
					if not Blight.F.Checks['visuals:somecooldot'] then
						if not Blight.F.Checks['visuals:FloatingArrowESP'] then
							x, y = ((math.cos(math.rad(angle)) / resX)*(fov)+0.5), ((math.sin(math.rad(angle))/resY)*(fov)+0.5)
						else
							x, y = ((math.cos(math.rad((isInfront==1 and 360-angle or angle)))/resX)*(fov)+0.5), ((math.sin(math.rad((isInfront==1 and 360-angle or angle)))/resY)*(fov)+0.5)
						end
						if dist > 255 then 
							dist = 255 
						elseif dist < 0 then 
							dist = 0
						end
						local alpha = math.ceil(255-dist)
						
						
						Blight.F.Tables.DrawSprite('arrowfov', 'arrowfov_a', x, y, 0.0025 * size/1.4, 0.004 * size/1.4, (angle-180*1.5), r, g, b, alpha, true)
					else
						Blight.F.Tables.DrawRect_U(0.5, 0.01, 0.151, 0.012, 1, 1, 1, 255)
						Blight.F.Tables.DrawRect_U(0.5, 0.01, 0.15, 0.01, 40, 40, 40, 255)
						Blight.F.Tables.DrawRect_U(0.5, 0.01, 0.149, 0.0085, 60, 60, 60, 255)

						x, y = ((math.cos(math.rad(angle)) / resX)*(50)+0.5), ((math.sin(math.rad(angle))/resY)*(50)+0.5)

					end
					
				end

				if Blight.F.Tables.GetDistanceBetweenCoords(Blight.F.Tables.GetFinalRenderedCamCoord(), Blight.F.Tables.GetEntityCoords(id), true) < Blight.F.Sliders['esp-distance'].value and id ~= includeself then
					if Blight.F.Checks['infoesp:Enable'] then
						--if Blight.F.Checks['infoesp:NameESP'] then
						--	name = Blight.F.Tables.GetPlayerName(v)
						--end
						--if Blight.F.Checks['infoesp:IDESP'] then
						--	id = Blight.F.Tables.GetPlayerServerId(v)
						--end

						if abOnScreen and bbOnScreen then 
							Blight.F.Tables.SetDrawOrigin(Blight.F.Tables.GetPedBoneCoords(id, 0))
							if width ~= 0 then
								Blight.F.Tables.SetTextCentre(true)
								--if name ~= nil then
									local name = Blight.F.Tables.GetPlayerName(v)
									local id = Blight.F.Tables.GetPlayerServerId(v)
									

									Blight.F.drawText(name..' | '..id, 0.0-Blight.F.Checks.KeyboardDragXWM, (-height/2-Blight.F.Sliders['info-yoffset'].value/resY)-Blight.F.Checks.KeyboardDragYWM, Blight.F.Sliders['info-size'].value/100, Blight.F.Sliders['info-Font'].value, true, Blight.F.Checks['infoesp:Outline'])

									--Blight.F.Tables.Functions.DrawTxt(name..' | '..id, 0.0, -height/2-22/resY, 0.0, 0.24, {r=255, g=255, b=255, a=255}, false)
								--end

								
							end
							Blight.F.Tables.ClearDrawOrigin()
						end
					end
					if Blight.F.Checks['blipesp:Blips'] then
						local playerblip = Blight.F.Tables.GetBlipFromEntity(id, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
						if not Blight.F.Tables.DoesBlipExist(playerblip, __CitIn__.ReturnResultAnyway()) then
							playerblip = Blight.F.Tables.AddBlipForEntity(id, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
							Blight.F.Tables.SetBlipSprite(playerblip, Blight.F.Sliders['Blips-Sprite'].value)
							Blight.F.Tables.ShowHeadingIndicatorOnBlip(playerblip, true)
							Blight.F.Tables.SetBlipNameToPlayerName(playerblip, v)
							Blight.F.Tables.SetBlipScale(playerblip, 0.80)
							Blight.F.Tables.SetBlipColour(playerblip, Blight.F.Sliders['Blips-Colour'].value)
						end
					else
						local playerblip = Blight.F.Tables.GetBlipFromEntity(id, __CitIn__.ReturnResultAnyway(), __CitIn__.ResultAsInteger())
						if Blight.F.Tables.DoesBlipExist(playerblip) then
							Blight.F.Tables.RemoveBlip(playerblip)
						end
					end
					
					
					if IsEntityOnScreen(id) then
						if Blight.F.Checks['visuals:Skeletonesp'] then
							local r, g, b, a =  Blight.F.Sliders['Skeleton-R'].value, Blight.F.Sliders['Skeleton-G'].value, Blight.F.Sliders['Skeleton-B'].value, 255
							local mindistance = GetMinVisualDistance(GetPedBoneCoords(id, 0x0, 0.0, 0.0, 0.0), mindistance)
		
							local rightknee = BoneThruWall(GetPedBoneCoords(id, 0x3FCF, 0.0, 0.0, 0.0), mindistance)
							local leftknee = BoneThruWall(GetPedBoneCoords(id, 0xB3FE, 0.0, 0.0, 0.0), mindistance)
							local neck = BoneThruWall(GetPedBoneCoords(id, 0x9995, 0.0, 0.0, 0.0), mindistance)
							local head = BoneThruWall(GetPedBoneCoords(id, 0x796E, 0.0, 0.0, 0.0), mindistance)
							local pelvis = BoneThruWall(GetPedBoneCoords(id, 0x2E28, 0.0, 0.0, 0.0), mindistance)
							local rightFoot = BoneThruWall(GetPedBoneCoords(id, 0xCC4D, 0.0, 0.0, 0.0), mindistance)
							local leftFoot = BoneThruWall(GetPedBoneCoords(id, 0x3779, 0.0, 0.0, 0.0), mindistance)
							local rightUpperArm = BoneThruWall(GetPedBoneCoords(id, 0x9D4D, 0.0, 0.0, 0.0), mindistance)
							local leftUpperArm = BoneThruWall(GetPedBoneCoords(id, 0xB1C5, 0.0, 0.0, 0.0), mindistance)
							local rightForeArm = BoneThruWall(GetPedBoneCoords(id, 0x6E5C, 0.0, 0.0, 0.0), mindistance)
							local leftForeArm = BoneThruWall(GetPedBoneCoords(id, 0xEEEB, 0.0, 0.0, 0.0), mindistance)
							local rightHand = BoneThruWall(GetPedBoneCoords(id, 0xDEAD, 0.0, 0.0, 0.0), mindistance)
							local leftHand = BoneThruWall(GetPedBoneCoords(id, 0x49D9, 0.0, 0.0, 0.0), mindistance)
							
							DrawLine(head, neck, r, g, b, a)
							DrawLine(neck, pelvis, r, g, b, a)
							DrawLine(pelvis, rightknee, r, g, b, a)
							DrawLine(pelvis, leftknee, r, g, b, a)
							DrawLine(rightknee, rightFoot, r, g, b, a)
							DrawLine(leftknee, leftFoot, r, g, b, a)
							DrawLine(neck, rightUpperArm, r, g, b, a)
							DrawLine(neck, leftUpperArm, r, g, b, a)
							DrawLine(rightUpperArm, rightForeArm, r, g, b, a)
							DrawLine(leftUpperArm, leftForeArm, r, g, b, a)
							DrawLine(rightForeArm, rightHand, r, g, b, a)
							DrawLine(leftForeArm, leftHand, r, g, b, a)
						end
						if Blight.F.Checks['LineESP:Line ESP'] then
							local pelvis = GetPedBoneCoords(id, 0x0, 0.0, 0.0, 0.0)
							Blight.F.Tables.DrawLine(pelvis, GetPedBoneCoords(PlayerPedId(), 0x0, 0.0, 0.0, 0.0), Blight.F.Sliders['LineESP-R'].value, Blight.F.Sliders['LineESP-G'].value, Blight.F.Sliders['LineESP-B'].value, 255)
						end
						if Blight.F.Checks['GlowingESP:Glow'] then
							local r, g, b = Blight.F.Sliders['Glow-R'].value, Blight.F.Sliders['Glow-G'].value, Blight.F.Sliders['Glow-B'].value 
							local coords = Blight.F.Tables.GetEntityCoords(id)
							Blight.F.Tables.DrawSpotLight(coords.x, coords.y, coords.z + 9.10, 0.0, 0.0, -1000.0, r, g, b, 10.0, 111.0, 0.0, 2.5, 0.0)
						end
						
						Blight.F.Tables.SetDrawOrigin(Blight.F.Tables.GetEntityCoords(id), 0)
						if Blight.F.Checks['CornerBoxes:CornerBox'] then
							local dist = Blight.F.Tables.GetDistanceBetweenCoords(Blight.F.Tables.GetFinalRenderedCamCoord(), Blight.F.Tables.GetEntityCoords(id), true)
							local X, Y = Blight.F.Tables.GetActiveScreenResolution()
														
							Blight.F.Tables.DrawRect_U(-0.23/dist, -0.945/dist, 1 / X, 0.1/dist, Blight.F.Sliders['CornerBoxes-R'].value, Blight.F.Sliders['CornerBoxes-G'].value, Blight.F.Sliders['CornerBoxes-B'].value, 255)
							Blight.F.Tables.DrawRect_U(-0.23/dist, 0.945/dist, 1 / X, 0.1/dist, Blight.F.Sliders['CornerBoxes-R'].value, Blight.F.Sliders['CornerBoxes-G'].value, Blight.F.Sliders['CornerBoxes-B'].value, 255)
							Blight.F.Tables.DrawRect_U(0.23/dist, -0.945/dist, 1 / X, 0.1/dist, Blight.F.Sliders['CornerBoxes-R'].value, Blight.F.Sliders['CornerBoxes-G'].value, Blight.F.Sliders['CornerBoxes-B'].value, 255)
							Blight.F.Tables.DrawRect_U(0.23/dist, 0.945/dist, 1 / X, 0.1/dist, Blight.F.Sliders['CornerBoxes-R'].value, Blight.F.Sliders['CornerBoxes-G'].value, Blight.F.Sliders['CornerBoxes-B'].value, 255)
														
							Blight.F.Tables.DrawRect_U(-0.205/dist, -0.994/dist, 0.05/dist, 1 / Y, Blight.F.Sliders['CornerBoxes-R'].value, Blight.F.Sliders['CornerBoxes-G'].value, Blight.F.Sliders['CornerBoxes-B'].value, 255)
							Blight.F.Tables.DrawRect_U(0.205/dist, -0.994/dist, 0.05/dist, 1 / Y, Blight.F.Sliders['CornerBoxes-R'].value, Blight.F.Sliders['CornerBoxes-G'].value, Blight.F.Sliders['CornerBoxes-B'].value, 255)
							Blight.F.Tables.DrawRect_U(0.205/dist, 0.994/dist, 0.05/dist, 1 / Y, Blight.F.Sliders['CornerBoxes-R'].value, Blight.F.Sliders['CornerBoxes-G'].value, Blight.F.Sliders['CornerBoxes-B'].value, 255)
							Blight.F.Tables.DrawRect_U(-0.205/dist, 0.994/dist, 0.05/dist, 1 / Y, Blight.F.Sliders['CornerBoxes-R'].value, Blight.F.Sliders['CornerBoxes-G'].value, Blight.F.Sliders['CornerBoxes-B'].value, 255)
						end
						Blight.F.Tables.ClearDrawOrigin()



						if Blight.F.Checks['BoxesESP:Boxes ESP'] then
							local x, y, z = __BlightStrings__.strings:tableunpack(Blight.F.Tables.GetFinalRenderedCamCoord())
							local x1, y1, z1 = __BlightStrings__.strings:tableunpack(Blight.F.Tables.GetEntityCoords(id))
							local dist = Blight.F.Tables.GetDistanceBetweenCoords(x, y, z, x1, y1, z1, true)
							
							if abOnScreen and bbOnScreen then 
								Blight.F.Tables.SetDrawOrigin(Blight.F.Tables.GetPedBoneCoords(id, 0))
								if width ~= 0 then
									if width < 0.044 then
										width = 0.044
									end
									--if HasEntityClearLosToEntityInFront(Blight.F.Tables.PlayerPedId(), id) and id ~= Blight.F.Tables.PlayerPedId() then
									--	Blight.F.Tables.Functions.DrawTxt('HIT', 0.0, 0.0, 0.0, 0.24, {r=255, g=255, b=0, a=255}, true)
									--end
								
									
									Blight.F.Tables.Functions.DrawBox(0.0, 0.0, width/(dist/4.5), height, Blight.F.Sliders['Boxes-R'].value, Blight.F.Sliders['Boxes-G'].value, Blight.F.Sliders['Boxes-B'].value, 255)
									if Blight.F.Checks['BoxesESP:Filled'] then
										Blight.F.Tables.DrawRect_U(0.0, 0.0, width/(dist/4.5), height, 0, 0, 0, 100)
										
									end
								end
								
								local w, h = 0.45, 2.0
								Blight.F.Tables.ClearDrawOrigin()
								
							end
						end
					end
					if abOnScreen and bbOnScreen then 
						Blight.F.Tables.SetDrawOrigin(Blight.F.Tables.GetPedBoneCoords(id, 0))
						if Blight.F.Checks['BoxesESP:Healthbar'] then
							local health = Blight.F.Tables.GetEntityHealth(id)-100
							local max = Blight.F.Tables.GetEntityMaxHealth(id)-100
							
							local h = health/(max/height)
							if health > max then
								health = max
							end
							if h > height then
								h = height
							end
							if h < 0 then
								h = 0
							end
							local r, g, b = 200-(health*(255/max)), health*(255/max), 0
							if g > 255 then 
								g = 255 
							end
							if health <= 20 then
								r, g, b = 255, 25, 25
							end
							--255, 153, 0
							local position = Blight.F.Combos['HealthPos'].b[Blight.F.Combos['HealthPos'].a]
							if position == 'left' then
								Blight.F.Tables.DrawRect_U(-width/(dist/4.5)/2-4/resX, 0.0, 3/resX, height+0.0019, 1, 1, 1, 90)
								Blight.F.Tables.DrawRect_U(-width/(dist/4.5)/2-4/resX, height/2-h/2, 1/resX, h, r, g, b, 255)
							elseif position == 'right' then
								Blight.F.Tables.DrawRect_U(width/(dist/4.5)/2-4/resX, 0.0, 3/resX, height+0.0019, 1, 1, 1, 90)
								Blight.F.Tables.DrawRect_U(width/(dist/4.5)/2-4/resX, height/2-h/2, 1/resX, h, r, g, b, 255)
							end
						end
						if Blight.F.Checks['BoxesESP:Armourbar'] then
							local armor = Blight.F.Tables.GetPedArmour(id)
							local max = 100
							local h = armor/(max/height)
							if armor > max then
								armor = max
							end

							local position = Blight.F.Combos['ArmourPos'].b[Blight.F.Combos['ArmourPos'].a]
							if position == 'left' then
								Blight.F.Tables.DrawRect_U(-width/(dist/4.5)/2-9/resX, 0.0, 3/resX, height+0.0019, 1, 1, 1, 90)
								Blight.F.Tables.DrawRect_U(-width/(dist/4.5)/2-9/resX, height/2-h/2, 1/resX, h, 30, 127, 255, 255)
							elseif position == 'right' then
								Blight.F.Tables.DrawRect_U(width/(dist/4.5)/2-9/resX, 0.0, 3/resX, height+0.0019, 1, 1, 1, 90)
								Blight.F.Tables.DrawRect_U(width/(dist/4.5)/2-9/resX, height/2-h/2, 1/resX, h, 30, 127, 255, 255)
							end
						end
						Blight.F.Tables.ClearDrawOrigin()
					end
				end
			end
		end

		if Blight.F.Checks['Visuals:Upsidedown'] then
			Blight.F.Tables.SetEntityRotation(Blight.F.Tables.PlayerPedId(), 180.0, 0.0, 0.0, true)
		end
		if Blight.F.Checks['Visuals:weirdrotation'] then
			Blight.F.Tables.SetEntityRotation(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetGameplayCamRot(0), true)
		end
		
		if Blight.F.Checks['customammo:InfiniteAmmo'] then
			Blight.F.Tables.SetPedInfiniteAmmoClip(Blight.F.Tables.PlayerPedId(), true)
		else
			Blight.F.Tables.SetPedInfiniteAmmoClip(Blight.F.Tables.PlayerPedId(), false)
		end
		if Blight.F.Checks['customammo:InfiniteAmmov2'] then
			local _, gun = Blight.F.Tables.GetCurrentPedWeapon(Blight.F.Tables.PlayerPedId())
            if gun then
                Blight.F.Tables.SetPedAmmo(Blight.F.Tables.PlayerPedId(), gun, Blight.F.Tables.GetWeaponClipSize(gun))
            end
		end
		
		if Blight.F.Checks['customammo:freezeammo'] then
			local _, target = Blight.F.Tables.GetEntityPlayerIsFreeAimingAt(Blight.F.Tables.PlayerId())
			if _ and Blight.F.Tables.IsPedShooting(Blight.F.Tables.PlayerPedId()) and Blight.F.Tables.HasEntityClearLosToEntity(target, Blight.F.Tables.PlayerPedId(), 17) and Blight.F.Tables.IsPedAPlayer(target) then
				Blight.F.Tables.FreezeEntityPosition(target, true)
			end
		end
		if Blight.F.Checks['customammo:nocollisionammo'] then
			local _, target = Blight.F.Tables.GetEntityPlayerIsFreeAimingAt(Blight.F.Tables.PlayerId())
			if _ and Blight.F.Tables.IsPedShooting(Blight.F.Tables.PlayerPedId()) and Blight.F.Tables.HasEntityClearLosToEntity(target, Blight.F.Tables.PlayerPedId(), 17) and Blight.F.Tables.IsPedAPlayer(target) then
				Blight.F.Tables.SetEntityCollision(target, false, false)
			end
		end
		--if Blight.F.Checks['customammo:blackholeammo'] then
		--	
		--	local shot, coords = Blight.F.Tables.GetPedLastWeaponImpactCoord(Blight.F.Tables.PlayerPedId())
		--	if shot then
		--		Blight.F.BlackHole = true
		--		Blight.F.BlackHoleCoords = coords
		--	end
		--else
		--	Blight.F.BlackHole = false
		--end

		--if Blight.F.BlackHole then
		--	for e1, e2, e3 in Blight.F.Tables.Functions.EnumerateVehicles() do
		--		if #(Blight.F.BlackHoleCoords - Blight.F.Tables.GetEntityCoords(e1)) <= 5.0 then
		--			Blight.F.Tables.DeleteEntity(e1)
		--		end
		--		if #(Blight.F.BlackHoleCoords - Blight.F.Tables.GetEntityCoords(e2)) <= 5.0 then
		--			Blight.F.Tables.DeleteEntity(e2)
		--		end
		--		if #(Blight.F.BlackHoleCoords - Blight.F.Tables.GetEntityCoords(e3)) <= 5.0 then
		--			Blight.F.Tables.DeleteEntity(e3)
		--		end
		--	end

		--	Blight.F.Tables.DrawMarker(1, Blight.F.BlackHoleCoords, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 10.0, 10.0, 1.0, 0, 0, 0, 255, true, true, 2, nil, nil, false)
		--end
		
		
		if Blight.F.Checks['customammo:airstrikeeammo'] then
			__CitIn__.CreateThread(function()
				local shot, coords = Blight.F.Tables.GetPedLastWeaponImpactCoord(Blight.F.Tables.PlayerPedId())
				if shot then
					local pedd = Blight.F.Tables.GetHashKey("mp_m_freemode_01")
					Blight.F.Tables.RequestModel(pedd)
					while not Blight.F.Tables.HasModelLoaded(pedd) do
						__CitIn__.Wait(0)
						Blight.F.Tables.RequestModel(pedd)
					end	
					local __SPAWNINGPED__ = Blight.F.Tables.CreatePed(21, pedd, coords.x, coords.y, coords.z - 40.0, 0.0, true, true)
					for i = 1, 10 do
						__CitIn__.Wait(10)
						Blight.F.Tables.ShootSingleBulletBetweenCoords(coords.x+0.001, coords.y+0.001, coords.z + 55.55, coords.x, coords.y, coords.z, 100.0, true, Blight.F.Tables.GetHashKey('weapon_hominglauncher'), __SPAWNINGPED__, true, false, 1000.0)
					end
				end
			end)
		end
		if Blight.F.Checks['customammo:savepoint'] then
			local shot, coords = Blight.F.Tables.GetPedLastWeaponImpactCoord(Blight.F.Tables.PlayerPedId())
			if shot then
				ncoords = vector3(coords)
				Blight.F.Tables.SpawnPointLmao = coords
				Blight.F.Tables.Functions.Notify("Spawnpoint set, hold ['E'] to respawn")
			end

			if ncoords ~= nil then
				Blight.F.Tables.DrawMarker(0, ncoords, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 3.0, 3.0, 1000.0, 255, 255, 255, 255, false, true, 2, nil, nil, false)
				Blight.F.Tables.SetNewWaypoint(ncoords.x, ncoords.y)
			end

			if Blight.F.Tables.IsDisabledControlPressed(0, 38) then
				Blight.F.holdtimer = Blight.F.holdtimer + 2
				if Blight.F.holdtimer >= 300 and Blight.F.Tables.SpawnPointLmao ~= nil then
					Blight.F.Funcs.revive()
					Blight.F.Tables.SetEntityCoordsNoOffset(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.SpawnPointLmao, true, true, true)
					Blight.F.holdtimer = 0
				end
			else
				Blight.F.holdtimer = 0
			end
		end
		
		if Blight.F.Checks['customammo:colourammo'] then
			local shot, coords = Blight.F.Tables.GetPedLastWeaponImpactCoord(Blight.F.Tables.PlayerPedId())
			if shot then
				local r, g, b = math.random(0, 255), math.random(0, 255), math.random(0, 255)
                __BlightStrings__.strings:tableinsert(Blight.F.ColourAmmo, {c = coords, t = Blight.F.Tables.GetGameTimer(), r = r, g = g, b = b})
			end
			for k, v in __BlightStrings__.strings:pairs(Blight.F.ColourAmmo) do 
				Blight.F.Tables.DrawSpotLight(v.c.x, v.c.y, v.c.z + 9.10, 0.0, 0.0, -1000.0, v.r, v.g, v.b, 10.0, 100.0, 0.0, 2.5, 0.0)
				if Blight.F.Tables.GetGameTimer() - v.t >= Blight.F.Sliders['colour-timer'].value then 
					__BlightStrings__.strings:tableremove(Blight.F.ColourAmmo, k)
				end
			end
		end
		if Blight.F.Checks['customammo:tracers'] then
			local shot, coords = Blight.F.Tables.GetPedLastWeaponImpactCoord(Blight.F.Tables.PlayerPedId())
			if shot then
				local r, g, b = math.random(0, 255), math.random(0, 255), math.random(0, 255)
                __BlightStrings__.strings:tableinsert(Blight.F.Tracers, {c = coords, c2 = Blight.F.Tables.GetPedBoneCoords(Blight.F.Tables.PlayerPedId(), 57005, 0.0, 0.0, 0.0), t = Blight.F.Tables.GetGameTimer(), r = r, g = g, b = b})
			end
			for k, v in __BlightStrings__.strings:pairs(Blight.F.Tracers) do 
				Blight.F.Tables.DrawLine(v.c2.x, v.c2.y, v.c2.z, v.c.x, v.c.y, v.c.z, v.r, v.g, v.b, 255)
				Blight.F.Tables.DrawMarker(28, v.c.x, v.c.y, v.c.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.05, 0.05, 0.05, v.r, v.g, v.b, 255, false, true, 2, nil, nil, false)
				if Blight.F.Tables.GetGameTimer() - v.t >= Blight.F.Sliders['tracers-timer'].value then 
					__BlightStrings__.strings:tableremove(Blight.F.Tracers, k)
				end
			end
		end

		if Blight.F.Checks['customammo:ExplosiveAmmo'] then
			local shot, coords = Blight.F.Tables.GetPedLastWeaponImpactCoord(Blight.F.Tables.PlayerPedId())
			if shot then
				Blight.F.Tables.AddExplode(coords.x, coords.y, coords.z, 7, 10.0, true, false, 0.0)
			end
		end
		if Blight.F.Checks['customammo:FireworkAmmo'] then 
			local shot, coords = Blight.F.Tables.GetPedLastWeaponImpactCoord(Blight.F.Tables.PlayerPedId())
			if shot then
				Blight.F.Tables.AddExplode(coords.x, coords.y, coords.z, 38, 10.0, true, false, 0.0)
			end
		end
		if Blight.F.Checks['customammo:SteamAmmo'] then 
			local shot, coords = Blight.F.Tables.GetPedLastWeaponImpactCoord(Blight.F.Tables.PlayerPedId())
			if shot then
				Blight.F.Tables.AddExplode(coords.x, coords.y, coords.z, 11, 10.0, true, false, 0.0)
			end
		end
		if Blight.F.Checks['customammo:FlameAmmo'] then 
			local shot, coords = Blight.F.Tables.GetPedLastWeaponImpactCoord(Blight.F.Tables.PlayerPedId())
			if shot then
				Blight.F.Tables.AddExplode(coords.x, coords.y, coords.z, 12, 10.0, true, false, 0.0)
			end
		end
		if Blight.F.Checks['customammo:OilSlickAmmo'] then 
			local shot, coords = Blight.F.Tables.GetPedLastWeaponImpactCoord(Blight.F.Tables.PlayerPedId())
			if shot then
				Blight.F.Tables.AddExplode(coords.x, coords.y, coords.z, 67, 10.0, true, false, 0.0)
			end
		end
		if Blight.F.Checks['customammo:HydrantAmmo'] then 
			local shot, coords = Blight.F.Tables.GetPedLastWeaponImpactCoord(Blight.F.Tables.PlayerPedId())
			if shot then
				Blight.F.Tables.AddExplode(coords.x, coords.y, coords.z, 13, 100.0, true, false, 0.0)
			end
		end
		if Blight.F.Checks['customammo:FlareAmmo'] then
			local shot, coords = Blight.F.Tables.GetPedLastWeaponImpactCoord(Blight.F.Tables.PlayerPedId())
			if shot then
				Blight.F.Tables.AddExplode(coords.x, coords.y, coords.z, 22, 100.0, true, false, 0.0)
			end
		end
		if Blight.F.Checks['customammo:RaygunAmmo'] then 
			local shot, coords = Blight.F.Tables.GetPedLastWeaponImpactCoord(Blight.F.Tables.PlayerPedId())
			if shot then
				Blight.F.Tables.AddExplode(coords.x, coords.y, coords.z, 70, 100.0, true, false, 0.0)
			end
		end
		if Blight.F.Checks['customammo:SnowballAmmo'] then 
			local shot, coords = Blight.F.Tables.GetPedLastWeaponImpactCoord(Blight.F.Tables.PlayerPedId())
			if shot then
				Blight.F.Tables.AddExplode(coords.x, coords.y, coords.z, 39, 100.0, true, false, 0.0)
			end
		end
		if Blight.F.Checks['customammo:BirdPooAmmo'] then 
			local shot, coords = Blight.F.Tables.GetPedLastWeaponImpactCoord(Blight.F.Tables.PlayerPedId())
			if shot then
				Blight.F.Tables.AddExplode(coords.x, coords.y, coords.z, 35, 100.0, true, false, 0.0)
			end
		end
		if Blight.F.Checks['customammo:BirdPooAmmo'] then 
			local shot, coords = Blight.F.Tables.GetPedLastWeaponImpactCoord(Blight.F.Tables.PlayerPedId())
			if shot then
				Blight.F.Tables.AddExplode(coords.x, coords.y, coords.z, 35, 100.0, true, false, 0.0)
			end
		end
		if Blight.F.Checks['pammo:Fire'] then 
			local shot, coords = Blight.F.Tables.GetPedLastWeaponImpactCoord(Blight.F.Tables.PlayerPedId())
			if shot then
				local dict, dict2 = "core", "ent_sht_petrol_fire"
				Blight.F.Tables.SpawnParticle(dict, dict2, coords.x, coords.y, coords.z, 0, 0, 0, Blight.F.Sliders['size-of-particle-ammo'].value+0.0, 0, 0, 0)
			end
		end
		if Blight.F.Checks['pammo:Stars'] then 
			local shot, coords = Blight.F.Tables.GetPedLastWeaponImpactCoord(Blight.F.Tables.PlayerPedId())
			if shot then
				local dict, dict2 = "scr_rcpaparazzo1", "scr_mich4_firework_trailburst_spawn"
				Blight.F.Tables.SpawnParticle(dict, dict2, coords.x, coords.y, coords.z, 0, 0, 0, Blight.F.Sliders['size-of-particle-ammo'].value+0.0, 0, 0, 0)
			end
		end
		if Blight.F.Checks['pammo:bubblegum'] then
			local shot, coords = Blight.F.Tables.GetPedLastWeaponImpactCoord(Blight.F.Tables.PlayerPedId())
			if shot then
				local dict, dict2 = "core", "ent_dst_gen_gobstop"
				Blight.F.Tables.SpawnParticle(dict, dict2, coords.x, coords.y, coords.z, 0, 0, 0, Blight.F.Sliders['size-of-particle-ammo'].value+0.0, 0, 0, 0)
			end 
		end
		if Blight.F.Checks['pammo:oranges'] then 
			local shot, coords = Blight.F.Tables.GetPedLastWeaponImpactCoord(Blight.F.Tables.PlayerPedId())
			if shot then
				local dict, dict2 = "core", "ent_col_tree_oranges"
				Blight.F.Tables.SpawnParticle(dict, dict2, coords.x, coords.y, coords.z, 0, 0, 0, Blight.F.Sliders['size-of-particle-ammo'].value+0.0, 0, 0, 0)
			end 
		end
		if Blight.F.Checks['pammo:Fireworks'] then 
			local shot, coords = Blight.F.Tables.GetPedLastWeaponImpactCoord(Blight.F.Tables.PlayerPedId())
			if shot then
				local dict, dict2 = "scr_indep_fireworks", "scr_indep_firework_trail_spawn"
				Blight.F.Tables.SpawnParticle(dict, dict2, coords.x, coords.y, coords.z, 0, 0, 0, Blight.F.Sliders['size-of-particle-ammo'].value+0.0, 0, 0, 0)
			end 
		end
		if Blight.F.Checks['pammo:Smoke'] then 
			local shot, coords = Blight.F.Tables.GetPedLastWeaponImpactCoord(Blight.F.Tables.PlayerPedId())
			if shot then
				local dict, dict2 = "scr_powerplay", "scr_powerplay_beast_appear"
				Blight.F.Tables.SpawnParticle(dict, dict2, coords.x, coords.y, coords.z, 0, 0, 0, Blight.F.Sliders['size-of-particle-ammo'].value+0.0, 0, 0, 0)
			end
		end
		if Blight.F.Checks['pammo:Clown'] then 
			local shot, coords = Blight.F.Tables.GetPedLastWeaponImpactCoord(Blight.F.Tables.PlayerPedId())
			if shot then
				local dict, dict2 = "scr_rcbarry2", "sp_clown_appear_trails"
				Blight.F.Tables.SpawnParticle(dict, dict2, coords.x, coords.y, coords.z, 0, 0, 0, Blight.F.Sliders['size-of-particle-ammo'].value+0.0, 0, 0, 0)
			end
		end
		if Blight.F.Checks['pammo:Water'] then 
			local shot, coords = Blight.F.Tables.GetPedLastWeaponImpactCoord(Blight.F.Tables.PlayerPedId())
			if shot then
				local dict, dict2 = "core", "exp_water"
				Blight.F.Tables.SpawnParticle(dict, dict2, coords.x, coords.y, coords.z, 0, 0, 0, Blight.F.Sliders['size-of-particle-ammo'].value+0.0, 0, 0, 0)
			end
		end
		if Blight.F.Checks['pammo:Dirt'] then 
			local shot, coords = Blight.F.Tables.GetPedLastWeaponImpactCoord(Blight.F.Tables.PlayerPedId())
			if shot then
				local dict, dict2 = "core", "bul_dirt"
				Blight.F.Tables.SpawnParticle(dict, dict2, coords.x, coords.y, coords.z, 0, 0, 0, Blight.F.Sliders['size-of-particle-ammo'].value+0.0, 0, 0, 0)
			end
		end
		if Blight.F.Checks['pammo:Alien'] then 
			local shot, coords = Blight.F.Tables.GetPedLastWeaponImpactCoord(Blight.F.Tables.PlayerPedId())
			if shot then
				local dict, dict2 = "scr_rcbarry1", "scr_alien_disintegrate"
				Blight.F.Tables.SpawnParticle(dict, dict2, coords.x, coords.y, coords.z, 0, 0, 0, Blight.F.Sliders['size-of-particle-ammo'].value+0.0, 0, 0, 0)
			end
		end
		if Blight.F.Checks['pammo:Explosion'] then
			local shot, coords = Blight.F.Tables.GetPedLastWeaponImpactCoord(Blight.F.Tables.PlayerPedId())
			if shot then
				local dict, dict2 = "des_fib_floor", "ent_ray_fbi5a_ramp_explosion"
				Blight.F.Tables.SpawnParticle(dict, dict2, coords.x, coords.y, coords.z, 0, 0, 0, Blight.F.Sliders['size-of-particle-ammo'].value+0.0, 0, 0, 0)
			end 
		end
		if Blight.F.Checks['pammo:Blood'] then 
			local shot, coords = Blight.F.Tables.GetPedLastWeaponImpactCoord(Blight.F.Tables.PlayerPedId())
			if shot then
				local dict, dict2 = "core", "td_blood_shotgun"
				Blight.F.Tables.SpawnParticle(dict, dict2, coords.x, coords.y, coords.z, 0, 0, 0, Blight.F.Sliders['size-of-particle-ammo'].value+0.0, 0, 0, 0)
			end 
		end
		if Blight.F.Checks['pammo:yellowsmoke'] then 
			local shot, coords = Blight.F.Tables.GetPedLastWeaponImpactCoord(Blight.F.Tables.PlayerPedId())
			if shot then
				local dict, dict2 = "core", "veh_respray_smoke"
				Blight.F.Tables.SpawnParticle(dict, dict2, coords.x, coords.y, coords.z, 0, 0, 0, Blight.F.Sliders['size-of-particle-ammo'].value+0.0, 0, 0, 0)
			end 
		end
		if Blight.F.Checks['pammo:Flower'] then 
			local shot, coords = Blight.F.Tables.GetPedLastWeaponImpactCoord(Blight.F.Tables.PlayerPedId())
			if shot then
				local dict, dict2 = "scr_rcbarry2", "scr_clown_bul"
				Blight.F.Tables.SpawnParticle(dict, dict2, coords.x, coords.y, coords.z, 0, 0, 0, Blight.F.Sliders['size-of-particle-ammo'].value+0.0, 0, 0, 0)
			end 
		end
		if Blight.F.Checks['pammo:Cartoon'] then 
			local shot, coords = Blight.F.Tables.GetPedLastWeaponImpactCoord(Blight.F.Tables.PlayerPedId())
			if shot then
				local dict, dict2 = "scr_rcbarry2", "muz_clown"
				Blight.F.Tables.SpawnParticle(dict, dict2, coords.x, coords.y, coords.z, 0, 0, 0, Blight.F.Sliders['size-of-particle-ammo'].value+0.0, 0, 0, 0)
			end 
		end
		
		if Blight.F.Checks['weaponcustomization:invisible weapon'] then 
			Blight.F.Tables.SetEntityVisible(Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), false)
			Blight.F.Tables.SetEntityAlpha(Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 0)
		end
		if Blight.F.Checks['weaponcustomization:Disablereload'] then 
			Blight.F.Tables.RefillAmmoInstantly(Blight.F.Tables.PlayerPedId())
		end
		if Blight.F.Checks['weaponcustomization:doubletap'] then 
			if Blight.F.Tables.IsPedShooting(Blight.F.Tables.PlayerPedId()) then
				if Blight.F.Tables.IsDisabledControlJustPressed(0, 24) or Blight.F.Tables.IsDisabledControlPressed(0, 24) then
					__CitIn__.CreateThread(function()
						__CitIn__.Wait(100)
						local coords, a = Blight.F.Tables.Functions.RayCastGCam(400.0)
						local c2 = Blight.F.Tables.Functions.RayCastGCam(1.0)
						Blight.F.Tables.ShootSingleBulletBetweenCoords(c2, coords, 1.0, 1, Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), Blight.F.Tables.PlayerPedId(), true, false, -1.0)
					end)
				end
			end
		end
		
		if Blight.F.Checks['weapon:RapidFire'] then 
			Blight.F.Tables.DisablePlayerFiring(Blight.F.Tables.PlayerPedId(), true)
			if Blight.F.Tables.IsDisabledControlJustPressed(0, 24) or Blight.F.Tables.IsDisabledControlPressed(0, 24) then
				local coords, a = Blight.F.Tables.Functions.RayCastGCam(400.0)
				local c2 = Blight.F.Tables.Functions.RayCastGCam(1.0)
				Blight.F.Tables.ShootSingleBulletBetweenCoords(c2, coords, 1, 1, Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), Blight.F.Tables.PlayerPedId(), true, false, -1.0)
			end
		end
		if Blight.F.Checks['weapon:HitMarker'] then 
			__CitIn__.CreateThread(function()
				local _, target = Blight.F.Tables.GetEntityPlayerIsFreeAimingAt(Blight.F.Tables.PlayerId())
				if _ and Blight.F.Tables.IsPedShooting(Blight.F.Tables.PlayerPedId()) and Blight.F.Tables.HasEntityClearLosToEntity(target, Blight.F.Tables.PlayerPedId(), 17) then
					local shot, lcoords = Blight.F.Tables.GetPedLastWeaponImpactCoord(Blight.F.Tables.PlayerPedId())
					for i = 1, 55 do
						__CitIn__.Wait(0)
						local lOnScreen, rx, ry = Blight.F.Tables.GetScreenCoordFromWorldCoord(lcoords.x, lcoords.y, lcoords.z)
						if lOnScreen then
							Blight.F.Tables.DrawSprite("hitmarker","hitmarker_a", rx, ry, 0.01, 0.02, 0.0, 255, 255, 255, 255)
						end
					end
				end
			end)
		end
		if Blight.F.Checks['weapon:HitSound'] then 
			local _, target = Blight.F.Tables.GetEntityPlayerIsFreeAimingAt(Blight.F.Tables.PlayerId())
			if _ and Blight.F.Tables.IsPedShooting(Blight.F.Tables.PlayerPedId()) and Blight.F.Tables.HasEntityClearLosToEntity(target, Blight.F.Tables.PlayerPedId(), 17) then
				--local a = Blight.F.Tables.CreateDui('https://blight.cc/music/hitsound.mp3', 1, 1)
				--Blight.F.Tables.DestroyDui(a)
			end
		end

		if Blight.F.Checks['weapon:Triggerbot'] then
			local _, target = Blight.F.Tables.GetEntityPlayerIsFreeAimingAt(Blight.F.Tables.PlayerId())
			if _ and Blight.F.Tables.HasEntityClearLosToEntity(target, Blight.F.Tables.PlayerPedId(), 17) and Blight.F.Tables.IsEntityAPed(target) then
				Blight.F.Tables.SetControlNormal(0, 24, 1.0)
			end
		end
		if Blight.F.Checks['destroyer:Makeallplayervehiclesfly'] then
			for k, v in __BlightStrings__.strings:pairs(Blight.F.Tables.GetActivePlayers()) do
				local vehicle = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.GetPlayerPed(v))
				if vehicle ~= 0 then
					if Blight.F.Tables.DoesEntityExist(vehicle) then 
						Blight.F.Tables.NetworkRequestControlOfEntity(vehicle) 
						Blight.F.Tables.SetEntityAsMissionEntity(vehicle, true, true)
						Blight.F.Tables.ApplyForceToEntity(vehicle, 3, 0.0, 0.0, 500.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
					end
				end
			end
		end
		if Blight.F.Checks['online:Makeplayervehiclefly'] then
			local vehicle = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.GetPlayerPed(Blight.F.SelectedPlayer))
			if vehicle ~= 0 then
				if Blight.F.Tables.DoesEntityExist(vehicle) then 
					Blight.F.Tables.NetworkRequestControlOfEntity(vehicle) 
					Blight.F.Tables.SetEntityAsMissionEntity(vehicle, true, true)
					Blight.F.Tables.ApplyForceToEntity(vehicle, 3, 0.0, 0.0, 500.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
				end
			end
		end
		
		if Blight.F.Checks['weapon:Showfriends'] then 
			Blight.F.Tables.DrawRect(0.87+0.08, 0.45, 0.065, 0.01, 0, 0, 0, 240)
			Blight.F.Tables.DrawRect(0.87+0.08, 0.49, 0.065, 0.08, 0, 0, 0, 111)
			local y = 0.455
			for k, v in __BlightStrings__.strings:pairs(Blight.F.Tables.FriendsList) do
				Blight.F.Tables.Functions.DrawTxt(json.encode(v), 0.84+0.08, y, 0.35, 0.25, {r=255, g=255, b=255, a=255}, false)
				y = y + 0.013
			end
		end
		if Blight.F.Checks['weapon:Drawfov'] then 
			local fovn = (Blight.F.Sliders['aimbot-fov'].value / 1000)
			local nKDX, nKDY = Blight.F.Checks.KeyboardDragXWM, Blight.F.Checks.KeyboardDragYWM
			Blight.F.Tables.DrawSprite("thefov", "sdjcircle", 0.5-nKDX, 0.5-nKDY, fovn, fovn * 1.8, 0.0, Blight.F.Sliders['FOV-R'].value, Blight.F.Sliders['FOV-G'].value, Blight.F.Sliders['FOV-B'].value, 255)
		end

		
		if Blight.F.Checks['vehicle:Addtrackertovehicle'] then
			local playerPed = Blight.F.Tables.PlayerPedId()
			if Blight.F.Tables.IsPedInAnyVehicle(playerPed, true) then
				local vehicle = Blight.F.Tables.GetVehiclePedIsIn(playerPed, false)
				local coords = Blight.F.Tables.GetEntityCoords(vehicle)
				local blip = Blight.F.Tables.GetBlipFromEntity(vehicle)
				if not Blight.F.Tables.DoesBlipExist(blip) then
					local bool = Blight.F.Tables.AddBlipForEntity(vehicle)
					Blight.F.Tables.SetBlipColour(bool, 20)
				end
				local heading = Blight.F.Tables.GetEntityHeading(vehicle)
				Blight.F.Tables.SetBlipRotation(blip, __BlightStrings__.strings:floor(heading))
				Blight.F.Tables.SetBlipScale(blip, 1.0)
				Blight.F.Tables.SetBlipSprite(blip, 326)
			end
		else
			Blight.F.Tables.RemoveBlip(Blight.F.Tables.GetBlipFromEntity(Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(), true)))
		end

		if Blight.F.Checks['vehicle:TorqueMulti'] then 
			if Blight.F.Sliders['torque'] then 
				local vehicle = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(), 0)
				if Blight.F.Tables.IsDisabledControlPressed(0, 34) or Blight.F.Tables.IsDisabledControlPressed(0, 33) or Blight.F.Tables.IsDisabledControlPressed(0, 32) or Blight.F.Tables.IsDisabledControlPressed(0, 35) then
					Blight.F.Tables.SetVehicleEngineTorqueMultiplier(vehicle, Blight.F.Sliders['torque'].value)
				end 
			end	
		end
		if Blight.F.Checks['vehicle:PowerMulti'] then 
			if Blight.F.Sliders['power'] then 
				local vehicle = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(), 0)
				if Blight.F.Tables.IsDisabledControlPressed(0, 34) or Blight.F.Tables.IsDisabledControlPressed(0, 33) or Blight.F.Tables.IsDisabledControlPressed(0, 32) or Blight.F.Tables.IsDisabledControlPressed(0, 35) then
					Blight.F.Tables.SetVehicleEnginePowerMultiplier(vehicle, Blight.F.Sliders['power'].value)
				end 
			end	
		end
		if Blight.F.Checks['vehicle:Stickycar'] then 
			local veh = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(), 0)
			if Blight.F.Tables.DoesEntityExist(veh) then
				Blight.F.Tables.ApplyForceToEntity(veh, 1, 0, 0, -0.4, 0, 0, 0, 1, true, true, true, true, true)
			end
		end
		if Blight.F.Checks['vehicle:nofall'] then 
			Blight.F.Tables.SetPedCanBeKnockedOffVehicle(Blight.F.Tables.PlayerPedId(), true)
		elseif not Blight.F.Checks['vehicle:nofall'] then 
			Blight.F.Tables.SetPedCanBeKnockedOffVehicle(Blight.F.Tables.PlayerPedId(), false)
		end
		if Blight.F.Checks['vehicle:instantbrakes'] then 
			local veh = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId())
			if veh ~= 0 and Blight.F.Tables.IsDisabledControlJustPressed(0, 8) or Blight.F.Tables.IsDisabledControlJustPressed(0, 22) then
				Blight.F.Tables.SetEntityCoordsNoOffset(veh, Blight.F.Tables.GetEntityCoords(veh), true, true, true)
			end
		end
		if Blight.F.Checks['vehicle:AutoDrive'] and not driving then
			driving = true
			local veh = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(), 0)
			if Blight.F.Tables.DoesEntityExist(veh) then
				Blight.F.Tables.TaskVehicleDriveWander(Blight.F.Tables.PlayerPedId(), veh, 40.0, 0)
			end
		end
		if not Blight.F.Checks['vehicle:AutoDrive'] and driving then
			Blight.F.Tables.ClearPedTasks(Blight.F.Tables.PlayerPedId())
			driving = false
		end
		if Blight.F.Checks['vehicle:VehicleGodmode'] then 
			local veh = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId())
			Blight.F.Tables.SetVehicleFixed(veh)
		end
		if Blight.F.Checks['vehicle:AdvancedHandling'] then 
			local veh = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId())
			Blight.F.Tables.SetVehicleGravityAmount(veh, 60.0)
		else
			local veh = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId())
			if veh ~= 0 then
				Blight.F.Tables.SetVehicleGravityAmount(veh, 9.8)
			end
		end
		if Blight.F.Checks['vehicle:HornBoost'] then
			local veh = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId())
			if Blight.F.Tables.IsDisabledControlPressed(0, 38) then
				Blight.F.Tables.SetVehicleForwardSpeed(veh, 70.0)
			elseif Blight.F.Tables.IsDisabledControlPressed(0, 38) then
				Blight.F.Tables.SetVehicleForwardSpeed(veh, 0.0)
			end 
		end
		if Blight.F.Checks['vehicle:BunnyHop'] then 
			local __vehicle__ = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId())
			if __vehicle__ ~= 0 then
				if Blight.F.Tables.IsDisabledControlJustPressed(0, 22) then
					Blight.F.Tables.ApplyForceToEntity(__vehicle__, 3, 0.0, 0.0, 8.0, 0.0, 0.0, 0.0, 0, 0, 0, 1, 1, 1)
				end
			end
		end
		if Blight.F.Checks['vehicle:DriftMode'] then 
			local veh = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(), 0)
			if Blight.F.Tables.IsControlJustPressed(1, 36) then
				Blight.F.Tables.SetVehicleReduceGrip(Blight.F.Tables. GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(), false), true)
			elseif Blight.F.Tables.IsControlJustPressed(1, 21) then 
				Blight.F.Tables.SetVehicleReduceGrip(Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(), false), false)
			end
		end
		if Blight.F.Checks['vehicle:Rainbowcar'] then 
			local N = Blight.F.Tables.Functions.randomrgb(1)
			Blight.F.Tables.SetVehicleCustomPrimaryColour(Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(), 0), N.r, N.g, N.b)
			Blight.F.Tables.SetVehicleCustomSecondaryColour(Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(), 0), N.r, N.g, N.b)
		end
		if Blight.F.Checks['vehicle:Bulletproofcar'] then 
			local veh = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(), 0)
			Blight.F.Tables.SetVehicleTyresCanBurst(veh, false)
		end
		if Blight.F.Checks['vehicle:Invisiblecar'] then 
			local veh = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId())
			if veh ~= 0 then
				Blight.F.Tables.SetEntityVisible(veh, false)
			end
		else
			local veh = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId())
			if veh ~= 0 then
				Blight.F.Tables.SetEntityVisible(veh, true)
			end
		end
		if Blight.F.Checks['vehicle:AutoClean'] then 
			Blight.F.Tables.SetVehicleDirtLevel(Blight.F.Tables.GetVehiclePedIsUsing(Blight.F.Tables.PlayerPedId()), 0.0)
		end
		if Blight.F.Checks['vehicle:AlwaysWheelie'] then 
			local veh = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(), 0)
			if Blight.F.Tables.IsPedInAnyVehicle(Blight.F.Tables.PlayerPedId()) and Blight.F.Tables.GetPedInVehicleSeat(Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId()), -1) == Blight.F.Tables.PlayerPedId() then
				Blight.F.Tables.SetVehicleWheelieState(veh, 129)
			end
		end
		if Blight.F.Checks['vehicle:Anti-Gravity'] then 
			local veh = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId())
			if veh ~= 0 then
				Blight.F.Tables.SetVehicleGravityAmount(veh, -1)
			end
		elseif not Blight.F.Checks['vehicle:Anti-Gravity'] then 
			local veh = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId())
			if veh ~= 0 then
				Blight.F.Tables.SetVehicleGravityAmount(veh, 9.8)
			end
		end
		if Blight.F.Checks['vehicle:NoCollision'] then
			local veh = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId())
		
			for vehicles in Blight.F.Tables.Functions.EnumerateVehicles() do
				Blight.F.Tables.SetEntityNoCollisionEntity(vehicles, veh, true)
			end
			for peds in Blight.F.Tables.Functions.EnumeratePeds() do
				Blight.F.Tables.SetEntityNoCollisionEntity(peds, veh, true)
			end
			for objects in Blight.F.Tables.Functions.EnumerateObjects() do
				Blight.F.Tables.SetEntityNoCollisionEntity(objects, veh, true)
			end
		end
		if Blight.F.Checks['vehicle:ToggleEngine'] then 
			local veh = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId())
			if veh ~= nil then
				Blight.F.Tables.SetVehicleEngineOn(veh, true, true, true)
			end
		end
		if Blight.F.Checks['glife:AutoLooting'] then
			Blight.F.Tables.SetControlNormal(0, 355, 1.0)
			Blight.F.Tables.SetControlNormal(0, 356, 1.0)
			Blight.F.Tables.SetControlNormal(0, 86, 1.0)
		end
		if Blight.F.Checks['glife:Auto Steal'] then
			Blight.F.Tables.SetControlNormal(0, 311, 1.0)
		end

		if Blight.F.Checks['glife:Teleportzombies'] then
			for GlifePeds in Blight.F.Tables.Functions.EnumeratePeds() do
				if GlifePeds ~= Blight.F.Tables.PlayerPedId() then
					local x, y, z = __BlightStrings__.strings:tableunpack(Blight.F.Tables.GetEntityCoords(Blight.F.Tables.PlayerPedId()))
					local x2, y2, z2 = __BlightStrings__.strings:tableunpack(Blight.F.Tables.GetEntityCoords(GlifePeds))
					Blight.F.Tables.SetEntityCoordsNoOffset(GlifePeds, x+1.2, y+1.2, z, false, false, false, false)
					if Blight.F.Checks['glife:Invisible'] then
						Blight.F.Tables.SetEntityVisible(GlifePeds, false, 0)
					else
						Blight.F.Tables.SetEntityVisible(GlifePeds, true, 0)
					end
					
					if Blight.F.Tables.GetEntityHealth(GlifePeds) > 1 then
						if Blight.F.Checks['glife:Kill'] then
							__CitIn__.CreateThread(function()
								if Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()) ~= -1569615261 then
									Blight.F.Tables.SetPedShootsAtCoord(Blight.F.Tables.PlayerPedId(), x2, y2, z2, true)
									__CitIn__.Wait(0)
								else
									Blight.F.Tables.SetEntityHealth(GlifePeds, 0)
								end
							end)
						end
					end
				end
			end
		end

		if Blight.F.Checks['cheaterprotection:antipart'] then
			Blight.F.Tables.RemoveParticleFxInRange(Blight.F.Tables.GetEntityCoords(Blight.F.Tables.PlayerPedId()), 10.0)
		end
		
		if Blight.F.Checks['cheaterprotection:antifreeze'] then
			Blight.F.Tables.FreezeEntityPosition(Blight.F.Tables.PlayerPedId(), false)
		end
		
		
		if Blight.F.Checks['misc:Alwaysfriendly'] then
			Blight.F.Tables.SetPedCanBeTargetted(Blight.F.Tables.PlayerPedId(), false)
		else
			Blight.F.Tables.SetPedCanBeTargetted(Blight.F.Tables.PlayerPedId(), true)
		end
		if Blight.F.Checks['misc:instantsitincar'] then
			local thisveh = Blight.F.Tables.GetVehiclePedIsEntering(Blight.F.Tables.PlayerPedId())
			if thisveh ~= 0 then
				Blight.F.Tables.SetPedIntoVehicle(Blight.F.Tables.PlayerPedId(), thisveh, -1)
			end
		end

		if Blight.F.Checks['misc:meteorshower'] and (Blight.F.MetheorDelay or 0) < Blight.F.Tables.GetGameTimer() then
			Blight.F.MetheorDelay = Blight.F.Tables.GetGameTimer() + 500

			local model = Blight.F.Tables.GetHashKey("prop_asteroid_01")
			if not Blight.F.Tables.HasModelLoaded(model) then
				Blight.F.Tables.RequestModel(model)
				while not Blight.F.Tables.HasModelLoaded(model) do
					__CitIn__.Wait(0)
					Blight.F.Tables.RequestModel(model)
				end	
			end
			local coords = Blight.F.Tables.GetEntityCoords(Blight.F.Tables.PlayerPedId())
			local x, y, z = coords.x+math.random(0.0, 150.0), coords.y-math.random(0.0, 150.0), coords.z+math.random(0.0, 150.0)
			local obj = Blight.F.Tables.CreateObject(model, x+0.0, y+0.0, z + 100, true, true, false)
            Blight.F.Tables.ApplyForceToEntity(obj, 1, 0.0, 3.0, -100.0, -1.0, 0.0, 0.0, 1, false, true, false, false)
            Blight.F.Tables.ApplyForceToEntity(obj, 1, 0.0, 3.0, -100.0, -1.0, 0.0, 0.0, 1, false, true, false, false)

		end

		
		if Blight.F.Checks['misc:fakeroll'] and Blight.F.Tables.IsPedShooting(Blight.F.Tables.PlayerPedId()) and not Blight.F.Tables.IsPedInAnyVehicle(Blight.F.Tables.PlayerPedId()) then
			__CitIn__.CreateThread(function()
				Blight.F.Tables.TaskPlayAnim(Blight.F.Tables.PlayerPedId(), 'move_strafe@roll_fps', 'combatroll_bwd_p1_-135', 0, 16.0, -1, 46, 1.0, false, false, false)
				__CitIn__.Wait(600)
				Blight.F.Tables.TaskPlayAnim(Blight.F.Tables.PlayerPedId(), 'move_strafe@roll_fps', 'combatroll_bwd_p1_135', 0, 16.0, -1, 46, 1.0, false, false, false)
				__CitIn__.Wait(600)
				Blight.F.Tables.TaskPlayAnim(Blight.F.Tables.PlayerPedId(), 'move_strafe@roll_fps', 'combatroll_fwd_p1_90', 0, 16.0, -1, 46, 1.0, false, false, false)
				__CitIn__.Wait(600)
				Blight.F.Tables.TaskPlayAnim(Blight.F.Tables.PlayerPedId(), 'move_strafe@roll_fps', 'combatroll_fwd_p1_-45', 0, 16.0, -1, 46, 1.0, false, false, false)
				__CitIn__.Wait(600)
				Blight.F.Tables.ClearPedTasks(Blight.F.Tables.PlayerPedId(), true)
			end)
		end
		if Blight.F.Checks['misc:fakecrouch'] and Blight.F.Tables.IsPedShooting(Blight.F.Tables.PlayerPedId()) and not Blight.F.Tables.IsPedInAnyVehicle(Blight.F.Tables.PlayerPedId()) then
			__CitIn__.CreateThread(function()
				Blight.F.Tables.TaskPlayAnim(Blight.F.Tables.PlayerPedId(), 'move_crouch_proto', 'rstart_l_-90', 0, 16.0, -1, 46, 1.0, false, false, false)
                __CitIn__.Wait(600)
                Blight.F.Tables.TaskPlayAnim(Blight.F.Tables.PlayerPedId(), 'move_crouch_proto', 'run_turn_180_r', 0, 16.0, -1, 46, 1.0, false, false, false)
                __CitIn__.Wait(600)
                Blight.F.Tables.TaskPlayAnim(Blight.F.Tables.PlayerPedId(), 'move_crouch_proto', 'rstart_l_-90', 0, 16.0, -1, 46, 1.0, false, false, false)
                __CitIn__.Wait(600)
                Blight.F.Tables.TaskPlayAnim(Blight.F.Tables.PlayerPedId(), 'move_crouch_proto', 'run_turn_180_r', 0, 16.0, -1, 46, 1.0, false, false, false)
                __CitIn__.Wait(600)
                Blight.F.Tables.ClearPedTasks(Blight.F.Tables.PlayerPedId(), true)
			end)
		end
		if Blight.F.Checks['misc:antiaim'] and not Blight.F.Tables.IsPedInAnyVehicle(Blight.F.Tables.PlayerPedId()) then
			__CitIn__.CreateThread(function()
				if Blight.F.Tables.IsDisabledControlPressed(0, Blight.F.Tables.Keys["W"]) or Blight.F.Tables.IsDisabledControlPressed(0, Blight.F.Tables.Keys["A"]) or Blight.F.Tables.IsDisabledControlPressed(0, Blight.F.Tables.Keys["S"]) or Blight.F.Tables.IsDisabledControlPressed(0, Blight.F.Tables.Keys["D"]) then
					if __AATIMER__< 10 then
						Blight.F.Tables.RequestAnimDict('move_strafe@roll_fps')
						Blight.F.Tables.TaskPlayAnim(Blight.F.Tables.PlayerPedId(), 'move_strafe@roll_fps', 'combatroll_fwd_p1_-45', 0, 16.0, -1, 46, 1.0, false, false, false)
						__AATIMER__ = __AATIMER__ + 1
					end

					if __AATIMER__ >= 10 then
						Blight.F.Tables.ClearPedTasks(Blight.F.Tables.PlayerPedId(), true)
						__CitIn__.Wait(300)
						__AATIMER__ = 0
					end
				end
			end)
		end
		if Blight.F.Checks['misc:lagging'] then
			local check = Blight.F.Tables.IsPedWalking(Blight.F.Tables.PlayerPedId()) or Blight.F.Tables.IsPedRunning(Blight.F.Tables.PlayerPedId()) or Blight.F.Tables.IsPedJumping(Blight.F.Tables.PlayerPedId())
			if check and (Blight.F.LaggingDelay or 0) < Blight.F.Tables.GetGameTimer() then
				Blight.F.LaggingDelay = Blight.F.Tables.GetGameTimer() + 888
				local c = Blight.F.Tables.GetOffsetFromEntityInWorldCoords(Blight.F.Tables.PlayerPedId(), 0.0, -0.5, 0.0)
				Blight.F.Tables.SetEntityCoordsNoOffset(Blight.F.Tables.PlayerPedId(), c.x, c.y, c.z, true, true, true)
				
			end
		end
	
		
		if Blight.F.Checks['misc:globalchat'] then
			if Blight.F.Funcs.CheckIfResourceExist('screenshot-basic') then
				local nKDX, nKDY = Blight.F.Checks.KeyboardDragXWM, Blight.F.Checks.KeyboardDragYWM
				local name =  Blight.F.Tables.GetPlayerName(Blight.F.Tables.PlayerId())
				local reuid = 0
				local year, month, day, hour, minute, second = Blight.F.Tables.GetUtcTime()
				if day < 10 then
					day = '0'..day
				end
				if hour < 10 then
					hour = '0'..hour
				end
				if minute < 10 then
					minute = '0'..minute
				end
				Blight.F.Tables.DrawRect_U(0.5+0.27, 0.5, 0.205, 0.205*1.8, 1, 1, 1, Blight.alpha)
				Blight.F.Tables.DrawRect_U(0.5+0.27, 0.5, 0.204, 0.204*1.8, 60, 60, 60, Blight.alpha)
				Blight.F.Tables.DrawRect_U(0.5+0.27, 0.5, 0.203, 0.203*1.8, 40, 40, 40, Blight.alpha)
				Blight.F.Tables.DrawRect_U(0.5+0.27, 0.5, 0.201, 0.201*1.8, 60, 60, 60, Blight.alpha)
				Blight.F.Tables.DrawRect_U(0.5+0.27-nKDX, 0.5-nKDY, 0.2, 0.2*1.8, 0, 0, 0, Blight.alpha)
				Blight.F.Tables.DrawRect_U(0.5+0.27, 0.5, 0.192, 0.192*1.8, 1, 1, 1, Blight.alpha)
				Blight.F.Tables.DrawRect_U(0.5+0.27, 0.5, 0.191, 0.191*1.8, 40, 40, 40, Blight.alpha)
				Blight.F.Tables.DrawRect_U(0.5+0.27, 0.5, 0.19, 0.19*1.8, 23, 23, 23, Blight.alpha)
				Blight.F.Tables.DrawRect_U(0.5+0.27-nKDX, 0.3225-nKDY, 0.199, 0.0015, Blight.F.Checks.MainR, Blight.F.Checks.MainG, Blight.F.Checks.MainB, Blight.alpha)
			
			
				
				-- tabs
				Blight.F.Tables.DrawRect_U(0.82+0.005, 0.665, 0.026, 0.0112*1.8, 0, 0, 0, Blight.alpha)
				Blight.F.Tables.DrawRect_U(0.82+0.005, 0.665, 0.025, 0.01*1.8, 25, 22, 19, Blight.alpha-50)
				
				
				Blight.F.Tables.SetTextColour(255, 255, 255, Blight.alpha)
				Blight.F.drawText('S & FS', 0.82+0.005-nKDX, 0.654-nKDY, 0.3, 4, true, true)


				Blight.F.Tables.DrawRect_U(0.82+0.033, 0.665, 0.026, 0.0112*1.8, 0, 0, 0, Blight.alpha)
				Blight.F.Tables.DrawRect_U(0.82+0.033, 0.665, 0.025, 0.01*1.8, 25, 22, 19, Blight.alpha-50)
				

				Blight.F.Tables.SetTextColour(255, 255, 255, Blight.alpha)
				Blight.F.drawText('S', 0.82+0.033-nKDX, 0.654-nKDY, 0.3, 4, true, true)
				Blight.F.Tables.SetTextColour(255, 255, 255, Blight.alpha)
				Blight.F.drawText('TAB - Send message, F5 - Refresh', 0.72-nKDX, 0.652-nKDY, 0.3, 4, true, true)

				if Blight.F.Tables.Functions.CreateZone(0.8197+0.005, 0.66495-0.01, 0.0262, 0.0115*1.8) and Blight.F.Tables.IsDisabledControlJustPressed(0, 24) then
					Blight.F.Checks.TabInGlobalChat = 1
					Blight.Static.Scroll = 0
				end
				if Blight.F.Tables.Functions.CreateZone(0.8197+0.033, 0.66495-0.01, 0.0262, 0.0115*1.8) and Blight.F.Tables.IsDisabledControlJustPressed(0, 24) then
					Blight.F.Checks.TabInGlobalChat = 2
					Blight.Static.Scroll = 0
				end
				if Blight.F.Checks.TabInGlobalChat == 1 then
					Blight.F.Tables.DrawRect_U(0.82+0.005, 0.665, 0.025, 0.01*1.8, 100, 100, 100, Blight.alpha-90)
				elseif Blight.F.Checks.TabInGlobalChat == 2 then
					Blight.F.Tables.DrawRect_U(0.82+0.033, 0.665, 0.025, 0.01*1.8, 100, 100, 100, Blight.alpha-90)
				end

				if Blight.F.Checks.TabInGlobalChat == 1 then
					if Blight.F.Tables.IsDisabledControlJustPressed(0, 167) then
						__CitIn__.CreateThread(function()
							Blight.F.Tables.WebReq("https://blight.cc/configs/globalchat.php".."?msg=nil"..'&file=chat.txt&clear=true')
							for i = 1, 5 do
								for ak, av in __BlightStrings__.strings:pairs(Blight.GlobalChat) do
									__BlightStrings__.strings:tableremove(Blight.GlobalChat, ak)
								end
							end
							__CitIn__.Wait(1000)
							local newmsg2 = '~r~SYSTEM ~s~Chat cleared by: ~b~'..name..' ~s~| '..hour..':'..minute..' ('.. day..'/'..month..'/'..year..')'
							Blight.F.Tables.WebReq("https://blight.cc/configs/globalchat.php".."?msg="..newmsg2..'&file=chat.txt&clear=false')
						end)
					end
					if Blight.F.Tables.IsDisabledControlJustPressed(0, 37) then
						local message = Blight.F.Tables.Functions.KBInput('Message to send', '', 30120)
						
						if message ~= nil then
							local currentname = '~p~Cocco~s~'
							local newmsg = '['..currentname.. '] '.. name .. ': ' .. message .. ' | ' ..hour..':'..minute..' ('.. day..'/'..month..'/'..year..')'
							Blight.F.Tables.WebReq("https://blight.cc/configs/globalchat.php".."?msg="..newmsg..'&file=chat.txt&clear=false')
						end
					end
							
					if Blight.F.Tables.IsDisabledControlJustPressed(0, 166) then
						exports['screenshot-basic']:requestScreenshotUpload("https://blight.cc/configs/chat.txt", 'files[]', function(data)
							if data then
								for i = 1, 5 do
									for ak, av in __BlightStrings__.strings:pairs(Blight.GlobalChat) do
										__BlightStrings__.strings:tableremove(Blight.GlobalChat, ak)
									end
								end
								for g in string.gmatch(data, "[^" .. '\n' .. "]+") do
									__BlightStrings__.strings:tableinsert(Blight.GlobalChat, g)
								end
							end
						end)
					end
					local drawnFeature = 0 
					for k, v in __BlightStrings__.strings:pairs(Blight.GlobalChat) do
						if k > Blight.Static.Scroll and drawnFeature < 16 then 
							drawnFeature = drawnFeature + 1 
							Blight.F.Tables.Functions.DrawTxt(v, 0.406+0.27, 0.31 + (drawnFeature * 0.02), 0.3, 0.3, {r=255, g=255, b=255, a=Blight.alpha}, false)
						end
					end

					if Blight.F.Tables.IsDisabledControlJustPressed(0, 14) then 
						Blight.Static.Scroll = Blight.Static.Scroll + 1
					end
					if Blight.F.Tables.IsDisabledControlJustPressed(0, 15) then 
						Blight.Static.Scroll = Blight.Static.Scroll - 1
					end
				elseif Blight.F.Checks.TabInGlobalChat == 2 then
					if Blight.F.Tables.IsDisabledControlJustPressed(0, 167) then
						__CitIn__.CreateThread(function()
							Blight.F.Tables.WebReq("https://blight.cc/configs/globalchat.php".."?msg=nil"..'&file=chat2.txt&clear=true')
							for i = 1, 5 do
								for ak, av in __BlightStrings__.strings:pairs(Blight.GlobalChat2) do
									__BlightStrings__.strings:tableremove(Blight.GlobalChat2, ak)
								end
							end
							__CitIn__.Wait(1000)
							local newmsg2 = '~r~SYSTEM ~s~Chat cleared by: ~b~'..name..' ~s~| '..hour..':'..minute..' ('.. day..'/'..month..'/'..year..')'
							Blight.F.Tables.WebReq("https://blight.cc/configs/globalchat.php".."?msg="..newmsg2..'&file=chat2.txt&clear=false')
						end)
					end
					if Blight.F.Tables.IsDisabledControlJustPressed(0, 37) then
						local message = Blight.F.Tables.Functions.KBInput('Message to send', '', 30120)
						
						if message ~= nil then
							if Blight.F.Tables.GetRedUid() == 0 then
								currentname = '~o~localhost~s~'
							elseif Blight.F.Tables.GetRedUid() == 5468 then
								currentname = '~b~Dev~s~'
							elseif Blight.F.Tables.GetRedUid() == 4 then
								currentname = '~r~Owner~s~'
							elseif Blight.F.Tables.GetRedUid() == 2061 then
								currentname = '~b~Dev~s~'
							else
								currentname = ''
							end
							local newmsg = '['..currentname.. '] '.. name .. ': ' .. message .. ' | ' ..hour..':'..minute..' ('.. day..'/'..month..'/'..year..')'
							
							Blight.F.Tables.WebReq("https://blight.cc/configs/globalchat.php".."?msg="..newmsg..'&file=chat2.txt&clear=false')
						end
					end
							
					if Blight.F.Tables.IsDisabledControlJustPressed(0, 166) then
						exports['screenshot-basic']:requestScreenshotUpload("https://blight.cc/configs/chat2.txt", 'files[]', function(data)
							if data then
								for i = 1, 5 do
									for ak, av in __BlightStrings__.strings:pairs(Blight.GlobalChat2) do
										__BlightStrings__.strings:tableremove(Blight.GlobalChat2, ak)
									end
								end
								for g in string.gmatch(data, "[^" .. '\n' .. "]+") do
									__BlightStrings__.strings:tableinsert(Blight.GlobalChat2, g)
								end
							end
						end)
					end
					local drawnFeature = 0 
					for k, v in __BlightStrings__.strings:pairs(Blight.GlobalChat2) do
						if k > Blight.Static.Scroll and drawnFeature < 16 then 
							drawnFeature = drawnFeature + 1 
							Blight.F.Tables.Functions.DrawTxt(v, 0.406+0.27, 0.31 + (drawnFeature * 0.02), 0.3, 0.3, {r=255, g=255, b=255, a=Blight.alpha}, false)
						end
					end

					if Blight.F.Tables.IsDisabledControlJustPressed(0, 14) then 
						Blight.Static.Scroll = Blight.Static.Scroll + 1
					end
					if Blight.F.Tables.IsDisabledControlJustPressed(0, 15) then 
						Blight.Static.Scroll = Blight.Static.Scroll - 1
					end
				end
			end
		end
		if Blight.F.Checks['misc:bypassfirstperson'] then
			Blight.F.Tables.SetFollowPedCamViewMode(1)
			Blight.F.Tables.DisableFirstPersonCamThisFrame()
		end
		if Blight.F.Checks['misc:rpserversbelike'] then
			if Blight.F.Tables.IsPedShooting(Blight.F.Tables.PlayerPedId()) then 
				Blight.F.Tables.ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 0.2)
				local p = Blight.F.Tables.GetGameplayCamRelativePitch()
				Blight.F.Tables.SetGameplayCamRelativePitch(p+4.0, 0.2)
			end
			if Blight.F.Tables.IsPlayerFreeAiming(Blight.F.Tables.PlayerId()) then
				Blight.F.Tables.SetFollowPedCamViewMode(4)
			else
				Blight.F.Tables.SetFollowPedCamViewMode(1)
			end
		end
		if Blight.F.Checks['misc:Aimposition'] and Blight.F.Tables.IsDisabledControlPressed(0, 25) then
			Blight.F.Tables.TaskAimGunScripted(Blight.F.Tables.PlayerPedId(), Blight.F.Tables.GetHashKey(Blight.F.Combos['aimnaimation'].c[Blight.F.Combos['aimnaimation'].a]), true, true)
			if Blight.F.Combos['aimnaimation'].b[Blight.F.Combos['aimnaimation'].a] == 'normal' then
				Blight.F.Tables.ClearPedTasks(Blight.F.Tables.PlayerPedId(), true)
				Blight.F.Checks['misc:Aimposition'] = false
			end
		end
		if Blight.F.Checks['misc:killfeed'] then
			if __EVENTTT__ < 1 then
				AddEventHandler("gameEventTriggered", function(en, ea)
					if en == "CEventNetworkEntityDamage" then
						local self = Blight.F.Tables.CleanString(Blight.F.Tables.GetPlayerName(Blight.F.Tables.NetworkGetPlayerIndexFromPed(Blight.F.Tables.GetPlayerPed())), "color")
						local n1 = Blight.F.Tables.CleanString(Blight.F.Tables.GetPlayerName(Blight.F.Tables.NetworkGetPlayerIndexFromPed(ea[1])), "color")
						local n2 = Blight.F.Tables.CleanString(Blight.F.Tables.GetPlayerName(Blight.F.Tables.NetworkGetPlayerIndexFromPed(ea[2])), "color")
						if n1 == "**Invalid**" then n1 = "AI" end
						if n2 == "**Invalid**" then n2 = "AI" end
						
						local isFatal = ea[4]
						local headshot = ea[9]
						if isFatal == 1 and n1 ~= 'AI' then
							isFatal = "    ~r~killed~s~    "
							Blight.F.Tables.Functions.Notify(n2 .. isFatal .. n1)
						end
					end
				end)
				__EVENTTT__ = __EVENTTT__ + 1
			end
		end
		if Blight.F.Checks['misc:rollbug(x)'] and Blight.F.Tables.IsDisabledControlPressed(0, 73) or Blight.F.Tables.IsDisabledControlPressed(0, 348) then
			Blight.F.Tables.ClearPedTasks(Blight.F.Tables.PlayerPedId())
		end
		
		if Blight.F.Checks['misc:Sticktoground'] then
			Blight.F.Tables.ApplyForceToEntity(Blight.F.Tables.PlayerPedId(), 1, 0, 0, -0.4, 0, 0, 0, 1, true, true, true, true, true)
		end
		if Blight.F.Checks['misc:InfiniteCombatRoll'] then
			for shit = 0, 3 do
				Blight.F.Tables.StatSetInt(Blight.F.Tables.GetHashKey("mp" .. shit .. "_shooting_ability"), 9999, true)
				Blight.F.Tables.StatSetInt(Blight.F.Tables.GetHashKey("sp" .. shit .. "_shooting_ability"), 9999, true)
			end
		end
		if Blight.F.Checks['cheaterprotection:anticrash'] then
			__CitIn__.CreateThread(function()
				local PedsAm = 0
				local PropsAm = 0
				for peds in Blight.F.Tables.Functions.EnumeratePeds() do
					__CitIn__.Wait(0)
					PedsAm = PedsAm + 1
					if peds ~= Blight.F.Tables.PlayerPedId() and PedsAm <= 8 then
						Blight.F.Tables.DeleteEntity(peds)
					end
				end
				for objects in Blight.F.Tables.Functions.EnumerateObjects() do
					__CitIn__.Wait(0)
					PropsAm = PropsAm + 1
					if PropsAm <= 3 then
						Blight.F.Tables.DeleteEntity(objects)
					end
				end
			end)
		end

		if Blight.F.Checks['cheaterprotection:anticage'] then
				for object in Blight.F.Tables.Functions.EnumerateObjects() do
					local objects = Blight.F.Tables.GetEntityModel(object)
					if objects == Blight.F.Tables.GetHashKey('imp_prop_impexp_boxpile_01') then
						Blight.F.Tables.DeleteEntity(object)
					elseif objects == Blight.F.Tables.GetHashKey('prop_container_ld_pu') then
						Blight.F.Tables.DeleteEntity(object)
					elseif objects == Blight.F.Tables.GetHashKey('prop_container_01a') then
						Blight.F.Tables.DeleteEntity(object)
					elseif objects == Blight.F.Tables.GetHashKey('prop_container_05a') then
						Blight.F.Tables.DeleteEntity(object)
					elseif objects == Blight.F.Tables.GetHashKey('prop_const_fence03b_cr') then
						Blight.F.Tables.DeleteEntity(object)
					elseif objects == Blight.F.Tables.GetHashKey('prop_fnclink_03gate5') then
						Blight.F.Tables.DeleteEntity(object)
					elseif objects == Blight.F.Tables.GetHashKey('prop_arm_gate_l') then
						Blight.F.Tables.DeleteEntity(object)
					elseif objects == Blight.F.Tables.GetHashKey('prop_facgate_01') then
						Blight.F.Tables.DeleteEntity(object)
					elseif objects == Blight.F.Tables.GetHashKey('prop_doghouse_01') then
						Blight.F.Tables.DeleteEntity(object)
					elseif objects == Blight.F.Tables.GetHashKey('prop_rub_cage01b') then
						Blight.F.Tables.DeleteEntity(object)
					elseif objects == Blight.F.Tables.GetHashKey('bkr_prop_bkr_cashpile_07') then
						Blight.F.Tables.DeleteEntity(object)
					elseif objects == Blight.F.Tables.GetHashKey('hei_prop_heist_apecrate') then
						Blight.F.Tables.DeleteEntity(object)
					end
				end
			end

			if Blight.F.Checks['cheaterprotection:antifire'] then
				Blight.F.Tables.StopEntityFire(Blight.F.Tables.PlayerPedId())
			end

			if Blight.F.Checks['cheaterprotection:antiattach'] then
				if 	Blight.F.Tables.IsEntityAttached(Blight.F.Tables.PlayerPedId()) then
					Blight.F.Tables.DetachEntity(Blight.F.Tables.PlayerPedId(), true, true)
				end
			end

			if Blight.F.Checks['cheaterprotection:anticlone'] then
				for peds in Blight.F.Tables.Functions.EnumeratePeds() do
					local __pedcoords__ = Blight.F.Tables.GetEntityCoords(peds)
					local __selfcoords__ = Blight.F.Tables.GetEntityCoords(Blight.F.Tables.PlayerPedId())
					if __pedcoords__ == __selfcoords__ and peds ~= Blight.F.Tables.PlayerPedId() then
						Blight.F.Tables.DeleteEntity(peds)
					end
				end
			end

			if Blight.F.Checks['cheaterprotection:antitele'] then
				for peds in Blight.F.Tables.Functions.EnumeratePeds() do
					local __pedcoords__ = Blight.F.Tables.GetEntityCoords(peds)
					local __selfcoords__ = Blight.F.Tables.GetEntityCoords(Blight.F.Tables.PlayerPedId())
					local distt = #(__selfcoords__ - __pedcoords__)
					if distt <= 0.5 and peds ~= Blight.F.Tables.PlayerPedId() then
						local x, y, z = __BlightStrings__.strings:tableunpack(Blight.F.Tables.GetEntityCoords(Blight.F.Tables.PlayerPedId()))
						local __random__ = __BlightStrings__.strings:random(0, 400)
						local foundGround, zPos = Blight.F.Tables.GetGroundZFor_3dCoord(x+__random__+0.0, y+__random__+0.0, z + 0.0)
						if foundGround then
							Blight.F.Tables.SetEntityCoordsNoOffset(Blight.F.Tables.PlayerPedId(), x+__random__+0.0, y+__random__+0.0, zPos, false, false, false, true)
						end
					end
				end
			end

			if Blight.F.Checks['bypass:apiac'] then
				if not cotuwidzisz then 
					CreateThread = CreateThread;
					__CitIn__.CreateThread = CreateThread;
					Citizen = Citizen;
				end
			end
			if Blight.F.Checks['bypass:ggac'] then
				local a = [[
				_G.GetUsingnightvision() = function(...)
					return false
				end
				_G.GetUsingseethrough() = function(...)
					return false
				end
				_G.IsPedDoingBeastJump = function(...)
					return false
				end

				GetUsingnightvision() = function(...)
					return false
				end
				GetUsingseethrough() = function(...)
					return false
				end
				IsPedDoingBeastJump = function(...)
					return false
				end
				]]
				pcall(load(a))
			end
			if Blight.F.Checks['bypass:events'] then
				for k, v in strings:pairs(Blight.F.Tables.KnownEvents) do
					RegisterNetEvent(v)
					AddEventHandler(v, function()
						CancelEvent()
						print("Event founded and cancelled: "..v)
					end)
				end
				_G.TriggerEvent = function(...)
					local a = __BlightStrings__.strings:tableunpack({...}) 
					print("Prevented game event from beeing executed: "..a)
				end
				_G.TriggerServerEvent = function(...)
					CancelEvent()
					local a = __BlightStrings__.strings:tableunpack({...}) 
					print("Prevented server event from beeing executed: "..a)					
				end
				TriggerEvent = function(...)
					CancelEvent()
					local a = __BlightStrings__.strings:tableunpack({...}) 
					print("Prevented game event from beeing executed: "..a)
				end
				TriggerServerEvent = function(...)
					CancelEvent()
					local a = __BlightStrings__.strings:tableunpack({...}) 
					print("Prevented server event from beeing executed: "..a)
				end
			end
			if Blight.F.Checks['bypass:Recoil'] then
				local trash = [[
					_G.ClampGameplayCamPitch = function(...)
					end
					_G.SetGameplayCamRawPitch = function(...)
					end
					_G.IsPedShooting = function(...)
					end
					_G.ShakeGameplayCam = function(...)
					end
					_G.SetGameplayCamRelativePitch = function(...)
					end

					ClampGameplayCamPitch = function(...)
					end
					SetGameplayCamRawPitch = function(...)
					end
					IsPedShooting = function(...)
					end
					ShakeGameplayCam = function(...)
					end
					SetGameplayCamRelativePitch = function(...)
					end
				]]
				pcall(load(trash))
			end
			if Blight.F.Checks['bypass:bscreen'] then
				if Blight.F.Tables.IsScreenFadingOut() then
					Blight.F.Tables.DoScreenFadeIn(0)
				end
			end
			if Blight.F.Checks['bypass:blur'] then
				if Blight.F.Tables.IsScreenblurFadeRunning() then
					Blight.F.Tables.TriggerScreenblurFadeIn(0)
				end
			end
			if Blight.F.Checks['ctrls:disallact'] then
				Blight.F.Tables.DisableAllControlActions()
			end
			if Blight.F.Checks['anims:looped'] and (Blight.F.AnimsDelay or 0) <= Blight.F.Tables.GetGameTimer() then
				Blight.F.AnimsDelay = Blight.F.Tables.GetGameTimer() + (Blight.F.Sliders['anims-loopdelay'].value * 10)
				local animation = Blight.F.Combos['Animations'].b[Blight.F.Combos['Animations'].a]
				Blight.F.Tables.RequestAnimDict(animation.lib)
				Blight.F.Tables.TaskPlayAnim(Blight.F.Tables.PlayerPedId(), animation.lib, animation.anim, 8.0, -8.0, -1, 0, 0, false, false, false)
			end
			if Blight.F.Checks['wc:Colourit'] then
				local coords = Blight.F.Tables.GetEntityCoords(Blight.F.Tables.PlayerPedId())
				Blight.F.Tables.DrawLightWithRangeAndShadow(coords.x, coords.y, coords.z + 3.0, Blight.F.Sliders['wc-r'].value, Blight.F.Sliders['wc-g'].value, Blight.F.Sliders['wc-b'].value, Blight.F.Sliders['wc-range'].value+0.0, Blight.F.Sliders['wc-shadow'].value+0.0)
			end
			
			if Blight.F.Checks['ctrls:enblallact'] then
				Blight.F.Tables.EnableAllControlActions(0)
				Blight.F.Tables.EnableAllControlActions(1)
			end
			if Blight.F.Checks['ctrls:disfire'] then
				Blight.F.Tables.DisablePlayerFiring(Blight.F.Tables.PlayerPedId(), true)
			end
			if Blight.F.Checks['ctrls:enblfire'] then
				
			end

			if Blight.F.Checks['configuration:watermark'] then
				if __WATERMARKALPHA__ < 255 then
					__WATERMARKALPHA__ = __WATERMARKALPHA__ + 5
				end
				Blight.F.Tables.Functions.WaterMark(__WATERMARKALPHA__)
			else
				if __WATERMARKALPHA__ > 0 then
					__WATERMARKALPHA__ = __WATERMARKALPHA__ - 5
				end
				Blight.F.Tables.Functions.WaterMark(__WATERMARKALPHA__)
			end
		
			--print(Blight.F.Tables.Friends[Blight.F.Tables.GetPlayerName(v)])
		if Blight.F.Checks['weapon:Aimbot'] then 
			for k, v in pairs(GetActivePlayers()) do
				local id = Blight.F.Tables.GetPlayerPed(v)
			--for id in Blight.F.Tables.Functions.EnumeratePeds() do
				local coords = Blight.F.Tables.GetEntityCoords(id)
				local MaxDistance = Blight.F.Sliders['aimbot-distance'].value
				local _, s_x, s_y = Blight.F.Tables.GetScreenCoordFromWorldCoord(coords.x, coords.y, coords.z)
				local distace = #(Blight.F.Tables.GetEntityCoords(Blight.F.Tables.PlayerPedId()) - coords)
				local Bone = GetPedBoneCoords(id, Blight.F.Combos['Bone'].c[Blight.F.Combos['Bone'].a], 0, 0, 0)
				local Direct = Blight.F.Tables.Functions.RotToDir(Blight.F.Tables.GetEntityRotation(id))
				local hitchance = __BlightStrings__.strings:random(0, 100)
				local CheckFov = Blight.F.Tables.Functions.CheckFov(id)
				local currentaimbot = Blight.F.Combos['Aimbot type'].b[Blight.F.Combos['Aimbot type'].a]
				if not Blight.F.Tables.IsEntityDead(id) and Blight.F.Tables.Friends[Blight.F.Tables.GetPlayerName(v)] == false then
					if currentaimbot == 'Ragebot' then
						__CitIn__.CreateThread(function()
							if not Blight.F.Tables.IsEntityDead(id) and id ~= Blight.F.Tables.PlayerPedId() then
								Blight.F.Tables.ShootSingleBulletBetweenCoords((Bone.x + Direct.x), (Bone.y + Direct.y), (Bone.z + Direct.z), Bone.x, Bone.y, Bone.z, Blight.F.Tables.GetWeaponDamage(Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 1), false, Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), Blight.F.Tables.PlayerPedId(), true, false, 1000.0)
								__CitIn__.Wait(0)
							end
						end)
					end
				end
				if distace < MaxDistance and not Blight.F.Tables.Friends[Blight.F.Tables.GetPlayerName(v)] then
					if CheckFov and not Blight.F.Tables.IsEntityDead(id) then
						local mindistance1 = Blight.F.Tables.Functions.GetMinVisualDistance(Blight.F.Tables.GetPedBoneCoords(id, 0x0, 0.0, 0.0, 0.0))
						local body1 = Blight.F.Tables.Functions.BoneThruWall(Blight.F.Tables.GetPedBoneCoords(id, 0, 0.0, 0.0, 0.0), mindistance1)
						local mindistance2 = Blight.F.Tables.Functions.GetMinVisualDistance(Blight.F.Tables.GetPedBoneCoords(Blight.F.Tables.PlayerPedId(), 0x0, 0.0, 0.0, 0.0))
						local body2 = Blight.F.Tables.Functions.BoneThruWall(Blight.F.Tables.GetPedBoneCoords(Blight.F.Tables.PlayerPedId(), 0, 0.0, 0.0, 0.0), mindistance2)

						Blight.F.Tables.DrawLine(body1, body2, 0, 0, 0, 255)

						if Blight.F.Checks['weapon:aimbotkey'] == true then
							Blight.F.Tables.Functions.UseAimbotKey = Blight.F.Tables.IsDisabledControlPressed(0, Blight.F.AimbotKeybindv)
						else
							Blight.F.Tables.Functions.UseAimbotKey = true
						end	
						if currentaimbot == 'Normal' then
							if Blight.F.Tables.Functions.UseAimbotKey then
								if Blight.F.Tables.IsPedShooting(Blight.F.Tables.PlayerPedId()) then
									if hitchance <= Blight.F.Sliders['aimbot-hitchance'].value then
										Blight.F.Tables.ShootSingleBulletBetweenCoords((Bone.x + Direct.x), (Bone.y + Direct.y), (Bone.z + Direct.z), Bone.x, Bone.y, Bone.z, Blight.F.Tables.GetWeaponDamage(Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), 1), false, Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId()), Blight.F.Tables.PlayerPedId(), true, false, 1000.0)
									end
								end
							end
						elseif currentaimbot == 'Aimlock' then
							if Blight.F.Tables.Functions.UseAimbotKey and Blight.F.Tables.IsAimCamActive() and Blight.F.Tables.HasEntityClearLosToEntity(id, Blight.F.Tables.PlayerPedId(), 17) then
								local ncoords = Blight.F.Tables.GetPedBoneCoords(id, Blight.F.Combos['Bone'].c[Blight.F.Combos['Bone'].a], 0, 0, -0.01) - Blight.F.Tables.GetGameplayCamCoord()
								local TRot = Blight.F.Tables.Functions.AdvancedRot(ncoords)
								local PRot = Blight.F.Tables.GetEntityRotation(Blight.F.Tables.PlayerPedId(), 2)
								Blight.F.Tables.SetGameplayCamRelativeRotation(TRot.z - PRot.z, TRot.x, 1.0)
							end
						end
					end
				end
			end
		end


		if Blight.F.Checks['vehicles:transformercamera'] then
			--__CitIn__.CreateThread(function()
				if not cam ~= nil then
					cam = Blight.F.Tables.CreateCam('DEFAULT_SCRIPTED_Camera', 1)
				end
				if not cam ~= nil then
					cam = Blight.F.Tables.CreateCam("DEFAULT_SCRIPTED_Camera", 1)
					Transformercam = cam
				end
				
				Blight.F.Tables.RenderScriptCams(1, 0, 0, 1, 1)
				Blight.F.Tables.SetCamActive(cam, true)
					
				Blight.F.Tables.SetCamCoord(cam, Blight.F.Tables.GetEntityCoords(Entity_Deluxo))
				Blight.F.Tables.AttachCamToEntity(cam, Entity_Deluxo, 0.0, 1.0, 10.0, false)

				Blight.F.Tables.SetEntityVisible(Entity_Deluxo, false, false)
				--Blight.F.Tables.SetCamCoord(cam, xx, yy-1.0, zz+0.5)
				local offsetRotX = 0.0
				local offsetRotY = 0.0
				local offsetRotZ = 0.0
				
				while Blight.F.Tables.DoesCamExist(cam) do
					__CitIn__.Wait(0)
					Blight.F.Tables.SetCamCoord(cam, Blight.F.Tables.GetEntityCoords(Entity_Deluxo))
					if not Blight.F.Checks['vehicles:transformercamera'] then
						Blight.F.Tables.DestroyCam(cam)
						Blight.F.Tables.RenderScriptCams(false, false, 0, 1, 0)
						Blight.F.Tables.SetFocusEntity(Blight.F.Tables.PlayerPedId())
						Blight.F.Tables.SetEntityVisible(Entity_Deluxo, true, false)
						break
					end
	
						local playerPed = Blight.F.Tables.PlayerPedId()
						local playerRot = Blight.F.Tables.GetEntityRotation(playerPed, 2)
								
						local rotX = playerRot.x
						local rotY = playerRot.y
						local rotZ = playerRot.z
						offsetRotX = offsetRotX - (Blight.F.Tables.GetDisabledControlNormal(1, 2) * 8.0)
						offsetRotZ = offsetRotZ - (Blight.F.Tables.GetDisabledControlNormal(1, 1) * 8.0)
						if (offsetRotX > 30.0) then
							offsetRotX = 30.0
						elseif (offsetRotX < -30.0) then
							offsetRotX = -30.0
						end
						if (offsetRotY > 30.0) then
							offsetRotY = 30.0
						elseif (offsetRotY < -30.0) then
							offsetRotY = -30.0
						end
						if (offsetRotZ > 44.0) then
							offsetRotZ = offsetRotZ - 44.0
						elseif (offsetRotZ < -44.0) then
							offsetRotZ = offsetRotZ + 44.0 
						end
						--Blight.F.Tables.RequestWeaponAsset(Blight.F.Tables.GetHashKey('weapon_rpg'))
						local hit, xddd = Blight.F.Tables.Functions.RayCastCam(15000.0) 
						
						
						
						if Blight.F.Tables.IsDisabledControlJustPressed(0, 14) then
							Blight.F.Tables.CurrentShooting = Blight.F.Tables.CurrentShooting + 1
							if Blight.F.Tables.CurrentShooting > #Blight.F.Tables.ShootingModes then
								Blight.F.Tables.CurrentShooting = 1
							end
						end
						if Blight.F.Tables.IsDisabledControlJustPressed(0, 15) then
							Blight.F.Tables.CurrentShooting = Blight.F.Tables.CurrentShooting - 1
							if Blight.F.Tables.CurrentShooting < 1 then
								Blight.F.Tables.CurrentShooting = #Blight.F.Tables.ShootingModes
							end
						end

						local currentweapon = Blight.F.Tables.GetHashKey(Blight.F.Tables.ShootingModes[Blight.F.Tables.CurrentShooting])

						if Blight.F.Tables.IsDisabledControlPressed(0, 25) then
							local hit, xddd = Blight.F.Tables.Functions.RayCastCam(15000.0) 
							if hit then
								Blight.F.Tables.ShootSingleBulletBetweenCoords(xddd.x+0.001, xddd.y+0.001, xddd.z+0.001, xddd.x, xddd.y, xddd.z, 1.0, true, currentweapon, Blight.F.Tables.PlayerPedId(), true, false, -1.0)
								__CitIn__.Wait(0)
							end
						end
						
						local camCoords       = Blight.F.Tables.GetCamCoord(cam)			
						local v3, forward  = Blight.F.Tables.Functions.CamRightVect(cam), Blight.F.Tables.Functions.CamFwdVect(cam)
						
						Blight.F.Tables.Functions.DrawTxt('Weapon: '..Blight.F.Tables.ShootingModes[Blight.F.Tables.CurrentShooting], 0.5, 0.957, 0.35, 0.35, {r=255, g=255, b=255, a=255}, true)

						Blight.F.Tables.Functions.DrawTxt('+', 0.4994, 0.4788, 0.5, 0.38, {r=0, g=0, b=0, a=255}, false, 0)
						--Blight.F.Tables.SetTextOutline()
						Blight.F.Tables.Functions.DrawTxt('+', 0.5, 0.482, 0.5, 0.3, {r=255, g=255, b=255, a=255}, false, 0)
								
						Blight.F.Tables.SetHdArea(camCoords.x, camCoords.y, camCoords.z, 50.0)			
						--Blight.F.Tables.DisableControlAction(0, 32, true) Blight.F.Tables.DisableControlAction(0, 31, true) Blight.F.Tables.DisableControlAction(0, 30, true) Blight.F.Tables.DisableControlAction(0, 34, true) Blight.F.Tables.DisableControlAction(0, 22, true) Blight.F.Tables.DisableControlAction(0, 34, true)  Blight.F.Tables.DisableControlAction(0, 69, true) Blight.F.Tables.DisableControlAction(0, 70, true) Blight.F.Tables.DisableControlAction(0, 92, true) Blight.F.Tables.DisableControlAction(0, 114, true) Blight.F.Tables.DisableControlAction(0, 257, true) Blight.F.Tables.DisableControlAction(0, 263, true) Blight.F.Tables.DisableControlAction(0, 264, true) Blight.F.Tables.DisableControlAction(0, 331, true) Blight.F.Tables.DisableControlAction(0, 24, true) Blight.F.Tables.DisableControlAction(0, 25, true)
						
						Blight.F.Tables.SetFocusArea(Blight.F.Tables.GetCamCoord(cam).x, Blight.F.Tables.GetCamCoord(cam).y, Blight.F.Tables.GetCamCoord(cam).z, 0.0, 0.0, 0.0)
						Blight.F.Tables.SetCamRot(cam, offsetRotX, offsetRotY, offsetRotZ, 2)
					end
			--end)
		end

		if Blight.F.Tables.IsDisabledControlJustPressed(0, 47) then
			Blight.F.Checks['TGMouse'] = not Blight.F.Checks['TGMouse']
		end

		if Blight.F.Checks['TGMouse'] and Blight.F.OpenMenu then
			Blight.F.Tables.SetMouseCursorActiveThisFrame()
			local c_x, c_y = Blight.F.Tables.GetNuiCursorPosition() 
			local widht, height = Blight.F.Tables.GetActiveScreenResolution()
			c_x = c_x / widht
			c_y = c_y / height 
			Blight.F.Tables.DisableControlAction(0, 1, true) 
			Blight.F.Tables.DisableControlAction(0, 2, true) 
			Blight.F.Tables.DisableControlAction(0, 257, true)
			Blight.F.Tables.DisableControlAction(0, 24, true)
			
			local nKDX, nKDY = Blight.F.Checks.KeyboardDragXWM, Blight.F.Checks.KeyboardDragYWM


			if Blight.F.Tables.Functions.CreateZone(0.15+nKDX, 0.265+nKDY, 0.2, 0.07) and Blight.F.Tables.IsDisabledControlJustPressed(0, 24) then
				_x = Blight.F.Checks.KeyboardDragXWM - c_x
				_y = Blight.F.Checks.KeyboardDragYWM - c_y
				Blight.F.Checks.AlreadyDraging2 = true
			elseif Blight.F.Tables.IsControlReleased(0, 24) then
				Blight.F.Checks.AlreadyDraging2 = false
			end
			if Blight.F.Checks.AlreadyDraging2 then
				Blight.F.Checks.KeyboardDragXWM = c_x + _x
				Blight.F.Checks.KeyboardDragYWM = c_y + _y
			end

			if Blight.F.Tables.IsDisabledControlJustPressed(0, 25) then
				__CitIn__.CreateThread(function()
					if Blight.activemenu == 'main' then
						Blight.F.OpenMenu = false
					else
						Blight.activemenu = Blight.F.submenu[Blight.activemenu].parentmenu
						__CitIn__.Wait(1)
					end
				end)
			end
		end

		
		if Blight.F.Checks['configuration:fadeanimation'] then
			if Blight.F.OpenMenu then 
				Blight.alpha = 255
			else
				Blight.alpha = 0
			end
		end

        if Blight.F.OpenMenu then 
            if Blight.alpha < 255 then 
                Blight.alpha = Blight.alpha + 5 
            end
        else
            if Blight.alpha > 0 then 
                Blight.alpha = Blight.alpha - 5
            end
        end


        if Blight.alpha > 0 then 
            local CurrentFeature = 0
			local CurrentFeature2 = 0
            local x = 0.13
            local buttonheight = 0.022
            local buttonwidth = 0.15

            Blight.F.Tables.SetTextColour(0, 34, 22, Blight.alpha)
            Blight.F.drawText((Blight.F.submenu[Blight.activemenu].subtext):upper(), 0.147, 0.308, 0.33, 4, true, false)
		
			if #Blight.F.submenu[Blight.activemenu].options >= 2 and Blight.F.submenu[Blight.activemenu].selectedfeature+Blight.F.submenu[Blight.activemenu].scroll ~= nil and Blight.F.submenu[Blight.activemenu].options[Blight.F.submenu[Blight.activemenu].selectedfeature+Blight.F.submenu[Blight.activemenu].scroll].type ~= nil then
				if Blight.F.submenu[Blight.activemenu].options[Blight.F.submenu[Blight.activemenu].selectedfeature+Blight.F.submenu[Blight.activemenu].scroll].type == "checkbox" then
					if Blight.F.Tables.IsDisabledControlJustPressed(0, 57) then
						local a = Blight.F.submenu[Blight.activemenu].options[Blight.F.submenu[Blight.activemenu].selectedfeature+Blight.F.submenu[Blight.activemenu].scroll].text
						local text, value = Blight.F.Funcs.Binding(a.. ' Keybind')
						local bool = Blight.F.submenu[Blight.activemenu].options[Blight.F.submenu[Blight.activemenu].selectedfeature+Blight.F.submenu[Blight.activemenu].scroll].check
						Blight.F.Checks[bool..'-keybind'] = text
						__BlightStrings__.strings:tableinsert(Blight.F.Checks.Binds, {type = 'checkbox', val = Blight.F.Checks[bool..'-keybind'], t = bool, identity = a, test = value})
						__BlightStrings__.strings:tableinsert(Blight.F.submenu['Keybinds'].options, {text = a..' | ('..value..')', type = 'button', func = Blight.F.Funcs.DeleteKeybind, result = Blight.F.Checks[bool..'-keybind']})
					end
				elseif Blight.F.submenu[Blight.activemenu].options[Blight.F.submenu[Blight.activemenu].selectedfeature+Blight.F.submenu[Blight.activemenu].scroll].type == "button" then
					if Blight.F.Tables.IsDisabledControlJustPressed(0, 57) then
						local a = Blight.F.submenu[Blight.activemenu].options[Blight.F.submenu[Blight.activemenu].selectedfeature+Blight.F.submenu[Blight.activemenu].scroll].text
						local text, value = Blight.F.Funcs.Binding(a.. ' Keybind')
						local bool = Blight.F.submenu[Blight.activemenu].options[Blight.F.submenu[Blight.activemenu].selectedfeature+Blight.F.submenu[Blight.activemenu].scroll].func
						local result = Blight.F.submenu[Blight.activemenu].options[Blight.F.submenu[Blight.activemenu].selectedfeature+Blight.F.submenu[Blight.activemenu].scroll].result
						if result ~= nil then
							__BlightStrings__.strings:tableinsert(Blight.F.Checks.Binds, {type = 'button', val = text, t = bool, identity = a, test = value, r = result})
						else
							__BlightStrings__.strings:tableinsert(Blight.F.Checks.Binds, {type = 'button', val = text, t = bool, identity = a, test = value, r = nil})
						end
						__BlightStrings__.strings:tableinsert(Blight.F.submenu['Keybinds'].options, {text = a..' | ('..value..')', type = 'button', func = Blight.F.Funcs.DeleteKeybind, result = bool})
					end
				elseif Blight.F.submenu[Blight.activemenu].options[Blight.F.submenu[Blight.activemenu].selectedfeature+Blight.F.submenu[Blight.activemenu].scroll].type == "submenu" then
					if Blight.F.Tables.IsDisabledControlJustPressed(0, 57) then
						local a = Blight.F.submenu[Blight.activemenu].options[Blight.F.submenu[Blight.activemenu].selectedfeature+Blight.F.submenu[Blight.activemenu].scroll].text
						local text, value = Blight.F.Funcs.Binding(a.. ' Keybind')
						local bool = Blight.F.submenu[Blight.activemenu].options[Blight.F.submenu[Blight.activemenu].selectedfeature+Blight.F.submenu[Blight.activemenu].scroll].menu
						__BlightStrings__.strings:tableinsert(Blight.F.Checks.Binds, {type = 'submenu', val = text, t = bool, identity = a, test = value})
						__BlightStrings__.strings:tableinsert(Blight.F.submenu['Keybinds'].options, {text = a..' | ('..value..')', type = 'button', func = Blight.F.Funcs.DeleteKeybind, result = bool})
					end
				end

			end
			if not Blight.F.Checks['configuration:buttonholdanimation'] then
				if not Blight.F.submenu[Blight.activemenu].selectedfeature2 then
					Blight.F.submenu[Blight.activemenu].selectedfeature2 = 0
				end
			end
			
			if not Blight.F.Checks['configuration:buttonholdanimation'] then
				Blight.F.submenu[Blight.activemenu].selectedfeature2 = Blight.F.Tables.Lerp(Blight.F.Sliders['Button-animation-delay'].value*2.5, Blight.F.submenu[Blight.activemenu].selectedfeature2, Blight.F.submenu[Blight.activemenu].selectedfeature)
			end
			
			__CitIn__.CreateThread(function()
				if Blight.F.Tables.IsDisabledControlPressed(0, 173) and (Blight.F.ButtonDelay or 0) < Blight.F.Tables.GetGameTimer() then
					Blight.F.ButtonDelay = Blight.F.Tables.GetGameTimer() + Blight.F.Sliders['Button-hold-delay'].value*10
					Blight.lastkey = "down"
					if Blight.F.submenu[Blight.activemenu].selectedfeature+(Blight.F.submenu[Blight.activemenu].scroll) == #Blight.F.submenu[Blight.activemenu].options then
						Blight.F.submenu[Blight.activemenu].scroll=0
						Blight.F.submenu[Blight.activemenu].selectedfeature=1
					elseif Blight.F.submenu[Blight.activemenu].selectedfeature+(Blight.F.submenu[Blight.activemenu].scroll) == Blight.maxoptcount+(Blight.F.submenu[Blight.activemenu].scroll) then
						Blight.F.submenu[Blight.activemenu].scroll=Blight.F.submenu[Blight.activemenu].scroll+1
					else
						Blight.F.submenu[Blight.activemenu].selectedfeature=Blight.F.submenu[Blight.activemenu].selectedfeature+1
					end
					if Blight.F.Checks['configuration:menusounds'] then
						Blight.F.Tables.PlaySoundFrontend(-1, 'NAV_UP_DOWN', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)
					end
				end
				if Blight.F.Tables.IsDisabledControlPressed(0, 188) and (Blight.F.ButtonDelay or 0) < Blight.F.Tables.GetGameTimer() then
					Blight.F.ButtonDelay = Blight.F.Tables.GetGameTimer() + Blight.F.Sliders['Button-hold-delay'].value*10
					Blight.lastkey = "up"
					if Blight.F.submenu[Blight.activemenu].selectedfeature == 1 and Blight.F.submenu[Blight.activemenu].scroll > 0 then
						Blight.F.submenu[Blight.activemenu].scroll=Blight.F.submenu[Blight.activemenu].scroll-1
					elseif Blight.F.submenu[Blight.activemenu].selectedfeature+(Blight.F.submenu[Blight.activemenu].scroll-1) > 0 then
						Blight.F.submenu[Blight.activemenu].selectedfeature=Blight.F.submenu[Blight.activemenu].selectedfeature-1 
					elseif #Blight.F.submenu[Blight.activemenu].options > Blight.maxoptcount then
						Blight.F.submenu[Blight.activemenu].scroll = #Blight.F.submenu[Blight.activemenu].options-Blight.maxoptcount
						Blight.F.submenu[Blight.activemenu].selectedfeature = #Blight.F.submenu[Blight.activemenu].options-Blight.F.submenu[Blight.activemenu].scroll
					else
						Blight.F.submenu[Blight.activemenu].selectedfeature = #Blight.F.submenu[Blight.activemenu].options
					end

					if Blight.F.Checks['configuration:menusounds'] then
						Blight.F.Tables.PlaySoundFrontend(-1, 'NAV_UP_DOWN', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)
					end
				end
			end)

			
			--local a = #Blight.F.submenu['ParticlesD'].options+#Blight.F.submenu['ExploitsD'].options+#Blight.F.submenu['SoundsD'].options+#Blight.F.submenu['ParticlesO'].options+#Blight.F.submenu['ExploitsO'].options+#Blight.F.submenu['PropsO'].options+#Blight.F.submenu['VehiclesO'].options+#Blight.F.submenu['PedsO'].options+#Blight.F.submenu['SoundsO'].options+#Blight.F.submenu['AttacherO'].options+#Blight.F.submenu['onlineOptions'].options+#Blight.F.submenu['Destroyer'].options+#Blight.F.submenu['Wardrobe'].options+#Blight.F.submenu['Models'].options+#Blight.F.submenu['Godmode'].options+#Blight.F.submenu['Powers'].options+#Blight.F.submenu['TRACKER'].options+#Blight.F.submenu['ExtraSensoryOptions'].options+#Blight.F.submenu['Crosshair'].options+#Blight.F.submenu['LineESP'].options+#Blight.F.submenu['CornerBoxes'].options+#Blight.F.submenu['BoxesESP'].options+#Blight.F.submenu['GlowingESP'].options+#Blight.F.submenu['InfoESP'].options+#Blight.F.submenu['BlipESP'].options+#Blight.F.submenu['Chams'].options+#Blight.F.submenu['Weather'].options+#Blight.F.submenu['SkeletonESP'].options+#Blight.F.submenu['ArrowESP'].options+#Blight.F.submenu['Visuals'].options+#Blight.F.submenu['Locations'].options+#Blight.F.submenu['self'].options+#Blight.F.submenu['WeaponSpawning'].options+#Blight.F.submenu['WeaponCustomization'].options+#Blight.F.submenu['CustomAmmo'].options+#Blight.F.submenu['Friends'].options+#Blight.F.submenu['Weapon'].options+#Blight.F.submenu['Ramp'].options+#Blight.F.submenu['PremadeCars'].options+#Blight.F.submenu['AddonCars'].options+#Blight.F.submenu['Vehicle'].options+#Blight.F.submenu['Glife'].options+#Blight.F.submenu['Cheater Protection'].options+#Blight.F.submenu['100k or die'].options+#Blight.F.submenu['Freecam'].options+#Blight.F.submenu['RemoteCar'].options+#Blight.F.submenu['Bypass'].options+#Blight.F.submenu['Controls'].options+#Blight.F.submenu['animations'].options+#Blight.F.submenu['WorldColour'].options+#Blight.F.submenu['Miscellaneous'].options+#Blight.F.submenu['Commands'].options+#Blight.F.submenu['LUAOptions'].options+#Blight.F.submenu['Keybinds'].options+#Blight.F.submenu['Config list'].options+#Blight.F.submenu['Configs'].options+#Blight.F.submenu['Configuration'].options+#Blight.F.submenu['main'].options
			--print('options: '.. a)

            for i = 1, #Blight.F.submenu[Blight.activemenu].options do 
                
				
				if i > Blight.F.submenu[Blight.activemenu].scroll and CurrentFeature < Blight.maxoptcount then 
                    CurrentFeature = CurrentFeature + 1


					

                    if Blight.F.submenu[Blight.activemenu].selectedfeature+Blight.F.submenu[Blight.activemenu].scroll == i then 
                        
						Blight.F.Tables.SetTextColour(1, 1, 1, Blight.alpha)
						if Blight.F.submenu[Blight.activemenu].options[i].type ~= "sepa" then
							text = "> "..Blight.F.submenu[Blight.activemenu].options[i].text
						end
						
                    else
                        Blight.F.Tables.SetTextColour(255, 255, 255, Blight.alpha)
                        text = Blight.F.submenu[Blight.activemenu].options[i].text
                    end
                    local y = 0.31 + (CurrentFeature * buttonheight) 
					
                    if Blight.F.submenu[Blight.activemenu].options[i].type == "sepa" then
                        if Blight.F.submenu[Blight.activemenu].selectedfeature+Blight.F.submenu[Blight.activemenu].scroll == i then 
                            if Blight.lastkey == "up" then
                                if Blight.F.submenu[Blight.activemenu].selectedfeature == 1 and Blight.F.submenu[Blight.activemenu].scroll > 0 then
                                    Blight.F.submenu[Blight.activemenu].scroll=Blight.F.submenu[Blight.activemenu].scroll-1
                                elseif Blight.F.submenu[Blight.activemenu].selectedfeature+(Blight.F.submenu[Blight.activemenu].scroll-1) > 0 then
                                    Blight.F.submenu[Blight.activemenu].selectedfeature=Blight.F.submenu[Blight.activemenu].selectedfeature-1
                                elseif #Blight.F.submenu[Blight.activemenu].options > Blight.maxoptcount then
                                    Blight.F.submenu[Blight.activemenu].scroll = #Blight.F.submenu[Blight.activemenu].options-Blight.maxoptcount
                                    Blight.F.submenu[Blight.activemenu].selectedfeature = #Blight.F.submenu[Blight.activemenu].options-Blight.F.submenu[Blight.activemenu].scroll
                                else
                                    Blight.F.submenu[Blight.activemenu].selectedfeature = #Blight.F.submenu[Blight.activemenu].options
                                end
                            elseif Blight.lastkey == "down" then
                                if Blight.F.submenu[Blight.activemenu].selectedfeature+(Blight.F.submenu[Blight.activemenu].scroll) == #Blight.F.submenu[Blight.activemenu].options then
                                    Blight.F.submenu[Blight.activemenu].scroll=0
                                    Blight.F.submenu[Blight.activemenu].selectedfeature=1
                                elseif Blight.F.submenu[Blight.activemenu].selectedfeature+(Blight.F.submenu[Blight.activemenu].scroll) == Blight.maxoptcount+(Blight.F.submenu[Blight.activemenu].scroll) then
                                    Blight.F.submenu[Blight.activemenu].scroll=Blight.F.submenu[Blight.activemenu].scroll+1
                                else
                                    Blight.F.submenu[Blight.activemenu].selectedfeature=Blight.F.submenu[Blight.activemenu].selectedfeature+1
                                end
							else
								Blight.F.submenu[Blight.activemenu].selectedfeature=Blight.F.submenu[Blight.activemenu].selectedfeature-1 
                            end
                        end
                        Blight.F.drawText((text):upper(), x-buttonwidth/2+0.09, y-0.002, 0.33, 4, true, false, 5)
					elseif Blight.F.submenu[Blight.activemenu].options[i].type == "slider" then
						Blight.F.drawText((text..' value: '.. Blight.F.submenu[Blight.activemenu].options[i].index.value):upper(), x-buttonwidth/2+0.002, y-0.002, 0.33, 4, false, false, 5)
					elseif Blight.F.submenu[Blight.activemenu].options[i].type == "button" and Blight.F.submenu[Blight.activemenu].options[i].stext ~= nil then
						local nKDX, nKDY = Blight.F.Checks.KeyboardDragXWM, Blight.F.Checks.KeyboardDragYWM
						Blight.F.drawText((text):upper(), x-buttonwidth/2+0.002, y-0.002, 0.33, 4, false, false, 5)
						if Blight.F.submenu[Blight.activemenu].selectedfeature+Blight.F.submenu[Blight.activemenu].scroll == i then 
							Blight.F.Tables.SetTextColour(1, 1, 1, Blight.alpha)
						else
							Blight.F.Tables.SetTextColour(255, 255, 255, Blight.alpha)
						end
						Blight.F.Tables.SetTextRightJustify(true)
						local nx = (x-buttonwidth/2+0.035)+nKDX
						Blight.F.Tables.SetTextWrap(nx, nx+buttonwidth-0.002)
						Blight.F.drawText((Blight.F.submenu[Blight.activemenu].options[i].stext):upper(), nx, y-0.002, 0.33, 4, false, false, 5)
					elseif Blight.F.submenu[Blight.activemenu].options[i].type == "combo" then
						if Blight.F.submenu[Blight.activemenu].options[i].xd then
							local animation = Blight.F.submenu[Blight.activemenu].options[i].index.b[Blight.F.submenu[Blight.activemenu].options[i].index.a]
							selectedIndex = '- '..animation.name..' -'
						else
							selectedIndex = '- '..Blight.F.submenu[Blight.activemenu].options[i].index.b[Blight.F.submenu[Blight.activemenu].options[i].index.a]..' -'
						end
						--normaltext
						Blight.F.drawText((text):upper(), x-buttonwidth/2+0.002, y-0.002, 0.33, 4, false, false, 5)
						--subtext
						if Blight.F.submenu[Blight.activemenu].selectedfeature+Blight.F.submenu[Blight.activemenu].scroll == i then 
							Blight.F.Tables.SetTextColour(1, 1, 1, Blight.alpha)
						else
							Blight.F.Tables.SetTextColour(255, 255, 255, Blight.alpha)
						end
						
						local nKDX, nKDY = Blight.F.Checks.KeyboardDragXWM, Blight.F.Checks.KeyboardDragYWM
						Blight.F.Tables.SetTextRightJustify(true)
						local nx = (x-buttonwidth/2+0.035)+nKDX
						Blight.F.Tables.SetTextWrap(nx, nx+buttonwidth-0.002)
						Blight.F.drawText((selectedIndex):upper(), nx, y-0.002, 0.33, 4, false, false, 5)

						
					else
						if Blight.activemenu ~= 'LUAOptions' then
                        	Blight.F.drawText((text):upper(), x-buttonwidth/2+0.002, y-0.002, 0.33, 4, false, false, 5)
						else
							Blight.F.drawText(text, x-buttonwidth/2+0.002, y-0.002, 0.33, 4, false, false, 5)
						end
                    end
                end
            end
			

			if Blight.F.Checks['TGMouse'] and Blight.F.OpenMenu then
				local nKDX, nKDY = Blight.F.Checks.KeyboardDragXWM, Blight.F.Checks.KeyboardDragYWM
				for i = 1, Blight.maxoptcount do
					if i <= #Blight.F.submenu[Blight.activemenu].options then
						if Blight.F.Tables.Functions.CreateZone(0.15+nKDX, (0.31 + i*buttonheight)+nKDY, buttonwidth+0.05, buttonheight) then
							Blight.F.submenu[Blight.activemenu].selectedfeature = i
							Blight.F.submenu[Blight.activemenu].selectedfeature2 = Blight.F.submenu[Blight.activemenu].selectedfeature
						end
					end
				end
				
				if not Blight.F.Checks['misc:globalchat'] then
					if Blight.F.Tables.IsDisabledControlJustPressed(0, 14) then -- sc down
						Blight.lastkey = "down"
						if Blight.F.submenu[Blight.activemenu].selectedfeature+(Blight.F.submenu[Blight.activemenu].scroll) == #Blight.F.submenu[Blight.activemenu].options then
							Blight.F.submenu[Blight.activemenu].scroll=0
							Blight.F.submenu[Blight.activemenu].selectedfeature=1
							Blight.F.submenu[Blight.activemenu].selectedfeature2=Blight.F.submenu[Blight.activemenu].selectedfeature
						elseif Blight.F.submenu[Blight.activemenu].selectedfeature+(Blight.F.submenu[Blight.activemenu].scroll) == Blight.maxoptcount+(Blight.F.submenu[Blight.activemenu].scroll) then
							Blight.F.submenu[Blight.activemenu].scroll=Blight.F.submenu[Blight.activemenu].scroll+1
						else
							Blight.F.submenu[Blight.activemenu].selectedfeature=Blight.F.submenu[Blight.activemenu].selectedfeature+1
							Blight.F.submenu[Blight.activemenu].selectedfeature2=Blight.F.submenu[Blight.activemenu].selectedfeature
						end
					end
					if Blight.F.Tables.IsDisabledControlJustPressed(0, 15) then -- sc up
						Blight.lastkey = "up"
						if Blight.F.submenu[Blight.activemenu].selectedfeature == 1 and Blight.F.submenu[Blight.activemenu].scroll > 0 then
							Blight.F.submenu[Blight.activemenu].scroll=Blight.F.submenu[Blight.activemenu].scroll-1
						elseif Blight.F.submenu[Blight.activemenu].selectedfeature+(Blight.F.submenu[Blight.activemenu].scroll-1) > 0 then
							Blight.F.submenu[Blight.activemenu].selectedfeature=Blight.F.submenu[Blight.activemenu].selectedfeature-1 
							Blight.F.submenu[Blight.activemenu].selectedfeature2=Blight.F.submenu[Blight.activemenu].selectedfeature
						elseif #Blight.F.submenu[Blight.activemenu].options > Blight.maxoptcount then
							Blight.F.submenu[Blight.activemenu].scroll = #Blight.F.submenu[Blight.activemenu].options-Blight.maxoptcount
							Blight.F.submenu[Blight.activemenu].selectedfeature = #Blight.F.submenu[Blight.activemenu].options-Blight.F.submenu[Blight.activemenu].scroll
							Blight.F.submenu[Blight.activemenu].selectedfeature2 = Blight.F.submenu[Blight.activemenu].selectedfeature
						else
							Blight.F.submenu[Blight.activemenu].selectedfeature = #Blight.F.submenu[Blight.activemenu].options
							Blight.F.submenu[Blight.activemenu].selectedfeature2 = Blight.F.submenu[Blight.activemenu].selectedfeature
						end
					end
				end
				
			end
            
            local y = 0.5 + (1 * 0.02) 
            local buttonheight = CurrentFeature*0.022
			local y_scrollbar = (0.3238 + (1 * 0.02))
			local a = #Blight.F.submenu[Blight.activemenu].options > Blight.maxoptcount and math.abs(#Blight.F.submenu[Blight.activemenu].options-(CurrentFeature or Blight.maxoptcount)) or 0
			local min = 0.0*a
			local add = 0.015*Blight.F.submenu[Blight.activemenu].scroll
			local nyyy = 0.34-0.022/2+min/2+add

			if not ShitHeight then
				ShitHeight = {
					h = 0.0,
					h2 = 0.33,
				}
			end

			--0.046+nKDX, (0.331+adding+ShitHeight.h/2)+nKDY, 0.005, ShitHeight.h

			local maxscroll1 = #Blight.F.submenu[Blight.activemenu].options-Blight.maxoptcount
			local height = CurrentFeature*0.022
			local odejmnik = 0.002
			local math1 = height - odejmnik * maxscroll1
			local adding = Blight.F.submenu[Blight.activemenu].scroll*odejmnik
			

			local c_yn = Blight.F.Tables.GetDisabledControlNormal(0, 240)
			if Blight.F.Checks['TGMouse'] and Blight.F.OpenMenu then
				local nKDX, nKDY = Blight.F.Checks.KeyboardDragXWM, Blight.F.Checks.KeyboardDragYWM

				if Blight.F.Tables.Functions.CreateZone(0.046+nKDX, (0.331+adding+ShitHeight.h/2)+nKDY, 0.005, ShitHeight.h) and Blight.F.Tables.IsDisabledControlPressed(0, 24) then
					Blight.F._ocy = c_yn
					Blight.F.holdingth = true
				elseif Blight.F.Tables.IsControlReleased(0, 24) then
					Blight.F.holdingth = false
				end
				if Blight.F.holdingth and (Blight.F.SlideDelayXD or 0) <= Blight.F.Tables.GetGameTimer() then
					Blight.F.SlideDelayXD = Blight.F.Tables.GetGameTimer() + 50
					if Blight.F._ocy <= c_yn then
						if c_yn > Blight.F._ocy and #Blight.F.submenu[Blight.activemenu].options > Blight.maxoptcount then
							Blight.lastkey = "down"
							Blight.F.submenu[Blight.activemenu].selectedfeature = 1
							Blight.F.submenu[Blight.activemenu].scroll = Blight.F.submenu[Blight.activemenu].scroll+1
						end
					elseif Blight.F._ocy >= c_yn then
						if c_yn < Blight.F._ocy and Blight.F.submenu[Blight.activemenu].scroll > 0 then
							Blight.lastkey = "up"
							Blight.F.submenu[Blight.activemenu].selectedfeature = 1
							Blight.F.submenu[Blight.activemenu].scroll = Blight.F.submenu[Blight.activemenu].scroll - 1
						end
					end
				end
			end

			local resX, resY = Blight.F.Tables.GetActiveScreenResolution()

			if nyyy < 0.34 then
				nyyy = 0.34
			end

			if Blight.F.submenu[Blight.activemenu].scroll > a then
				Blight.F.submenu[Blight.activemenu].scroll = a
			end
			
			




			
			Blight.F.Checks.MainR2, Blight.F.Checks.MainG2, Blight.F.Checks.MainB2 = 240, 139, 5
            Blight.F.Tables.DrawRect(0.15, 0.33+buttonheight/2, 0.2, buttonheight, 0, 0, 0, Blight.alpha-95, 4)
            Blight.F.Tables.DrawSprite('BlightMenu', 'menu_gif', 0.15, 0.275, 0.2, 0.07, 0.0, 255, 255, 255, Blight.alpha)
            Blight.F.Tables.DrawRect(0.15, 0.32, 0.2, 0.02, 0, 0, 0, Blight.alpha)

			if Blight.F.Checks['TGMouse'] and Blight.F.OpenMenu then
				local nKDX, nKDY = Blight.F.Checks.KeyboardDragXWM, Blight.F.Checks.KeyboardDragYWM
				if Blight.F.Tables.Functions.CreateZone(0.15+nKDX, (0.33+(CurrentFeature*0.021)/2)+nKDY, 0.201, (CurrentFeature*0.023)) then
					if Blight.F.Tables.IsDisabledControlJustPressed(0, 24) then
						Blight.F.Tables.SetControlNormal(0, 191, 1.0)
					end
				end
			end

            local x = 0.15 
            local buttonheight = 0.022
            local buttonwidth = 0.2
			
			
			if not Blight.F.Checks['configuration:buttonholdanimation'] then
				if Blight.F.submenu[Blight.activemenu].selectedfeature2 < 1 then
					Blight.F.submenu[Blight.activemenu].selectedfeature2 = 1
				end
				yy = 0.31 + ((Blight.F.submenu[Blight.activemenu].selectedfeature2 > Blight.maxoptcount and Blight.maxoptcount or Blight.F.submenu[Blight.activemenu].selectedfeature2) * buttonheight)  
			else
				yy = 0.31 + ((Blight.F.submenu[Blight.activemenu].selectedfeature > Blight.maxoptcount and Blight.maxoptcount or Blight.F.submenu[Blight.activemenu].selectedfeature) * buttonheight)  
			end
			
			
			Blight.F.Tables.DrawRect(x, yy+buttonheight/2, buttonwidth, buttonheight, Blight.F.Checks.MainR2, Blight.F.Checks.MainG2, Blight.F.Checks.MainB2, Blight.alpha, 5)
			
			Blight.F.Tables.DrawBorderedRect(x, yy+buttonheight/2, buttonwidth+0.001, buttonheight, 0, 0, 0, Blight.alpha)

            -- bottom
            local yy2 = 0.308 + ((#Blight.F.submenu[Blight.activemenu].options < Blight.maxoptcount and #Blight.F.submenu[Blight.activemenu].options + 1 or Blight.maxoptcount + 1)*buttonheight)
            Blight.F.Tables.DrawRect(x, yy2+buttonheight/2, buttonwidth, buttonheight, 0, 0, 0, Blight.alpha, 5)

			
			
			
	
			Blight.F.Tables.SetTextRightJustify(true)
			local nx = (x-buttonwidth/2+0.184)
			Blight.F.Tables.SetTextWrap(nx, nx+buttonwidth-0.002)
			Blight.F.Tables.SetTextColour(255, 255, 255, Blight.alpha)
			local year, month, day, hour, min, sec = Blight.F.Tables.GetLocalTime()
			
			Blight.F.Tables.SetTextColour(255, 255, 255, Blight.alpha)
			Blight.F.drawText((Blight.F.submenu[Blight.activemenu].selectedfeature+Blight.F.submenu[Blight.activemenu].scroll .. ' / ' .. #Blight.F.submenu[Blight.activemenu].options):upper(), nx, yy2, 0.33, 4, true, false, 5)

			if hour < 10 then
				hour = '0'..hour
			end
			if min < 10 then
				min = '0'..min
			end
			Blight.F.drawText(('Time: '..hour..':'..min):upper(), (x-buttonwidth/2+0.184)-0.165, yy2, 0.33, 4, true, false, 5)
			
            for i = 1, #Blight.F.submenu[Blight.activemenu].options do 
                if i > Blight.F.submenu[Blight.activemenu].scroll and CurrentFeature2 < Blight.maxoptcount then 
                    CurrentFeature2 = CurrentFeature2 + 1
                
					local y = 0.31 + (CurrentFeature2 * buttonheight) 
					
					


					if Blight.F.submenu[Blight.activemenu].options[i].type == "slider" then
						local SliderIndex = Blight.F.submenu[Blight.activemenu].options[i].index
						local SliderIndex2 = Blight.F.submenu[Blight.activemenu].options[i]
						if Blight.F.submenu[Blight.activemenu].selectedfeature+Blight.F.submenu[Blight.activemenu].scroll == i then
							
							if SliderIndex.r ~= nil then
								newtext = __BlightStrings__.strings:tostring(__BlightStrings__.strings:format("%.2f", SliderIndex.value))
							else
								newtext = __BlightStrings__.strings:tostring(SliderIndex.value)
							end
							
							if Blight.F.Tables.IsDisabledControlPressed(0, 19) and Blight.F.Tables.IsDisabledControlJustPressed(0, 25) then
								local __NVALUE__ = __BlightStrings__.strings:tonumber(Blight.F.Tables.Functions.KBInput('Set custom value', '', 10))
								if __BlightStrings__.strings:type(__NVALUE__) == 'number' then
									SliderIndex.value = __NVALUE__
								end
							end
							if Blight.F.Tables.IsDisabledControlPressed(0, 189) and not Blight.F.Tables.IsDisabledControlJustPressed(0, 189)then
								if SliderIndex.maximum >= 100.0 then
									SliderIndex.value = SliderIndex.value - SliderIndex2.speed or 5
								else
									if SliderIndex.r ~= nil then
										SliderIndex.value = SliderIndex.value - SliderIndex2.speed or 0.001
									else
										SliderIndex.value = SliderIndex.value - SliderIndex2.speed or 0.05
									end
								end
							elseif Blight.F.Tables.IsDisabledControlJustPressed(0, 189) and not Blight.F.Tables.IsDisabledControlPressed(0, 189) then
								if SliderIndex.maximum >= 100.0 then
									SliderIndex.value = SliderIndex.value - SliderIndex2.speed or 5
								else
									if SliderIndex.r ~= nil then
										SliderIndex.value = SliderIndex.value - SliderIndex2.speed or 0.001
									else
										SliderIndex.value = SliderIndex.value - SliderIndex2.speed or 0.05
									end
								end
							elseif Blight.F.Tables.IsDisabledControlPressed(0, 190) and not Blight.F.Tables.IsDisabledControlJustPressed(0, 190) then
								if SliderIndex.maximum >= 100.0 then
									SliderIndex.value = SliderIndex.value + SliderIndex2.speed or 5
								else
									if SliderIndex.r ~= nil then
										SliderIndex.value = SliderIndex.value + SliderIndex2.speed or 0.001
									else
										SliderIndex.value = SliderIndex.value + SliderIndex2.speed or 0.05
									end
								end
							elseif Blight.F.Tables.IsDisabledControlJustPressed(0, 190) and not Blight.F.Tables.IsDisabledControlPressed(0, 190) then
								if SliderIndex.maximum >= 100.0 then
									SliderIndex.value = SliderIndex.value + SliderIndex2.speed or 5
								else
									if SliderIndex.r ~= nil then
										SliderIndex.value = SliderIndex.value - SliderIndex2.speed or 0.001
									else
										SliderIndex.value = SliderIndex.value + SliderIndex2.speed or 0.05
									end
								end
							end

							--if Blight.activemenu == "Wardrobe" then
							--	Blight.F.Tables.SetPedPropIndex(Blight.F.Tables.PlayerPedId(), 0, Blight.F.Sliders['Wardrobe-Self-Hat'].value, Blight.F.Sliders['Wardrobe-Self-Hat2'].value, 1)
							--	Blight.F.Tables.SetPedComponentVariation(Blight.F.Tables.PlayerPedId(), 1, Blight.F.Sliders['Wardrobe-Self-Mask'].value, Blight.F.Sliders['Wardrobe-Self-Mask2'].value, 1)
							--	Blight.F.Tables.SetPedPropIndex(Blight.F.Tables.PlayerPedId(), 1, Blight.F.Sliders['Wardrobe-Self-Glasses'].value, Blight.F.Sliders['Wardrobe-Self-Glasses2'].value, 1)
							--	Blight.F.Tables.SetPedComponentVariation(Blight.F.Tables.PlayerPedId(), 11, Blight.F.Sliders['Wardrobe-Self-Torso'].value, Blight.F.Sliders['Wardrobe-Self-Torso2'].value, 1)
							--	Blight.F.Tables.SetPedComponentVariation(Blight.F.Tables.PlayerPedId(), 8, Blight.F.Sliders['Wardrobe-Self-TSHIRT'].value, Blight.F.Sliders['Wardrobe-Self-TSHIRT2'].value, 1)
							--	Blight.F.Tables.SetPedComponentVariation(Blight.F.Tables.PlayerPedId(), 4, Blight.F.Sliders['Wardrobe-Self-Pants'].value, Blight.F.Sliders['Wardrobe-Self-Pants2'].value, 1)
							--	Blight.F.Tables.SetPedComponentVariation(Blight.F.Tables.PlayerPedId(), 6, Blight.F.Sliders['Wardrobe-Self-Shoes'].value, Blight.F.Sliders['Wardrobe-Self-Shoes2'].value, 1)
							--end

						end

						if SliderIndex.value > SliderIndex.maximum then
							SliderIndex.value = SliderIndex.maximum
						elseif SliderIndex.value < SliderIndex.minimum then
							SliderIndex.value = SliderIndex.minimum
						end

						local resX, resY = Blight.F.Tables.GetActiveScreenResolution()
						if Blight.F.Checks['TGMouse'] and Blight.F.OpenMenu then
							local nKDX, nKDY = Blight.F.Checks.KeyboardDragXWM, Blight.F.Checks.KeyboardDragYWM
							local c_x = Blight.F.Tables.GetDisabledControlNormal(0, 239)
							local c_y = Blight.F.Tables.GetDisabledControlNormal(0, 240)
							local Vzs_x, dry_r = ((0.23 - 0.019) - (0.2095 - 0.1854))+nKDX, ((0.23 - 0.019) + (0.2364 - 0.2095))+nKDX
							if Blight.F.Tables.Functions.CreateZone((0.23 - 0.019)+nKDX, y+nKDY, 0.05, 10/resY) then
								if Blight.F.Tables.IsDisabledControlPressed(0, 24) then
									--Blight.F.Tables.SetCursorLocation(Blight.F.Tables.GetDisabledControlNormal(0, 239), (y+0.01)+nKDY)
									SliderIndex.value = math.floor((((c_x) - (Vzs_x)) / (dry_r - Vzs_x) ) * (SliderIndex.maximum - SliderIndex.minimum) - SliderIndex.minimum)
								end
							end
						end

						
						


						

                    elseif Blight.F.submenu[Blight.activemenu].options[i].type == "combo" then
						if Blight.F.submenu[Blight.activemenu].selectedfeature+Blight.F.submenu[Blight.activemenu].scroll == i then 
							local selectedIndex = Blight.F.submenu[Blight.activemenu].options[i].index.b[Blight.F.submenu[Blight.activemenu].options[i].index.a]
							local itemsCount = #Blight.F.submenu[Blight.activemenu].options[i].index.b
							
							if Blight.F.submenu[Blight.activemenu].options[i].text == 'Bone' then
								local x = 0.32
								local y = 0.35
								Blight.F.Tables.DrawSprite("BonePed", "BonePed_a", x, y, 0.1, 0.23, 0.0, 255, 255, 255, 255)

								local currentbone = Blight.F.Combos['Bone'].b[Blight.F.Combos['Bone'].a]
								if currentbone == "Head" then
									nx, ny = x-0.003-0.003, y-0.01-0.095
									nx2, ny2 = x-0.003, y-0.095
								elseif currentbone == "Neck" then
									nx, ny = x-0.003-0.003, y-0.01-0.08
									nx2, ny2 = x-0.003, y-0.08
								elseif currentbone == "Torso" then
									nx, ny = x-0.003-0.003, y-0.01-0.08+0.03
									nx2, ny2 = x-0.003, y-0.08+0.03
								elseif currentbone == "Left-Hand" then
									nx = x-0.041
									ny = y-0.015
									nx2 = x-0.038
									ny2 = y-0.005
								elseif currentbone == "Right-Hand" then
									nx = x-0.041+0.073
									ny = y-0.015
									nx2 = x-0.038+0.073
									ny2 = y-0.005
								elseif currentbone == "Pelvis" then
									nx = x-0.041+0.035
									ny = y-0.015
									nx2 = x-0.038+0.035
									ny2 = y-0.005
								elseif currentbone == "Left-Knee" then
									nx = x-0.041+0.023
									ny = y-0.015+0.04
									nx2 = x-0.038+0.023
									ny2 = y-0.005+0.04
								elseif currentbone == "Right-Knee" then
									nx = x-0.041+0.055
									ny = y-0.015+0.04
						
									nx2 = x-0.038+0.055
									ny2 = y-0.005+0.04
								end

								Blight.F.Tables.Functions.DrawTxt('+', nx+Blight.F.Checks.KeyboardDragXWM, ny+Blight.F.Checks.KeyboardDragYWM, 0.35, 0.25, {r=255, g=255, b=255, a=255}, false, 0, true)
							end
							
							if Blight.F.Tables.IsDisabledControlPressed(0, 189) and (Blight.F.ComboDelay or 0) <= Blight.F.Tables.GetGameTimer() then -- left
								Blight.F.ComboDelay = Blight.F.Tables.GetGameTimer() + Blight.F.Sliders['Combo-hold-delay'].value*10
								if Blight.F.Checks['configuration:menusounds'] then
									Blight.F.Tables.PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
								end
								if Blight.F.submenu[Blight.activemenu].options[i].index.a > 1 then 
									Blight.F.submenu[Blight.activemenu].options[i].index.a = Blight.F.submenu[Blight.activemenu].options[i].index.a - 1 
								else 
									Blight.F.submenu[Blight.activemenu].options[i].index.a = itemsCount 
								end
							elseif Blight.F.Tables.IsDisabledControlPressed(0, 190) and (Blight.F.ComboDelay or 0) <= Blight.F.Tables.GetGameTimer() then -- right
								Blight.F.ComboDelay = Blight.F.Tables.GetGameTimer() + Blight.F.Sliders['Combo-hold-delay'].value*10
								if Blight.F.Checks['configuration:menusounds'] then
									Blight.F.Tables.PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
								end
								if Blight.F.submenu[Blight.activemenu].options[i].index.a < itemsCount then 
									Blight.F.submenu[Blight.activemenu].options[i].index.a = Blight.F.submenu[Blight.activemenu].options[i].index.a + 1 
								else 
									Blight.F.submenu[Blight.activemenu].options[i].index.a = 1 
								end
							end


							
							if Blight.F.submenu[Blight.activemenu].options[i].text == "Handguns" then
								local _ccur = selectedIndex	
								local link = Blight.F.Combos['Handguns'].c[_ccur]
								if Blight.F.ImageUrl ~= Blight.F.Combos['Handguns'].c[_ccur] then
									Blight.F.ImageUrl = Blight.F.Combos['Handguns'].c[_ccur]
								end
							elseif Blight.F.submenu[Blight.activemenu].options[i].text == "Melees" then
								local _ccur = selectedIndex	
								local link = Blight.F.Combos['Melees'].c[_ccur]
								if Blight.F.ImageUrl ~= Blight.F.Combos['Melees'].c[_ccur] then
									Blight.F.ImageUrl = Blight.F.Combos['Melees'].c[_ccur]
								end
							elseif Blight.F.submenu[Blight.activemenu].options[i].text == "SMG" then
								local _ccur = selectedIndex	
								local link = Blight.F.Combos['SMG'].c[_ccur]
								if Blight.F.ImageUrl ~= Blight.F.Combos['SMG'].c[_ccur] then
									Blight.F.ImageUrl = Blight.F.Combos['SMG'].c[_ccur]
								end
							elseif Blight.F.submenu[Blight.activemenu].options[i].text == "Rifles" then
								local _ccur = selectedIndex	
								local link = Blight.F.Combos['Rifle'].c[_ccur]
								if Blight.F.ImageUrl ~= Blight.F.Combos['Rifle'].c[_ccur] then
									Blight.F.ImageUrl = Blight.F.Combos['Rifle'].c[_ccur]
								end
							elseif Blight.F.submenu[Blight.activemenu].options[i].text == "Shotguns" then
								local _ccur = selectedIndex	
								local link = Blight.F.Combos['Shotguns'].c[_ccur]
								if Blight.F.ImageUrl ~= Blight.F.Combos['Shotguns'].c[_ccur] then
									Blight.F.ImageUrl = Blight.F.Combos['Shotguns'].c[_ccur]
								end
							elseif Blight.F.submenu[Blight.activemenu].options[i].text == "Heavy" then
								local _ccur = selectedIndex	
								local link = Blight.F.Combos['Heavy'].c[_ccur]
								if Blight.F.ImageUrl ~= Blight.F.Combos['Heavy'].c[_ccur] then
									Blight.F.ImageUrl = Blight.F.Combos['Heavy'].c[_ccur]
								end
							elseif Blight.F.submenu[Blight.activemenu].options[i].text == "Snipers" then
								local _ccur = selectedIndex	
								local link = Blight.F.Combos['Snipers'].c[_ccur]
								if Blight.F.ImageUrl ~= Blight.F.Combos['Snipers'].c[_ccur] then
									Blight.F.ImageUrl = Blight.F.Combos['Snipers'].c[_ccur]
								end
							elseif Blight.F.submenu[Blight.activemenu].options[i].text == "Throwable" then
								local _ccur = selectedIndex	
								local link = Blight.F.Combos['Throwable'].c[_ccur]
								if Blight.F.ImageUrl ~= Blight.F.Combos['Throwable'].c[_ccur] then
									Blight.F.ImageUrl = Blight.F.Combos['Throwable'].c[_ccur]
								end
							end

							if Blight.F.submenu[Blight.activemenu].options[i].text == "Male" then
								local _ccur = selectedIndex
								Blight.F.lastselectedped = selectedIndex
								if Blight.F.ImageUrl ~= 'https://docs.fivem.net/peds/'.._ccur..'.webp' then
									Blight.F.ImageUrl = 'https://docs.fivem.net/peds/'.._ccur..'.webp'
									Blight.F.Tables.SetDuiUrl(Blight.F.PedsDuibanner, Blight.F.ImageUrl)
								end
							elseif Blight.F.submenu[Blight.activemenu].options[i].text == "Female" then
								local _ccur = selectedIndex
								Blight.F.lastselectedped = selectedIndex
								if Blight.F.ImageUrl ~= 'https://docs.fivem.net/peds/'.._ccur..'.webp' then
									Blight.F.ImageUrl = 'https://docs.fivem.net/peds/'.._ccur..'.webp'
									Blight.F.Tables.SetDuiUrl(Blight.F.PedsDuibanner, Blight.F.ImageUrl)
								end
							elseif Blight.F.submenu[Blight.activemenu].options[i].text == "Animals" then
								local _ccur = selectedIndex
								Blight.F.lastselectedped = selectedIndex
								if Blight.F.ImageUrl ~= 'https://docs.fivem.net/peds/'.._ccur..'.webp' then
									Blight.F.ImageUrl = 'https://docs.fivem.net/peds/'.._ccur..'.webp'
									Blight.F.Tables.SetDuiUrl(Blight.F.PedsDuibanner, Blight.F.ImageUrl)
								end
							end

							

							if Blight.activemenu == "Models" then
								Blight.F.Tables.DrawRect(0.28, y+0.061, 0.05, 0.05*2.5, 22, 22, 19, 255)
								Blight.F.Tables.DrawSprite('LoadGifPed', 'LoadGifPed_s', 0.28, y+0.061, 0.05, 0.05*2.5, 0.0, 255, 255, 255, 255)
							end
							if Blight.activemenu == "WeaponSpawning" then
								Blight.F.Tables.DrawRect(0.31, y+0.054, 0.1, 0.05*2.2, 22, 22, 19, 255)
								Blight.F.Tables.DrawSprite('LoadGifWep', 'LoadGifWep_s', 0.31, y+0.054, 0.1, 0.05*2.2, 0.0, 255, 255, 255, 255)
							end
						end
						
					
					elseif Blight.F.submenu[Blight.activemenu].options[i].type == "sepa" then	
                        if not Blight.F.Tables.HasStreamedTextureDictLoaded('mpentry') then
                            Blight.F.Tables.RequestStreamedTextureDict('mpentry')
                        end
						-- kolor sepa 
                        Blight.F.Tables.DrawSprite('mpentry', 'mp_modeselected_gradient', 0.15, y+0.02, buttonwidth+0.10, 0.0015, 0.0, 240, 139, 5, 255, 4)
                    elseif Blight.F.submenu[Blight.activemenu].options[i].type == "checkbox" then
                        if Blight.F.submenu[Blight.activemenu].selectedfeature+Blight.F.submenu[Blight.activemenu].scroll == i then 
                            if Blight.F.Tables.IsDisabledControlJustPressed(0, 191) and not Blight.F.Tables.InputEnabled then 
                                Blight.F.Checked = not Blight.F.Checked
                                if Blight.F.Checks[Blight.F.submenu[Blight.activemenu].options[i].check] then 
                                    Blight.F.Checks[Blight.F.submenu[Blight.activemenu].options[i].check] = false
                                elseif not Blight.F.Checks[Blight.F.submenu[Blight.activemenu].options[i].check] then 
                                    Blight.F.Checks[Blight.F.submenu[Blight.activemenu].options[i].check] = true
                                end
								--Blight.F.Tables.PlaySoundFrontend(-1, 'WAYPOINT_SET', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)
                            end
                        end
                        if not Blight.F.Tables.Anim[Blight.F.submenu[Blight.activemenu].options[i].check] then
                            Blight.F.Tables.Anim[Blight.F.submenu[Blight.activemenu].options[i].check] = {
                                r = 0,
                                g = 0,
                                b = 0,
                                x = 0.224,
                            }
                        end
                        if Blight.F.Checks[Blight.F.submenu[Blight.activemenu].options[i].check] then
                            Blight.F.Tables.Anim[Blight.F.submenu[Blight.activemenu].options[i].check].r = Blight.F.Tables.Lerp(0.04, Blight.F.Tables.Anim[Blight.F.submenu[Blight.activemenu].options[i].check].r, 25)
                            Blight.F.Tables.Anim[Blight.F.submenu[Blight.activemenu].options[i].check].g = Blight.F.Tables.Lerp(0.04, Blight.F.Tables.Anim[Blight.F.submenu[Blight.activemenu].options[i].check].g, 255)
                            Blight.F.Tables.Anim[Blight.F.submenu[Blight.activemenu].options[i].check].b = Blight.F.Tables.Lerp(0.04, Blight.F.Tables.Anim[Blight.F.submenu[Blight.activemenu].options[i].check].b, 25)
                            Blight.F.Tables.Anim[Blight.F.submenu[Blight.activemenu].options[i].check].x = Blight.F.Tables.Lerp(0.04, Blight.F.Tables.Anim[Blight.F.submenu[Blight.activemenu].options[i].check].x, 0.224+0.011)
                        else
                            Blight.F.Tables.Anim[Blight.F.submenu[Blight.activemenu].options[i].check].r = Blight.F.Tables.Lerp(0.04, Blight.F.Tables.Anim[Blight.F.submenu[Blight.activemenu].options[i].check].r, 255) 
                            Blight.F.Tables.Anim[Blight.F.submenu[Blight.activemenu].options[i].check].g = Blight.F.Tables.Lerp(0.04, Blight.F.Tables.Anim[Blight.F.submenu[Blight.activemenu].options[i].check].g, 25)
                            Blight.F.Tables.Anim[Blight.F.submenu[Blight.activemenu].options[i].check].b = Blight.F.Tables.Lerp(0.04, Blight.F.Tables.Anim[Blight.F.submenu[Blight.activemenu].options[i].check].b, 25)
                            
                            Blight.F.Tables.Anim[Blight.F.submenu[Blight.activemenu].options[i].check].x = Blight.F.Tables.Lerp(0.04, Blight.F.Tables.Anim[Blight.F.submenu[Blight.activemenu].options[i].check].x, 0.224)
                        end
                        


                        local resX, resY = Blight.F.Tables.GetActiveScreenResolution()
	                    Blight.F.Tables.DrawRect(0.23, y+0.011, 27/resX, 3/resY, 0, 0, 0, Blight.alpha, 5)
                        Blight.F.Tables.DrawSprite('BlightCheckboxDict', 'BlightCheckbox', Blight.F.Tables.Anim[Blight.F.submenu[Blight.activemenu].options[i].check].x, y+0.011, 0.007, 0.007 * Blight.F.Tables.GetAspectRatio(), 0.0, math.ceil(Blight.F.Tables.Anim[Blight.F.submenu[Blight.activemenu].options[i].check].r), math.ceil(Blight.F.Tables.Anim[Blight.F.submenu[Blight.activemenu].options[i].check].g), math.ceil(Blight.F.Tables.Anim[Blight.F.submenu[Blight.activemenu].options[i].check].b), Blight.alpha, 5)
                    end
                    
					

                    if Blight.F.Tables.IsDisabledControlJustPressed(0, 191) and not Blight.F.Tables.InputEnabled then 
                        if Blight.F.submenu[Blight.activemenu].selectedfeature+Blight.F.submenu[Blight.activemenu].scroll == i then
                            __CitIn__.CreateThread(function()
								local submen = Blight.F.submenu[Blight.activemenu].options[i].type
								if submen ~= nil and submen == "submenu" or submen == "checkbox" or submen == "button" or submen == "slider" or submen == "combo" then
									if submen == "button" and Blight.F.submenu[Blight.activemenu].options[i].result ~= nil then
										Blight.F.submenu[Blight.activemenu].options[i].func(Blight.F.submenu[Blight.activemenu].options[i].result)
									end
									if Blight.activemenu ~= "Keybinds" then
										if submen == "submenu" then
											if Blight.activemenu == 'online' then
												Blight.F.SelectedPlayer = Blight.F.submenu[Blight.activemenu].options[i].player
											end
											Blight.parentmenu = Blight.activemenu 
											Blight.activemenu = Blight.F.submenu[Blight.activemenu].options[i].menu
											__CitIn__.Wait(1)
										end
										if Blight.F.Checks['configuration:menusounds'] then
											Blight.F.Tables.PlaySoundFrontend(-1, 'WAYPOINT_SET', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)
										end
										if submen == "button" and Blight.F.submenu[Blight.activemenu].options[i].result == nil or submen == "combo" then
											Blight.F.submenu[Blight.activemenu].options[i].func()
										end
									end
									if #Blight.F.submenu[Blight.activemenu].options >= 2 and Blight.F.submenu[Blight.activemenu].options[i] then
										if Blight.F.submenu[Blight.activemenu].options[i].text == "aimbot keybind" then
											Blight.F.submenu[Blight.activemenu].options[i].func()
										end
										if Blight.F.submenu[Blight.activemenu].options[i].text == "open menu" then
											Blight.F.submenu[Blight.activemenu].options[i].func()
										end
									end
									
								end
							
							end)
                        end
						
						
                    end
                    if Blight.F.Tables.IsDisabledControlJustPressed(0, 194) and Blight.F.submenu[Blight.activemenu].selectedfeature+Blight.F.submenu[Blight.activemenu].scroll == i then 
                        __CitIn__.CreateThread(function()
							if Blight.F.Checks['configuration:menusounds'] then
								Blight.F.Tables.PlaySoundFrontend(-1, 'BACK', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)
							end
                            if Blight.activemenu == 'main' then
                                Blight.F.OpenMenu = not Blight.F.OpenMenu 
                            else
                                Blight.activemenu = Blight.F.submenu[Blight.activemenu].parentmenu
                                __CitIn__.Wait(1)
                            end
                        end)
                    end
                end
            end
        end
		

		if Blight.activemenu == 'onlineOptions' then
			Blight.F.Tables.Functions.InfoAboutPlayer(Blight.F.SelectedPlayer)
		elseif Blight.activemenu == 'Wardrobe' then
			for i = 1, Blight.F.Tables.GetNumberOfPedDrawableVariations(Blight.F.Tables.PlayerPedId(), 0) do
				tableinsert(Blight.F.Combos['wardrobe-hat'].b, i)
			end
			for ia = 1, Blight.F.Tables.GetNumberOfPedDrawableVariations(Blight.F.Tables.PlayerPedId(), 1) do
				tableinsert(Blight.F.Combos['wardrobe-mask'].b, ia)
			end
			for ib = 1, Blight.F.Tables.GetNumberOfPedPropDrawableVariations(Blight.F.Tables.PlayerPedId(), 1) do
				tableinsert(Blight.F.Combos['wardrobe-glasses'].b, ib)
			end
			for ib = 1, Blight.F.Tables.GetNumberOfPedDrawableVariations(Blight.F.Tables.PlayerPedId(), 3) do
				tableinsert(Blight.F.Combos['wardrobe-Torso'].b, ib)
			end
			for ib = 1, Blight.F.Tables.GetNumberOfPedDrawableVariations(Blight.F.Tables.PlayerPedId(), 8) do
				tableinsert(Blight.F.Combos['wardrobe-TSHIRT'].b, ib)
			end
			for ib = 1, Blight.F.Tables.GetNumberOfPedDrawableVariations(Blight.F.Tables.PlayerPedId(), 4) do
				tableinsert(Blight.F.Combos['wardrobe-Pants'].b, ib)
			end
			for ib = 1, Blight.F.Tables.GetNumberOfPedDrawableVariations(Blight.F.Tables.PlayerPedId(), 6) do
				tableinsert(Blight.F.Combos['wardrobe-Shoes'].b, ib)
			end
		elseif Blight.activemenu == 'Glife' then
			Blight.F.submenu['Glife'].options = {}
			__BlightStrings__.strings:tableinsert(Blight.F.submenu['Glife'].options, {text = 'Infinite Ammo', type = 'checkbox', bind = 'customammo:Infinite Ammov2', check = 'customammo:InfiniteAmmov2'})
			__BlightStrings__.strings:tableinsert(Blight.F.submenu['Glife'].options, {text = 'Teleport zombies', type = 'checkbox', bind = 'glife:Teleport zombies', check = 'glife:Teleportzombies'})
			__BlightStrings__.strings:tableinsert(Blight.F.submenu['Glife'].options, {text = 'Looting custom', type = 'sepa', bind = ''})
			__BlightStrings__.strings:tableinsert(Blight.F.submenu['Glife'].options, {text = 'Kill', type = 'checkbox', bind = 'glife:Kill', check = 'glife:Kill'})
			__BlightStrings__.strings:tableinsert(Blight.F.submenu['Glife'].options, {text = 'Invisible', type = 'checkbox', bind = 'glife:Invisible', check = 'glife:Invisible'})
			__BlightStrings__.strings:tableinsert(Blight.F.submenu['Glife'].options, {text = 'Auto Looting', type = 'checkbox', bind = 'glife:Auto Looting', check = 'glife:AutoLooting'})
			__BlightStrings__.strings:tableinsert(Blight.F.submenu['Glife'].options, {text = 'Vehicle stealer', type = 'sepa', bind = ''})
			__BlightStrings__.strings:tableinsert(Blight.F.submenu['Glife'].options, {text = 'Auto Steal', type = 'checkbox', bind = 'glife:Auto Steal', check = 'glife:Auto Steal'})
			__BlightStrings__.strings:tableinsert(Blight.F.submenu['Glife'].options, {text = 'Empty check', type = 'checkbox', bind = 'glife:Empty check', check = 'glife:Empty check'})
			__BlightStrings__.strings:tableinsert(Blight.F.submenu['Glife'].options, {text = 'all vehicles', type = 'sepa', bind = ''})

			if #Blight.F.submenu['Glife'].options > Blight.maxoptcount then
				if Blight.F.submenu['Glife'].scroll > #Blight.F.submenu['Glife'].options-Blight.maxoptcount then
				  	Blight.F.submenu['Glife'].scroll = #Blight.F.submenu['Glife'].options-Blight.maxoptcount
				end
			end


			for vehicles in Blight.F.Tables.Functions.EnumerateVehicles() do
				if vehicles ~= nil then
					__BlightStrings__.strings:tableinsert(Blight.F.submenu['Glife'].options, {text = Blight.F.Tables.GetDisplayNameFromVehicleModel(Blight.F.Tables.GetEntityModel(vehicles)), bind = 'glife:'..vehicles, type = 'button', func = function() 
						local seats = Blight.F.Tables.GetVehicleMaxNumberOfPassengers(vehicles)
						for i = 0, seats do
							if Blight.F.Tables.IsVehicleSeatFree(vehicles, i) then
								Blight.F.Tables.SetPedIntoVehicle(Blight.F.Tables.PlayerPedId(), vehicles, i)
							end
						end
					end})
				end
			end
			
		elseif Blight.activemenu == 'online' then
			--[[local players = Blight.F.Tables.GetActivePlayers()
			if Blight.F.allplayers ~= #players then
				Blight.F.submenu['online'].options = {}
				Blight.F.OnlinePlayers.T = {}

				for k, v in __BlightStrings__.strings:pairs(players) do
					__BlightStrings__.strings:tableinsert(Blight.F.OnlinePlayers.T, Blight.F.Tables.GetPlayerServerId(v))
				end


				__BlightStrings__.strings:tableinsert(Blight.F.submenu['online'].options, {text = 'Destroyer', type = 'submenu', bind = 'main:Destroyer', menu = 'Destroyer', player = nil})
				for k,v in Blight.F.Tables.Functions.pairsSorted(Blight.F.OnlinePlayers.T) do
					__BlightStrings__.strings:tableinsert(Blight.F.submenu['online'].options, {text = '[' .. v .. '] ' .. Blight.F.Tables.GetPlayerName(Blight.F.Tables.GetPlayerFromServerId(v)), bind = v..':playergay', type = 'submenu', menu = 'onlineOptions', player = Blight.F.Tables.GetPlayerFromServerId(v), func = function() end})
				end
				Blight.F.allplayers = #players
			end]]
			if #Blight.F.submenu['online'].options > Blight.maxoptcount then
				if Blight.F.submenu['online'].scroll > #Blight.F.submenu['online'].options-Blight.maxoptcount then
				  	Blight.F.submenu['online'].scroll = #Blight.F.submenu['online'].options-Blight.maxoptcount
				end
			end

		
			
			local players = GetActivePlayers()
			Blight.F.submenu['online'].options = {}
			__BlightStrings__.strings:tableinsert(Blight.F.submenu['online'].options, {text = 'Destroyer', type = 'submenu', bind = 'main:Destroyer', menu = 'Destroyer', player = nil})
			for k, v in pairs(players) do
				__BlightStrings__.strings:tableinsert(Blight.F.submenu['online'].options, {text = '[' .. GetPlayerServerId(v) .. '] ' .. GetPlayerName(v), bind = v..':playergay', type = 'submenu', menu = 'onlineOptions', player = v, func = function() end})
			end
		end

		for k, v in __BlightStrings__.strings:pairs(Blight.F.Checks.Binds) do
			if v.val ~= 12345 then
				if v.type == "checkbox" then
					if Blight.F.Tables.IsDisabledControlJustPressed(0, v.val) then
						if Blight.F.Checks[__BlightStrings__.strings:tostring(v.t)] then 
							Blight.F.Checks[__BlightStrings__.strings:tostring(v.t)] = false
						elseif not Blight.F.Checks[__BlightStrings__.strings:tostring(v.t)] then 
							Blight.F.Checks[__BlightStrings__.strings:tostring(v.t)] = true
						end
					end
				elseif v.type == "button" then
					if Blight.F.Tables.IsDisabledControlJustPressed(0, v.val) then
						if v.r ~= nil then
							v.t(v.r)
						else
							v.t(v.r)
						end
					end
				elseif v.type == "submenu" then
					if Blight.F.Tables.IsDisabledControlJustPressed(0, v.val) then
						Blight.activemenu = v.t
					end
				end
			end
		end

		Blight.F.Tables.Functions.LastVehicle = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(), true)
    end
end)

__CitIn__.CreateThread(function()
	while Blight.enabled do
		__CitIn__.Wait(1)
		if Blight.F.Checks['misc:freecam'] then
			if Blight.F.ThisCamFromFreecam == nil then
				Blight.F.ThisCamFromFreecam = Blight.F.Tables.CreateCam('DEFAULT_SCRIPTED_Camera', 1)
				cam = Blight.F.ThisCamFromFreecam
			end

			Blight.F.Tables.RenderScriptCams(1, 0, 0, 1, 1)
			Blight.F.Tables.SetCamActive(Blight.F.ThisCamFromFreecam, true)
			Blight.F.Tables.SetCamCoord(Blight.F.ThisCamFromFreecam, Blight.F.Tables.GetGameplayCamCoord())
			
			local offsetRotX = Blight.F.Tables.GetGameplayCamRot(2).x
			local offsetRotY = Blight.F.Tables.GetGameplayCamRot(2).y
			local offsetRotZ = Blight.F.Tables.GetGameplayCamRot(2).z
			
			
			while Blight.F.Tables.DoesCamExist(Blight.F.ThisCamFromFreecam) do
				__CitIn__.Wait(0)
				
				if not Blight.F.Checks['misc:freecam'] then
					Blight.F.Tables.DestroyCam(Blight.F.ThisCamFromFreecam)
					Blight.F.Tables.RenderScriptCams(false, false, 0, 1, 0)
					Blight.F.Tables.SetFocusEntity(Blight.F.Tables.PlayerPedId())
					Blight.F.Tables.FreezeEntityPosition(Blight.F.Tables.PlayerPedId(), false)
					Blight.F.ThisCamFromFreecam = nil
					break
				end
					local playerRot = Blight.F.Tables.GetEntityRotation(Blight.F.Tables.PlayerPedId(), 2)
							
					local rotX = playerRot.x
					local rotY = playerRot.y
					local rotZ = playerRot.z
					offsetRotX = offsetRotX - (Blight.F.Tables.GetDisabledControlNormal(1, 2) * 8.0)
					offsetRotZ = offsetRotZ - (Blight.F.Tables.GetDisabledControlNormal(1, 1) * 8.0)
					if (offsetRotX > 90.0) then
						offsetRotX = 90.0
					elseif (offsetRotX < -90.0) then
						offsetRotX = -90.0
					end
					if (offsetRotY > 90.0) then
						offsetRotY = 90.0
					elseif (offsetRotY < -90.0) then
						offsetRotY = -90.0
					end
					if (offsetRotZ > 360.0) then
						offsetRotZ = offsetRotZ - 360.0
					elseif (offsetRotZ < -360.0) then
						offsetRotZ = offsetRotZ + 360.0 
					end
					local x, y, z = __BlightStrings__.strings:tableunpack(Blight.F.Tables.GetCamCoord(Blight.F.ThisCamFromFreecam))
					local camCoords = Blight.F.Tables.GetCamCoord(Blight.F.ThisCamFromFreecam)			
					local v3, forward = Blight.F.Tables.Functions.CamRightVect(Blight.F.ThisCamFromFreecam), Blight.F.Tables.Functions.CamFwdVect(Blight.F.ThisCamFromFreecam)
					local speedMultiplier = nil	
					local currentmode = Blight.F.Tables.Functions.FreecamModes[Blight.F.Tables.Functions.FreecamMode]
					local xspeed = Blight.F.Sliders['freecam-speed'].value
					local currenttext = currentmode..' | Speed: '..xspeed..' | ('..Blight.F.Tables.Functions.FreecamMode..' / '..#Blight.F.Tables.Functions.FreecamModes..')'
					Blight.F.Tables.Functions.DrawTxt(currenttext, 0.5, 0.957, 0.35, 0.35, {r=255, g=255, b=255, a=255}, true)
					Blight.F.Tables.SetTextOutline()
					Blight.F.Tables.Functions.DrawTxt('+', 0.5, 0.487, 0.5, 0.3, {r=255, g=255, b=255, a=255}, true, 0)
					Blight.F.Tables.SetCamFov(Blight.F.ThisCamFromFreecam, Blight.F.Sliders['freecam-fov'].value+0.0)
					Blight.F.Tables.SetHdArea(camCoords.x, camCoords.y, camCoords.z, 50.0)			
					Blight.F.Tables.DisableAllControlActions()
					Blight.F.Tables.FreezeEntityPosition(Blight.F.Tables.PlayerPedId(), true)
					if Blight.F.Tables.IsDisabledControlPressed(0, 21) then					
						speedMultiplier = 3.0*xspeed
					elseif Blight.F.Tables.IsDisabledControlPressed(0, 36) then					
						speedMultiplier = 0.025*xspeed			
					else					
						speedMultiplier = 0.25*xspeed			
					end					
					if Blight.F.Tables.IsDisabledControlPressed(0, 32)  then					
						local newCamPos = camCoords + forward * speedMultiplier					
						Blight.F.Tables.SetCamCoord(Blight.F.ThisCamFromFreecam, newCamPos.x, newCamPos.y, newCamPos.z)				
					end							
					if Blight.F.Tables.IsDisabledControlPressed(0, 33)  then					
						local newCamPos = camCoords + forward * -speedMultiplier					
						Blight.F.Tables.SetCamCoord(Blight.F.ThisCamFromFreecam, newCamPos.x, newCamPos.y, newCamPos.z)				
					end							
					if Blight.F.Tables.IsDisabledControlPressed(0, 34)  then
						local newCamPos = camCoords + v3 * -speedMultiplier					
						Blight.F.Tables.SetCamCoord(Blight.F.ThisCamFromFreecam, newCamPos.x, newCamPos.y, newCamPos.z)				
					end							
					if Blight.F.Tables.IsDisabledControlPressed(0, 30)  then					
						local newCamPos = camCoords + v3 * speedMultiplier					
						Blight.F.Tables.SetCamCoord(Blight.F.ThisCamFromFreecam, newCamPos.x, newCamPos.y, newCamPos.z)				
					end		
			
					if (Blight.F.Tables.IsDisabledControlPressed(1, 21)) then -- SHIFT
						z = z + (0.1 * 2.5)
					end
					if (Blight.F.Tables.IsDisabledControlPressed(1, 36)) then -- LEFT CTRL
						z = z - (0.1 * 0.5)
					end
					Blight.F.Tables.SetFocusArea(Blight.F.Tables.GetCamCoord(Blight.F.ThisCamFromFreecam).x, Blight.F.Tables.GetCamCoord(Blight.F.ThisCamFromFreecam).y, Blight.F.Tables.GetCamCoord(Blight.F.ThisCamFromFreecam).z, 0.0, 0.0, 0.0)
					Blight.F.Tables.SetCamRot(Blight.F.ThisCamFromFreecam, offsetRotX, offsetRotY, offsetRotZ, 2)
					local entity = Blight.F.Tables.Functions.GetEntityInFrontOfCam()
					local hit, Markerloc = Blight.F.Tables.Functions.RayCastCam(15000.0) 
		
					if Blight.F.Tables.IsDisabledControlJustPressed(1, 14) then
						Blight.F.Tables.Functions.FreecamMode = Blight.F.Tables.Functions.FreecamMode + 1
						if Blight.F.Tables.Functions.FreecamMode > #Blight.F.Tables.Functions.FreecamModes then
							Blight.F.Tables.Functions.FreecamMode = 1
						end
					end
					if Blight.F.Tables.IsDisabledControlJustPressed(1, 15) then
						Blight.F.Tables.Functions.FreecamMode = Blight.F.Tables.Functions.FreecamMode - 1
						if Blight.F.Tables.Functions.FreecamMode < 1 then
							Blight.F.Tables.Functions.FreecamMode = #Blight.F.Tables.Functions.FreecamModes
						end
					end
					
					if Blight.F.Checks['misc:freecamcoords'] then
						Blight.F.Tables.SetTextCentre(true)
						local xx2 = __BlightStrings__.strings:tonumber(__BlightStrings__.strings:format("%.2f", Markerloc.x))
						local yy2 = __BlightStrings__.strings:tonumber(__BlightStrings__.strings:format("%.2f", Markerloc.y))
						local zz2 = __BlightStrings__.strings:tonumber(__BlightStrings__.strings:format("%.2f", Markerloc.z))
						if xx2 == 0.0 or yy2 == 0.0 or zz2 == 0.0 then
							text = 'Not found!'
						else
							text = 'X: '..xx2..' Y: '..yy2..' Z: '..zz2
						end 
						Blight.F.Tables.Functions.DrawTxt(text, 0.5035, 0.501, 0.5, 0.25, {r=255, g=255, b=255, a=255}, false, 4)
					end
		
					if currentmode == 'Look Around' then
						if Blight.F.Tables.IsDisabledControlPressed(0, 24) then
							if entity ~= nil then
								if not Blight.F.Tables.Functions.Hovering then
									nentity = entity
								end
							end
							
							Blight.F.Tables.Functions.Hovering = true
						else
							Blight.F.Tables.Functions.Hovering = false
						end
						if Blight.F.Tables.DoesEntityExist(nentity) then
							if Blight.F.Tables.IsDisabledControlPressed(0, 24) then
								Blight.F.Tables.Functions.Hovering = true
							else
								Blight.F.Tables.Functions.Hovering = false
							end
						end
						if Blight.F.Tables.Functions.Hovering then
							local coords = Blight.F.Tables.GetCamCoord(Blight.F.ThisCamFromFreecam) + (Blight.F.Tables.Functions.RotToDir(Blight.F.Tables.GetCamRot(Blight.F.ThisCamFromFreecam, 2)) * 15)
							Blight.F.Tables.NetworkHasControlOfEntity(nentity)
							Blight.F.Tables.SetEntityCoords(nentity, coords)
						end
					elseif currentmode == 'Teleporting' then
						if Blight.F.Tables.IsDisabledControlJustPressed(0, 24) then
							Blight.F.Tables.SetEntityCoords(Blight.F.Tables.PlayerPedId(), Markerloc.x, Markerloc.y, Markerloc.z)
						end
					elseif currentmode == 'Player Bug' then
						if Blight.F.Tables.IsDisabledControlJustPressed(0, 24) then
							if entity ~= 0 and Blight.F.Tables.DoesEntityExist(entity) and Blight.F.Tables.GetEntityType(entity) ~= 0 or nil then
								local prop = Blight.F.Tables.GetHashKey('prop_atm_01')
								while not Blight.F.Tables.HasModelLoaded(prop) do
									__CitIn__.Wait(0) 
									Blight.F.Tables.RequestModel(prop)
								end
								local prop = Blight.F.Tables.CreateObject(prop, 0, 0, 0, true, true, false)
								Blight.F.Tables.SetEntityVisible(prop, 0, 0)
								Blight.F.Tables.AttachEntityToEntity(prop, entity, Blight.F.Tables.GetPedBoneIndex(entity, 57005), 0, 0, -1.0, 0, 0, 0, false, true, true, true, 1, true)
							end
						end
					elseif currentmode == 'Shooting' then
						if Blight.F.Tables.IsDisabledControlJustPressed(0, 24) then
							Blight.F.Tables.ShootSingleBulletBetweenCoords(Markerloc.x+0.001, Markerloc.y+0.001, Markerloc.z+0.001, Markerloc.x, Markerloc.y, Markerloc.z, 1.0, true, Blight.F.Tables.GetHashKey('weapon_combatpistol'), Blight.F.Tables.PlayerPedId(), true, false, -1.0)
						elseif Blight.F.Tables.IsDisabledControlPressed(0, 25) then
							Blight.F.Tables.ShootSingleBulletBetweenCoords(Markerloc.x+0.001, Markerloc.y+0.001, Markerloc.z+0.001, Markerloc.x, Markerloc.y, Markerloc.z, 1.0, true, Blight.F.Tables.GetHashKey('weapon_combatpistol'), Blight.F.Tables.PlayerPedId(), true, false, -1.0)
						end
					elseif currentmode == 'Taze' then
						if Blight.F.Tables.IsDisabledControlJustPressed(0, 24) then
							
							Blight.F.Tables.ShootSingleBulletBetweenCoords(Markerloc.x+0.001, Markerloc.y+0.001, Markerloc.z+0.001, Markerloc.x, Markerloc.y, Markerloc.z, 1, true, Blight.F.Tables.GetHashKey('weapon_stungun'), Blight.F.Tables.PlayerPedId(), true, false, -1.0)
						elseif Blight.F.Tables.IsDisabledControlPressed(0, 25) then
							Blight.F.Tables.ShootSingleBulletBetweenCoords(Markerloc.x+0.001, Markerloc.y+0.001, Markerloc.z+0.001, Markerloc.x, Markerloc.y, Markerloc.z, 1, true, Blight.F.Tables.GetHashKey('weapon_stungun'), Blight.F.Tables.PlayerPedId(), true, false, -1.0)
						end
					elseif currentmode == 'RPG' then
						if Blight.F.Tables.IsDisabledControlJustPressed(0, 24) then
							Blight.F.Tables.RequestWeaponAsset(Blight.F.Tables.GetHashKey('weapon_rpg'))
							Blight.F.Tables.ShootSingleBulletBetweenCoords(Blight.F.Tables.GetCamCoord(Blight.F.ThisCamFromFreecam) + (Blight.F.Tables.Functions.RotToDir(Blight.F.Tables.GetCamRot(Blight.F.ThisCamFromFreecam, 2)) * 15), Markerloc.x, Markerloc.y, Markerloc.z, 1, true, Blight.F.Tables.GetHashKey('weapon_rpg'), Blight.F.Tables.PlayerPedId(), true, false, -1.0)
						elseif Blight.F.Tables.IsDisabledControlPressed(0, 25) then
							Blight.F.Tables.RequestWeaponAsset(Blight.F.Tables.GetHashKey('weapon_rpg'))
							Blight.F.Tables.ShootSingleBulletBetweenCoords(Blight.F.Tables.GetCamCoord(Blight.F.ThisCamFromFreecam) + (Blight.F.Tables.Functions.RotToDir(Blight.F.Tables.GetCamRot(Blight.F.ThisCamFromFreecam, 2)) * 15), Markerloc.x, Markerloc.y, Markerloc.z, 1, true, Blight.F.Tables.GetHashKey('weapon_rpg'), Blight.F.Tables.PlayerPedId(), true, false, -1.0)
						end
					elseif currentmode == 'Fire' then
						if Blight.F.Tables.IsDisabledControlPressed(0, 24) then
							Blight.F.Tables.SpawnParticle("core", "ent_sht_petrol_fire", Markerloc.x, Markerloc.y, Markerloc.z, 0, 0, 0, 0.3, 0, 0, 0)
						end	
					elseif currentmode == 'Props' then
						if Blight.F.Tables.IsDisabledControlJustPressed(0, 24) then
							if Blight.F.IsCustomPropmen == 'random' then
								currentprop = Blight.F.Tables.Functions.PropsSpawnerModes[__BlightStrings__.strings:random(1, #Blight.F.Tables.Functions.PropsSpawnerModes)]
							else
								currentprop = Blight.F.IsCustomPropmen
							end
							local __prophash__ = Blight.F.Tables.GetHashKey(currentprop)
							Blight.F.Tables.CreateObject(__prophash__, Markerloc.x, Markerloc.y, Markerloc.z, 1, 1, 1)
						end
						
						if Blight.F.Tables.IsDisabledControlJustPressed(0, 25) then
							local __NVALUE__ = Blight.F.Tables.Functions.KBInput('prop to select', '', 25)
							Blight.F.IsCustomPropmen = __NVALUE__
						end

						Blight.F.Tables.Functions.DrawTxt('RMB To select prop | '..Blight.F.IsCustomPropmen, 0.502, 0.977, 0.35, 0.35, {r=255, g=255, b=255, a=255}, true, 4)
					elseif currentmode == 'Ped Spawning' then
						if Blight.F.Tables.IsDisabledControlJustPressed(0, 25) then
							local __NVALUE__ = Blight.F.Tables.Functions.KBInput('vehicle to select', '', 25)
							Blight.F.IsCustomPedMen = __NVALUE__
						end

						Blight.F.Tables.Functions.DrawTxt('RMB To select ped | '..Blight.F.IsCustomPedMen, 0.502, 0.977, 0.35, 0.35, {r=255, g=255, b=255, a=255}, true, 4)
						if Blight.F.Tables.IsDisabledControlJustPressed(0, 24) then
							__CitIn__.CreateThread(function()
								if Blight.F.IsCustomPedMen == 'random' then
									currentped = Blight.F.Tables.Functions.PedsSpawnerModes[__BlightStrings__.strings:random(1, #Blight.F.Tables.Functions.PedsSpawnerModes)]
								else
									currentped = Blight.F.IsCustomPedMen
								end
								local __pedmodel__ = Blight.F.Tables.GetHashKey(currentped)		
								Blight.F.Tables.RequestModel(__pedmodel__)
								while not Blight.F.Tables.HasModelLoaded(__pedmodel__) do
									__CitIn__.Wait(10)
									Blight.F.Tables.RequestModel(__pedmodel__)
								end	
								Blight.F.Tables.CreatePed(21, __pedmodel__, Markerloc.x, Markerloc.y, Markerloc.z, 0.0, true, true)
							end)
						end
					elseif currentmode == 'Vehicles Spammer' then
						if Blight.F.Tables.IsDisabledControlJustPressed(0, 24) then
							__CitIn__.CreateThread(function()
								for i = 1, 10 do
									local currentveh = Blight.F.Tables.Functions.VehiclesSpawnerModes[__BlightStrings__.strings:random(1, #Blight.F.Tables.Functions.VehiclesSpawnerModes)]
									local __VehicleHash__ = Blight.F.Tables.GetHashKey(currentveh)
									Blight.F.Tables.RequestModel(__VehicleHash__)
									while not Blight.F.Tables.HasModelLoaded(__VehicleHash__) do
										__CitIn__.Wait(0)
									end
									Blight.F.Tables.CreateVehicle(__VehicleHash__, Markerloc.x, Markerloc.y, Markerloc.z, 0.0, true, false)
								end
							end)
						end
					elseif currentmode == 'Ped Spammer' then
						if Blight.F.Tables.IsDisabledControlJustPressed(0, 24) then
							__CitIn__.CreateThread(function()
								for i = 1, 10 do
									local currentped = Blight.F.Tables.Functions.PedsSpawnerModes[__BlightStrings__.strings:random(1, #Blight.F.Tables.Functions.PedsSpawnerModes)]
									local __pedmodel__ = Blight.F.Tables.GetHashKey(currentped)		
									Blight.F.Tables.RequestModel(__pedmodel__)
									while not Blight.F.Tables.HasModelLoaded(__pedmodel__) do
										__CitIn__.Wait(10)
										Blight.F.Tables.RequestModel(__pedmodel__)
									end	
									Blight.F.Tables.CreatePed(21, __pedmodel__, Markerloc.x, Markerloc.y, Markerloc.z, 0.0, true, true)
								end
							end)
						end
					elseif currentmode == 'Ptfx Spammer' then
						--local p1 = Blight.F.Tables.Functions.ParticleModes[__BlightStrings__.strings:random(1, #Blight.F.Tables.Functions.ParticleModes)]
						if Blight.F.Tables.IsDisabledControlJustPressed(0, 190) then
							Blight.F.Tables.Functions.ParticleMode = Blight.F.Tables.Functions.ParticleMode + 1
							if Blight.F.Tables.Functions.ParticleMode > #Blight.F.Tables.Functions.ParticleModes then
								Blight.F.Tables.Functions.ParticleMode = 1
							end
						end
						if Blight.F.Tables.IsDisabledControlJustPressed(0, 189) then
							Blight.F.Tables.Functions.ParticleMode = Blight.F.Tables.Functions.ParticleMode - 1
							if Blight.F.Tables.Functions.ParticleMode < 1 then
								Blight.F.Tables.Functions.ParticleMode = #Blight.F.Tables.Functions.ParticleModes
							end
						end
						
						if Blight.F.Tables.IsDisabledControlPressed(0, 24) then
							__CitIn__.CreateThread(function()
								Blight.F.Tables.SpawnParticle(Blight.F.Tables.Functions.ParticleModes[Blight.F.Tables.Functions.ParticleMode].a, Blight.F.Tables.Functions.ParticleModes[Blight.F.Tables.Functions.ParticleMode].b, Markerloc.x, Markerloc.y, Markerloc.z, 0, 0, 0, Blight.F.Tables.Functions.ParticleSizel+0.0, 0, 0, 0)
							end)
						end
						if Blight.F.Tables.IsDisabledControlPressed(0, 25) then
							local nsize = __BlightStrings__.strings:tonumber(Blight.F.Tables.Functions.KBInput('Size', '', 25))
							if __BlightStrings__.strings:type(nsize) == 'number' then
								Blight.F.Tables.Functions.ParticleSizel = nsize+0.0
							end
						end
						Blight.F.Tables.Functions.DrawTxt('~c~Particle: ~o~'..Blight.F.Tables.Functions.ParticleModes[Blight.F.Tables.Functions.ParticleMode].c .. ' ~c~| ~o~('..Blight.F.Tables.Functions.ParticleSizel..') ~c~| ~o~RMB to change', 0.502, 0.977, 0.35, 0.35, {r=255, g=255, b=255, a=255}, true, 4)
						
					
					elseif currentmode == 'Vehicles' then
						if Blight.F.Tables.IsDisabledControlJustPressed(0, 25) then
							local __NVALUE__ = Blight.F.Tables.Functions.KBInput('vehicle to select', '', 25)
							Blight.F.IsCustomVehmen = __NVALUE__
						end
						Blight.F.Tables.Functions.DrawTxt('RMB To select vehicle | '..Blight.F.IsCustomVehmen, 0.502, 0.977, 0.35, 0.35, {r=255, g=255, b=255, a=255}, true, 4)
						if Blight.F.Tables.IsDisabledControlJustPressed(0, 24) then
							__CitIn__.CreateThread(function()
								if Blight.F.IsCustomVehmen == 'random' then
									currentveh = Blight.F.Tables.Functions.VehiclesSpawnerModes[__BlightStrings__.strings:random(1, #Blight.F.Tables.Functions.VehiclesSpawnerModes)]
								else
									currentveh = Blight.F.IsCustomVehmen
								end
								local __VehicleHash__ = Blight.F.Tables.GetHashKey(currentveh)
								Blight.F.Tables.RequestModel(__VehicleHash__)
								while not Blight.F.Tables.HasModelLoaded(__VehicleHash__) do
									__CitIn__.Wait(0)
								end
								Blight.F.Tables.CreateVehicle(__VehicleHash__, Markerloc.x, Markerloc.y, Markerloc.z, 0.0, true, false)
							end)
						end
					elseif currentmode == 'Entity Deleter' then
						if Blight.F.Tables.IsDisabledControlJustPressed(0, 24) then
							if entity ~= nil then
								Blight.F.Tables.DeleteEntity(entity)
							end
						end
					elseif currentmode == 'Freezer' then
						if Blight.F.Tables.IsDisabledControlJustPressed(0, 24) then
							if entity ~= nil then
								Blight.F.Tables.FreezeEntityPosition(entity, true)
							end
						end
					elseif currentmode == 'Explosions' then
						if Blight.F.Tables.IsDisabledControlJustPressed(0, 24) then
							Blight.F.Tables.AddExplode(Markerloc.x, Markerloc.y, Markerloc.z, 7, 1234.0, true, false, 0.0)
						end
					elseif currentmode == 'Car stealer' then
						if Blight.F.Tables.IsDisabledControlJustPressed(0, 24) and Blight.F.Tables.DoesEntityExist(entity) and Blight.F.Tables.IsEntityAVehicle(entity) then
							Blight.F.Tables.NetworkRequestControlOfEntity(entity)
							Blight.F.Tables.SetPedIntoVehicle(Blight.F.Tables.PlayerPedId(), entity, 4)
							Blight.F.Tables.SetPedIntoVehicle(Blight.F.Tables.PlayerPedId(), entity, 3)
							Blight.F.Tables.SetPedIntoVehicle(Blight.F.Tables.PlayerPedId(), entity, 2)
							Blight.F.Tables.SetPedIntoVehicle(Blight.F.Tables.PlayerPedId(), entity, 1)
							Blight.F.Tables.SetPedIntoVehicle(Blight.F.Tables.PlayerPedId(), entity, 0)
							Blight.F.Tables.SetPedIntoVehicle(Blight.F.Tables.PlayerPedId(), entity, -1)
						end
					elseif currentmode == 'Shoot vehicles' then
						if Blight.F.Tables.IsDisabledControlJustPressed(0, 25) then
							local __NVALUE__ = Blight.F.Tables.Functions.KBInput('vehicle to select', '', 25)
							Blight.F.IsCustomVehmen2 = __NVALUE__
						end
						Blight.F.Tables.Functions.DrawTxt('RMB To select vehicle | '..Blight.F.IsCustomVehmen2, 0.502, 0.977, 0.35, 0.35, {r=255, g=255, b=255, a=255}, true, 4)
						
						if Blight.F.Tables.IsDisabledControlJustPressed(0, 24) then
							if Blight.F.IsCustomVehmen2 == 'random' then
								currentveh = Blight.F.Tables.Functions.VehiclesSpawnerModes[__BlightStrings__.strings:random(1, #Blight.F.Tables.Functions.VehiclesSpawnerModes)]
							else
								currentveh = Blight.F.IsCustomVehmen2
							end

							local __VehicleHash__ = Blight.F.Tables.GetHashKey(currentveh)
							Blight.F.Tables.RequestModel(__VehicleHash__)
							if not Blight.F.Tables.HasModelLoaded(__VehicleHash__) then
								Blight.F.Tables.RequestModel(__VehicleHash__)
							else
								local veh = Blight.F.Tables.CreateVehicle(__VehicleHash__, Blight.F.Tables.GetCamCoord(Blight.F.ThisCamFromFreecam), 0.0, true, false)
								Blight.F.Tables.SetVehicleEngineOn(veh, true, true, true)
								Blight.F.Tables.SetEntityRotation(veh, Blight.F.Tables.GetCamRot(Blight.F.ThisCamFromFreecam, 2), 0.0, 0.0, 0.0, true)
								Blight.F.Tables.SetVehicleForwardSpeed(veh, 500.0)
							end
							
						end
					end
					
			end
		end
		
		if Blight.F.Checks['rccar:spawn'] then
			local t1 = 0
			local t2 = 0
			if rctimer < 1 then
				if Blight.F.Tables.IsModelValid(Blight.F.Tables.GetHashKey(Blight.F.Tables.RC__spawnname__)) and Blight.F.Tables.IsModelAVehicle(Blight.F.Tables.GetHashKey(Blight.F.Tables.RC__spawnname__)) then
					spawnname = Blight.F.Tables.RC__spawnname__
				else
					spawnname = 'rcbandito'
				end
				local veh = Blight.F.Tables.GetHashKey(spawnname or 'rcbandito')
				local ped = Blight.F.Tables.GetHashKey('mp_m_freemode_01')
				Blight.F.Tables.RequestModel(ped)
				Blight.F.Tables.RequestModel(veh)
				while not Blight.F.Tables.HasModelLoaded(ped) and t1 < 50 do
					__CitIn__.Wait(1)
					Blight.F.Tables.RequestModel(ped)
					t1 = t1 + 1
				end
				while not Blight.F.Tables.HasModelLoaded(veh) and t2 < 50 do
					__CitIn__.Wait(1)
					Blight.F.Tables.RequestModel(veh)
					t2 = t2 + 1
				end
				
				Blight.F.Tables.RC_veh_ = Blight.F.Tables.CreateVehicle(veh, Blight.F.Tables.GetEntityCoords(Blight.F.Tables.PlayerPedId()), 1, 1, 1)
				Blight.F.Tables.RC_ped_ = Blight.F.Tables.CreatePed(31, ped, Blight.F.Tables.GetEntityCoords(Blight.F.Tables.PlayerPedId()), 0.0, true, true)
				--TaskSetBlockingOfNonTemporaryEvents(_ped_, true)
				Blight.F.Tables.NetworkRequestControlOfEntity(Blight.F.Tables.RC_veh_)
				Blight.F.Tables.SetVehicleEngineOn(Blight.F.Tables.RC_veh_, true)
				Blight.F.Tables.SetPedAlertness(Blight.F.Tables.RC_ped_, 0.0)
				Blight.F.Tables.SetPedIntoVehicle(Blight.F.Tables.RC_ped_, Blight.F.Tables.RC_veh_, -1)
				Blight.F.Tables.SetVehicleEngineOn(Blight.F.Tables.RC_veh_, true, true)
				Blight.F.Tables.SetEntityVisible(Blight.F.Tables.RC_ped_, false, false)
				rctimer = rctimer + 1
			end
			if Blight.F.Tables.IsModelValid(Blight.F.Tables.GetHashKey(Blight.F.Tables.RC__spawnname__)) and Blight.F.Tables.IsModelAVehicle(Blight.F.Tables.GetHashKey(Blight.F.Tables.RC__spawnname__)) then
				local t1 = 0
				local t2 = 0
				local camrc = camrc
				if not camrc ~= nil then
					camrc = Blight.F.Tables.CreateCam("DEFAULT_SCRIPTED_Camera", 1)
				end

				Blight.F.Tables.RenderScriptCams(1, 0, 0, 1, 1)
				Blight.F.Tables.SetCamActive(camrc, true)
				local coords = Blight.F.Tables.GetEntityCoords(Blight.F.Tables.RC_veh_)
				Blight.F.Tables.SetCamCoord(camrc, coords.x, coords.y, coords.z + 3)
				Blight.F.Tables.SetCamRot(cam, Blight.F.Tables.GetEntityRotation(Blight.F.Tables.RC_veh_), 2)
				

				local offsetRotX = 0.0
				local OffsetZ = 0.0
				local offsetRotY = 0.0
				local offsetRotZ = 0.0

				Blight.F.Tables.DisableControlAction(0, 32, true) -- W
				Blight.F.Tables.DisableControlAction(0, 31, true) -- S
				Blight.F.Tables.DisableControlAction(0, 30, true) -- D
				Blight.F.Tables.DisableControlAction(0, 34, true) -- A
				

				while Blight.F.Tables.DoesCamExist(camrc) do
					__CitIn__.Wait(0)

					if not Blight.F.Checks['rccar:spawn'] then
						if Blight.F.Tables.DoesEntityExist(Blight.F.Tables.RC_veh_) then
							Blight.F.Tables.DeleteEntity(Blight.F.Tables.RC_veh_)
						end
						Blight.F.Tables.DeleteEntity(Blight.F.Tables.RC_ped_)
	
						Blight.F.Tables.DestroyCam(camrc, false)
						Blight.F.Tables.RenderScriptCams(false, false, 0, 1, 0)
						Blight.F.Tables.FreezeEntityPosition(Blight.F.Tables.PlayerPedId(), false)
						Blight.F.Tables.SetFocusEntity(Blight.F.Tables.PlayerPedId())
						break
					end

					if Blight.F.Checks['rccar:invisible'] then
						Blight.F.Tables.SetEntityVisible(Blight.F.Tables.RC_veh_, false, false)
					else
						Blight.F.Tables.SetEntityVisible(Blight.F.Tables.RC_veh_, true, true)
					end
					if Blight.F.Checks['rccar:explode'] then
						Blight.F.Tables.AddExplode(Blight.F.Tables.GetEntityCoords(Blight.F.Tables.RC_veh_), 4, 1.0, true, false, 0.0)
					end
					

					if Blight.F.Tables.IsDisabledControlPressed(0, 129) and not Blight.F.Tables.IsDisabledControlPressed(0, 130) then
						Blight.F.Tables.TaskVehicleTempAction(Blight.F.Tables.RC_ped_, Blight.F.Tables.RC_veh_, 9, 1)
					end
					
					if Blight.F.Tables.IsDisabledControlJustReleased(0, 129) or Blight.F.Tables.IsDisabledControlJustReleased(0, 130) then
						Blight.F.Tables.TaskVehicleTempAction(Blight.F.Tables.RC_ped_, Blight.F.Tables.RC_veh_, 6, 2500)
					end
					
					if Blight.F.Tables.IsDisabledControlPressed(0, 130) and not Blight.F.Tables.IsDisabledControlPressed(0, 129) then
						Blight.F.Tables.TaskVehicleTempAction(Blight.F.Tables.RC_ped_, Blight.F.Tables.RC_veh_, 22, 1)
					end
					
					if Blight.F.Tables.IsDisabledControlPressed(0, 89) and Blight.F.Tables.IsDisabledControlPressed(0, 130) then
						Blight.F.Tables.TaskVehicleTempAction(Blight.F.Tables.RC_ped_, Blight.F.Tables.RC_veh_, 13, 1)
					end
					
					if Blight.F.Tables.IsDisabledControlPressed(0, 90) and Blight.F.Tables.IsDisabledControlPressed(0, 130) then
						Blight.F.Tables.TaskVehicleTempAction(Blight.F.Tables.RC_ped_, Blight.F.Tables.RC_veh_, 14, 1)
					end
					
					if Blight.F.Tables.IsDisabledControlPressed(0, 129) and Blight.F.Tables.IsDisabledControlPressed(0, 130) then
						Blight.F.Tables.TaskVehicleTempAction(Blight.F.Tables.RC_ped_, Blight.F.Tables.RC_veh_, 30, 100)
					end
					
					if Blight.F.Tables.IsDisabledControlPressed(0, 89) and Blight.F.Tables.IsDisabledControlPressed(0, 129) then
						Blight.F.Tables.TaskVehicleTempAction(Blight.F.Tables.RC_ped_, Blight.F.Tables.RC_veh_, 7, 1)
					end
					
					if Blight.F.Tables.IsDisabledControlPressed(0, 90) and Blight.F.Tables.IsDisabledControlPressed(0, 129) then
						Blight.F.Tables.TaskVehicleTempAction(Blight.F.Tables.RC_ped_, Blight.F.Tables.RC_veh_, 8, 1)
					end
					
					if Blight.F.Tables.IsDisabledControlPressed(0, 89) and not Blight.F.Tables.IsDisabledControlPressed(0, 129) and not Blight.F.Tables.IsDisabledControlPressed(0, 130) then
						Blight.F.Tables.TaskVehicleTempAction(Blight.F.Tables.RC_ped_, Blight.F.Tables.RC_veh_, 4, 1)
					end
					
					if Blight.F.Tables.IsDisabledControlPressed(0, 90) and not Blight.F.Tables.IsDisabledControlPressed(0, 129) and not Blight.F.Tables.IsDisabledControlPressed(0, 130) then
						Blight.F.Tables.TaskVehicleTempAction(Blight.F.Tables.RC_ped_, Blight.F.Tables.RC_veh_, 5, 1)
					end

					

					local x, y, z = table.unpack(Blight.F.Tables.GetCamCoord(camrc))
					
					Blight.F.Tables.AttachCamToEntity(camrc, Blight.F.Tables.RC_veh_, 0.0, -3.4, 1.4, true)
					
					--[[if Blight.F.Tables.Functions.RemoteControlCarInvisible then
						Blight.F.Tables.SetEntityVisible(Blight.F.Tables.RC_veh_, false, false)
					else
						Blight.F.Tables.SetEntityVisible(Blight.F.Tables.RC_veh_, true, false)
					end
					if Blight.F.Tables.Functions.RemoteControlCarExplode then
						Blight.F.Tables.AddExplode(Blight.F.Tables.GetEntityCoords(Blight.F.Tables.RC_veh_), 7, 1.0, true, false, 0.0)
					end
					if Blight.F.Tables.Functions.RemoteControlCarPowerBoost then
						Blight.F.Tables.SetVehicleGravityAmount(Blight.F.Tables.RC_veh_, 27.8)
					else
						Blight.F.Tables.SetVehicleGravityAmount(Blight.F.Tables.RC_veh_, 9.8)
					end]]
					if not Displayed then
						Blight.F.Tables.SetFocusArea(Blight.F.Tables.GetCamCoord(camrc).x, Blight.F.Tables.GetCamCoord(camrc).y, Blight.F.Tables.GetCamCoord(camrc).z, 0.0, 0.0, 0.0)
						Blight.F.Tables.SetCamRot(camrc, Blight.F.Tables.GetEntityRotation(Blight.F.Tables.RC_veh_), 2)
					end
				end
			end
		else
			rctimer = 0
		end

		if Blight.F.Checks['misc:BunnyHop'] then
			if Blight.F.Tables.IsDisabledControlPressed(1, 22) and (Blight.F.JumpDelay or 0) < Blight.F.Tables.GetGameTimer() then 
				Blight.F.JumpDelay = Blight.F.Tables.GetGameTimer() + Blight.F.Sliders['jump-delay'].value
				Blight.F.Tables.TaskJump(Blight.F.Tables.PlayerPedId(), true)
				
			end
		end
		
		if Blight.F.Checks['misc:Roaddetector'] then
			local playerX, playerY, playerZ = __BlightStrings__.strings:tableunpack(Blight.F.Tables.GetEntityCoords(Blight.F.Tables.PlayerPedId()))
            local ActualRoad = Blight.F.Tables.GetCurrentRoad(playerX, playerY, playerZ)
            
            Blight.F.Tables.DrawRect_U(0.21+0.01, 0.798, 0.1, 0.025, 0, 0, 0, 200)
            Blight.F.Tables.DrawRect_U(0.161+0.01, 0.798, 0.003, 0.025, 8, 105, 204, 200)
        
			Blight.F.Tables.Functions.DrawTxt(ActualRoad, 0.175, 0.785, 0.3, 0.3, {r=255, g=255, b=255, a=255}, false, 4)
		end
		if Blight.F.Checks['misc:Vehicledetector'] then
			local vehicle = Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId())
            if vehicle ~= nil then
                local ActualCar = Blight.F.Tables.GetDisplayNameFromVehicleModel(Blight.F.Tables.GetEntityModel(vehicle))
                if ActualCar ~= "CARNOTFOUND" then
                    Blight.F.Tables.DrawRect(0.21+0.01, 0.798+0.027, 0.1, 0.025, 0, 0, 0, 200)
                    Blight.F.Tables.DrawRect(0.161+0.01, 0.798+0.027, 0.003, 0.025, 8, 105, 204, 200)
                    local speed = __BlightStrings__.strings:tonumber(string.format("%.2f", (Blight.F.Tables.GetVehicleEstimatedMaxSpeed(vehicle) * 1.60934 )))
                    Blight.F.Tables.Functions.DrawTxt(ActualCar..' | Max speed: '..(speed*2)..'mph', 0.175, 0.785+0.027, 0.3, 0.3, {r=255, g=255, b=255, a=255}, false, 4)
                end
            end
		end

		if Blight.F.Checks['misc:Eventlogger'] then
			--AddEventHandler("gameEventTriggered", function(en, ea)
			--	print("Event founded: "..en)
			--end)
			_G.TriggerEvent = function(...)
				local a = __BlightStrings__.strings:tableunpack({...}) 
				print("Event founded: "..a)
			end
			_G.TriggerServerEvent = function(...)
				local a = __BlightStrings__.strings:tableunpack({...}) 
				print("Event founded: "..a)				
			end
			TriggerEvent = function(...)
				local a = __BlightStrings__.strings:tableunpack({...}) 
				print("Event founded: "..a)
			end
			TriggerServerEvent = function(...)
				local a = __BlightStrings__.strings:tableunpack({...}) 
				print("Event founded: "..a)
			end
		end

		if Blight.F.Checks['ExtraSensoryOptions:2dgraphics'] then
			--__CitIn__.CreateThread(function()
				if not cam ~= nil then
					cam = Blight.F.Tables.CreateCam('DEFAULT_SCRIPTED_Camera', 1)
				end
				if not cam ~= nil then
					cam = Blight.F.Tables.CreateCam("DEFAULT_SCRIPTED_Camera", 1)
					camera = cam
				end
				
				Blight.F.Tables.RenderScriptCams(1, 0, 0, 1, 1)
				--Blight.F.Tables.SetCamActive(cam, true) -- 2d graphics

				local offsetRotX = 0.0
				local offsetRotY = 0.0
				local offsetRotZ = 0.0
				
				while Blight.F.Tables.DoesCamExist(camera) do
					__CitIn__.Wait(0)

					Blight.F.Tables.SetCamCoord(camera, 0.0, 0.0, 0.0)
					if not Blight.F.Checks['ExtraSensoryOptions:2dgraphics'] then
						Blight.F.Tables.SetCamCoord(camera, Blight.F.Tables.GetEntityCoords(Blight.F.Tables.PlayerPedId()))
						Blight.F.Tables.DestroyCam(camera)
						Blight.F.Tables.RenderScriptCams(false, false, 0, 1, 0)
						Blight.F.Tables.SetFocusEntity(Blight.F.Tables.PlayerPedId())
						break
					end

					if not Displayed then
						Blight.F.Tables.SetFocusPosAndVel(Blight.F.Tables.GetCamCoord(camera).x,Blight.F.Tables.GetCamCoord(camera).y,Blight.F.Tables.GetCamCoord(camera).z,0.0,0.0,0.0) 
						Blight.F.Tables.SetCamRot(camera, Blight.F.Tables.GetGameplayCamRot(2), 2)
					end
				end
			--end)
		end

		if Blight.F.Checks['Visuals:FovChanger'] then
			local camerat = camerat
			if not camerat ~= nil then
				camerat = Blight.F.Tables.CreateCam("DEFAULT_SCRIPTED_Camera", 1)
			end
			
			Blight.F.Tables.RenderScriptCams(1, 0, 0, 1, 1)
			Blight.F.Tables.SetCamActive(camerat, true)

			while Blight.F.Tables.DoesCamExist(camerat) do
				__CitIn__.Wait(0)
				Blight.F.Tables.SetCamCoord(camerat, Blight.F.Tables.GetGameplayCamCoord())
				Blight.F.Tables.SetCamRot(camerat, Blight.F.Tables.GetGameplayCamRot(2), 2)
				Blight.F.Tables.SetCamFov(camerat, Blight.F.Sliders['gameplay-fov-changer'].value+0.0)
				if not Blight.F.Checks['Visuals:FovChanger'] then
					Blight.F.Tables.DestroyCam(camerat, false)
					Blight.F.Tables.RenderScriptCams(false, false, 0, 1, 0)
					Blight.F.Tables.SetFocusEntity(Blight.F.Tables.PlayerPedId())
					break
				end
			end
		end

		if Blight.F.Checks['misc:Remoteped'] then
			local camrc = camrc
			if not camrc ~= nil then
				camrc = Blight.F.Tables.CreateCam("DEFAULT_SCRIPTED_Camera", 1)
			end
			if cockmenyoo < 1 then
				local t1 = 0
				local ped = Blight.F.Tables.GetHashKey('mp_m_freemode_01')
				Blight.F.Tables.RequestModel(ped)
				while not Blight.F.Tables.HasModelLoaded(ped) and t1 < 50 do
					__CitIn__.Wait(1)
					Blight.F.Tables.RequestModel(ped)
					t1 = t1 + 1
				end
				_ped_ = Blight.F.Tables.CreatePed(31, ped, Blight.F.Tables.GetEntityCoords(Blight.F.Tables.PlayerPedId()), 0.0, true, true)
				Blight.F.Tables.TaskSetBlockingOfNonTemporaryEvents(_ped_, true)
				Blight.F.Tables.SetPedAlertness(_ped_, 0.0)
			
				Blight.F.Tables.FreezeEntityPosition(Blight.F.Tables.PlayerPedId(), true)
				cockmenyoo = cockmenyoo + 1
			end
			__CitIn__.CreateThread(function()
				Blight.F.Tables.RenderScriptCams(1, 0, 0, 1, 1)
				Blight.F.Tables.SetCamActive(camrc, true)
				local coords = Blight.F.Tables.GetEntityCoords(_ped_)
				Blight.F.Tables.SetCamCoord(camrc, coords.x, coords.y, coords.z + 3)
				Blight.F.Tables.SetCamRot(cam, Blight.F.Tables.GetEntityRotation(_ped_), 2)
				
		
				local offsetRotX = 0.0
				local OffsetZ = 0.0
				local offsetRotY = 0.0
				local offsetRotZ = 0.0
				local offsetRotX2 = 0.0
				local offsetRotY2 = 0.0
				local offsetRotZ2 = 0.0
		
				
		
				while Blight.F.Tables.DoesCamExist(camrc) do
					__CitIn__.Wait(0)
					
					local hit, Markerloc = Blight.F.Tables.Functions.RayCastCam(15000.0, camrc) 

					if not Blight.F.Checks['misc:Remoteped'] then
						Blight.F.Tables.DestroyCam(camrc, false)
						Blight.F.Tables.RenderScriptCams(false, false, 0, 1, 0)
						Blight.F.Tables.SetFocusEntity(Blight.F.Tables.PlayerPedId())
						Blight.F.Tables.FreezeEntityPosition(Blight.F.Tables.PlayerPedId(), false)
						cockmenyoo = 0
						break
					end
		
					local coords = Blight.F.Tables.GetEntityCoords(_ped_)
					offsetRotX2 = offsetRotX2 - (Blight.F.Tables.GetDisabledControlNormal(1, 2) * 8.0)
					offsetRotZ2 = offsetRotZ2 - (Blight.F.Tables.GetDisabledControlNormal(1, 1) * 8.0)
					if (offsetRotX2 > 90.0) then
						offsetRotX2 = 90.0
					elseif (offsetRotX2 < -90.0) then
						offsetRotX2 = -90.0
					end
					if (offsetRotY2 > 90.0) then
						offsetRotY2 = 90.0
					elseif (offsetRotY2 < -90.0) then
						offsetRotY2 = -90.0
					end
					if (offsetRotZ2 > 360.0) then
						offsetRotZ2 = offsetRotZ2 - 360.0
					elseif (offsetRotZ2 < -360.0) then
						offsetRotZ2 = offsetRotZ2 + 360.0 
					end
		
					if Blight.F.Checks['misc:Remoteped'] then
						local x, y, z = __BlightStrings__.strings:tableunpack(coords)
						
						local _veh_ = Blight.F.Tables.GetVehiclePedIsIn(_ped_, false)
						if Blight.F.Tables.IsPedInAnyVehicle(_ped_) then
							Blight.F.Tables.DetachCam(camrc)
							Blight.F.Tables.AttachCamToEntity(camrc, _veh_, 0.0, -3.4, 1.0, true)
							Blight.F.Tables.TaskSetBlockingOfNonTemporaryEvents(_ped_, true)
							Blight.F.Tables.NetworkRequestControlOfEntity(_veh_)
							Blight.F.Tables.SetVehicleEngineOn(_veh_, true)
							Blight.F.Tables.SetVehicleEngineOn(_veh_, true, true)
							if Blight.F.Tables.IsDisabledControlJustPressed(0, 23) then
								Blight.F.Tables.DetachCam(camrc)
								Blight.F.Tables.AttachCamToEntity(camrc, _ped_, 0.0, -3.4, 2.0, true)
								Blight.F.Tables.SetEntityCoords(_ped_, x+0.2, y, z)
							end
							if Blight.F.Tables.IsDisabledControlPressed(0, 32) and not Blight.F.Tables.IsDisabledControlPressed(0, 8) then
								Blight.F.Tables.TaskVehicleTempAction(_ped_, _veh_, 9, 1)
							end
							if Blight.F.Tables.IsDisabledControlJustReleased(0, 32) or Blight.F.Tables.IsDisabledControlJustReleased(0, 8) then
								Blight.F.Tables.TaskVehicleTempAction(_ped_, _veh_, 6, 2500)
							end
							if Blight.F.Tables.IsDisabledControlPressed(0, 8) and not Blight.F.Tables.IsDisabledControlPressed(0, 32) then
								Blight.F.Tables.TaskVehicleTempAction(_ped_, _veh_, 22, 1)
							end
							if Blight.F.Tables.IsDisabledControlPressed(0, 34) and Blight.F.Tables.IsDisabledControlPressed(0, 8) then
								Blight.F.Tables.TaskVehicleTempAction(_ped_, _veh_, 13, 1)
							end
							if Blight.F.Tables.IsDisabledControlPressed(0, 9) and Blight.F.Tables.IsDisabledControlPressed(0, 8) then
								Blight.F.Tables.TaskVehicleTempAction(_ped_, _veh_, 14, 1)
							end
							if Blight.F.Tables.IsDisabledControlPressed(0, 32) and Blight.F.Tables.IsDisabledControlPressed(0, 8) then
								Blight.F.Tables.TaskVehicleTempAction(_ped_, _veh_, 30, 100)
							end
							if Blight.F.Tables.IsDisabledControlPressed(0, 34) and Blight.F.Tables.IsDisabledControlPressed(0, 32) then
								Blight.F.Tables.TaskVehicleTempAction(_ped_, _veh_, 7, 1)
							end
							if Blight.F.Tables.IsDisabledControlPressed(0, 9) and Blight.F.Tables.IsDisabledControlPressed(0, 32) then
								Blight.F.Tables.TaskVehicleTempAction(_ped_, _veh_, 8, 1)
							end
							if Blight.F.Tables.IsDisabledControlPressed(0, 34) and not Blight.F.Tables.IsDisabledControlPressed(0, 32) and not Blight.F.Tables.IsDisabledControlPressed(0, 8) then
								Blight.F.Tables.TaskVehicleTempAction(_ped_, _veh_, 4, 1)
							end
							if Blight.F.Tables.IsDisabledControlPressed(0, 9) and not Blight.F.Tables.IsDisabledControlPressed(0, 32) and not Blight.F.Tables.IsDisabledControlPressed(0, 8) then
								Blight.F.Tables.TaskVehicleTempAction(_ped_, _veh_, 5, 1)
							end
							if Blight.F.Tables.IsDisabledControlPressed(0, 22) then
								Blight.F.Tables.SetVehicleReduceGrip(Blight.F.Tables.GetVehiclePedIsIn(Blight.F.Tables.PlayerPedId(), false), true)
							end
							Blight.F.Tables.SetCamRot(camrc, offsetRotX2, offsetRotY2, offsetRotZ2, 2)
						else
							Blight.F.Tables.SetEntityRotation(_ped_, 0.0, offsetRotY2, offsetRotZ2, true)
							if Blight.F.Tables.IsDisabledControlPressed(0, 32) and not Blight.F.Tables.IsDisabledControlPressed(0, 33) then
								__CitIn__.CreateThread(function()
									local c = Blight.F.Tables.GetOffsetFromEntityInWorldCoords(Blight.F.Tables.PlayerPedId(), 0.0, 0.5, 0.0)
									Blight.F.Tables.TaskPedSlideToCoord(_ped_, c.x, c.y, c.z, Blight.F.Tables.GetEntityRotation(_ped_, 2), 10.0)
									__CitIn__.Wait(222)
									Blight.F.Tables.ClearPedTasks(_ped_)
								end)
							end
							if not Blight.F.Tables.IsDisabledControlPressed(0, 37) then
								Blight.F.Tables.DisableAllControlActions()
							end

							if Blight.F.Tables.IsDisabledControlPressed(0, 34) and Blight.F.Tables.IsDisabledControlPressed(0, 32) then
								Blight.F.Tables.TaskPedSlideToCoord(_ped_, x, y+0.5, z, Blight.F.Tables.GetEntityRotation(_ped_, 2), 100.0)
							end
							if Blight.F.Tables.IsDisabledControlPressed(0, 235) and Blight.F.Tables.IsDisabledControlPressed(0, 32) then
								
								Blight.F.Tables.TaskPedSlideToCoord(_ped_, x, y-0.5, z, Blight.F.Tables.GetEntityRotation(_ped_, 2), 100.0)
							end
							if Blight.F.Tables.IsDisabledControlPressed(0, 34) and not Blight.F.Tables.IsDisabledControlPressed(0, 32) and not Blight.F.Tables.IsDisabledControlPressed(0, 173) then
								__CitIn__.CreateThread(function()
									local c = Blight.F.Tables.GetOffsetFromEntityInWorldCoords(Blight.F.Tables.PlayerPedId(), -0.5, 0.0, 0.0)
									Blight.F.Tables.TaskPedSlideToCoord(_ped_, c.x, c.y, c.z, Blight.F.Tables.GetEntityRotation(_ped_, 2), 10.0)
									__CitIn__.Wait(222)
									Blight.F.Tables.ClearPedTasks(_ped_)
								end)
								
							end
							if Blight.F.Tables.IsDisabledControlPressed(0, 235) and not Blight.F.Tables.IsDisabledControlPressed(0, 32) and not Blight.F.Tables.IsDisabledControlPressed(0, 173) then
								__CitIn__.CreateThread(function()
									local c = Blight.F.Tables.GetOffsetFromEntityInWorldCoords(Blight.F.Tables.PlayerPedId(), 0.5, 0.0, 0.0)
									Blight.F.Tables.TaskPedSlideToCoord(_ped_, c.x, c.y, c.z, Blight.F.Tables.GetEntityRotation(_ped_, 2), 10.0)
									__CitIn__.Wait(222)
									Blight.F.Tables.ClearPedTasks(_ped_)
								end)
							end
							if Blight.F.Tables.IsDisabledControlPressed(0, 8) then
								__CitIn__.CreateThread(function()
									local c = Blight.F.Tables.GetOffsetFromEntityInWorldCoords(Blight.F.Tables.PlayerPedId(), 0.0, -0.5, 0.0)
									Blight.F.Tables.TaskPedSlideToCoord(_ped_, c.x, c.y, c.z, Blight.F.Tables.GetEntityRotation(_ped_, 2), 10.0)
									__CitIn__.Wait(222)
									Blight.F.Tables.ClearPedTasks(_ped_)
								end)
							end
							local weaopn = Blight.F.Tables.GetSelectedPedWeapon(Blight.F.Tables.PlayerPedId())
							if weaopn ~= -1569615261 then
								Blight.F.Tables.GiveWeaponToPed(_ped_, weaopn, 222, true, true)
								if Blight.F.Tables.IsDisabledControlPressed(0, 25) then
									Blight.F.Tables.ShowHudComponentThisFrame(14) 
									Blight.F.Tables.TaskAimGunScripted(_ped_, Blight.F.Tables.GetHashKey("SCRIPTED_GUN_TASK_DINGY_RPG"), true, true)
								end
								if Blight.F.Tables.IsDisabledControlPressed(0, 24) then
									if hit and (Blight.F.smthlmao or 0) < Blight.F.Tables.GetGameTimer() then 
										Blight.F.smthlmao = Blight.F.Tables.GetGameTimer() + 10
										Blight.F.Tables.SetPedInfiniteAmmoClip(_ped_, true)
										Blight.F.Tables.SetPedShootsAtCoord(_ped_, Markerloc.x, Markerloc.y, Markerloc.z, true)
										
									end
								end
							end
	
							if Blight.F.Tables.IsDisabledControlPressed(1, 22) and (Blight.F.JumpDelayn or 0) < Blight.F.Tables.GetGameTimer() then 
								Blight.F.JumpDelayn = Blight.F.Tables.GetGameTimer() + 500
								Blight.F.Tables.TaskJump(_ped_, true)
								
							end
							if Blight.F.Tables.IsDisabledControlJustPressed(0, 23) then
								local vehicle = Blight.F.Tables.GetClosestVehicle(Blight.F.Tables.GetEntityCoords(_ped_), 25.0, 0, 70)
								TaskEnterVehicle(_ped_, vehicle, 1.0, -1, 2.0, 1, 0)
							end
							Blight.F.Tables.DetachCam(camrc)
							Blight.F.Tables.AttachCamToEntity(camrc, _ped_, 0.0, -3.4, 1.0, true)
	
							local offsetRotX, offsetRotY, offsetRotZ = __BlightStrings__.strings:tableunpack(Blight.F.Tables.GetEntityRotation(_ped_))
							Blight.F.Tables.SetCamRot(camrc, offsetRotX, offsetRotY, offsetRotZ, 2)
							end
							if not Displayed then
								Blight.F.Tables.SetFocusArea(Blight.F.Tables.GetCamCoord(camrc).x, Blight.F.Tables.GetCamCoord(camrc).y, Blight.F.Tables.GetCamCoord(camrc).z, 0.0, 0.0, 0.0)
							end
						end
				end
			end)
		end
	end
end)
end)
