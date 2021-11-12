local TheClassicRace = TheClassicRace

---@class TheClassicRaceColors
local TheClassicRaceColors = {
	WHITE = "|cFFFFFFFF",
	SYSTEM_EVENT_YELLOW = "|cFFFFFF00",
	BROWN = "|cFFEDA55F",
	WARRIOR = "|cFFC79C6E",
	PALADIN = "|cFFF58CBA",
	HUNTER = "|cFFABD473",
	ROGUE = "|cFFFFF569",
	PRIEST = "|cFFFFFFFF",
	DEATHKNIGHT = "|cFFC41F3B",
	SHAMAN = "|cFF0070DE",
	MAGE = "|cFF69CCF0",
	WARLOCK = "|cFF9482C9",
	DRUID = "|cFFFF7D0A"
}
TheClassicRace.Colors = TheClassicRaceColors

---@class TheClassicRaceConfig
local TheClassicRaceConfig = {
	Version = "v1.0.1",
	Debug = false, -- TODO: set to false
	Trace = false, -- TODO: set to false
	LibWhoDebug = false, -- TODO: set to false
	MaxLevel = 80,
	MaxLeaderboardSize = 50,
	-- OfferSync throttle time window
	RequestSyncWait = 5,
	RetrySyncWait = 30,
	OfferSyncThrottle = 30,
	AceConfig = "The Classic Race",
	LDB = "TheClassicRace",
	Classes = {
		"WARRIOR",
		"PALADIN",
		"HUNTER",
		"ROGUE",
		"PRIEST",
		"DEATHKNIGHT",
		"SHAMAN",
		"MAGE",
		"WARLOCK",
		"DRUID"
	},
	-- ClassIndexes is inverse of Classes
	UnknownClassIndex = 0,
	ClassIndexes = {
		WARRIOR = 1,
		PALADIN = 2,
		HUNTER = 3,
		ROGUE = 4,
		PRIEST = 5,
		DEATHKNIGHT = 6,
		SHAMAN = 7,
		MAGE = 8,
		WARLOCK = 9,
		DRUID = 10
	},
	PrettyClassNames = {
		WARRIOR = "Warrior",
		PALADIN = "Paladin",
		HUNTER = "Hunter",
		ROGUE = "Rogue",
		PRIEST = "Priest",
		DEATHKNIGHT = "DK",
		SHAMAN = "Shaman",
		MAGE = "Mage",
		WARLOCK = "Warlock",
		DRUID = "Druid"
	},
	Network = {
		Prefix = "TCRace",
		Channel = {
			Name = "world",
			Id = nil -- will be set at runtime to channel ID if joined
		},
		Events = {
			PlayerInfoBatch = "PINFOB",
			RequestSync = "REQSYNC",
			OfferSync = "OFFERSYNC",
			StartSync = "STARTSYNC",
			SyncPayload = "SYNC"
		}
	},
	Events = {
		NetworkReady = "NETWORK_READY",
		SlashWhoResult = "WHO_RESULT",
		SyncResult = "SYNC_RESULT",
		BumpScan = "BUMP_SCAN",
		Ding = "DING",
		-- ScanFinished(endofrace)
		-- should use RaceFinished though if interested in when the race is finished,
		-- because that's only broadcasted once
		ScanFinished = "SCAN_FINISHED",
		RaceFinished = "RACE_FINISHED",
		RefreshGUI = "REFRESH_GUI"
	}
}

TheClassicRace.Config = TheClassicRaceConfig