--[[
	--- This is Wilson's speech file for Don't Starve Together ---
	Write your character's lines here.
	If you want to use another speech file as a base, or use a more up-to-date version, get them from data\databundles\scripts.zip\scripts\

	If you want to use quotation marks in a quote, put a \ before it.
	Example:
	"Like \"this\"."
]]
return{
	ACTIONFAIL =
	{
        APPRAISE =
        {
            NOTNOW = "hey! look at this pleaseeeee",
		},
		REPAIR =
        {
            WRONGPIECE = "not the right piece",
        },
        BUILD =
        {
            MOUNTED = "i think im too high up",
            HASPET = "one mortal creature at a time",
        },
		SHAVE =
		{
			AWAKEBEEFALO = "theyre scary when theyre awake, maybe when theyre asleep",
			GENERIC = "no thankyou, not shaving",
			NOBITS = "no hair there!",
--fallback to speech_wilson.lua             REFUSE = "only_used_by_woodie",
            SOMEONEELSESBEEFALO = "i think ill let someone else do it",
		},
		STORE =
		{
			GENERIC = "all full up!",
			NOTALLOWED = "it... just... wont... fit!",
			INUSE = "o excuse me",
            NOTMASTERCHEF = "its rude to look in the mortals things",
		},
        CONSTRUCT =
        {
            INUSE = "ive got to wait my turn",
            NOTALLOWED = "o no its not right",
            EMPTY = "seems to need more things",
            MISMATCH = "o no",
        },
		RUMMAGE =
		{
			GENERIC = "no thankyou...",
			INUSE = "the corporeal one is using this",
            NOTMASTERCHEF = "its rude to look in the mortals things",
		},
		UNLOCK =
        {
        	WRONGKEY = "this key wont fit!",
        },
		USEKLAUSSACKKEY =
        {
        	WRONGKEY = "silly key doesnt work, maybe another one will?",
        	KLAUS = "no time, too scared!",
			QUAGMIRE_WRONGKEY = "o no, not working",
        },
		ACTIVATE =
		{
			LOCKED_GATE = "let me in!! let me in!!!",
		},
        COOK =
        {
            GENERIC = "that pots too hot. like the sun. i dont like the sun",
            INUSE = "o sorry, ill wait my turn",
            TOOFAR = "cant... quite... reach",
        },
        START_CARRAT_RACE =
        {
            NO_RACERS = "o theres no one to race",
        },
        --warly specific action
		DISMANTLE =
		{
			COOKING = "im not going to interrupt",
			INUSE = "i still want to use it!",
			NOTEMPTY = "theres still stuff in there!",
        },
        FISH_OCEAN =
		{
			TOODEEP = "this line is much shorter than i remember",
		},
		OCEAN_FISHING_POND =
		{
			WRONGGEAR = "i think i need a different rod",
		},
        --wickerbottom specific action
--fallback to speech_wilson.lua         READ =
--fallback to speech_wilson.lua         {
--fallback to speech_wilson.lua             GENERIC = "only_used_by_wickerbottom",
--fallback to speech_wilson.lua             NOBIRDS = "only_used_by_wickerbottom"
--fallback to speech_wilson.lua         },

        GIVE =
        {
            GENERIC = "o no, not going to work",
            DEAD = "they are ethereal now. like me!",
            SLEEPING = "o excuse me, this being is resting",
            BUSY = "sorry, maybe another time",
            ABIGAILHEART = "she remains incorporeal. hey, me too!",
            GHOSTHEART = "o well, its not bad being see-through",
            NOTGEM = "im not sure this will work",
            WRONGGEM = "silly gem, why are you the wrong colour?",
            NOTSTAFF = "not working, not fitting",
            MUSHROOMFARM_NEEDSSHROOM = "o this needs a little mushroom",
            MUSHROOMFARM_NEEDSLOG = "maybe i can ask wormwood for help",
			MUSHROOMFARM_NOMOONALLOWED = "the mushrooms wont grow",
            SLOTFULL = "o i think thats full already",
            FOODFULL = "silly me, one meal at a time!",
            NOTDISH = "webber wouldnt even eat that",
            DUPLICATE = "i know that one!",
            NOTSCULPTABLE = "art doesnt work like that...",
            NOTATRIUMKEY = "its not quite the right shape",
            CANTSHADOWREVIVE = "this one remains...",
            WRONGSHADOWFORM = "its bones are all backwards",
            NOMOON = "it wont work here",
			PIGKINGGAME_MESSY = "im sorry, thats much too messy",
			PIGKINGGAME_DANGER = "no! too scary!",
			PIGKINGGAME_TOOLATE = "too dark for that now, thats a shame",
        },
        GIVETOPLAYER =
        {
            FULL = "i had something for you, but theres no room!",
            DEAD = "... i will just keep this...",
            SLEEPING = "this mortal is sleeping",
            BUSY = "excuse me!",
        },
        GIVEALLTOPLAYER =
        {
            FULL = "i had something for you, but theres no room!",
            DEAD = "... i will just keep this...",
            SLEEPING = "this mortal is sleeping",
            BUSY = "excuse me!",
        },
        WRITE =
        {
            GENERIC = "my handwriting isnt very good anyway",
            INUSE = "silly me, ive got to wait my turn",
        },
        DRAW =
        {
            NOIMAGE = "o no... art block",
        },
        CHANGEIN =
        {
            GENERIC = "i like the way i look, transparent and all",
            BURNING = "guess my style is just too hot",
            INUSE = "silly me, ive got to wait my turn",
			NOTENOUGHHAIR = "it might help if my beefalo had more hair",
            NOOCCUPANT = "i think i might need to hitch up a beefalo first",
        },
        ATTUNE =
        {
            NOHEALTH = "shadows arent very strong anyway",
        },
        MOUNT =
        {
            TARGETINCOMBAT = "the mortal is fighting!",
            INUSE = "o excuse me, someone else is up there",
        },
        SADDLE =
        {
            TARGETINCOMBAT = "the mortal is fighting!",
        },
        TEACH =
        {
            --Recipes/Teacher
            KNOWN = "hey, i already know that one!",
            CANTLEARN = "brain... too small",

            --MapRecorder/MapExplorer
            WRONGWORLD = "o... this map isnt for this world",

			--MapSpotRevealer/messagebottle
			MESSAGEBOTTLEMANAGER_NOT_FOUND = "not much point trying to read this here",--Likely trying to read messagebottle treasure map in caves
        },
        WRAPBUNDLE =
        {
            EMPTY = "you cant wrap nothing! i should know, i count as nothing",
        },
        PICKUP =
        {
			RESTRICTION = "no thankyou",
			INUSE = "o excuse me, ive got to wait my turn",
			NOTMINE_YOTC =
            {
                "o no wrong carrat!",
                "they all look a little similar to me",
            },
        },
        SLAUGHTER =
        {
            TOOFAR = "just... too... far",
        },
        REPLATE =
        {
            MISMATCH = "o i think it needs another dish",
            SAMEDISH = "silly, i just did this one",
        },
        SAIL =
        {
        	REPAIR = "this boat is just fine",
        },
        ROW_FAIL =
        {
            BAD_TIMING0 = "o no!",
            BAD_TIMING1 = "im not very good at this",
            BAD_TIMING2 = "i cant believe ive done this",
        },
        LOWER_SAIL_FAIL =
        {
            "slipped right through my ethereal hands",
            "im sorry, im not very good at this sailing stuff",
            "ill try again!",
        },
        BATHBOMB =
        {
            GLASSED = "i can see right through it. heh",
            ALREADY_BOMBED = "o well, someone else has already bombed this one",
        },
		GIVE_TACKLESKETCH =
		{
			DUPLICATE = "i know this one!",
		},
		COMPARE_WEIGHABLE =
		{
            FISH_TOO_SMALL = "lil fishy is maybe too lil",
            OVERSIZEDVEGGIES_TOO_SMALL = "not big enough!",
		},
        BEGIN_QUEST =
        {
            ONEGHOST = "only_used_by_wendy",
        },
		TELLSTORY =
		{
			GENERIC = "only_used_by_walter",
--fallback to speech_wilson.lua 			NOT_NIGHT = "only_used_by_walter",
--fallback to speech_wilson.lua 			NO_FIRE = "only_used_by_walter",
		},
        SING_FAIL =
        {
--fallback to speech_wilson.lua             SAMESONG = "only_used_by_wathgrithr",
        },
        PLANTREGISTRY_RESEARCH_FAIL =
        {
            GENERIC = "i know all about this one",
            FERTILIZER = "i know all of this already!",
        },
        FILL_OCEAN =
        {
            UNSUITABLE_FOR_PLANTS = "o no this water wont do...",
        },
        POUR_WATER =
        {
            OUT_OF_WATER = "silly me, its all out of water",
        },
        POUR_WATER_GROUNDTILE =
        {
            OUT_OF_WATER = "o seems its empty",
        },
        USEITEMON =
        {
            --GENERIC = "I can't use this on that!",

            --construction is PREFABNAME_REASON
            BEEF_BELL_INVALID_TARGET = "i dont think that will work",
            BEEF_BELL_ALREADY_USED = "o someone already got to this one",
            BEEF_BELL_HAS_BEEF_ALREADY = "one beefalo is all i need",
        },
        HITCHUP =
        {
            NEEDBEEF = "i need a beefalo to hitch",
            NEEDBEEF_CLOSER = "just... come... a little... closer",
            BEEF_HITCHED = "job done",
            INMOOD = "i dont think i can hitch when their like this",
        },
        MARK =
        {
            ALREADY_MARKED = "...no take backs",
            NOT_PARTICIPANT = "not too exciting",
        },
        YOTB_STARTCONTEST =
        {
            DOESNTWORK = "i dont think its is working",
            ALREADYACTIVE = "i think hes somewhere else",
        },
        YOTB_UNLOCKSKIN =
        {
            ALREADYKNOWN = "o i know this already",
        }

	},
	ACTIONFAIL_GENERIC = "no thankyou",
	ANNOUNCE_BOAT_LEAK = "i think the water is meant to be outside the boat.",
	ANNOUNCE_BOAT_SINK = "a captain goes down with the ship, but im not the captain!",
	ANNOUNCE_DIG_DISEASE_WARNING = "all better",
	ANNOUNCE_PICK_DISEASE_WARNING = "that doesnt smell very nice",
	ANNOUNCE_ADVENTUREFAIL = "o well maybe next time",
    ANNOUNCE_MOUNT_LOWHEALTH = "this mortal may be nearing its end",

    --waxwell and wickerbottom specific strings
    ANNOUNCE_TOOMANYBIRDS = "only_used_by_waxwell_and_wicker",
    ANNOUNCE_WAYTOOMANYBIRDS = "only_used_by_waxwell_and_wicker",

    --wolfgang specific
    ANNOUNCE_NORMALTOMIGHTY = "only_used_by_wolfang",
    ANNOUNCE_NORMALTOWIMPY = "only_used_by_wolfang",
    ANNOUNCE_WIMPYTONORMAL = "only_used_by_wolfang",
    ANNOUNCE_MIGHTYTONORMAL = "only_used_by_wolfang",

	ANNOUNCE_BEES = "bees!!!!!!!!!!!",
	ANNOUNCE_BOOMERANG = "o no",
	ANNOUNCE_CHARLIE = "-",
	ANNOUNCE_CHARLIE_ATTACK = "-",
	ANNOUNCE_CHARLIE_MISSED = "only_used_by_winona", --winona specific
	ANNOUNCE_COLD = "too... cold",
	ANNOUNCE_HOT = "the light... hurts",
	ANNOUNCE_CRAFTING_FAIL = "o i think it needs something else",
	ANNOUNCE_DEERCLOPS = "what was that? o no it sounded scary",
	ANNOUNCE_CAVEIN = "the ceiling is falling!!",
	ANNOUNCE_ANTLION_SINKHOLE =
	{
		"thats sounds big!",
		"the ground is breaking!!",
		"no no no no!",
	},
	ANNOUNCE_ANTLION_TRIBUTE =
	{
        "a gift!!",
        "excuse me, i think youd like this",
        "here, just for you!",
	},
	ANNOUNCE_SACREDCHEST_YES = "o? it likes me?",
	ANNOUNCE_SACREDCHEST_NO = "o no, it didnt like that",
    ANNOUNCE_DUSK = "the sun is going! finally...",

    --wx-78 specific
    ANNOUNCE_CHARGE = "only_used_by_wx78",
	ANNOUNCE_DISCHARGE = "only_used_by_wx78",

	ANNOUNCE_EAT =
	{
		GENERIC = "that was nice",
		PAINFUL = "i dont know if shadows eat that",
		SPOILED = "can i un-eat something?",
		STALE = "that... was off",
		INVALID = "no thankyou",
        YUCKY = "no no no, im not eating that",

        --Warly specific ANNOUNCE_EAT strings
		COOKED = "only_used_by_warly",
		DRIED = "only_used_by_warly",
        PREPARED = "only_used_by_warly",
        RAW = "only_used_by_warly",
		SAME_OLD_1 = "only_used_by_warly",
		SAME_OLD_2 = "only_used_by_warly",
		SAME_OLD_3 = "only_used_by_warly",
		SAME_OLD_4 = "only_used_by_warly",
        SAME_OLD_5 = "only_used_by_warly",
		TASTY = "only_used_by_warly",
    },

    ANNOUNCE_ENCUMBERED =
    {
        "shadows arent meant to do this",
        "so... heavy",
        "i dont even have muscles",
        "maybe this would be easier if i was... big",
        "can i have... a break?",
        "huff... huff...",
        "aaaa...",
        "pant... pant...",
        "can i stop... soon?",
		"...hhh ...",

    },
    ANNOUNCE_ATRIUM_DESTABILIZING =
    {
		"i think i hear monsters",
		"what was that??",
		"o no, this isnt good",
	},
    ANNOUNCE_RUINS_RESET = "o no!! mortal beasts!",
    ANNOUNCE_SNARED = "trapped!",
	ANNOUNCE_SNARED_IVY = "hey!",
    ANNOUNCE_REPELLED = "hey, thats not fair!",
	ANNOUNCE_ENTER_DARK = "the dark is so much better",
	ANNOUNCE_ENTER_LIGHT = "so... bright",
	ANNOUNCE_FREEDOM = "freedom!",
	ANNOUNCE_HIGHRESEARCH = "my brain is big now",
	ANNOUNCE_HOUNDS = "o no i think i hear wolves",
	ANNOUNCE_WORMS = "the earth is moving",
	ANNOUNCE_HUNGRY = "even a shadow needs to eat",
	ANNOUNCE_HUNT_BEAST_NEARBY = "i think this mortal beast is close",
	ANNOUNCE_HUNT_LOST_TRAIL = "o no, i lost it",
	ANNOUNCE_HUNT_LOST_TRAIL_SPRING = "the ground so squishy, whered the trail go?",
	ANNOUNCE_INV_FULL = "o! too much stuff!",
	ANNOUNCE_KNOCKEDOUT = "my little head",
	ANNOUNCE_LOWRESEARCH = "brain isnt so big",
	ANNOUNCE_MOSQUITOS = "mosquitos can still hurt shadows!",
    ANNOUNCE_NOWARDROBEONFIRE = "those clothes are too bright...",
    ANNOUNCE_NODANGERGIFT = "too scary to open that!",
    ANNOUNCE_NOMOUNTEDGIFT = "too high up... i should get down",
	ANNOUNCE_NODANGERSLEEP = "too scary!! cant sleep now!",
	ANNOUNCE_NODAYSLEEP = "sun go away!",
	ANNOUNCE_NODAYSLEEP_CAVE = "o no i cant sleep here",
	ANNOUNCE_NOHUNGERSLEEP = "little shadow needs to eat before sleeping!",
	ANNOUNCE_NOSLEEPONFIRE = "fire doesnt make a good matress! ",
	ANNOUNCE_NODANGERSIESTA = "scary scary scary!!",
	ANNOUNCE_NONIGHTSIESTA = "tents are for night silly!",
	ANNOUNCE_NONIGHTSIESTA_CAVE = "not... not down here",
	ANNOUNCE_NOHUNGERSIESTA = "i really need some food first...",
	ANNOUNCE_NODANGERAFK = "o no... i have to fight!",
	ANNOUNCE_NO_TRAP = "heh, too easy! ",
	ANNOUNCE_PECKED = "thats one sharp beak!",
	ANNOUNCE_QUAKE = "o no the grounds-a-grumbling",
	ANNOUNCE_RESEARCH = "big brain time!",
	ANNOUNCE_SHELTER = "o thankyou, thats much better",
	ANNOUNCE_THORNS = "ow",
	ANNOUNCE_BURNT = "too hot too hot too hot!",
	ANNOUNCE_TORCH_OUT = "that light is gone. good!",
	ANNOUNCE_THURIBLE_OUT = "o well",
	ANNOUNCE_FAN_OUT = "my little fan has gone...",
    ANNOUNCE_COMPASS_OUT = "now im directionless",
	ANNOUNCE_TRAP_WENT_OFF = "o no.",
	ANNOUNCE_UNIMPLEMENTED = "that wasnt ready",
	ANNOUNCE_WORMHOLE = "that hole had teeth! teeth!!! ",
	ANNOUNCE_TOWNPORTALTELEPORT = "im here!",
	ANNOUNCE_CANFIX = "\ni can fix this!",
	ANNOUNCE_ACCOMPLISHMENT = "i did it!",
	ANNOUNCE_ACCOMPLISHMENT_DONE = "i did so well!",
	ANNOUNCE_INSUFFICIENTFERTILIZER = "o i think this one needs more",
	ANNOUNCE_TOOL_SLIP = "o no, i dropped it",
	ANNOUNCE_LIGHTNING_DAMAGE_AVOIDED = "the sky almost got me!",
	ANNOUNCE_TOADESCAPING = "little frog is leaving",
	ANNOUNCE_TOADESCAPED = "little frog is gone",


	ANNOUNCE_DAMP = "o hello water",
	ANNOUNCE_WET = "shower time!",
	ANNOUNCE_WETTER = "im soaked, heh!",
	ANNOUNCE_SOAKED = "i might need a snorkle soon",

	ANNOUNCE_WASHED_ASHORE = "i live!",

    ANNOUNCE_DESPAWN = "i return to the dark!",
	ANNOUNCE_BECOMEGHOST = "oOooOooo!!",
	ANNOUNCE_GHOSTDRAIN = "hello lil ghost",
	ANNOUNCE_PETRIFED_TREES = "the trees are petrifying! aa!!",
	ANNOUNCE_KLAUS_ENRAGE = "o no hes even worse!!",
	ANNOUNCE_KLAUS_UNCHAINED = "hes loose!",
	ANNOUNCE_KLAUS_CALLFORHELP = "he asked his friends for help!",

	ANNOUNCE_MOONALTAR_MINE =
	{
		GLASS_MED = "o theres something inside",
		GLASS_LOW = "almost out",
		GLASS_REVEAL = "youre free!",
		IDOL_MED = "o theres something inside",
		IDOL_LOW = "almost out",
		IDOL_REVEAL = "youre free!",
		SEED_MED = "o theres something inside",
		SEED_LOW = "almost out",
		SEED_REVEAL = "youre free!",
	},

    --hallowed nights
    ANNOUNCE_SPOOKED = "did... did you see that?",
	ANNOUNCE_BRAVERY_POTION = "i have courage!",
	ANNOUNCE_MOONPOTION_FAILED = "o no, didnt work",

	--winter's feast
	ANNOUNCE_EATING_NOT_FEASTING = "we can share!",
	ANNOUNCE_WINTERS_FEAST_BUFF = "i feel... warm",
	ANNOUNCE_IS_FEASTING = "this is so tasty!",
	ANNOUNCE_WINTERS_FEAST_BUFF_OVER = "o well",

    --lavaarena event
    ANNOUNCE_REVIVING_CORPSE = "up you get silly!",
    ANNOUNCE_REVIVED_OTHER_CORPSE = "lets go!",
    ANNOUNCE_REVIVED_FROM_CORPSE = "o thankyou",

    ANNOUNCE_FLARE_SEEN = "a flare!",
    ANNOUNCE_OCEAN_SILHOUETTE_INCOMING = "monsters! in the sea!",

    --willow specific
	ANNOUNCE_LIGHTFIRE =
	{
		"only_used_by_willow",
    },

    --winona specific
    ANNOUNCE_HUNGRY_SLOWBUILD =
    {
	    "only_used_by_winona",
    },
    ANNOUNCE_HUNGRY_FASTBUILD =
    {
	    "only_used_by_winona",
    },

    --wormwood specific
    ANNOUNCE_KILLEDPLANT =
    {
        "only_used_by_wormwood",
    },
    ANNOUNCE_GROWPLANT =
    {
        "only_used_by_wormwood",
    },
    ANNOUNCE_BLOOMING =
    {
        "only_used_by_wormwood",
    },

    --wortox specfic
    ANNOUNCE_SOUL_EMPTY =
    {
        "only_used_by_wortox",
    },
    ANNOUNCE_SOUL_FEW =
    {
        "only_used_by_wortox",
    },
    ANNOUNCE_SOUL_MANY =
    {
        "only_used_by_wortox",
    },
    ANNOUNCE_SOUL_OVERLOAD =
    {
        "only_used_by_wortox",
    },

    --quagmire event
    QUAGMIRE_ANNOUNCE_NOTRECIPE = "o no, that wasnt quite right",
    QUAGMIRE_ANNOUNCE_MEALBURNT = "o no! all burnt",
    QUAGMIRE_ANNOUNCE_LOSE = "the mortal beast is angered!",
    QUAGMIRE_ANNOUNCE_WIN = "success!",

    ANNOUNCE_ROYALTY =
    {
        "your majesty",
        "your highness",
        "my liege",
    },

    ANNOUNCE_ATTACH_BUFF_ELECTRICATTACK    = "o how electrifying!",
    ANNOUNCE_ATTACH_BUFF_ATTACK            = "now im a real nightmare!",
    ANNOUNCE_ATTACH_BUFF_PLAYERABSORPTION  = "cant even hit me",
    ANNOUNCE_ATTACH_BUFF_WORKEFFECTIVENESS = "excuse me, i can handle this!",
    ANNOUNCE_ATTACH_BUFF_MOISTUREIMMUNITY  = "dry as a bone",
    ANNOUNCE_ATTACH_BUFF_SLEEPRESISTANCE   = "im never sleeping again!",

    ANNOUNCE_DETACH_BUFF_ELECTRICATTACK    = "o well, the sparks all gone",
    ANNOUNCE_DETACH_BUFF_ATTACK            = "not so strong anymore",
    ANNOUNCE_DETACH_BUFF_PLAYERABSORPTION  = "i guess it doesnt last",
    ANNOUNCE_DETACH_BUFF_WORKEFFECTIVENESS = "maybe ive done enough",
    ANNOUNCE_DETACH_BUFF_MOISTUREIMMUNITY  = "o looks like the rainwater is back",
	ANNOUNCE_DETACH_BUFF_SLEEPRESISTANCE   = "maybe a nap sounds nice",

    ANNOUNCE_OCEANFISHING_LINESNAP = "o no! my line snapped...",
	ANNOUNCE_OCEANFISHING_LINETOOLOOSE = "i think the line is loose",
	ANNOUNCE_OCEANFISHING_GOTAWAY = "silly fish got away",
	ANNOUNCE_OCEANFISHING_BADCAST = "im not very good at this, ill try again",
	ANNOUNCE_OCEANFISHING_IDLE_QUOTE =
	{
		"hello fish? are you there?",
		"this seems to be taking a while...",
		"do mortals enjoy this?",
		"...........",
	},

	ANNOUNCE_WEIGHT = "weight: {weight}",
	ANNOUNCE_WEIGHT_HEAVY  = "weight: {weight}\nthats pretty heavy!",

	-- these are just for testing for now, no need to write real strings yet
	ANNOUNCE_WINCH_CLAW_MISS = "o no, missed it",
	ANNOUNCE_WINCH_CLAW_NO_ITEM = "... nothing...",

    --Wurt announce strings
    ANNOUNCE_KINGCREATED = "only_used_by_wurt",
    ANNOUNCE_KINGDESTROYED = "only_used_by_wurt",
    ANNOUNCE_CANTBUILDHERE_THRONE = "only_used_by_wurt",
    ANNOUNCE_CANTBUILDHERE_HOUSE = "only_used_by_wurt",
    ANNOUNCE_CANTBUILDHERE_WATCHTOWER = "only_used_by_wurt",
    ANNOUNCE_READ_BOOK =
    {
--fallback to speech_wilson.lua         BOOK_SLEEP = "only_used_by_wurt",
--fallback to speech_wilson.lua         BOOK_BIRDS = "only_used_by_wurt",
--fallback to speech_wilson.lua         BOOK_TENTACLES =  "only_used_by_wurt",
--fallback to speech_wilson.lua         BOOK_BRIMSTONE = "only_used_by_wurt",
--fallback to speech_wilson.lua         BOOK_GARDENING = "only_used_by_wurt",
--fallback to speech_wilson.lua 		BOOK_SILVICULTURE = "only_used_by_wurt",
--fallback to speech_wilson.lua 		BOOK_HORTICULTURE = "only_used_by_wurt",
    },
	ANNOUNCE_WEAK_RAT = "i think that mortal is about to leave its body...",

    ANNOUNCE_CARRAT_START_RACE = "three, two... one......... go!",

    ANNOUNCE_CARRAT_ERROR_WRONG_WAY = {
        "silly creature, thats the wrong way",
        "other way! other way!",
    },
    ANNOUNCE_CARRAT_ERROR_FELL_ASLEEP = "please dont sleep now!",
    ANNOUNCE_CARRAT_ERROR_WALKING = "faster faster faster!!",
    ANNOUNCE_CARRAT_ERROR_STUNNED = "dont stop silly!",

    ANNOUNCE_GHOST_QUEST = "only_used_by_wendy",
--fallback to speech_wilson.lua     ANNOUNCE_GHOST_HINT = "only_used_by_wendy",
--fallback to speech_wilson.lua     ANNOUNCE_GHOST_TOY_NEAR = {
--fallback to speech_wilson.lua         "only_used_by_wendy",
--fallback to speech_wilson.lua     },
--fallback to speech_wilson.lua 	ANNOUNCE_SISTURN_FULL = "only_used_by_wendy",
--fallback to speech_wilson.lua     ANNOUNCE_ABIGAIL_DEATH = "only_used_by_wendy",
--fallback to speech_wilson.lua     ANNOUNCE_ABIGAIL_RETRIEVE = "only_used_by_wendy",
--fallback to speech_wilson.lua 	ANNOUNCE_ABIGAIL_LOW_HEALTH = "only_used_by_wendy",
    ANNOUNCE_ABIGAIL_SUMMON =
	{
--fallback to speech_wilson.lua 		LEVEL1 = "only_used_by_wendy",
--fallback to speech_wilson.lua 		LEVEL2 = "only_used_by_wendy",
--fallback to speech_wilson.lua 		LEVEL3 = "only_used_by_wendy",
	},

    ANNOUNCE_GHOSTLYBOND_LEVELUP =
	{
--fallback to speech_wilson.lua 		LEVEL2 = "only_used_by_wendy",
--fallback to speech_wilson.lua 		LEVEL3 = "only_used_by_wendy",
	},

--fallback to speech_wilson.lua     ANNOUNCE_NOINSPIRATION = "only_used_by_wathgrithr",
--fallback to speech_wilson.lua     ANNOUNCE_BATTLESONG_INSTANT_TAUNT_BUFF = "only_used_by_wathgrithr",
--fallback to speech_wilson.lua     ANNOUNCE_BATTLESONG_INSTANT_PANIC_BUFF = "only_used_by_wathgrithr",

    ANNOUNCE_ARCHIVE_NEW_KNOWLEDGE = "my brain feels bigger already",
    ANNOUNCE_ARCHIVE_OLD_KNOWLEDGE = "i already know this one!",
    ANNOUNCE_ARCHIVE_NO_POWER = "i think it needs power",

    ANNOUNCE_PLANT_RESEARCHED =
    {
        "im learning so much about this plant!",
    },

    ANNOUNCE_PLANT_RANDOMSEED = "what will this seed be?",

    ANNOUNCE_FERTILIZER_RESEARCHED = "learning all about nutrients",

	ANNOUNCE_FIRENETTLE_TOXIN =
	{
		"that feels like fire! i hate fire!",
		"o no! that plant poisoned me!",
	},
	ANNOUNCE_FIRENETTLE_TOXIN_DONE = "o good, the plants wrath has left me",

	ANNOUNCE_TALK_TO_PLANTS =
	{
        "hello mr plant",
        "i dont understand why you like the sun",
		"please... please grow faster",
        "you are a very good plant, now grow!",
        "i am here for you",
	},

    -- YOTB
    ANNOUNCE_CALL_BEEF = "hey beefalo! get over here!",
    ANNOUNCE_CANTBUILDHERE_YOTB_POST = "how would the judge even see my beefalo this far away?",
    ANNOUNCE_YOTB_LEARN_NEW_PATTERN =  "i think i can make a new costume",

	BATTLECRY =
	{
		GENERIC = "leave me alone!",
		PIG = "squeal little piggy!",
		PREY = "go away nasty mortal!",
		SPIDER = "you wont win!",
		SPIDER_WARRIOR = "Better you than me!",
		DEER = "die deer!",
	},
	COMBAT_QUIT =
	{
		GENERIC = "im glad thats finished!",
		PIG = "maybe another time then",
		PREY = "...im not fast enough",
		SPIDER = "good riddence",
		SPIDER_WARRIOR = "away! away!",
	},

	DESCRIBE =
	{
		MULTIPLAYER_PORTAL = "that door is all wobbly",
        MULTIPLAYER_PORTAL_MOONROCK = "a portal made from Elysium rock...",
        MOONROCKIDOL = "not a fan of the moon...",
        CONSTRUCTION_PLANS = "i will build this!",

        ANTLION =
        {
            GENERIC = "excuse me",
            VERYHAPPY = "i think its happy",
            UNHAPPY = "o no, i think its upset",
        },
        ANTLIONTRINKET = "a gift?",
        SANDSPIKE = "the sand is sharp!",
        SANDBLOCK = "o sand castles!",
        GLASSSPIKE = "looks like it could shatter at any moment.",
        GLASSBLOCK = "how sweet",
        ABIGAIL_FLOWER =
        {
		    GENERIC ="thats so pretty",
			LEVEL1 = "can she hear me in there?",
			LEVEL2 = "excuse me abigail?",
			LEVEL3 = "would you like to come out now?",

				-- deprecated
            LONG = "its very strange",
            MEDIUM = "makes me shiver",
            SOON = "that flowers looking freaky",
            HAUNTED_POCKET = "i think i should leave it",
            HAUNTED_GROUND = "spooky thing!",
        },

        BALLOONS_EMPTY = "im not really a fan of balloons...",
        BALLOON = "clowns scare me",
		BALLOONPARTY = "i dont like balloons much",
		BALLOONSPEED =
        {
            DEFLATED = "o dear",
            GENERIC = "for speed",
        },
		BALLOONVEST = "this is pretty loud",
		BALLOONHAT = "i dont know if i like this",

        BERNIE_INACTIVE =
        {
            BROKEN = "poor thing",
            GENERIC = "how sweet and soft!",
        },

        BERNIE_ACTIVE = "how brave!",
        BERNIE_BIG = "thats one big boy!",

        BOOK_BIRDS = "o this ones full of feathers",
        BOOK_TENTACLES = "i dont fancy more things to fight",
        BOOK_GARDENING = "i like this one",
		BOOK_SILVICULTURE = "a way to fuel the forest!",
		BOOK_HORTICULTURE = "a book full of tasty treats",
        BOOK_SLEEP = "i am feeling sleepy...",
        BOOK_BRIMSTONE = "frightening!",

        PLAYER =
        {
            GENERIC = "hello, %s!",
            ATTACKER = "%s looks quite scary!",
            MURDERER = "murderer!",
            REVIVER = "%s is very kind",
            GHOST = "%s could use a little help",
            FIRESTARTER = "making fires isnt very nice, %s.",
        },
        WILSON =
        {
            GENERIC = "hello %s!",
            ATTACKER = "a man of science ought to know better!",
            MURDERER = "%s! a murderer!",
            REVIVER = "thankyou very much %s",
            GHOST = "you seem less corporeal today %s",
            FIRESTARTER = "what happened to lab safety %s?",
        },
        WOLFGANG =
        {
            GENERIC = "hello %s!",
            ATTACKER = "he seems very strong!",
            MURDERER = "murderer!",
            REVIVER = "o thankyou %s",
            GHOST = "you seem less corporeal today %s",
            FIRESTARTER = "dont fight the fire %s!",
        },
        WAXWELL =
        {
            GENERIC = "... stay ... away...",
            ATTACKER = "what happened to being a gentleman?!",
            MURDERER = "murderer!",
            REVIVER = "thankyou.... %s",
            GHOST = "you seem less corporeal today %s",
            FIRESTARTER = "thats pretty bright %s",
        },
        WX78 =
        {
            GENERIC = "hello %s!",
            ATTACKER = "what about the first law of robotics!",
            MURDERER = "%s! murderer!",
            REVIVER = "thankyou little robot",
            GHOST = "you seem less corporeal today %s",
            FIRESTARTER = "that fire is looking pretty bright %s",
        },
        WILLOW =
        {
            GENERIC = "hello %s!",
            ATTACKER = "%s is pretty scary",
            MURDERER = "murderer! %s is a murderer!",
            REVIVER = "thankyou very much %s",
            GHOST = "you seem less corporeal today %s",
            FIRESTARTER = "again?",
        },
        WENDY =
        {
            GENERIC = "good to see you %s",
            ATTACKER = "i hope abigail isnt around",
            MURDERER = "murderer!",
            REVIVER = "o thankyou very much %s.",
            GHOST = "you seem less corporeal today %s",
            FIRESTARTER = "thats pretty bright %s",
        },
        WOODIE =
        {
            GENERIC = "hello %s!",
            ATTACKER = "lucy is looking mighty sharp",
            MURDERER = "%s is a murderer!",
            REVIVER = "thankyou %s",
            GHOST = "you seem less corporeal today %s",
            BEAVER = "%s's looking pretty hairy",
            BEAVERGHOST = "you seem less corporeal today silly beaver",
            MOOSE = "o look at that!",
            MOOSEGHOST = "you seem less corporeal today silly moose",
            GOOSE = "fly away little goose",
            GOOSEGHOST = "you seem less corporeal today silly goose",
            FIRESTARTER = "that fire is too bright for me",
        },
        WICKERBOTTOM =
        {
            GENERIC = "hello %s!",
            ATTACKER = "please dont throw that book",
            MURDERER = "murderer!",
            REVIVER = "thankyou very much %s",
            GHOST = "you seem less corporeal today %s",
            FIRESTARTER = "i dont really like fire",
        },
        WES =
        {
            GENERIC = "good to see you %s",
            ATTACKER = "that mime is looking scary",
            MURDERER = "murderer!",
            REVIVER = "thankyou %s",
            GHOST = "you seem less corporeal today %s",
            FIRESTARTER = "o thats pretty bright %s",
        },
        WEBBER =
        {
            GENERIC = "hello %s!",
            ATTACKER = "those teeth look scary",
            MURDERER = "murderer! %s a murderer!",
            REVIVER = "o thankyou little spider",
            GHOST = "you seem less corporeal today %s",
            FIRESTARTER = "that fire is too bright for me",
        },
        WATHGRITHR =
        {
            GENERIC = "hello %s!",
            ATTACKER = "%s's spear is looking sharp",
            MURDERER = "%s's gone berserk!",
            REVIVER = "thankyou very much %s, you are a true warrior!",
            GHOST = "visted valhalla recently %s?",
            FIRESTARTER = "that fire is too bright for me",
        },
        WINONA =
        {
            GENERIC = "hello %s!",
            ATTACKER = "%s is a safety hazard.",
            MURDERER = "murderer!",
            REVIVER = "o thankyou %s",
            GHOST = "you seem less corporeal today %s",
            FIRESTARTER = "that fire is too bright for me, %s",
        },
        WORTOX =
        {
            GENERIC = "good to see you %s",
            ATTACKER = "that fiend is ferocious!",
            MURDERER = "murderer!",
            REVIVER = "thankyou very much %s",
            GHOST = "you seem less corporeal today %s",
            FIRESTARTER = "o that fire is kinda bright %s",
        },
        WORMWOOD =
        {
            GENERIC = "hello %s!",
            ATTACKER = "%s is one sly looking seed.",
            MURDERER = "%s is a murderer!",
            REVIVER = "thankyou very much little plant",
            GHOST = "you seem less corporeal today %s",
            FIRESTARTER = "that fire is pretty bright %s",
        },
        WARLY =
        {
            GENERIC = "hello %s!",
            ATTACKER = "%s is one crazed cook!",
            MURDERER = "murderer!",
            REVIVER = "thankyou very much %s",
            GHOST = "you seem less corporeal today %s",
            FIRESTARTER = "that fire is too bright for me",
        },

        WURT =
        {
            GENERIC = "hello %s!",
            ATTACKER = "that fish is looking... fishy",
            MURDERER = "a fishy murderer!",
            REVIVER = "thankyou little fishy",
            GHOST = "you seem less corporeal today %s",
            FIRESTARTER = "i dont really like fire",
        },

		WALTER =
        {
            GENERIC = "hello %s!",
            ATTACKER = "o dear, the scout has snapped!",
            MURDERER = "murderer!",
            REVIVER = "thankyou",
            GHOST = "you seem less corporeal today %s",
            FIRESTARTER = "i dont really like fire",
        },

        MIGRATION_PORTAL =
        {
            GENERIC = "if i had any friends, this could take me to them.",
            OPEN = "if I step through, will i still be me?",
            FULL = "it seems to be popular over there.",
        },
        GLOMMER =
        {
            GENERIC = "hello little creature",
            SLEEPING = "this being is sleeping...shhh",
        },
        GLOMMERFLOWER =
        {
            GENERIC = "o this flower is sparkly",
            DEAD = "o no, it still sparkles though",
        },
        GLOMMERWINGS = "how small and sweet!",
        GLOMMERFUEL = "smelly and sicky...",
        BELL = "heh, reminds me of my own bell",
        STATUEGLOMMER =
        {
            GENERIC = "o a little bug statue",
            EMPTY = "o no... i broke it",
        },

        LAVA_POND_ROCK = "hot little rock",

		WEBBERSKULL = "poor little spider...",
		WORMLIGHT = "that light kinda hurts",
		WORMLIGHT_LESSER = "tiny light, less bad",
		WORM =
		{
		    PLANT = "i think its a trap",
		    DIRT = "definately seems suspicious",
		    WORM = "o no! a worm!",
		},
        WORMLIGHT_PLANT = "i think its a trap",
		MOLE =
		{
			HELD = "hello little friend, can you see in the dark like me?.",
			UNDERGROUND = "i think somethings moving around down there",
			ABOVEGROUND = "excuse me little man",
		},
		MOLEHILL = "a dirty dwelling",
		MOLEHAT = "i dont see the difference...",

		EEL = "i can feel its little sparks",
		EEL_COOKED = "no more sparks, o well",
		UNAGI = "a slimy little man",
		EYETURRET = "quit looking at me!",
		EYETURRET_ITEM = "silly me, need to put it down",
		MINOTAURHORN = "a prize from a mortal beast",
		MINOTAURCHEST = "o this chest has spikes!",
		THULECITE_PIECES = "shattered old chunks",
		POND_ALGAE = "o some sweet little algae",
		GREENSTAFF = "this looks dangerous",
		GIFT = "o for me?",
        GIFTWRAP = "i always get the tape everywhere",
		POTTEDFERN = "pretty potted plant",
        SUCCULENT_POTTED = "a succulent succulent",
		SUCCULENT_PLANT = "maybe i can take you home",
		SUCCULENT_PICKED = "im not sure i should eat that...",
		SENTRYWARD = "maybe this will help me see",
        TOWNPORTAL =
        {
			GENERIC = "its kinda strange",
			ACTIVE = "ready to go",
		},
        TOWNPORTALTALISMAN =
        {
			GENERIC = "sandy... magic",
			ACTIVE = "perhaps i think its time to go",
		},
        WETPAPER = "o no, its soaked",
        WETPOUCH = "theres something inside!",
        MOONROCK_PIECES = "little pieces of Elysium",
        MOONBASE =
        {
            GENERIC = "i think something fits in this altar",
            BROKEN = "o no, silly things all smashed",
            STAFFED = "its ready",
            WRONGSTAFF = "... i dont think this is right...",
            MOONSTAFF = "the light is trapped...",
        },
        MOONDIAL =
        {
			GENERIC = "i can see Elysium",
			NIGHT_NEW = "Elysium is dark, thank goodness",
			NIGHT_WAX = "the full light is around the corner",
			NIGHT_FULL = "o no, its so bright",
			NIGHT_WANE = "a new Elysium is on the way",
			CAVE = "Elysium simply isnt visible down here",
			WEREBEAVER = "only_used_by_woodie", --woodie specific
        },
		THULECITE = "o this stuff pretty sturdy",
		ARMORRUINS = "i didnt think it would be so light",
		ARMORSKELETON = "just a bunch of bones",
		SKELETONHAT = "scary hat",
		RUINS_BAT = "this thing seems pretty dangerous",
		RUINSHAT = "a fancy forcefield",
		NIGHTMARE_TIMEPIECE =
		{
            CALM = "nothing scary here",
            WARN = "something strange is around",
            WAXING = "its getting worse",
            STEADY = "the nightmare is here!",
            WANING = "getting less scary",
            DAWN = "i think its almost over",
            NOMAGIC = "nothing around here",
		},
		BISHOP_NIGHTMARE = "that bishop looks scary",
		ROOK_NIGHTMARE = "time hasnt been kind to you",
		KNIGHT_NIGHTMARE = "this piece is all cracked",
		MINOTAUR = "this mortal looks very hairy",
		SPIDER_DROPPER = "look out!",
		NIGHTMARELIGHT = "feels like home... heh",
		NIGHTSTICK = "it hurts my little eyes",
		GREENGEM = "green like the grass",
		MULTITOOL_AXE_PICKAXE = "im not sure how efficient this truly is",
		ORANGESTAFF = "i often find teleportation makes everything easier",
		YELLOWAMULET = "makes me feel all warm",
		GREENAMULET = "o it seems to make the workload lighter",
		SLURPERPELT = "surprisingly soft",

		SLURPER = "please leave me alone!",
		SLURPER_PELT = "surprisingly soft",
		ARMORSLURPER = "o it keeps my belly fuller",
		ORANGEAMULET = "a helping hand",
		YELLOWSTAFF = "little star maker, i think youd hurt me",
		YELLOWGEM = "yellow like the sunset",
		ORANGEGEM = "o maybe its a piece of amber",
        OPALSTAFF = "it makes a cold light... not sure if i like it....",
        OPALPRECIOUSGEM = "so shiny and prismatic",
        TELEBASE =
		{
			VALID = "its ready!",
			GEMS = "i think it needs some purply gems",
		},
		GEMSOCKET =
		{
			VALID = "might be ready now",
			GEMS = "it seems to be missing a gem",
		},
		STAFFLIGHT = "o that hurts my little eyes",
        STAFFCOLDLIGHT = "cold like me!",

        ANCIENT_ALTAR = "seems old and scary",

        ANCIENT_ALTAR_BROKEN = "o no, its all broken",

        ANCIENT_STATUE = "its creeping me out...",

        LICHEN = "it grows, even way down here",
		CUTLICHEN = "i dont think this will last too long",

		CAVE_BANANA = "kinda mushy...",
		CAVE_BANANA_COOKED = "pretty tasty",
		CAVE_BANANA_TREE = "i dont like the sun either",
		ROCKY = "scary but strong",

		COMPASS =
		{
			GENERIC="where am i?",
			N = "north",
			S = "south",
			E = "east",
			W = "west",
			NE = "northeast",
			SE = "southeast",
			NW = "northwest",
			SW = "southwest",
		},

        HOUNDSTOOTH = "someone could cut themselves on that",
        ARMORSNURTLESHELL = "gross and sticky...",
        BAT = "scary!",
        BATBAT = "this is one hefty bat",
        BATWING = "still scary... even if its dead",
        BATWING_COOKED = "o no, it smells worse cooked",
        BATCAVE = "theyre hiding in there... please dont come out",
        BEDROLL_FURRY = "so comfy... i dont want to leave",
        BUNNYMAN = "excuse me mr bunny",
        FLOWER_CAVE = "its a little bright for me",
        GUANO = "gross...",
        LANTERN = "o the light is trapped!",
        LIGHTBULB = "i wonder if i could eat it",
        MANRABBIT_TAIL = "heh, feels soft",
        MUSHROOMHAT = "what a silly hat",
        MUSHROOM_LIGHT2 =
        {
            ON = "it gives of mush-too light",
            OFF = "maybe it can make all different colors?",
            BURNT = "o no, all burnt",
        },
        MUSHROOM_LIGHT =
        {
            ON = "a mushy light",
            OFF = "thats one tall fungus",
            BURNT = "fried...",
        },
        SLEEPBOMB = "makes me sleepy just holding it",
        MUSHROOMBOMB = "it looks pretty dangerous",
        SHROOM_SKIN = "feels all rough",
        TOADSTOOL_CAP =
        {
            EMPTY = "i wonder whats down there",
            INGROUND = "somethings hiding",
            GENERIC = "thats one scary looking mushroom!",
        },
        TOADSTOOL =
        {
            GENERIC = "go back into the ground!",
            RAGE = "o no!",
        },
        MUSHROOMSPROUT =
        {
            GENERIC = "o that looks bad!",
            BURNT = "all turned to ash!",
        },
        MUSHTREE_TALL =
        {
            GENERIC = "just an overgrown fungus",
            BLOOM = "how pretty!",
        },
        MUSHTREE_MEDIUM =
        {
            GENERIC = "i wonder if this grows any taller",
            BLOOM = "it makes little lights, just dont do that anywhere near me ok?",
        },
        MUSHTREE_SMALL =
        {
            GENERIC = "its just a baby",
            BLOOM = "i dont think you should inhale those...",
        },
        MUSHTREE_TALL_WEBBED = "did webber do this?",
        SPORE_TALL =
        {
            GENERIC = "floaty light... dont float near me!",
            HELD = "does this make me lighter?",
        },
        SPORE_MEDIUM =
        {
            GENERIC = "i wish i coul float like that",
            HELD = "does this make me lighter?",
        },
        SPORE_SMALL =
        {
            GENERIC = "maybe small lights arent so bad",
            HELD = "does this make me lighter?",
        },
        RABBITHOUSE =
        {
            GENERIC = "it doesnt smell too good",
            BURNT = "o no, all roasted",
        },
        SLURTLE = "exucuse me slimy man",
        SLURTLE_SHELLPIECES = "o its smashed to bits",
        SLURTLEHAT = "now only if i could hide inside",
        SLURTLEHOLE = "its both slimy and spikey... gross",
        SLURTLESLIME = "ew...",
        SNURTLE = "exucuse me slimy man",
        SPIDER_HIDER = "o no! scary!",
        SPIDER_SPITTER = "this ones worse!",
        SPIDERHOLE = "somethings hiding...",
        SPIDERHOLE_ROCK = "i dont like the look of that",
        STALAGMITE = "just rocks",
        STALAGMITE_TALL = "more rocks...",

        TURF_CARPETFLOOR = "fuzzy",
        TURF_CHECKERFLOOR = "this would look good under a crockpot",
        TURF_DIRT = "part of the earth",
        TURF_FOREST = "part of the earth",
        TURF_GRASS = "part of the earth",
        TURF_MARSH = "part of the earth",
        TURF_METEOR = "part of Elysium",
        TURF_PEBBLEBEACH = "part of the beach",
        TURF_ROAD = "part of the earth",
        TURF_ROCKY = "part of the earth",
        TURF_SAVANNA = "part of the earth",
        TURF_WOODFLOOR = "just some floorboards",

		TURF_CAVE="part of the underground",
		TURF_FUNGUS="part of the underground",
		TURF_FUNGUS_MOON = "part of the old underground",
		TURF_ARCHIVE = "part of the old underground",
		TURF_SINKHOLE="part of the underground",
		TURF_UNDERROCK="part of the underground",
		TURF_MUD="part of the underground",

		TURF_DECIDUOUS = "part of the earth",
		TURF_SANDY = "part of the earth",
		TURF_BADLANDS = "part of the earth",
		TURF_DESERTDIRT = "part of the earth",
		TURF_FUNGUS_GREEN = "part of the earth",
		TURF_FUNGUS_RED = "part of the earth",
		TURF_DRAGONFLY = "part of the earth... its very hot",

		POWCAKE = "this wouldnt be very good for you... even if it lasts forever",
        CAVE_ENTRANCE = "i wonder whats down there...",
        CAVE_ENTRANCE_RUINS = "i think it goes further",

       	CAVE_ENTRANCE_OPEN =
        {
            GENERIC = "looks nice and dark down there",
            OPEN = "i wonder whats down there",
            FULL = "its rude not to wait your turn",
        },
        CAVE_EXIT =
        {
            GENERIC = "id rather not return to the surface",
            OPEN = "i think ill go back up now",
            FULL = "theres too many people up there",
        },

		MAXWELLPHONOGRAPH = "if i listen to that for one more minute...",
		BOOMERANG = "careful! it comes back!",
		PIGGUARD = "he looks even meaner",
		ABIGAIL =
		{
            LEVEL1 =
            {
                "youre transparent just like me",
                "youre transparent just like me",
            },
            LEVEL2 =
            {
                "youre transparent just like me",
                "youre transparent just like me",
            },
            LEVEL3 =
            {
                "youre transparent just like me",
                "youre transparent just like me",
            },
		},
		ADVENTURE_PORTAL = "im not so sure about this",
		AMULET = "makes me heart a little stronger",
		ANIMAL_TRACK = "foot prints...",
		ARMORGRASS = "doesnt feel very protective",
		ARMORMARBLE = "so... heavy...",
		ARMORWOOD = "a bit more sturdy",
		ARMOR_SANITY = "this armor is made of me! spooky",
		ASH =
		{
			GENERIC = "ashes to ashes...",
			REMAINS_GLOMMERFLOWER = "little flower didnt survive...",
			REMAINS_EYE_BONE = "o no, eyebone is gone",
			REMAINS_THINGIE = "all burnt up",
		},
		AXE = "useful for gathering wood",
		BABYBEEFALO =
		{
			GENERIC = "o its just a little baby",
		    SLEEPING = "shhhhh",
        },
        BUNDLE = "my things are stored safely away",
        BUNDLEWRAP = "o maybe i can wrap some supplies ",
		BACKPACK = "i can carry more with that",
		BACONEGGS = "looks tasty",
		BANDAGE = "it should be antibiotic",
		BASALT = "i dont think even wolfgang could break that",
		BEARDHAIR = "o someone else has been shaving",
		BEARGER = "a big hairy scary mortal",
		BEARGERVEST = "o so warm and fuzzy",
		ICEPACK = "keeps everything fresh",
		BEARGER_FUR = "o its all matted",
		BEDROLL_STRAW = "i think it might be rotted",
		BEEQUEEN = "leave me alone, your highness!",
		BEEQUEENHIVE =
		{
			GENERIC = "o its so sticky i cant walk on it",
			GROWING = "when did that appear",
		},
        BEEQUEENHIVEGROWN = "thats one big hive",
        BEEGUARD = "they dont look too happy",
        HIVEHAT = "not so good for my head",
        MINISIGN =
        {
            GENERIC = "i could do better...",
            UNDRAWN = "what should i put in there?",
        },
        MINISIGN_ITEM = "need to put it down",
		BEE =
		{
			GENERIC = "excuse bee",
			HELD = "it buzzes in my pocket",
		},
		BEEBOX =
		{
			READY = "looks tasty",
			FULLHONEY = "overflowing!",
			GENERIC = "excuse bee",
			NOHONEY = "o its empty",
			SOMEHONEY = "just a little trickle",
			BURNT = "o no, poor bees",
		},
		MUSHROOM_FARM =
		{
			STUFFED = "o full of fungi!",
			LOTS = "they keep growing!",
			SOME = "growing happily",
			EMPTY = "i think it could do with a fungus in there",
			ROTTEN = "that log is all used up!",
			BURNT = "o no, burnt",
			SNOWCOVERED = "cant grow now...",
		},
		BEEFALO =
		{
			FOLLOWER = "hello mr beefalo",
			GENERIC = "excuse me",
			NAKED = "no hair...",
			SLEEPING = "shhhhh",
            --Domesticated states:
            DOMESTICATED = "hello!",
            ORNERY = "a little scary",
            RIDER = "i think i can get up on this one",
            PUDGY = "i think... its had a little too much...",
			MYPARTNER = "my beefalo",
		},

		BEEFALOHAT = "o they think im one of them",
		BEEFALOWOOL = "fuzzy",
		BEEHAT = "now i wont get stung!",
        BEESWAX = "mind your own beeswax",
		BEEHIVE = "theres a little empire in there",
		BEEMINE = "i dont think i should shake this",
		BEEMINE_MAXWELL = "this one seems suspicious",
		BERRIES = "o how tasty",
		BERRIES_COOKED = "should have made this into jam",
        BERRIES_JUICY = "these dont last long",
        BERRIES_JUICY_COOKED = "they'll spoil very soon",
		BERRYBUSH =
		{
			BARREN = "o i think it needs some food",
			WITHERED = "its too hot for me, too hot for this plant",
			GENERIC = "i think i can eat these",
			PICKED = "someone got this one already",
			DISEASED = "this one doesnt look well",
			DISEASING = "somethings... wrong",
			BURNING = "its burning!",
		},
		BERRYBUSH_JUICY =
		{
			BARREN = "no berries like this",
			WITHERED = "i dont like the heat either",
			GENERIC = "these seem to spoil quickly",
			PICKED = "i need to wait",
			DISEASED = "o no its sick",
			DISEASING = "somethings... wrong",
			BURNING = "did willow do this?",
		},
		BIGFOOT = "scary!",
		BIRDCAGE =
		{
			GENERIC = "excuse me little bird",
			OCCUPIED = "hello little bird",
			SLEEPING = "shh, this mortal is sleeping",
			HUNGRY = "maybe they need some seeds",
			STARVING = "any longer and this bird wont be with us",
			DEAD = "i think it has left its mortal body",
			SKELETON = "ashes to ashes, bones to bones",
		},
		BIRDTRAP = "little trap for little birds",
		CAVE_BANANA_BURNT = "o well, all burnt",
		BIRD_EGG = "this could be tasty",
		BIRD_EGG_COOKED = "tasty!",
		BISHOP = "dont look at me like that!",
		BLOWDART_FIRE = "remind me not to let willow near this",
		BLOWDART_SLEEP = "seems useful",
		BLOWDART_PIPE = "a decent ranged weapon",
		BLOWDART_YELLOW = "electric!",
		BLUEAMULET = "keeps me cool",
		BLUEGEM = "chilled in my hands",
		BLUEPRINT =
		{
            COMMON = "i wonder what this makes",
            RARE = "o this seems special",
        },
        SKETCH = "now where can i make this?",
		BLUE_CAP = "only found at night",
		BLUE_CAP_COOKED = "i dont think its much better cooked",
		BLUE_MUSHROOM =
		{
			GENERIC = "just some fungi",
			INGROUND = "where did you go?",
			PICKED = "please grow back soon",
		},
		BOARDS = "refined wood",
		BONESHARD = "those bones are sharp",
		BONESTEW = "its surprisingly thick",
		BUGNET = "a little tool to net those insects",
		BUSHHAT = "great for hiding",
		BUTTER = "i better not drop this",
		BUTTERFLY =
		{
			GENERIC = "theyre so pretty",
			HELD = "it flutters in my pocket",
		},
		BUTTERFLYMUFFIN = "sweet like nectar!",
		BUTTERFLYWINGS = "its mortal remains",
		BUZZARD = "o its scavanging for food",

		SHADOWDIGGER = "o hello shadow friends!",

		CACTUS =
		{
			GENERIC = "hardy desert plant, how do you survive?",
			PICKED = "its still a little spikey",
		},
		CACTUS_MEAT_COOKED = "grilled to perfection",
		CACTUS_MEAT = "i think it could do with cooking",
		CACTUS_FLOWER = "what a pretty flower",

		COLDFIRE =
		{
			EMBERS = "almost out!",
			GENERIC = "a nice cold fire",
			HIGH = "nice and cold!",
			LOW = "isnt that a little low?",
			NORMAL = "quite cooling",
			OUT = "fires all out",
		},
		CAMPFIRE =
		{
			EMBERS = "almost out!",
			GENERIC = "i dont like fire",
			HIGH = "way to bright for me!",
			LOW = "o they fire is a little low",
			NORMAL = "a little bright for me",
			OUT = "fires all out",
		},
		CANE = "faster! faster! faster!",
		CATCOON = "im not sure thats all cat...",
		CATCOONDEN =
		{
			GENERIC = "looks kinda cozy in there",
			EMPTY = "they have been evicted",
		},
		CATCOONHAT = "a warm fuzzy hat",
		COONTAIL = "i hope it doesnt move",
		CARROT = "just a little vegetable",
		CARROT_COOKED = "tasty",
		CARROT_PLANTED = "i think its growing",
		CARROT_SEEDS = "a seed for a carrot",
		CARTOGRAPHYDESK =
		{
			GENERIC = "maybe i can show people where ive been",
			BURNING = "fire!!",
			BURNT = "o no... all gone",
		},
		WATERMELON_SEEDS = "just a watermelon seed",
		CAVE_FERN = "hello little fern",
		CHARCOAL = "o no, its getting everywhere",
        CHESSPIECE_PAWN = "just a pawn",
        CHESSPIECE_ROOK =
        {
            GENERIC = "it seems pretty heavy",
            STRUGGLE = "o its moving!",
        },
        CHESSPIECE_KNIGHT =
        {
            GENERIC = "that horse looks a little mean",
            STRUGGLE = "o its moving!",
        },
        CHESSPIECE_BISHOP =
        {
            GENERIC = "i dont really trust it",
            STRUGGLE = "o its moving!",
        },
        CHESSPIECE_MUSE = "how beautiful",
        CHESSPIECE_FORMAL = "i think hes 'arm-less",
        CHESSPIECE_HORNUCOPIA = "this is just cruel",
        CHESSPIECE_PIPE = "a petrified pipe!",
        CHESSPIECE_DEERCLOPS = "this mortal creature has been turned to stone!",
        CHESSPIECE_BEARGER = "it was a lot scarier before",
        CHESSPIECE_MOOSEGOOSE =
        {
            "a very... interesting expression...",
        },
        CHESSPIECE_DRAGONFLY = "the fire looks so real!",
		CHESSPIECE_MINOTAUR = "an old guardian",
        CHESSPIECE_BUTTERFLY = "i like this one",
        CHESSPIECE_ANCHOR = "not very useful...",
        CHESSPIECE_MOON = "o how its actually... pretty",
		CHESSPIECE_CARRAT = "It makes us feel content.",
        CHESSPIECE_MALBATROSS = "its much less scary like that",
        CHESSPIECE_CRABKING = "he had quite an attitude...",
        CHESSPIECE_TOADSTOOL = "it has returned to the stone it came from",
        CHESSPIECE_STALKER = "i am sorry .",
        CHESSPIECE_KLAUS = "he looks better with those chains on",
        CHESSPIECE_BEEQUEEN = "shes much better like this...",
        CHESSPIECE_ANTLION = "he looks just as scary like that",
        CHESSJUNK1 = "its all smashed",
        CHESSJUNK2 = "o no its broken into pieces",
        CHESSJUNK3 = "i dont know if its alive anymore",
		CHESTER = "hello little creature",
		CHESTER_EYEBONE =
		{
			GENERIC = "is this how chester sees?",
			WAITING = "i think hes sleeping",
		},
		COOKEDMANDRAKE = "o well",
		COOKEDMEAT = "looks tasty",
		COOKEDMONSTERMEAT = "even when its cooked, i dont think i want to eat this",
		COOKEDSMALLMEAT = "hardly anything on this bone",
		COOKPOT =
		{
			COOKING_LONG = "i think this one takes a little longer",
			COOKING_SHORT = "smells good already!",
			DONE = "looks tasty!",
			EMPTY = "all empty",
			BURNT = "willow better not have done this...",
		},
		CORN = "i think its better popped",
		CORN_COOKED = "looks tasty!",
		CORN_SEEDS = "one corn seed",
        CANARY =
		{
			GENERIC = "silly yellow bird",
			HELD = "it sits in my pocket",
		},
        CANARY_POISONED = "looks... sick",

		CRITTERLAB = "i think someones in there",
        CRITTER_GLOMLING = "a round fuzzy friend",
        CRITTER_DRAGONLING = "a little less scary than the real thing",
		CRITTER_LAMB = "less slimy than the mother",
        CRITTER_PUPPY = "perhaps...it is not so scary",
        CRITTER_KITTEN = "You'd make a good lab assistant.",
        CRITTER_PERDLING = "a little turkey",
		CRITTER_LUNARMOTHLING = "a little moth from Elysium",

		CROW =
		{
			GENERIC = "i kinda like it",
			HELD = "im not sure it likes my pocket",
		},
		CUTGRASS = "o its ready for making",
		CUTREEDS = "o its ready for making",
		CUTSTONE = "o its ready for making",
		DEADLYFEAST = "that could kill",
		DEER =
		{
			GENERIC = "excuse me deer",
			ANTLER = "those look dangerous",
		},
        DEER_ANTLER = "i didnt touch it!",
        DEER_GEMMED = "they look even more dangerous!",
		DEERCLOPS = "its way too scary!",
		DEERCLOPS_EYEBALL = "i dont like it",
		EYEBRELLAHAT =	"this is morbid, even for me",
		DEPLETED_GRASS =
		{
			GENERIC = "someone else has picked this",
		},
        GOGGLESHAT = "they look pretty stylish... i suppose",
        DESERTHAT = "safety first!",
		DEVTOOL = "i wonder what this does",
		DEVTOOL_NODEV = "i dont think im meant to have this",
		DIRTPILE = "something has been this way",
		DIVININGROD =
		{
			COLD = "o no this is wrong",
			GENERIC = "i think its leading me somewhere",
			HOT = "o this way is very strong!",
			WARM = "i think this is the right way",
			WARMER = "im getting closer",
		},
		DIVININGRODBASE =
		{
			GENERIC = "what is this thing?",
			READY = "i think it needs a key...",
			UNLOCKED = "now it can work!",
		},
		DIVININGRODSTART = "o this seems important",
		DRAGONFLY = "very hot very scary!!",
		ARMORDRAGONFLY = "safe and toasty",
		DRAGON_SCALES = "o they still feel a little warm",
		DRAGONFLYCHEST = "a fireproof lockbox",
		DRAGONFLYFURNACE =
		{
			HAMMERED = "o its looking a little damaged",
			GENERIC = "its very hot! but not so bright", --no gems
			NORMAL = "not quite hot enough", --one gem
			HIGH = "thats like the sun!", --two gems
		},

        HUTCH = "excuse me hutch",
        HUTCH_FISHBOWL =
        {
            GENERIC = "hes kinda sweet... in a gross way",
            WAITING = "shhh... hes sleeping",
        },
		LAVASPIT =
		{
			HOT = "thats way too hot!",
			COOL = "its all cool now",
		},
		LAVA_POND = "hot hot hot!",
		LAVAE = "hello little bug",
		LAVAE_COCOON = "all wrapped up",
		LAVAE_PET =
		{
			STARVING = "it could really do with some food",
			HUNGRY = "looks hungry",
			CONTENT = "happy little bug",
			GENERIC = "hello little bug",
		},
		LAVAE_EGG =
		{
			GENERIC = "that egg is warm",
		},
		LAVAE_EGG_CRACKED =
		{
			COLD = "i dont think its warm enough",
			COMFY = "little egg...",
		},
		LAVAE_TOOTH = "an eggy tooth",

		DRAGONFRUIT = "a fearsome fruit",
		DRAGONFRUIT_COOKED = "looks very tasty",
		DRAGONFRUIT_SEEDS = "a dragonfruit seed",
		DRAGONPIE = "a very filling pie",
		DRUMSTICK = "o this gobbler stopped gobbling",
		DRUMSTICK_COOKED = "looks tasty!",
		DUG_BERRYBUSH = "now... where to plant it",
		DUG_BERRYBUSH_JUICY = "maybe i can plant this closer to home",
		DUG_GRASS = "now... where to plant it",
		DUG_MARSH_BUSH = "now... where to plant it",
		DUG_SAPLING = "little tree needs to be planted",
		DURIAN = "o that smells",
		DURIAN_COOKED = "how does it smell worse",
		DURIAN_SEEDS = "its a durian seed.",
		EARMUFFSHAT = "warm and fuzzy",
		EGGPLANT = "does it look like an egg to you?",
		EGGPLANT_COOKED = "mmm tasty!",
		EGGPLANT_SEEDS = "just an eggplant seed.",

		ENDTABLE =
		{
			BURNT = "charred to bits",
			GENERIC = "a sweet little flower!",
			EMPTY = "that vase is a little empty",
			WILTED = "that flower is looking...unhappy",
			FRESHLIGHT = "o! bright light! ow...",
			OLDLIGHT = "i think it needs new bulbs...", -- will be wilted soon, light radius will be very small at this point
		},
		DECIDUOUSTREE =
		{
			BURNING = "poor tree",
			BURNT = "back to ash you return",
			CHOPPED = "that was hard work",
			POISON = "o no! its alive!",
			GENERIC = "thats a pretty looking tree",
		},
		ACORN = "a little tree lives in there",
        ACORN_SAPLING = "soon you will be big!",
		ACORN_COOKED = "roasted and yummy",
		BIRCHNUTDRAKE = "that nuts gone nuts!",
		EVERGREEN =
		{
			BURNING = "poor tree",
			BURNT = "back to ash you return",
			CHOPPED = "that was hard work!",
			GENERIC = "i hope i dont get pine needles in me",
		},
		EVERGREEN_SPARSE =
		{
			BURNING = "poor tree",
			BURNT = "back to ash you return",
			CHOPPED = "that was hard work",
			GENERIC = "this ones looking a little sad...",
		},
		TWIGGYTREE =
		{
			BURNING = "poor tree",
			BURNT = "back to ash you return",
			CHOPPED = "that was hard work",
			GENERIC = "hardly any leaves on this one",
			DISEASED = "this one doesnt look too well...",
		},
		TWIGGY_NUT_SAPLING = "a little sapling",
        TWIGGY_OLD = "looks as old as wickerbottom... dont tell her i said that",
		TWIGGY_NUT = "There's a stick-y tree inside it that wants to get out.",
		EYEPLANT = "i think theres more than the seraphs watching me...",
		INSPECTSELF = "i see right through myself",
		FARMPLOT =
		{
			GENERIC = "something tasty could grow here",
			GROWING = "please grow faster",
			NEEDSFERTILIZER = "o looks like it needs some food",
			BURNT = "they look a little more than dehydrated",
		},
		FEATHERHAT = "now i am the bird!",
		FEATHER_CROW = "a feather as black as the night!",
		FEATHER_ROBIN = "a redbird lost its feather",
		FEATHER_ROBIN_WINTER = "one snowy feather",
		FEATHER_CANARY = "as yellow as the sun",
		FEATHERPENCIL = "what to draw...hmm..",
		COOKBOOK = "instuctions for cooking!",
		FEM_PUPPET = "im glad im not trapped...",
		FIREFLIES =
		{
			GENERIC = "they are so pretty",
			HELD = "they make my pocket glow!",
		},
		FIREHOUND = "thats one raging inferno!",
		FIREPIT =
		{
			EMBERS = "such a small little fire",
			GENERIC = "i prefer the dark",
			HIGH = "ouch! too bright!",
			LOW = "maybe someone would like to add to the fire?",
			NORMAL = "someone else would enjoy this more",
			OUT = "fires out now",
		},
		COLDFIREPIT =
		{
			EMBERS = "such a small little fire",
			GENERIC = "i prefer the dark",
			HIGH = "ouch! too bright!",
			LOW = "maybe someone would like to add to the fire?",
			NORMAL = "someone else would enjoy this more",
			OUT = "fires out now",
		},
		FIRESTAFF = "this looks dangerous...",
		FIRESUPPRESSOR =
		{
			ON = "time to cool off",
			OFF = "ice machine off",
			LOWFUEL = "o needs some fuel!",
		},

		FISH = "it looks sad out of water",
		FISHINGROD = "little fishing rod",
		FISHSTICKS = "smells fishy",
		FISHTACOS = "very tasty!",
		FISH_COOKED = "o how tasty!",
		FLINT = "one sharp rock",
		FLOWER =
		{
            GENERIC = "o how pretty!",
            ROSE = "watch for the thorns!",
        },
        FLOWER_WITHERED = "i think it got too much sun",
		FLOWERHAT = "the wildflowers dont do much good for me",
		FLOWER_EVIL = "thats one mean looking flower",
		FOLIAGE = "some lovely leaves",
		FOOTBALLHAT = "a little protection",
        FOSSIL_PIECE = "ancient bones",
        FOSSIL_STALKER =
        {
			GENERIC = "needs more bones!",
			FUNNY = "i think its a little wonky...",
			COMPLETE = "all done!",
        },
        STALKER = "not as strong as you once were",
        STALKER_ATRIUM = "hello brother...",
        STALKER_MINION = "a shadow woven from the dark!",
        THURIBLE = "it burns dark fires",
        ATRIUM_OVERGROWTH = "it seeps shadows",
		FROG =
		{
			DEAD = "that was one mean toad",
			GENERIC = "little frog",
			SLEEPING = "shhhh",
		},
		FROGGLEBUNWICH = "a jumpy sandwhich",
		FROGLEGS = "these dont look too appealing",
		FROGLEGS_COOKED = "surprisingly tasty",
		FRUITMEDLEY = "yummy",
		FURTUFT = "a little tuft of fur",
		GEARS = "i think wx-78 would like these",
		GHOST = "youre see-through just like me!",
		GOLDENAXE = "That's one fancy axe.",
		GOLDENPICKAXE = "a fancy pick",
		GOLDENPITCHFORK = "seems like a waste...",
		GOLDENSHOVEL = "so shiny",
		GOLDNUGGET = "a pricy nugget",
		GRASS =
		{
			BARREN = "i think it needs some food",
			WITHERED = "i dont like the heat either little plant",
			BURNING = "its burning up!",
			GENERIC = "a small tuft of grass",
			PICKED = "someone else got to this first",
			DISEASED = "it doesnt look too well",
			DISEASING = "i think its getting sick",
		},
		GRASSGEKKO =
		{
			GENERIC = "a leafy little lizard",
			DISEASED = "i think its ill",
		},
		GREEN_CAP = "a green mushroom",
		GREEN_CAP_COOKED = "a grilled mushroom",
		GREEN_MUSHROOM =
		{
			GENERIC = "one mushroom.",
			INGROUND = "why are you hiding?",
			PICKED = "please grow back",
		},
		GUNPOWDER = "that looks dangerous",
		HAMBAT = "meaty",
		HAMMER = "a destructive force",
		HEALINGSALVE = "i hope this helps",
		HEATROCK =
		{
			FROZEN = "its getting icy",
			COLD = "cooling down",
			GENERIC = "a thermal stone",
			WARM = "warm and smooth",
			HOT = "hot hot hot!",
		},
		HOME = "o i think someone must live here",
		HOMESIGN =
		{
			GENERIC = "it says \"you are here\"",
            UNWRITTEN = "the sign is currently blank",
			BURNT = "\"dont play with matches\"",
		},
		ARROWSIGN_POST =
		{
			GENERIC = "it says \"that away\"",
            UNWRITTEN = "the sign is currently blank",
			BURNT = "\"dont play with matches\"",
		},
		ARROWSIGN_PANEL =
		{
			GENERIC = "it says \"that away\"",
            UNWRITTEN = "the sign is currently blank",
			BURNT = "\"dont play with matches\"",
		},
		HONEY = "sticky and sweet",
		HONEYCOMB = "made by bees!",
		HONEYHAM = "tasty!",
		HONEYNUGGETS = "tasty!",
		HORN = "i can sound like a beefalo",
		HOUND = "a terrible hound!",
		HOUNDCORPSE =
		{
			GENERIC = "gross",
			BURNING = "smells bad",
			REVIVING = "o no!",
		},
		HOUNDBONE = "spooky bones",
		HOUNDMOUND = "lots of spooky bones!",
		ICEBOX = "keeps things fresh",
		ICEHAT = "keeps me cool",
		ICEHOUND = "chill out!",
		INSANITYROCK =
		{
			ACTIVE = "looks spooky",
			INACTIVE = "looks spooky",
		},
		JAMMYPRESERVES = "i think i need a jar...",

		KABOBS = "looks tasty",
		KILLERBEE =
		{
			GENERIC = "thats one angry bee!",
			HELD = "its vibrarting angrily in my pocket",
		},
		KNIGHT = "a proud protector",
		KOALEFANT_SUMMER = "that mortal looks less fluffy",
		KOALEFANT_WINTER = "that mortal looks fluffy",
		KRAMPUS = "i dont like the look of him",
		KRAMPUS_SACK = "whats in here?",
		LEIF = "thats one tall treeman!",
		LEIF_SPARSE = "thats one tall treeman!",
		LIGHTER  = "i think it belongs to willow",
		LIGHTNING_ROD =
		{
			CHARGED = "is the lightning trapped in there?",
			GENERIC = "at least i wont get hit",
		},
		LIGHTNINGGOAT =
		{
			GENERIC = "hello little goat",
			CHARGED = "i think its been struck by lightning",
		},
		LIGHTNINGGOATHORN = "like a little lightning rod",
		GOATMILK = "pretty tasty",
		LITTLE_WALRUS = "excuse me little walrus",
		LIVINGLOG = "thats one freaky log",
		LOG =
		{
			BURNING = "its burning",
			GENERIC = "i think this is useful",
		},
		LUCY = "i think she belongs to woodie",
		LUREPLANT = "i think its a trap",
		LUREPLANTBULB = "where to plant it",
		MALE_PUPPET = "im glad im not trapped",

		MANDRAKE_ACTIVE = "please... be quiet...",
		MANDRAKE_PLANTED = "o i think its alive",
		MANDRAKE = "such a strange plant",

        MANDRAKESOUP = "the smell makes me sleepy",
        MANDRAKE_COOKED = "this seems a little cruel",
        MAPSCROLL = "a blank map",
        MARBLE = "looks very fancy",
        MARBLEBEAN = "maybe i can plant it",
        MARBLEBEAN_SAPLING = "youre too small right now",
        MARBLESHRUB = "still needs growing",
        MARBLEPILLAR = "i wonder where you came from",
        MARBLETREE = "all grown up",
        MARSH_BUSH =
        {
			BURNT = "One less thorn patch to worry about.",
            BURNING = "That's burning fast!",
            GENERIC = "It looks thorny.",
            PICKED = "Ouch.",
        },
        BURNT_MARSH_BUSH = "It's all burnt up.",
        MARSH_PLANT = "It's a plant.",
        MARSH_TREE =
        {
            BURNING = "o no its burning",
            BURNT = "returned to ash",
            CHOPPED = "now those thorns cant hurt me",
            GENERIC = "looks sharp!",
        },
        MAXWELL = "i dont really like him...",
        MAXWELLHEAD = "its kinda obnoxious",
        MAXWELLLIGHT = "the light knows im here!",
        MAXWELLLOCK = "looks like a little key hole...",
        MAXWELLTHRONE = "a shadow throne?",
        MEAT = "tasty",
        MEATBALLS = "looks very tasty!",
        MEATRACK =
        {
            DONE = "o its done",
            DRYING = "its still drying",
            DRYINGINRAIN = "im not sure it will dry right now",
            GENERIC = "o i could make some jerky",
            BURNT = "i think it dried too hard...",
            DONE_NOTMEAT = "its done!",
            DRYING_NOTMEAT = "it needs some more time",
            DRYINGINRAIN_NOTMEAT = "its hard to dry things when theyre wet",
        },
        MEAT_DRIED = "tasty jerky",
        MERM = "youre suspicious",
        MERMHEAD =
        {
            GENERIC = "thats pretty gross...",
            BURNT = "that smells terrible",
        },
        MERMHOUSE =
        {
            GENERIC = "hello? anyone home?",
            BURNT = "o not much of a house left",
        },
        MINERHAT = "light on your head? not my thing...",
        MONKEY = "a very curious man",
        MONKEYBARREL = "did that move?",
        MONSTERLASAGNA = "not fit for anyone but webber",
        FLOWERSALAD = "a blossom salad",
        ICECREAM = "o! ice cream!",
        WATERMELONICLE = "icey-watermelon",
        TRAILMIX = "for the road",
        HOTCHILI = "o! its hot!",
        GUACAMOLE = "a little bit of guacamole",
        MONSTERMEAT = "o i dont think i should eat that",
        MONSTERMEAT_DRIED = "an odd piece of jerky.",
        MOOSE = "are you a mammal or a bird?",
        MOOSE_NESTING_GROUND = "a big nest for a big bird!",
        MOOSEEGG = "o theres something inside",
        MOSSLING = "the babys are violent!",
        FEATHERFAN = "this could keep me cool",
        MINIFAN = "a littler fan",
        GOOSE_FEATHER = "fluffy... heh",
        STAFF_TORNADO = "a tornado maker!",
        MOSQUITO =
        {
            GENERIC = "dont bite me!",
            HELD = "its angry in my pocket",
        },
        MOSQUITOSACK = "theres someones blood in there...",
        MOUND =
        {
            DUG = "i think there was someones bones in there...",
            GENERIC = "a dirt mound",
        },
        NIGHTLIGHT = "kinda spooy",
        NIGHTMAREFUEL = "fuel just for me!",
        NIGHTSWORD = "i like it",
        NITRE = "a piece of saltpeter",
        ONEMANBAND = "i think the pigs might like this",
        OASISLAKE =
		{
			GENERIC = "is it real? or my imagination?",
			EMPTY = "all dried up",
		},
        PANDORASCHEST = "quite magnificent! i wonder whats inside...",
        PANFLUTE = "such a sweet sound",
        PAPYRUS = "sheets paper,now... what to write?",
        WAXPAPER = "sheets wax paper",
        PENGUIN = "theyre very protective of the eggs",
        PERD = "away! stay away!",
        PEROGIES = "tasty",
        PETALS = "sweet little petals",
        PETALS_EVIL = "spooky little petals",
        PHLEGM = "gross...",
        PICKAXE = "time to mine!",
        PIGGYBACK = "a leathery bag",
        PIGHEAD =
        {
            GENERIC = "o how scary and gross!",
            BURNT = "that porks all crackled",
        },
        PIGHOUSE =
        {
            FULL = "i think someones in there",
            GENERIC = "a house fit for a pig",
            LIGHTSOUT = "i think theyre sleeping",
            BURNT = "no pig lives there",
        },
        PIGKING = "thats one rotund king!",
        PIGMAN =
        {
            DEAD = "ashes to ashes, snout to snout...",
            FOLLOWER = "simon says follow me!",
            GENERIC = "this mortal is a swine!",
            GUARD = "looks scary...",
            WEREPIG = "hes a lunatic!",
        },
        PIGSKIN = "o this piece has a tail on it...",
        PIGTENT = "smells funny...",
        PIGTORCH = "thats one big torch",
        PINECONE = "hello little tree, i know youre in there",
        PINECONE_SAPLING = "shh, the baby is growing",
        LUMPY_SAPLING = "little wonky tree",
        PITCHFORK = "this looks a little dangerous",
        PLANTMEAT = "is this what wormwood is made of?",
        PLANTMEAT_COOKED = "looks more appealing now",
        PLANT_NORMAL =
        {
            GENERIC = "planty!",
            GROWING = "this is taking a while...",
            READY = "o its ready!",
            WITHERED = "i dont like the heat either",
        },
        POMEGRANATE = "heh, its so squishy inside",
        POMEGRANATE_COOKED = "tasty!",
        POMEGRANATE_SEEDS = "a pomegranate seed",
        POND = "i wonder how deep it goes",
        POOP = "... gross...",
        FERTILIZER = "it smells so so bad",
        PUMPKIN = "i once knew a ghoul with a head like a pumpkin!",
        PUMPKINCOOKIE = "That's a pretty gourd cookie!",
        PUMPKIN_COOKED = "that smells very strongly",
        PUMPKIN_LANTERN = "spooky!",
        PUMPKIN_SEEDS = "it's a pumpkin seed.",
        PURPLEAMULET = "hehehe it tickles my brain",
        PURPLEGEM = "i could make some sunglasses from this",
        RABBIT =
        {
            GENERIC = "how sweet",
            HELD = "its sleeping in my pocket",
        },
        RABBITHOLE =
        {
            GENERIC = "i think theres a bunny in there",
            SPRING = "this hole has closed up",
        },
        RAINOMETER =
        {
            GENERIC = "how wet is it little machine?",
            BURNT = "is this ironic?",
        },
        RAINCOAT = "keeps me plenty dry",
        RAINHAT = "this is going to mess up my nighthair",
        RATATOUILLE = "ratatouille? his name is remy!",
        RAZOR = "for keeping my nighthair tidy",
        REDGEM = "sparkly and warm",
        RED_CAP = "tt smells funny.",
        RED_CAP_COOKED = "its different now...",
        RED_MUSHROOM =
        {
            GENERIC = "one red mushroom.",
            INGROUND = "are you coming out soon?",
            PICKED = "i wonder if it will come back?",
        },
        REEDS =
        {
            BURNING = "its burning up!",
            GENERIC = "a bunch of reeds",
            PICKED = "someone else got to this one already",
        },
        RELIC = "ancient furniture",
        RUINS_RUBBLE = "ancient... and broken",
        RUBBLE = "just rubble left",
        RESEARCHLAB =
        {
            GENERIC = "time for sciency stuff!",
            BURNT = "i dont think it works anymore",
        },
        RESEARCHLAB2 =
        {
            GENERIC = "alchemy is harder than it looks",
            BURNT = "all burnt...",
        },
        RESEARCHLAB3 =
        {
            GENERIC = "i hope it doesnt manipulate me",
            BURNT = "its just ash now",
        },
        RESEARCHLAB4 =
        {
            GENERIC = "an odd way to do magic",
            BURNT = "o i guess it couldnt disappear in time",
        },
        RESURRECTIONSTATUE =
        {
            GENERIC = "what happened to you wilson?",
            BURNT = "smells bad...",
        },
        RESURRECTIONSTONE = "a very strange altar",
        ROBIN =
        {
            GENERIC = "o hello little bird",
            HELD = "hes sitting in my pocket",
        },
        ROBIN_WINTER =
        {
            GENERIC = "o hello little winter bird",
            HELD = "its so soft",
        },
        ROBOT_PUPPET = "im glad im not trapped!",
        ROCK_LIGHT =
        {
            GENERIC = "a crusted over lava pit",
            OUT = "looks kinda fragile",
            LOW = "its cooling down",
            NORMAL = "a lava pit",
        },
        CAVEIN_BOULDER =
        {
            GENERIC = "o i think i can lift it",
            RAISED = "i cant quite reach it",
        },
        ROCK = "thats a pretty large boulder",
        PETRIFIED_TREE = "its turned to stone!",
        ROCK_PETRIFIED_TREE = "its turned to stone!",
        ROCK_PETRIFIED_TREE_OLD = "its turned to stone!",
        ROCK_ICE =
        {
            GENERIC = "see-through like me!",
            MELTED = "its just a puddle now",
        },
        ROCK_ICE_MELTED = "its just a puddle now",
        ICE = "see-through like me!",
        ROCKS = "these seem useful",
        ROOK = "o thats one freaky rhino",
        ROPE = "some pieces of rope",
        ROTTENEGG = "gross...",
        ROYAL_JELLY = "makes life sweeter",
        JELLYBEAN = "tasty bean",
        SADDLE_BASIC = "now i can ride!",
        SADDLE_RACE = "built for speed",
        SADDLE_WAR = "built for battle",
        SADDLEHORN = "makes taking a saddle off easier",
        SALTLICK = "o i love salty food",
        BRUSH = "i think i could probably do with one of these",
		SANITYROCK =
		{
			ACTIVE = "what a strange rock...",
			INACTIVE = "spooky...",
		},
		SAPLING =
		{
			BURNING = "its burning up!",
			WITHERED = "i dont like the sun either",
			GENERIC = "little baby tree",
			PICKED = "someone else already got to this one",
			DISEASED = "it doesnt look well",
			DISEASING = "this one looks ill",
		},
   		SCARECROW =
   		{
			GENERIC = "thats one handsome fellow",
			BURNING = "hes on fire!",
			BURNT = "its all ash now",
   		},
   		SCULPTINGTABLE=
   		{
			EMPTY = "o i think it needs some stone",
			BLOCK = "ready for sculpting",
			SCULPTURE = "a magnus opus!",
			BURNT = "o i guess no more scuplting...",
   		},
        SCULPTURE_KNIGHTHEAD = "i think its missing its body",
		SCULPTURE_KNIGHTBODY =
		{
			COVERED = "thats one odd marble statue.",
			UNCOVERED = "not looking the best",
			FINISHED = "o all done!",
			READY = "somethings moving inside",
		},
        SCULPTURE_BISHOPHEAD = "i wonder what it is",
		SCULPTURE_BISHOPBODY =
		{
			COVERED = "looks pretty old",
			UNCOVERED = "its missing a piece",
			FINISHED = "all done!",
			READY = "o somethings moving inside",
		},
        SCULPTURE_ROOKNOSE = "Where did this come from?",
		SCULPTURE_ROOKBODY =
		{
			COVERED = "o i think its a statue",
			UNCOVERED = "its a bit broken",
			FINISHED = "all done!",
			READY = "somethings moving inside",
		},
        GARGOYLE_HOUND = "it freaks me out",
        GARGOYLE_WEREPIG = "a little bit too life like",
		SEEDS = "i wonder what this plant holds",
		SEEDS_COOKED = "a tasty little snack",
		SEWING_KIT = "i can fix up clothes with this",
		SEWING_TAPE = "good for fixing",
		SHOVEL = "useful for digging",
		SILK = "its so soft",
		SKELETON = "this mortal has passed on",
		SCORCHED_SKELETON = "this mortal was burnt to a crisp",
		SKULLCHEST = "i wonder whats inside",
		SMALLBIRD =
		{
			GENERIC = "a tiny bird!",
			HUNGRY = "i think its hungry",
			STARVING = "its starving!",
			SLEEPING = "shhhhh",
		},
		SMALLMEAT = "a small mortal dropped this",
		SMALLMEAT_DRIED = "only a small piece of jerky",
		SPAT = "a pretty gross looking sheep",
		SPEAR = "a stabbing stick",
		SPEAR_WATHGRITHR = "a stabbier stick",
		WATHGRITHRHAT = "looks very fancy",
		SPIDER =
		{
			DEAD = "gross...",
			GENERIC = "i dont really like spiders",
			SLEEPING = "i dont want to wake it",
		},
		SPIDERDEN = "thats a lot of silk",
		SPIDEREGGSACK = "please dont hatch",
		SPIDERGLAND = "i think its antiseptic",
		SPIDERHAT = "now they think im one of them",
		SPIDERQUEEN = "thats one big spider!",
		SPIDER_WARRIOR =
		{
			DEAD = "now its left me alone",
			GENERIC = "an even scarier looking spider",
			SLEEPING = "i dont want to wake it",
		},
		SPOILED_FOOD = "i dont think i should eat that",
        STAGEHAND =
        {
			AWAKE = "please dont follow me...",
			HIDING = "theres something weird about that thing",
        },
        STATUE_MARBLE =
        {
            GENERIC = "thats one fancy statue",
            TYPE1 = "i wonder who you are",
            TYPE2 = "it must have taken ages",
            TYPE3 = "how pretty", --bird bath type statue
        },
		STATUEHARP = "where did the head go?",
		STATUEMAXWELL = "i dont like him",
		STEELWOOL = "maybe i can clean some pans with this",
		STINGER = "a sharp stinger",
		STRAWHAT = "makes the light a little more bearable",
		STUFFEDEGGPLANT = "looks very tasty!",
		SWEATERVEST = "o this isnt good for my head",
		REFLECTIVEVEST = "now i can keep cool",
		HAWAIIANSHIRT = "o how do i look?",
		TAFFY = "very chewy",
		TALLBIRD = "how do they get so tall?",
		TALLBIRDEGG = "i hope it doesnt hatch",
		TALLBIRDEGG_COOKED = "very tasty",
		TALLBIRDEGG_CRACKED =
		{
			COLD = "i think its too cold",
			GENERIC = "its hatching",
			HOT = "it looks... sweaty",
			LONG = "this might take a while",
			SHORT = "wont be too long now",
		},
		TALLBIRDNEST =
		{
			GENERIC = "thats an impressive egg",
			PICKED = "empty nest",
		},
		TEENBIRD =
		{
			GENERIC = "a not-so-tallbird",
			HUNGRY = "i think its hungry",
			STARVING = "i hope its not going to eat me",
			SLEEPING = "i dont want to wake it",
		},
		TELEPORTATO_BASE =
		{
			ACTIVE = "its ready!",
			GENERIC = "i dont like the look of this",
			LOCKED = "somethings missing",
			PARTIAL = "i think its almost done",
		},
		TELEPORTATO_BOX = "a box for the wooden thing",
		TELEPORTATO_CRANK = "doesn anyone understand this stuff?",
		TELEPORTATO_POTATO = "it freaks me out",
		TELEPORTATO_RING = "a ring for that wooden thing",
		TELESTAFF = "im not sure what this does...",
		TENT =
		{
			GENERIC = "looks cozy in there",
			BURNT = "i wanted to sleep in there",
		},
		SIESTAHUT =
		{
			GENERIC = "a safe place from the sun",
			BURNT = "i really wanted to sleep in there",
		},
		TENTACLE = "scary!",
		TENTACLESPIKE = "slimy...",
		TENTACLESPOTS = "is it skin?",
		TENTACLE_PILLAR = "thats a very large tentacle",
        TENTACLE_PILLAR_HOLE = "stinky...",
		TENTACLE_PILLAR_ARM = "it has children!",
		TENTACLE_GARDEN = "its so big",
		TOPHAT = "a pretty nice hat",
		TORCH = "i prefer the darkness thankyou",
		TRANSISTOR = "i dont really get science",
		TRAP = "i hope i can catch something",
		TRAP_TEETH = "maybe this will keep me safe",
		TRAP_TEETH_MAXWELL = "doesnt look kind",
		TREASURECHEST =
		{
			GENERIC = "a place to keep my things",
			BURNT = "all burnt",
		},
		TREASURECHEST_TRAP = "who left this here?",
		SACRED_CHEST =
		{
			GENERIC = "it wants something",
			LOCKED = "its thinking...",
		},
		TREECLUMP = "o no, a dead end...",

		TRINKET_1 = "kinda goopy looking", --Melted Marbles
		TRINKET_2 = "i think its broken", --Fake Kazoo
		TRINKET_3 = "its stuck permanently", --Gord's Knot
		TRINKET_4 = "it freaks me out", --Gnome
		TRINKET_5 = "i wonder where youd go to", --Toy Rocketship
		TRINKET_6 = "is this what wx-78 is made of?", --Frazzled Wires
		TRINKET_7 = "looks like fun", --Ball and Cup
		TRINKET_8 = "something is probably leaking", --Rubber Bung
		TRINKET_9 = "someone lost these", --Mismatched Buttons
		TRINKET_10 = "gross", --Dentures
		TRINKET_11 = "hello little robot", --Lying Robot
		TRINKET_12 = "its still moving", --Dessicated Tentacle
		TRINKET_13 = "this one is creepier somehow", --Gnomette
		TRINKET_14 = "this doesnt look like it works well", --Leaky Teacup
		TRINKET_15 = "i dont want to play that game", --Pawn
		TRINKET_16 = "i dont want to play that game", --Pawn
		TRINKET_17 = "i guess it wasnt real...", --Bent Spork
		TRINKET_18 = "i think somethings inside", --Trojan Horse
		TRINKET_19 = "are all these toys broken?", --Unbalanced Top
		TRINKET_20 = "not very useful for me", --Backscratcher
		TRINKET_21 = "not very useful anymore...", --Egg Beater
		TRINKET_22 = "i prefer to tie up loose ends", --Frayed Yarn
		TRINKET_23 = "i dont have shoes in the first place", --Shoehorn
		TRINKET_24 = "how sweet", --Lucky Cat Jar
		TRINKET_25 = "doesnt smell... great...", --Air Unfreshener
		TRINKET_26 = "looks surprisingly tasty", --Potato Cup
		TRINKET_27 = "not much use to me", --Coat Hanger
		TRINKET_28 = "much less scary like this", --Rook
        TRINKET_29 = "much less scary like this", --Rook
        TRINKET_30 = "chess just isnt my thing", --Knight
        TRINKET_31 = "chess just isnt my thing", --Knight
        TRINKET_32 = "maybe i can see the future", --Cubic Zirconia Ball
        TRINKET_33 = "maybe webber would like this", --Spider Ring
        TRINKET_34 = "this is very cursed", --Monkey Paw
        TRINKET_35 = "someones already drank that", --Empty Elixir
        TRINKET_36 = "i already have fangs", --Faux fangs
        TRINKET_37 = "kinda spooky", --Broken Stake
        TRINKET_38 = "bird watching isnt my thing", -- Binoculars Griftlands trinket
        TRINKET_39 = "cinderella?!", -- Lone Glove Griftlands trinket
        TRINKET_40 = "poor little snail", -- Snail Scale Griftlands trinket
        TRINKET_41 = "pretty!", -- Goop Canister Hot Lava trinket
        TRINKET_42 = "its sweet", -- Toy Cobra Hot Lava trinket
        TRINKET_43= "youre my favourite", -- Crocodile Toy Hot Lava trinket
        TRINKET_44 = "aw, maybe wormwood would like you", -- Broken Terrarium ONI trinket
        TRINKET_45 = "i can hear a voice on the other end...", -- Odd Radio ONI trinket
        TRINKET_46 = "not much use on my hair", -- Hairdryer ONI trinket

		-- The numbers align with the trinket numbers above.
        LOST_TOY_1  = "i think this belonged to someone",
        LOST_TOY_2  = "i think this belonged to someone",
        LOST_TOY_7  = "i think this belonged to someone",
        LOST_TOY_10 = "i think this belonged to someone",
        LOST_TOY_11 = "i think this belonged to someone",
        LOST_TOY_14 = "i think this belonged to someone",
        LOST_TOY_18 = "i think this belonged to someone",
        LOST_TOY_19 = "i think this belonged to someone",
        LOST_TOY_42 = "i think this belonged to someone",
        LOST_TOY_43 = "i think this belonged to someone",

        HALLOWEENCANDY_1 = "this is going to ruin my teeth",
        HALLOWEENCANDY_2 = "i... dont like these",
        HALLOWEENCANDY_3 = "its just corn...",
        HALLOWEENCANDY_4 = "very tasty! sorry webber...",
        HALLOWEENCANDY_5 = "these cant be good for you",
        HALLOWEENCANDY_6 = "i dont know if thats candy",
        HALLOWEENCANDY_7 = "these look nice",
        HALLOWEENCANDY_8 = "spooky and tasty",
        HALLOWEENCANDY_9 = "much better than the real thing",
        HALLOWEENCANDY_10 = "spooky and tasty",
        HALLOWEENCANDY_11 = "maybe ill try one",
        HALLOWEENCANDY_12 = "looks... gross", --ONI meal lice candy
        HALLOWEENCANDY_13 = "it looks like it would take forever to eat", --Griftlands themed candy
        HALLOWEENCANDY_14 = "spicy!", --Hot Lava pepper candy
        CANDYBAG = "i think theres some candy in there!",

		HALLOWEEN_ORNAMENT_1 = "a spooky adornment",
		HALLOWEEN_ORNAMENT_2 = "this one is much cuter than the real thing",
		HALLOWEEN_ORNAMENT_3 = "i think ill use this to decorate",
		HALLOWEEN_ORNAMENT_4 = "just as slimy as the real thing",
		HALLOWEEN_ORNAMENT_5 = "a little webber decoration",
		HALLOWEEN_ORNAMENT_6 = "hello little bird decoration",

		HALLOWEENPOTION_DRINKS_WEAK = "i dont think it worked very well",
		HALLOWEENPOTION_DRINKS_POTENT = "thats very strong",
        HALLOWEENPOTION_BRAVERY = "smells pretty bad",
		HALLOWEENPOTION_MOON = "for changing things",
		HALLOWEENPOTION_FIRE_FX = "a tiny fire is inside",
		MADSCIENCE_LAB = "sanity? never heard of her",
		LIVINGTREE_ROOT = "looking suspicious to me",
		LIVINGTREE_SAPLING = "its only a little suspicious",

        DRAGONHEADHAT = "what fearsome teeth you have",
        DRAGONBODYHAT = "the hide of the beast",
        DRAGONTAILHAT = "i dont fancy being the rear",
        PERDSHRINE =
        {
            GENERIC = "the bird needs some offerings",
            EMPTY = "its empty",
            BURNT = "sorry little gobbler",
        },
        REDLANTERN = "the light is trapped inside, thank goodness",
        LUCKY_GOLDNUGGET = "a lucky rock",
        FIRECRACKERS = "dont let willow get near them",
        PERDFAN = "very soft",
        REDPOUCH = "a lucky pouch",
        WARGSHRINE =
        {
            GENERIC = "the warg needs some light",
            EMPTY = "empty",
            BURNING = "i should make something fun", --for willow to override
            BURNT = "charred to ash",
        },
        CLAYWARG =
        {
        	GENERIC = "a clay horror!",
        	STATUE = "did it just move?",
        },
        CLAYHOUND =
        {
        	GENERIC = "i didnt know pottery was so dangerous",
        	STATUE = "it looks strangely real",
        },
        HOUNDWHISTLE = "a whistle to halt the hounds",
        CHESSPIECE_CLAYHOUND = "o i hope this one doesnt move",
        CHESSPIECE_CLAYWARG = "those teeth look even worse close up",

		PIGSHRINE =
		{
            GENERIC = "hello little pig",
            EMPTY = "it looks hungry",
            BURNT = "returned to ash",
		},
		PIG_TOKEN = "a belt for the pig king",
		PIG_COIN = "This'll pay off in a fight.",
		YOTP_FOOD1 = "a feast fit for me",
		YOTP_FOOD2 = "only fit for a beast",
		YOTP_FOOD3 = "not so appetising ",

		PIGELITE1 = "hello mr blue pig", --BLUE
		PIGELITE2 = "exuse me red pig", --RED
		PIGELITE3 = "excuse me mr white piggy", --WHITE
		PIGELITE4 = "hello mr green pig", --GREEN

		PIGELITEFIGHTER1 = "hello mr blue pig", --BLUE
		PIGELITEFIGHTER2 = "exuse me red pig", --RED
		PIGELITEFIGHTER3 = "xcuse me mr white piggy", --WHITE
		PIGELITEFIGHTER4 = "hello mr green pig", --GREEN

		CARRAT_GHOSTRACER = "a shadowy carrat",

        YOTC_CARRAT_RACE_START = "i wonder who will win",
        YOTC_CARRAT_RACE_CHECKPOINT = "a checkpoint!",
        YOTC_CARRAT_RACE_FINISH =
        {
            GENERIC = "i think my carrat will win!",
            BURNT = "o no...",
            I_WON = "o! victory!",
            SOMEONE_ELSE_WON = "congratulations {winner}!",
        },

		YOTC_CARRAT_RACE_START_ITEM = "cant start without it",
        YOTC_CARRAT_RACE_CHECKPOINT_ITEM = "a waypoint",
		YOTC_CARRAT_RACE_FINISH_ITEM = "almost ready!",

		YOTC_SEEDPACKET = "some seeds for growing",
		YOTC_SEEDPACKET_RARE = "some cooler seeds for growing",

		MINIBOATLANTERN = "the light is floating",

        YOTC_CARRATSHRINE =
        {
            GENERIC = "hello little carrat",
            EMPTY = "i think it needs something",
            BURNT = "its all burnt up",
        },

        YOTC_CARRAT_GYM_DIRECTION =
        {
            GENERIC = "to improve the little carrats sense of direction!",
            RAT = "i hope you know where youre going",
            BURNT = "charred to bits",
        },
        YOTC_CARRAT_GYM_SPEED =
        {
            GENERIC = "built for speed!",
            RAT = "faster! faster!",
            BURNT = "charred to bits",
        },
        YOTC_CARRAT_GYM_REACTION =
        {
            GENERIC = "for the carrats reflexes",
            RAT = "you can do it!",
            BURNT = "charred to bits",
        },
        YOTC_CARRAT_GYM_STAMINA =
        {
            GENERIC = "a tiny skipping rope",
            RAT = "keep on jumping!",
            BURNT = "charred to bits",
        },

        YOTC_CARRAT_GYM_DIRECTION_ITEM = "where to put this?",
        YOTC_CARRAT_GYM_SPEED_ITEM = "now... where to put this?",
        YOTC_CARRAT_GYM_STAMINA_ITEM = "where to put this?",
        YOTC_CARRAT_GYM_REACTION_ITEM = "now... where to put this?",

        YOTC_CARRAT_SCALE_ITEM = "to measure its skills!",
        YOTC_CARRAT_SCALE =
        {
            GENERIC = "to see how well a little carrat has trained",
            CARRAT = "i think you could be stronger",
            CARRAT_GOOD = "how impressive!",
            BURNT = "o no...",
        },

		YOTB_BEEFALOSHRINE =
        {
            GENERIC = "Got any firecrackers?",
            EMPTY = "Guess I should give it something.",
            BURNT = "It was a celebratory burning!",
        },

        BEEFALO_GROOMER =
        {
            GENERIC = "Come on beefalo, it's dress-up time!",
            OCCUPIED = "Honestly, anything I do will be an improvement.",
            BURNT = "Heh, well that was fun.",
        },
        BEEFALO_GROOMER_ITEM = "Uuuugh, why is everything so much work?",

		BISHOP_CHARGE_HIT = "ouch!",
		TRUNKVEST_SUMMER = "could be warmer",
		TRUNKVEST_WINTER = "warm and toasty",
		TRUNK_COOKED = "looks tasty... ish",
		TRUNK_SUMMER = "looks a lot lighter than before",
		TRUNK_WINTER = "thick and fuzzy",
		TUMBLEWEED = "o i wonder whats trapped inside",
		TURKEYDINNER = "a meal fit for a king!",
		TWIGS = "some sticks",
		UMBRELLA = "to keep me dry",
		GRASS_UMBRELLA = "to keep me dry...ish",
		UNIMPLEMENTED = "this looks unfinished and very scary!",
		WAFFLES = "sickly sweet",
		WALL_HAY =
		{
			GENERIC = "Hmmmm. I guess that'll have to do.",
			BURNT = "That won't do at all.",
		},
		WALL_HAY_ITEM = "looks like it could go up in flames",
		WALL_STONE = "strong and sturdy",
		WALL_STONE_ITEM = "o i feel safer already",
		WALL_RUINS = "i know who built you",
		WALL_RUINS_ITEM = "a steadfast wall",
		WALL_WOOD =
		{
			GENERIC = "i hope these spikes can protect me",
			BURNT = "ash once again",
		},
		WALL_WOOD_ITEM = "this looks spikey",
		WALL_MOONROCK = "o smooth and pretty",
		WALL_MOONROCK_ITEM = "light but tough as stone",
		FENCE = "a wood fence",
        FENCE_ITEM = "o where to place it?",
        FENCE_GATE = "little fence gate",
        FENCE_GATE_ITEM = "o where to place it?",
		WALRUS = "looks pretty scary",
		WALRUSHAT = "this isnt very good for me",
		WALRUS_CAMP =
		{
			EMPTY = "i think someone was staying here",
			GENERIC = "o looks very cozy in there",
		},
		WALRUS_TUSK = "sharper than it looks!",
		WARDROBE =
		{
			GENERIC = "i wonder whats inside",
            BURNING = "that fashions too hot",
			BURNT = "returned to ash",
		},
		WARG = "how did that hound get so huge?!",
		WASPHIVE = "those bees look pretty angry",
		WATERBALLOON = "to cool things off",
		WATERMELON = "juicy!",
		WATERMELON_COOKED = "not sure if its better cooked",
		WATERMELONHAT = "keeps my head cool",
		WAXWELLJOURNAL = "no no! get that away from me",
		WETGOOP = "kinda gross",
        WHIP = "i think it will scare away anything",
		WINTERHAT = "to keep you toasty",
		WINTEROMETER =
		{
			GENERIC = "looks to scientific for me",
			BURNT = "charred...",
		},

        WINTER_TREE =
        {
            BURNT = "i hope the presents havent burnt",
            BURNING = "o no! its burning!!",
            CANDECORATE = "time to decorate!",
            YOUNG = "just a small tree right now",
        },
		WINTER_TREESTAND =
		{
			GENERIC = "now to plant a pine cone",
            BURNT = "i hope the presents havent burnt",
		},
        WINTER_ORNAMENT = "o how shiny!",
        WINTER_ORNAMENTLIGHT = "a pretty light",
        WINTER_ORNAMENTBOSS = "a trophy!",
		WINTER_ORNAMENTFORGE = "forged in festive spirit",
		WINTER_ORNAMENTGORGE = "making me a little hungry",

        WINTER_FOOD1 = "a tasty little man", --gingerbread cookie
        WINTER_FOOD2 = "sweet!", --sugar cookie
        WINTER_FOOD3 = "this is going to give someone a sugar rush", --candy cane
        WINTER_FOOD4 = "... gross...", --fruitcake
        WINTER_FOOD5 = "very tasty!", --yule log cake
        WINTER_FOOD6 = "one plump plum pudding", --plum pudding
        WINTER_FOOD7 = "one tasty drink", --apple cider
        WINTER_FOOD8 = "warms me right up", --hot cocoa
        WINTER_FOOD9 = "a festive drink", --eggnog

		WINTERSFEASTOVEN =
		{
			GENERIC = "a toasty fire, not for me...",
			COOKING = "a bright fire... stay away",
			ALMOST_DONE_COOKING = "almost done",
			DISH_READY = "its ready!",
		},
		BERRYSAUCE = "tasty berry sauce",
		BIBINGKA = "a savoury bread",
		CABBAGEROLLS = "this looks... untasty to me",
		FESTIVEFISH = "not sure how festive this is",
		GRAVY = "at least the turkey wont be so dry",
		LATKES = "a tasty potato",
		LUTEFISK = "a little fishy",
		MULLEDDRINK = "one hot tasty drink",
		PANETTONE = "how yummy",
		PAVLOVA = "crisp and sweet",
		PICKLEDHERRING = "one delish fish",
		POLISHCOOKIE = "sweet sweet sweet!",
		PUMPKINPIE = "so tasty, so good",
		ROASTTURKEY = "the head of the table",
		STUFFING = "to stuff that poor bird",
		SWEETPOTATO = "this looks very tasy",
		TAMALES = "tasty and hot",
		TOURTIERE = "pie!",

		TABLE_WINTERS_FEAST =
		{
			GENERIC = "a table for feasting",
			HAS_FOOD = "it all looks so good",
			WRONG_TYPE = "i dont think this belongs to me",
			BURNT = "i think its overcooked",
		},

		GINGERBREADWARG = "a wolf in cookie clothing",
		GINGERBREADHOUSE = "looks tasty... must resist",
		GINGERBREADPIG = "hello little cookie pig",
		CRUMBS = "a cookie crumb trail",
		WINTERSFEASTFUEL = "makes me feel warm",

        KLAUS = "he doesnt look very friendly",
        KLAUS_SACK = "maybe i should open it",
		KLAUSSACKKEY = "a very fancy antler",
		WORMHOLE =
		{
			GENERIC = "thats way too many teeth",
			OPEN = "i think it wants me to jump in...",
		},
		WORMHOLE_LIMITED = "this one... doesnt look well",
		ACCOMPLISHMENT_SHRINE = "look! i did things",
		LIVINGTREE = "o spooky...",
		ICESTAFF = "cold! like me",
		REVIVER = "maybe it can help a friend",
		SHADOWHEART = "this thing... i dont like it",
        ATRIUM_RUBBLE =
        {
			LINE_1 = "it shows a city full of starving people, before the fuel...",
			LINE_2 = "you know what happens next...",
			LINE_3 = "the night consumed them... too much power",
			LINE_4 = "people shedding their skins... its no good",
			LINE_5 = "how sad...",
		},
        ATRIUM_STATUE = "im so sorry...",
        ATRIUM_LIGHT =
        {
			ON = "this isnt good",
			OFF = "off...",
		},
        ATRIUM_GATE =
        {
			ON = "this terrible thing...",
			OFF = "its shattered, good",
			CHARGING = "o no, its gainign power",
			DESTABILIZING = "the passage is breaking",
			COOLDOWN = "o it needs time...",
        },
        ATRIUM_KEY = "its too powerful",
		LIFEINJECTOR = "to heal the heart",
		SKELETON_PLAYER =
		{
			MALE = "the mortal %s has passed. i think %s was the cause",
			FEMALE = "the mortal %s has passed. i think %s was the cause",
			ROBOT = "the construct %s has passed. i think %s was the cause",
			DEFAULT = "the mortal %s has passed. i think %s was the cause",
		},
		HUMANMEAT = "its still food... right?",
		HUMANMEAT_COOKED = "im not sure how i feel about this",
		HUMANMEAT_DRIED = "im sure its fine",
		ROCK_MOON = "o it came from Elysium",
		MOONROCKNUGGET = "a piece of Elysium",
		MOONROCKCRATER = "a watching eye",
		MOONROCKSEED = "the seed of Elysium",

        REDMOONEYE = "it marks its place, and watches,",
        PURPLEMOONEYE = "all-seeing, and it causes,",
        GREENMOONEYE = "the rhythm, and hum, i view, ",
        ORANGEMOONEYE = "i know who looks through you,",
        YELLOWMOONEYE = "why do you keep pretending?",
        BLUEMOONEYE = "this seers eye, gaze unending.",

        --Arena Event
        LAVAARENA_BOARLORD = "o he is mightier than wolfgang!",
        BOARRIOR = "he looks scary!",
        BOARON = "this pig wont defeat me!",
        PEGHOOK = "ive never been a fan of acid",
        TRAILS = "they get worse everytime",
        TURTILLUS = "o thats a tough shell!",
        SNAPPER = "those teeth are sharper than mine!",
		RHINODRILL = "i never knew brotherly love could hurt so much",
		BEETLETAUR = "scary! leave me alone!",

        LAVAARENA_PORTAL =
        {
            ON = "i would like to leave now",
            GENERIC = "i hope we can get back",
        },
        LAVAARENA_KEYHOLE = "all gates need their key",
		LAVAARENA_KEYHOLE_FULL = "ready...",
        LAVAARENA_BATTLESTANDARD = "we need to destroy the battle standard",
        LAVAARENA_SPAWNER = "this is where they are coming from...",

        HEALINGSTAFF = "to restore your vigor",
        FIREBALLSTAFF = "a comet caller",
        HAMMER_MJOLNIR = "very heavy, very cool",
        SPEAR_GUNGNIR = "o how spikey",
        BLOWDART_LAVA = "it fires very fast",
        BLOWDART_LAVA2 = "a firey bolt",
        LAVAARENA_LUCY = "a weapon for woodie i think",
        WEBBER_SPIDER_MINION = "hello webbers friends",
        BOOK_FOSSIL = "i feel like medusa",
		LAVAARENA_BERNIE = "hello mr bernie",
		SPEAR_LANCE = "an even spikier spear",
		BOOK_ELEMENTAL = "too much power for me",
		LAVAARENA_ELEMENTAL = "a monster!",

   		LAVAARENA_ARMORLIGHT = "its light, but not so strong",
		LAVAARENA_ARMORLIGHTSPEED = "makes me feel light on my feet",
		LAVAARENA_ARMORMEDIUM = "i feel safer already",
		LAVAARENA_ARMORMEDIUMDAMAGER = "i feel a little stronger",
		LAVAARENA_ARMORMEDIUMRECHARGER = "i think i have a bit more energy",
		LAVAARENA_ARMORHEAVY = "as tough as rock",
		LAVAARENA_ARMOREXTRAHEAVY = "as tough as a mountain",

		LAVAARENA_FEATHERCROWNHAT = "faster faster faster!",
        LAVAARENA_HEALINGFLOWERHAT = "my heart is feeling a little bigger today",
        LAVAARENA_LIGHTDAMAGERHAT = "a spikey helmet!",
        LAVAARENA_STRONGDAMAGERHAT = "how strong and mighty!",
        LAVAARENA_TIARAFLOWERPETALSHAT = "a healer would make the best use of this",
        LAVAARENA_EYECIRCLETHAT = "o it lets me see... everything...",
        LAVAARENA_RECHARGERHAT = "o i feel recharged!",
        LAVAARENA_HEALINGGARLANDHAT = "feeling better already!",
        LAVAARENA_CROWNDAMAGERHAT = "this hat is the best!",

		LAVAARENA_ARMOR_HP = "it keeps me safe",

		LAVAARENA_FIREBOMB = "seems very dangerous",
		LAVAARENA_HEAVYBLADE = "this might be... too heavy for me",

        --Quagmire
        QUAGMIRE_ALTAR =
        {
        	GENERIC = "o i think it wants some food",
        	FULL = "all full up",
    	},
		QUAGMIRE_ALTAR_STATUE1 = "one old statue",
		QUAGMIRE_PARK_FOUNTAIN = "o its empty",

        QUAGMIRE_HOE = "for farming",

        QUAGMIRE_TURNIP = "one turnip",
        QUAGMIRE_TURNIP_COOKED = "ready!",
        QUAGMIRE_TURNIP_SEEDS = "some strange seeds",

        QUAGMIRE_GARLIC = "makes everything taste better",
        QUAGMIRE_GARLIC_COOKED = "mmm",
        QUAGMIRE_GARLIC_SEEDS = "some strange seeds",

        QUAGMIRE_ONION = "dont bite into it like an apple",
        QUAGMIRE_ONION_COOKED = "smells so good",
        QUAGMIRE_ONION_SEEDS = "some strange seeds",

        QUAGMIRE_POTATO = "one potato",
        QUAGMIRE_POTATO_COOKED = "tasty!",
        QUAGMIRE_POTATO_SEEDS = "some strange seeds",

        QUAGMIRE_TOMATO = "red and juicy",
        QUAGMIRE_TOMATO_COOKED = "looks ready",
        QUAGMIRE_TOMATO_SEEDS = "some strange seeds",

        QUAGMIRE_FLOUR = "what will i bake",
        QUAGMIRE_WHEAT = "not ready to eat yet",
        QUAGMIRE_WHEAT_SEEDS = "some strange seeds",
        --NOTE: raw/cooked carrot uses regular carrot strings
        QUAGMIRE_CARROT_SEEDS = "some strange seeds",

        QUAGMIRE_ROTTEN_CROP = "mr altar wont want this",

		QUAGMIRE_SALMON = "little fishy",
		QUAGMIRE_SALMON_COOKED = "tasty!",
		QUAGMIRE_CRABMEAT = "crab, how fancy!",
		QUAGMIRE_CRABMEAT_COOKED = "fit for a king",
		QUAGMIRE_SUGARWOODTREE =
		{
			GENERIC = "full of sweet sap!",
			STUMP = "o...guess trees gone",
			TAPPED_EMPTY = "its all empty...",
			TAPPED_READY = "ready to tap",
			TAPPED_BUGS = "o hello little bugs",
			WOUNDED = "It looks ill.",
		},
		QUAGMIRE_SPOTSPICE_SHRUB =
		{
			GENERIC = "...huh... looks like the tentacles",
			PICKED = "someone else picked this one",
		},
		QUAGMIRE_SPOTSPICE_SPRIG = "i think i can ground it into spice",
		QUAGMIRE_SPOTSPICE_GROUND = "now i can cook with it!",
		QUAGMIRE_SAPBUCKET = "to collect sap from those trees",
		QUAGMIRE_SAP = "sweet and sticky!",
		QUAGMIRE_SALT_RACK =
		{
			READY = "its salty- i mean ready!",
			GENERIC = "o it needs more time",
		},

		QUAGMIRE_POND_SALT = "a very salty pond",
		QUAGMIRE_SALT_RACK_ITEM = "i can harvest salt with this",

		QUAGMIRE_SAFE =
		{
			GENERIC = "a safe",
			LOCKED = "o its locked",
		},

		QUAGMIRE_KEY = "a key!",
		QUAGMIRE_KEY_PARK = "a key for the park",
        QUAGMIRE_PORTAL_KEY = "a key for the gateway",


		QUAGMIRE_MUSHROOMSTUMP =
		{
			GENERIC = "o hello little mushrooms",
			PICKED = "someone else has picked this one",
		},
		QUAGMIRE_MUSHROOMS = "these seem tasty",
        QUAGMIRE_MEALINGSTONE = "to grind things down",
		QUAGMIRE_PEBBLECRAB = "o a little crab!",


		QUAGMIRE_RUBBLE_CARRIAGE = "its all broken",
        QUAGMIRE_RUBBLE_CLOCK = "the times caught up with this one",
        QUAGMIRE_RUBBLE_CATHEDRAL = "ashes to ashes, rubble to rubble",
        QUAGMIRE_RUBBLE_PUBDOOR = "is it even a door anymore?",
        QUAGMIRE_RUBBLE_ROOF = "i dont think that would keep the rain off you",
        QUAGMIRE_RUBBLE_CLOCKTOWER = "turned to rubble",
        QUAGMIRE_RUBBLE_BIKE = "the metal is all twisted and snapped",
        QUAGMIRE_RUBBLE_HOUSE =
        {
            "hello? o nobodys home",
            "someone destroyed this place",
            "this place is empty",
        },
        QUAGMIRE_RUBBLE_CHIMNEY = "that wont work anymore",
        QUAGMIRE_RUBBLE_CHIMNEY2 = "that wont work anymore",
        QUAGMIRE_MERMHOUSE = "a strange little house",
        QUAGMIRE_SWAMPIG_HOUSE = "doesnt look too good",
        QUAGMIRE_SWAMPIG_HOUSE_RUBBLE = "this ones all broken",
        QUAGMIRE_SWAMPIGELDER =
        {
            GENERIC = "are you their leader?",
            SLEEPING = "shhhh!",
        },
        QUAGMIRE_SWAMPIG = "hello hairy pig",

        QUAGMIRE_PORTAL = "it is closed right now",
        QUAGMIRE_SALTROCK = "one tasty rock",
        QUAGMIRE_SALT = "all full of salt",
        --food--
        QUAGMIRE_FOOD_BURNT = "all burnt up",
        QUAGMIRE_FOOD =
        {
        	GENERIC = "maybe i should offer this to the altar",
            MISMATCH = "i dont think it wants it",
            MATCH = "i think the altar will like this one",
            MATCH_BUT_SNACK = "only a little snack",
        },

        QUAGMIRE_FERN = "not sure how this will taste",
        QUAGMIRE_FOLIAGE_COOKED = "looks pretty good actually",
        QUAGMIRE_COIN1 = "this... isnt very good",
        QUAGMIRE_COIN2 = "seems kinda valuable",
        QUAGMIRE_COIN3 = "o wow...",
        QUAGMIRE_COIN4 = "o i think it really likes me",
        QUAGMIRE_GOATMILK = "i dont want to think about it",
        QUAGMIRE_SYRUP = "sweet!",
        QUAGMIRE_SAP_SPOILED = "o this doesnt seem good",
        QUAGMIRE_SEEDPACKET = "seeds for planting",

        QUAGMIRE_POT = "this ones a little larger",
        QUAGMIRE_POT_SMALL = "time to cook",
        QUAGMIRE_POT_SYRUP = "for that sweet victory",
        QUAGMIRE_POT_HANGER = "it hangs, i think",
        QUAGMIRE_POT_HANGER_ITEM = "o it needs to be set up",
        QUAGMIRE_GRILL = "ready to get to grilling!",
        QUAGMIRE_GRILL_ITEM = "needs placing i think",
        QUAGMIRE_GRILL_SMALL = "i love a good barbecue",
        QUAGMIRE_GRILL_SMALL_ITEM = "where to put this?",
        QUAGMIRE_OVEN = "now... how do you cook?",
        QUAGMIRE_OVEN_ITEM = "o it needs to be set up before we can start",
        QUAGMIRE_CASSEROLEDISH = "looks kinda fancy",
        QUAGMIRE_CASSEROLEDISH_SMALL = "i need to place this",
        QUAGMIRE_PLATE_SILVER = "this is pretty fancy",
        QUAGMIRE_BOWL_SILVER = "so shiny",
        QUAGMIRE_CRATE = "kitchen stuff",

        QUAGMIRE_MERM_CART1 = "theres some good stuff there", --sammy's wagon
        QUAGMIRE_MERM_CART2 = "theres thing i could use in there", --pipton's cart
        QUAGMIRE_PARK_ANGEL = "i dont like you",
        QUAGMIRE_PARK_ANGEL2 = "i like you even less",
        QUAGMIRE_PARK_URN = "ashes to ashes",
        QUAGMIRE_PARK_OBELISK = "a strange stone",
        QUAGMIRE_PARK_GATE =
        {
            GENERIC = "all i needed was the key",
            LOCKED = "all locked up",
        },
        QUAGMIRE_PARKSPIKE = "o it looks a little sharp",
        QUAGMIRE_CRABTRAP = "i think its for the crabs",
        QUAGMIRE_TRADER_MERM = "excuse me, would you like to trade?",
        QUAGMIRE_TRADER_MERM2 = "excuse me, would you like to trade?",

        QUAGMIRE_GOATMUM = "...kinda scary",
        QUAGMIRE_GOATKID = "hey kid!",
        QUAGMIRE_PIGEON =
        {
            DEAD = "o no",
            GENERIC = "hello little pigeon",
            SLEEPING = "its sleeping",
        },
        QUAGMIRE_LAMP_POST = "lights not my thing...",

        QUAGMIRE_BEEFALO = "ive never seen one that old",
        QUAGMIRE_SLAUGHTERTOOL = "no thankyou",

        QUAGMIRE_SAPLING = "i dont think ill get anything",
        QUAGMIRE_BERRYBUSH = "its berries are all gone",

        QUAGMIRE_ALTAR_STATUE2 = "kinda ugly...",
        QUAGMIRE_ALTAR_QUEEN = "this one, less ugly",
        QUAGMIRE_ALTAR_BOLLARD = "just a post",
        QUAGMIRE_ALTAR_IVY = "hello little ivy",

        QUAGMIRE_LAMP_SHORT = "just a lamp",

        --v2 Winona
        WINONA_CATAPULT =
        {
        	GENERIC = "o that looks dangerous",
        	OFF = "i think it needs some power",
        	BURNING = "o no!",
        	BURNT = "charred up",
        },
        WINONA_SPOTLIGHT =
        {
        	GENERIC = "maybe... this idea was a bit too bright",
        	OFF = "i think it needs some power",
        	BURNING = "o no!",
        	BURNT = "charred up",
        },
        WINONA_BATTERY_LOW =
        {
        	GENERIC = "magic is more my thing",
        	LOWPOWER = "i think it needs some more power",
        	OFF = "its off right now",
        	BURNING = "o no!",
        	BURNT = "charred up",
        },
        WINONA_BATTERY_HIGH =
        {
        	GENERIC = "i prefer magic",
        	LOWPOWER = "it looks low on power",
        	OFF = "i think its off right now",
        	BURNING = "o no!",
        	BURNT = "charred up",
        },

        --Wormwood
        COMPOSTWRAP = "i think wormwood woul prefer this",
        ARMOR_BRAMBLE = "strong and spikey",
        TRAP_BRAMBLE = "spikey!",

        BOATFRAGMENT03 = "not much left",
        BOATFRAGMENT04 = "not much left",
        BOATFRAGMENT05 = "not much left",
		BOAT_LEAK = "that leak looks titanic",
        MAST = "a mast have for the boat",
        SEASTACK = "a rock from the sea",
        FISHINGNET = "for efficient fishing",
        ANTCHOVIES = "some people have this on pizza... not me",
        STEERINGWHEEL = "for when you feel a little directionless",
        ANCHOR = "to keep you grounded",
        BOATPATCH = "incase of icebergs",
        DRIFTWOOD_TREE =
        {
            BURNING = "its burning!",
            BURNT = "ash...",
            CHOPPED = "someones chopped this",
            GENERIC = "a dead tree... dont let wormwood see",
        },

        DRIFTWOOD_LOG = "it floats along",

        MOON_TREE =
        {
            BURNING = "its on fire!",
            BURNT = "all burnt up",
            CHOPPED = "o no, now it wont grow back",
            GENERIC = "a tree from Elysium",
        },
		MOON_TREE_BLOSSOM = "an Elysium blossom",

        MOONBUTTERFLY =
        {
        	GENERIC = "the butterfly is celestial",
        	HELD = "it sleeps in my pocket",
        },
		MOONBUTTERFLYWINGS = "celestial wings",
        MOONBUTTERFLY_SAPLING = "the butterfly changed to a tree",
        ROCK_AVOCADO_FRUIT = "rock hard",
        ROCK_AVOCADO_FRUIT_RIPE = "it could do with cooking",
        ROCK_AVOCADO_FRUIT_RIPE_COOKED = "tasty",
        ROCK_AVOCADO_FRUIT_SPROUT = "o its begining to sprout",
        ROCK_AVOCADO_BUSH =
        {
        	BARREN = "i think it needs some plant food",
			WITHERED = "i dont like the heat either...",
			GENERIC = "a bush from Elysium",
			PICKED = "someone already got to this one",
			DISEASED = "it doesnt look well",
            DISEASING = "it looks...strange",
			BURNING = "fire!",
		},
        DEAD_SEA_BONES = "these are pretty scary",
        HOTSPRING =
        {
        	GENERIC = "maybe i could take a nice dip?",
        	BOMBED = "its all bubbly",
        	GLASS = "water turns to glass here",
			EMPTY = "its empty right now",
        },
        MOONGLASS = "sharp...",
        MOONGLASS_ROCK = "transparent... like me",
        BATHBOMB = "a bubbling bomb",
        TRAP_STARFISH =
        {
            GENERIC = "its not as cute as you think",
            CLOSED = "hey!",
        },
        DUG_TRAP_STARFISH = "maybe i could use this",
        SPIDER_MOON =
        {
        	GENERIC = "its so freaky",
        	SLEEPING = "its sleeping",
        	DEAD = "o good its dead",
        },
        MOONSPIDERDEN = "Elysium turns everything it touches",
		FRUITDRAGON =
		{
			GENERIC = "o how cute!",
			RIPE = "i think its ripe",
			SLEEPING = "shhh",
		},
        PUFFIN =
        {
            GENERIC = "hello little puffin",
            HELD = "its in my pocket",
            SLEEPING = "shhh",
        },

		MOONGLASSAXE = "sharper than it looks",
		GLASSCUTTER = "a little dangerous",

        ICEBERG =
        {
            GENERIC = "i think i want to avoid that",
            MELTED = "all melted",
        },
        ICEBERG_MELTED = "all melted",

        MINIFLARE = "a light to let people know where i am",

		MOON_FISSURE =
		{
			GENERIC = "i can feel its hate",
			NOLIGHT = "this place is broken",
		},
        MOON_ALTAR =
        {
            MOON_ALTAR_WIP = "it wants to be finished",
            GENERIC = "it says things",
        },

        MOON_ALTAR_IDOL = "an idol",
        MOON_ALTAR_GLASS = "a base",
        MOON_ALTAR_SEED = "a seed ",

        MOON_ALTAR_ROCK_IDOL = "something inside",
        MOON_ALTAR_ROCK_GLASS = "something hidden",
        MOON_ALTAR_ROCK_SEED = "something lost",

		MOON_ALTAR_CROWN = "the crown",
        MOON_ALTAR_COSMIC = "is is placed",

        MOON_ALTAR_ASTRAL = "all the pieces in place",
        MOON_ALTAR_ICON = "an icon",
        MOON_ALTAR_WARD = "a ward",

        SEAFARING_PROTOTYPER =
        {
            GENERIC = "all this thinking is making my head hurt",
            BURNT = "burnt up",
        },
        BOAT_ITEM = "i think id enjoy sailing",
        STEERINGWHEEL_ITEM = "to make a steering wheel",
        ANCHOR_ITEM = "o now i can make an anchor",
        MAST_ITEM = "for making a mast!",
        MUTATEDHOUND =
        {
        	DEAD = "o good... its dead",
        	GENERIC = "no no no!!!",
        	SLEEPING = "please... dont wake up",
        },

        MUTATED_PENGUIN =
        {
			DEAD = "good thing its dead",
			GENERIC = "o no why does it look like that?!",
			SLEEPING = "shhhhh!",
		},
        CARRAT =
        {
        	DEAD = "o poor thing",
        	GENERIC = "i didnt know they had eyes",
        	HELD = "it wriggles in my pocket",
        	SLEEPING = "its... kinda cute",
        },

		BULLKELP_PLANT =
        {
            GENERIC = "just a kelp plant",
            PICKED = "someone else already got this one",
        },
		BULLKELP_ROOT = "i can put it in the water",
        KELPHAT = "wet and gross, but makes me feel better",
		KELP = "very slimy",
		KELP_COOKED = "i dont know if this is better",
		KELP_DRIED = "very very salty",

		GESTALT = "i know you",
		GESTALT_GUARD = "they hold such hate",

		COOKIECUTTER = "hey! keep away from my boat!",
		COOKIECUTTERSHELL = "a hard and spikey shell",
		COOKIECUTTERHAT = "now im hard headed",
		SALTSTACK =
		{
			GENERIC = "some of these look like people",
			MINED_OUT = "someone else mined this already",
			GROWING = "o its still growing",
		},
		SALTROCK = "o so tasty and salty",
		SALTBOX = "stops the food from getting squishy",

		TACKLESTATION = "full of little bugs",
		TACKLESKETCH = "this looks... interesting",

        MALBATROSS = "o that thing looks scary!",
        MALBATROSS_FEATHER = "from a sea bird",
        MALBATROSS_BEAK = "this is freaky",
        MAST_MALBATROSS_ITEM = "o it feels very soft",
        MAST_MALBATROSS = "i hope for no foul weather",
		MALBATROSS_FEATHERED_WEAVE = "a fowl canvas",

		GNARWAIL =
        {
            GENERIC = "how majestic!",
            BROKENHORN = "o no, poor thing",
            FOLLOWER = "hello littel whale friend",
            BROKENHORN_FOLLOWER = "poor little whale friend",
        },
        GNARWAIL_HORN = "a swirly horn",

        WALKINGPLANK = "im... not walking on that",
        OAR = "for faster sailing",
		OAR_DRIFTWOOD = "for faster sailing",

		OCEANFISHINGROD = "time to fish!",
		OCEANFISHINGBOBBER_NONE = "i think it needs a float",
        OCEANFISHINGBOBBER_BALL = "how cute!",
        OCEANFISHINGBOBBER_OVAL = "a little stronger",
		OCEANFISHINGBOBBER_CROW = "a black feather float",
		OCEANFISHINGBOBBER_ROBIN = "a red feather float",
		OCEANFISHINGBOBBER_ROBIN_WINTER = "a blue feather float",
		OCEANFISHINGBOBBER_CANARY = "a yellow feather float",
		OCEANFISHINGBOBBER_GOOSE = "a fancy feather float",
		OCEANFISHINGBOBBER_MALBATROSS = "a fancy eather float",

		OCEANFISHINGLURE_SPINNER_RED = "a little fishy might like this",
		OCEANFISHINGLURE_SPINNER_GREEN = "a little fishy might like this",
		OCEANFISHINGLURE_SPINNER_BLUE = "a little fishy might like this",
		OCEANFISHINGLURE_SPOON_RED = "a little fishy might like this",
		OCEANFISHINGLURE_SPOON_GREEN = "a little fishy might like this",
		OCEANFISHINGLURE_SPOON_BLUE = "a little fishy might like this",
		OCEANFISHINGLURE_HERMIT_RAIN = "for fishing in the rain",
		OCEANFISHINGLURE_HERMIT_SNOW = "for winter fishing",
		OCEANFISHINGLURE_HERMIT_DROWSY = "it makes the fish sleepy",
		OCEANFISHINGLURE_HERMIT_HEAVY = "for weightier fishes",

		OCEANFISH_SMALL_1 = "how tiny!",
		OCEANFISH_SMALL_2 = "it looks a little nosey",
		OCEANFISH_SMALL_3 = "a very small fishy",
		OCEANFISH_SMALL_4 = "how small!",
		OCEANFISH_SMALL_5 = "tasty!",
		OCEANFISH_SMALL_6 = "looks a little like autumn leaves",
		OCEANFISH_SMALL_7 = "this ones a little leafy",
		OCEANFISH_SMALL_8 = "o! so bright! no thankyou!",
        OCEANFISH_SMALL_9 = "dont spit on me!",

		OCEANFISH_MEDIUM_1 = "o it looks... unpleasant",
		OCEANFISH_MEDIUM_2 = "thats a pretty big fishy",
		OCEANFISH_MEDIUM_3 = "watch out for the spines",
		OCEANFISH_MEDIUM_4 = "o thats one big fish!",
		OCEANFISH_MEDIUM_5 = "looks less like a fish... and more like corn",
		OCEANFISH_MEDIUM_6 = "how pretty!",
		OCEANFISH_MEDIUM_7 = "how pretty!",
		OCEANFISH_MEDIUM_8 = "might be good in a drink",

		PONDFISH = "a little fishy",
		PONDEEL = "he looks a little freaky",

        FISHMEAT = "i think it could do with being cooked",
        FISHMEAT_COOKED = "looks tasty!",
        FISHMEAT_SMALL = "sushi isnt my thing...",
        FISHMEAT_SMALL_COOKED = "its better cooked",
		SPOILED_FISH = "i dont think i should eat that",

		FISH_BOX = "for keeping the fishy fresh",
        POCKET_SCALE = "i can see how big my catches are",

		TACKLECONTAINER = "to put your tackles away",
		SUPERTACKLECONTAINER = "o theres even more room in this one!",

		TROPHYSCALE_FISH =
		{
			GENERIC = "so we can find the heaviest fishy",
			HAS_ITEM = "weight: {weight}\ncaught by: {owner}",
			HAS_ITEM_HEAVY = "weight: {weight}\ncaught by: {owner}\nan impressive catch!",
			BURNING = "o no...",
			BURNT = "o poor fishy",
			OWNER = "weight: {weight}\ncaught by: {owner}\ni did that!",
			OWNER_HEAVY = "weight: {weight}\ncaught by: {owner}\nthats my fishy",
		},

		OCEANFISHABLEFLOTSAM = "kinda gross",

		CALIFORNIAROLL = "looks pretty good actually",
		SEAFOODGUMBO = "fresh from the sea!",
		SURFNTURF = "looks tasty!",

        WOBSTER_SHELLER = "i dont like the look of those pincers",
        WOBSTER_DEN = "its hiding",
        WOBSTER_SHELLER_DEAD = "i think it would be better cooked",
        WOBSTER_SHELLER_DEAD_COOKED = "o it looks very tasty!",

        LOBSTERBISQUE = "i want to eat it all",
        LOBSTERDINNER = "o it looks so good!",

        WOBSTER_MOONGLASS = "looks freakier... i hope it tastes the same",
        MOONGLASS_WOBSTER_DEN = "hiding...",

		TRIDENT = "triple the pokey",

		WINCH =
		{
			GENERIC = "maybe i can go treasure hunting!",
			RETRIEVING_ITEM = "almost got it...",
			HOLDING_ITEM = "got it!... what is it?",
		},

        HERMITHOUSE = {
            GENERIC = "what i nice little house",
            BUILTUP = "looks so good!",
        },

        SHELL_CLUSTER = "theyre all stuck together",
        --
		SINGINGSHELL_OCTAVE3 =
		{
			GENERIC = "o it makes sounds!",
		},
		SINGINGSHELL_OCTAVE4 =
		{
			GENERIC = "i like how they sound",
		},
		SINGINGSHELL_OCTAVE5 =
		{
			GENERIC = "like a choir",
        },

        CHUM = "gross...",

        SUNKENCHEST =
        {
            GENERIC = "i wonder whats inside",
            LOCKED = "o... its locked",
        },

        HERMIT_BUNDLE = "a gift!",
        HERMIT_BUNDLE_SHELLS = "a shelly gift",

        RESKIN_TOOL = "o i can change how things look",
        MOON_FISSURE_PLUGGED = "thats a smart idea",
		-- Walter
        WOBYBIG =
        {
            "aww shes so cute!",
            "aww shes so cute!",
        },
        WOBYSMALL =
        {
            "shes a sweet small doggy",
            "shes a sweet small doggy",
        },
		WALTERHAT = "maybe... i could be a scout too?",
		SLINGSHOT = "o this could be dangerous",
		SLINGSHOTAMMO_ROCK = "a rock solid choice",
		SLINGSHOTAMMO_MARBLE = "it packs a punch",
		SLINGSHOTAMMO_THULECITE = "its kinda like me",
        SLINGSHOTAMMO_GOLD = "shiny and expensive!",
        SLINGSHOTAMMO_SLOW = "hmm... its like the gestalts...",
        SLINGSHOTAMMO_FREEZE = "to cool things down!",
		SLINGSHOTAMMO_POOP = "heh just like back to the future",
        PORTABLETENT = "oo nice tent!",
        PORTABLETENT_ITEM = "these things are so hard to put up",

        -- Wigfrid
        BATTLESONG_DURABILITY = "i cant read it",
        BATTLESONG_HEALTHGAIN = "i cant read it",
        BATTLESONG_SANITYGAIN = "i cant read it",
        BATTLESONG_SANITYAURA = "i cant read it",
        BATTLESONG_FIRERESISTANCE = "i cant read it",
        BATTLESONG_INSTANT_TAUNT = "i cant read it",
        BATTLESONG_INSTANT_PANIC = "i cant read it",

		-- Wendy
		GHOSTLYELIXIR_SLOWREGEN = "i think wendy should have this",
		GHOSTLYELIXIR_FASTREGEN = "i think wendy should have this",
		GHOSTLYELIXIR_SHIELD = "i think wendy should have this",
		GHOSTLYELIXIR_ATTACK = "i think wendy should have this",
		GHOSTLYELIXIR_SPEED = "i think wendy should have this",
		GHOSTLYELIXIR_RETALIATION = "i think wendy should have this",
		SISTURN =
		{
			GENERIC = "how sweet",
			SOME_FLOWERS = "very pretty",
			LOTS_OF_FLOWERS = "wow it looks beautiful!",
		},

        --Wortox
        WORTOX_SOUL = "only_used_by_wortox", --only wortox can inspect souls

        PORTABLECOOKPOT_ITEM =
        {
            GENERIC = "cooking time!",
            DONE = "finished",

			COOKING_LONG = "this one will take a little bit",
			COOKING_SHORT = "o its almost done!",
			EMPTY = "o its empty",
        },

        PORTABLEBLENDER_ITEM = "now i can make a smoothie",
        PORTABLESPICER_ITEM =
        {
            GENERIC = "the spice of life",
            DONE = "should make things a little tastier",
        },
        SPICEPACK = "a place for spices",
        SPICE_GARLIC = "a pungent smell",
        SPICE_SUGAR = "sweet",
        SPICE_CHILI = "a spicy fire!",
        SPICE_SALT = "a salty addition ",
        MONSTERTARTARE = "no... no thankyou",
        FRESHFRUITCREPES = "looks tasty!",
        FROGFISHBOWL = "how did you get so many frog legs?",
        POTATOTORNADO = "a tasty spiral potato",
        DRAGONCHILISALAD = "firey!",
        GLOWBERRYMOUSSE = "someones going to have a sugar rush",
        VOLTGOATJELLY = "who knew jelly could be so electrifying?",
        NIGHTMAREPIE = "feels... a little canibalistic of me...",
        BONESOUP = "filled with calcium",
        MASHEDPOTATOES = "so creamy and delicious",
        POTATOSOUFFLE = "... so... good",
        MOQUECA = "a stupendous soup",
        GAZPACHO = "amazing!",
        ASPARAGUSSOUP = "not... the best",
        VEGSTINGER = "i love a good straw",
        BANANAPOP = "cold like me",
        CEVICHE = "this looks so good",
        SALSA = "hot hot hot!",
        PEPPERPOPPER = "what a zinger!",

        TURNIP = "one turnip",
        TURNIP_COOKED = "ready!",
        TURNIP_SEEDS = "some strange seeds",

        GARLIC = "makes everything taste better",
        GARLIC_COOKED = "mmm",
        GARLIC_SEEDS = "some strange seeds",

        ONION = "dont bite into it like an apple",
        ONION_COOKED = "smells so good",
        ONION_SEEDS = "some strange seeds",

        POTATO = "one potato",
        POTATO_COOKED = "tasty!",
        POTATO_SEEDS = "some strange seeds",

        TOMATO = "red and juicy",
        TOMATO_COOKED = "looks ready",
        TOMATO_SEEDS = "some strange seeds",

        ASPARAGUS = "one asparagus",
        ASPARAGUS_COOKED = "i think its meant to be good for you",
        ASPARAGUS_SEEDS = "o its asparagus seeds",

        PEPPER = "one hot pepper",
        PEPPER_COOKED = "o its even hotter now!",
        PEPPER_SEEDS = "some strange seeds",

        WEREITEM_BEAVER = "this thing is freakier than my bell",
        WEREITEM_GOOSE = "spooky goosey",
        WEREITEM_MOOSE = "why does everything have to be cursed?",

        MERMHAT = "not sure how clever this disguise really is...",
        MERMTHRONE =
        {
            GENERIC = "for the king of the swamp",
            BURNT = "o no... its burnt",
        },
        MERMTHRONE_CONSTRUCTION =
        {
            GENERIC = "i wonder what wurt is doing...",
            BURNT = "o no...",
        },
        MERMHOUSE_CRAFTED =
        {
            GENERIC = "for the fish people i think",
            BURNT = "smells... so bad",
        },

        MERMWATCHTOWER_REGULAR = "o theyre happy to serve their king",
        MERMWATCHTOWER_NOKING = "they have no king to guard",
        MERMKING = "your majesty!",
        MERMGUARD = "they are excellent mercenaries",
        MERM_PRINCE = "a prince merm",

		SQUID = "i dont like things that glow",

		GHOSTFLOWER = "a spooky flower for a spooky ghost",
        SMALLGHOST = "hello little ghosty",

        CRABKING =
        {
            GENERIC = "i dont like the look of him",
            INERT = "he needs something sparkly",
        },
		CRABKING_CLAW = "hey! stop being so crabby!",

		MESSAGEBOTTLE = "o theres something inside",
		MESSAGEBOTTLEEMPTY = "an old bottle",

        MEATRACK_HERMIT =
        {
            DONE = "excuse me, youre jerky is done",
            DRYING = "still drying out",
            DRYINGINRAIN = "i dont think it will dry like that",
            GENERIC = "maybe she would like some jerky",
            BURNT = "i think its overdone...",
            DONE_NOTMEAT = "its... ready",
            DRYING_NOTMEAT = "this is taking a while to dry...",
            DRYINGINRAIN_NOTMEAT = "it wont dry like that",
        },
        BEEBOX_HERMIT =
        {
            READY = "excuse me lady, the bee box is full!",
            FULLHONEY = "its all full up!",
            GENERIC = "her bees are so friendly",
            NOHONEY = "no bee here",
            SOMEHONEY = "needs a little more time maybe",
            BURNT = "o no...",
        },

        HERMITCRAB = "hello lady hermit",

        HERMIT_PEARL = "shes so sweet",
        HERMIT_CRACKED_PEARL = "o no...",

        -- DSEAS
        WATERPLANT = "that flower looks pretty scary",
        WATERPLANT_BOMB = "yikes!",
        WATERPLANT_BABY = "its small now...",
        WATERPLANT_PLANTER = "i dont know if i want more of them",

        SHARK = "o no...",

        MASTUPGRADE_LAMP_ITEM = "safer than a fire on board",
        MASTUPGRADE_LIGHTNINGROD_ITEM = "for the lighting",

        WATERPUMP = "o good! it gets rid of fires",

        BARNACLE = "its kinda gross",
        BARNACLE_COOKED = "tastier now its cooked",

        BARNACLEPITA = "looks... interesting",
        BARNACLESUSHI = "i can see the barnacle in there",
        BARNACLINGUINE = "tasty",
        BARNACLESTUFFEDFISHHEAD = "is it edible",

        LEAFLOAF = "sutible for vegetarians",
        LEAFYMEATBURGER = "tastes... funny",
        LEAFYMEATSOUFFLE = "vegetables and dessert dont really go well",
        MEATYSALAD = "hmm...",

        -- GROTTO

		MOLEBAT = "its kinda cute, in a gross way",
        MOLEBATHILL = "gross...",

        BATNOSE = "no thankyou",
        BATNOSE_COOKED = "not sure its any better",
        BATNOSEHAT = "not really a hat",

        MUSHGNOME = "aw, kinda cute",

        SPORE_MOON = "ouch! hey!",

        MOON_CAP = "an Elysium mushroom... weird",
        MOON_CAP_COOKED = "cooking seemed to have made it better",

        MUSHTREE_MOON = "freaky Elysium mushroom",

        LIGHTFLIER = "a little Eysium bug",

        GROTTO_POOL_BIG = "its seeping eye stuff... and crystalises into glass",
        GROTTO_POOL_SMALL = "its seeping eye stuff... and crystalises into glass",

        DUSTMOTH = "aw how cute!",

        DUSTMOTHDEN = "its the moths den",

        ARCHIVE_LOCKBOX = "the Ancients sure knew how to build",
        ARCHIVE_CENTIPEDE = "o no",
        ARCHIVE_CENTIPEDE_HUSK = "its hibernating...",

        ARCHIVE_COOKPOT =
        {
            COOKING_LONG = "its taking its time",
            COOKING_SHORT = "its almost done",
            DONE = "all ready!",
            EMPTY = "an Ancient crockpot, needs filling though",
            BURNT = "returned to the ruins",
        },

        ARCHIVE_MOON_STATUE = "they carry like atlas",
        ARCHIVE_RUNE_STATUE =
        {
            LINE_1 = "that rock of thule,",
            LINE_2 = "and our fickle lune,",
            LINE_3 = "o beware the fuel.",
            LINE_4 = "a name, a jewel,",
            LINE_5 = "and now its new rule.",
        },

        ARCHIVE_RESONATOR = {
            GENERIC = "it guides us",
            IDLE = "i dont think theres anything to find",
        },

        ARCHIVE_RESONATOR_ITEM = "i feel its hum",

        ARCHIVE_LOCKBOX_DISPENCER = {
          POWEROFF = "i think it needs power",
          GENERIC =  "o no, i think this is a puzzle",
        },

        ARCHIVE_SECURITY_DESK = {
            POWEROFF = "it needs power to work",
            GENERIC = "it protects",
        },

        ARCHIVE_SECURITY_PULSE = "o no...",

        ARCHIVE_SWITCH = {
            VALID = "these gems are so pretty ",
            GEMS = "it needs something...",
        },

        ARCHIVE_PORTAL = {
            POWEROFF = "i know whats down there...",
            GENERIC = "it didnt open...",
        },

        WALL_STONE_2 = "a strong wall",
        WALL_RUINS_2 = "a strong ancient wall",

        REFINED_DUST = "just dust",
        DUSTMERINGUE = "this isnt... good",

        SHROOMCAKE = "a shroomy cake",

        NIGHTMAREGROWTH = "o, hello again",

        TURFCRAFTINGSTATION = "just for making dirt",

        MOON_ALTAR_LINK = "a seed",

        -- FARMING
        COMPOSTINGBIN =
        {
            GENERIC = "this is unpleasant",
            WET = "its wet...",
            DRY = "i think its too dry",
            BALANCED = "i think its ok",
            BURNT = "o dear",
        },
        COMPOST = "i think its better for the plants",
        SOIL_AMENDER =
		{
			GENERIC = "hmmm... not good",
			STALE = "really gross",
			SPOILED = "it smells bad... i hope it works",
		},

		SOIL_AMENDER_FERMENTED = "does wormwood like this too?",

        WATERINGCAN =
        {
            GENERIC = "to water those little plants",
            EMPTY = "o no its empty",
        },
        PREMIUMWATERINGCAN =
        {
            GENERIC = "a fancy way to water plants",
            EMPTY = "o no its empty",
        },

		FARM_PLOW = "i can make the ground reeady for plants",
		FARM_PLOW_ITEM = "where to plant plants",
		FARM_HOE = "this is tough work",
		GOLDEN_FARM_HOE = "this ones shiny",
		NUTRIENTSGOGGLESHAT = "how interesting...",
		PLANTREGISTRYHAT = "a hat for plant thinking",

        FARM_SOIL_DEBRIS = "Get outta here!",

		FIRENETTLES = "firey weed",
		FORGETMELOTS = "silly little flowers",
		SWEETTEA = "its still a weed",
		TILLWEED = "silly weed",
		TILLWEEDSALVE = "at least this weed was useful",

		TROPHYSCALE_OVERSIZEDVEGGIES =
		{
			GENERIC = "Oooh, that basket looks flammable!",
			HAS_ITEM = "weight: {weight}\nharvested on day: {day}\nwow!",
			HAS_ITEM_HEAVY = "weight: {weight}\nharvested on day: {day}\nlook at the size of that one!",
            HAS_ITEM_LIGHT = "oh its not even heavy enough to show a weight...",
			BURNING = "oh no...",
			BURNT = "charred to bits",
        },

        CARROT_OVERSIZED = "one big carrot!",
        CORN_OVERSIZED = "thats a huge corn!",
        PUMPKIN_OVERSIZED = "that would make one great lantern!",
        EGGPLANT_OVERSIZED = "one huge eggplant!",
        DURIAN_OVERSIZED = "this smells as bag as it is big",
        POMEGRANATE_OVERSIZED = "i didnt know they got so big",
        DRAGONFRUIT_OVERSIZED = "as big as a dragon!",
        WATERMELON_OVERSIZED = "water big fruit!",
        TOMATO_OVERSIZED = "thats a huge tomato!",
        POTATO_OVERSIZED = "how much mash could we make with this?",
        ASPARAGUS_OVERSIZED = "i dont like this one",
        ONION_OVERSIZED = "ill be having french onion soup for years...",
        GARLIC_OVERSIZED = "i think my breath would kill someone if i ate that",
        PEPPER_OVERSIZED = "thats a lot of spice!",

        VEGGIE_OVERSIZED_ROTTEN = "one big pile of mush...",

		FARM_PLANT =
		{
			GENERIC = "hello little plant",
			SEED = "a little seed",
			GROWING = "its still growing",
			FULL = "its all grown up",
			ROTTEN = "i think... its rotten",
			FULL_OVERSIZED = "howd you get so big?",
			ROTTEN_OVERSIZED = "one big pile of mush...",
			FULL_WEED = "i dont think thats a vegetable...",

			BURNING = "o no...",
		},

        FRUITFLY = "hey stay away from my plants!",
        LORDFRUITFLY = "o thats one ugly bug!",
        FRIENDLYFRUITFLY = "o i think its... helping?",
        FRUITFLYFRUIT = "i think this makes fruit flies friendly...",

        SEEDPOUCH = "i can keep my seeds in here",

        -- YOTB
        YOTB_SEWINGMACHINE = "i enjoy sewing",
        YOTB_SEWINGMACHINE_ITEM = "where to place this...",
        YOTB_STAGE = "for finding the most beautiful beefalo",
        YOTB_POST =  "o i can hitch my beefalo here",
        YOTB_STAGE_ITEM = "where can i put this?",
        YOTB_POST_ITEM =  "o ive got to build this first",


        YOTB_PATTERN_FRAGMENT_1 = "ill need to sow a few if these together",
        YOTB_PATTERN_FRAGMENT_2 = "ill need to sow a few if these together",
        YOTB_PATTERN_FRAGMENT_3 = "ill need to sow a few if these together",

        YOTB_BEEFALO_DOLL_WAR = {
            GENERIC = "what a sweet little doll!",
            YOTB = "i wonder what the judge will have to say",
        },
        YOTB_BEEFALO_DOLL_DOLL = {
            GENERIC = "what a sweet little doll!",
            YOTB = "i wonder what the judge will have to say",
        },
        YOTB_BEEFALO_DOLL_FESTIVE = {
            GENERIC = "what a sweet little doll!",
            YOTB = "i wonder what the judge will have to say",
        },
        YOTB_BEEFALO_DOLL_NATURE = {
            GENERIC = "what a sweet little doll!",
            YOTB = "i wonder what the judge will have to say",
        },
        YOTB_BEEFALO_DOLL_ROBOT = {
            GENERIC = "what a sweet little doll!",
            YOTB = "i wonder what the judge will have to say",
        },
        YOTB_BEEFALO_DOLL_ICE = {
            GENERIC = "what a sweet little doll!",
            YOTB = "i wonder what the judge will have to say",
        },
        YOTB_BEEFALO_DOLL_FORMAL = {
            GENERIC = "what a sweet little doll!",
            YOTB = "i wonder what the judge will have to say",
        },
        YOTB_BEEFALO_DOLL_VICTORIAN = {
            GENERIC = "what a sweet little doll!",
            YOTB = "i wonder what the judge will have to say",
        },
        YOTB_BEEFALO_DOLL_BEAST = {
            GENERIC = "what a sweet little doll!",
            YOTB = "i wonder what the judge will have to say",
        },


        WAR_BLUEPRINT = "how fearsome",
        DOLL_BLUEPRINT = "looking very cute",
        FESTIVE_BLUEPRINT = "in the spirit of the new year!",
        ROBOT_BLUEPRINT = "not sure how to sow this one",
        NATURE_BLUEPRINT = "o like flowers in spring!",
        FORMAL_BLUEPRINT = "a bit too formal for my taste",
        VICTORIAN_BLUEPRINT = "this is so frilly... its gonna take ages",
        ICE_BLUEPRINT = "its hard to work with cold hands",
        BEAST_BLUEPRINT = "lady luck will be on your side little beefalo",

        BEEF_BELL = "i love a good bell",
		
		 -- Moon Storm
        ALTERGUARDIAN_PHASE1 = {
            GENERIC = "shouldn't have messed with this",
            DEAD = "safe... for now",
        },
        ALTERGUARDIAN_PHASE2 = {
            GENERIC = "its angry...",
            DEAD = "please go away",
        },
        ALTERGUARDIAN_PHASE2SPIKE = "o no!!",
        ALTERGUARDIAN_PHASE3 = "o no o no o no!",
        ALTERGUARDIAN_PHASE3TRAP = "i dont trust it",
        ALTERGUARDIAN_PHASE3DEADORB = "im not sure its dead",
        ALTERGUARDIAN_PHASE3DEAD = "it is over",

        ALTERGUARDIANHAT = "no no dont like it",
        ALTERGUARDIANHATSHARD = "it still has a lot of power",

        MOONSTORM_GLASS = {
            GENERIC = "Elysium stuff",
            INFUSED = "it is charged up"
        },

        MOONSTORM_STATIC = "feels very fuzzy",
        MOONSTORM_STATIC_ITEM = "it crackles away",
        MOONSTORM_SPARK = "makes me feel weird",

        BIRD_MUTANT = "not much like a crow anymore",
        BIRD_MUTANT_SPITTER = "Elysium has changed this one",

        WAGSTAFF_NPC = "o hello sir",
        ALTERGUARDIAN_CONTAINED = "very weird...",

        WAGSTAFF_TOOL_1 = "hmm i hope this helps",
        WAGSTAFF_TOOL_2 = "science isnt my strong point",
        WAGSTAFF_TOOL_3 = "i think that scientist needs this",
        WAGSTAFF_TOOL_4 = "is this what we need?",
        WAGSTAFF_TOOL_5 = "did someone drop this?",

        MOONSTORM_GOGGLESHAT = "i like my sunglasses better",

        MOON_DEVICE = {
            GENERIC = "not sure what it does...",
            CONSTRUCTION1 = "this is... hard work...",
            CONSTRUCTION2 = "almost there",
        }
    },

    DESCRIBE_GENERIC = "im... not sure what that is",
    DESCRIBE_TOODARK = "o no, i actually need more light!",
    DESCRIBE_SMOLDERING = "o no, its catching",

    DESCRIBE_PLANTHAPPY = "i think its... happy?",
    DESCRIBE_PLANTVERYSTRESSED = "o no, it doesnt look good at all!",
    DESCRIBE_PLANTSTRESSED = "i think somethings bothering it... like a lot",
    DESCRIBE_PLANTSTRESSORKILLJOYS = "i think the weeds are bothering it",
    DESCRIBE_PLANTSTRESSORFAMILY = "o dear, its lonely",
    DESCRIBE_PLANTSTRESSOROVERCROWDING = "i think its claustrophobic...",
    DESCRIBE_PLANTSTRESSORSEASON = "hmm, it doesnt like the weather",
    DESCRIBE_PLANTSTRESSORMOISTURE = "o no... its so dry!",
    DESCRIBE_PLANTSTRESSORNUTRIENTS = "o i think its needs some plant food",
    DESCRIBE_PLANTSTRESSORHAPPINESS = "i dont know what it needs...",

    EAT_FOOD =
    {
        TALLBIRDEGG_CRACKED = "...crunchy ...",
		WINTERSFEASTFUEL = "how... festive",
    },
}