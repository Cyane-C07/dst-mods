--[[
	--- This is Wilson's speech file for Don't Starve Together ---
	Write your character's lines here.
	If you want to use another speech file as a base, or use a more up-to-date version, get them from data\databundles\scripts.zip\scripts\
	
	If you want to use quotation marks in a quote, put a \ before it.
	Example:
	"Like \"this\"."
]]
return {
	ACTIONFAIL =
	{
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
            REFUSE = "only_used_by_woodie",
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
        
        --warly specific action
		DISMANTLE =
		{
			COOKING = "only_used_by_warly",
			INUSE = "only_used_by_warly",
			NOTEMPTY = "only_used_by_warly",
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
        READ =
        {
            GENERIC = "only_used_by_wickerbottom",
            NOBIRDS = "only_used_by_wickerbottom"
        },

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
            SLOTFULL = "o i think thats full already",
            FOODFULL = "silly me, one meal at a time!",
            NOTDISH = "webber wouldnt even eat that",
            DUPLICATE = "i know that one!",
            NOTSCULPTABLE = "art doesnt work like that...",
            NOTATRIUMKEY = "its not quite the right shape",
            CANTSHADOWREVIVE = "this one remains...",
            WRONGSHADOWFORM = "its bones are all backwards, heh, i dont have bones",
            NOMOON = "moonlight is the only light i like!",
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

	ANNOUNCE_WEIGHT = "Weight: {weight}",
	ANNOUNCE_WEIGHT_HEAVY  = "Weight: {weight}\nthats pretty heavy!",

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
        BOOK_SLEEP = "only_used_by_wurt",
        BOOK_BIRDS = "only_used_by_wurt",
        BOOK_TENTACLES =  "only_used_by_wurt",
        BOOK_BRIMSTONE = "only_used_by_wurt",
        BOOK_GARDENING = "only_used_by_wurt",
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
        MULTIPLAYER_PORTAL_MOONROCK = "shiny and spikey!",
        MOONROCKIDOL = "i sure do like the moon",
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
            GENERIC = "good to see you %s",
            ATTACKER = "what happened to being a gentleman?!",
            MURDERER = "murderer!",
            REVIVER = "thankyou very much %s",
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
		WORMLIGHT_LESSER = "tiny light",
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
        MOONROCK_PIECES = "little pieces of the moon",
        MOONBASE =
        {
            GENERIC = "i think something fits in this altar",
            BROKEN = "o no, silly things all smashed",
            STAFFED = "its ready",
            WRONGSTAFF = "... i dont think this is right...",
            MOONSTAFF = "the moonlight is trapped!",
        },
        MOONDIAL = 
        {
			GENERIC = "the moon is so pretty in there",
			NIGHT_NEW = "the moon is dark",
			NIGHT_WAX = "the full moon is around the corner",
			NIGHT_FULL = "o thats one big moon!",
			NIGHT_WANE = "a new moon is on the way",
			CAVE = "simply no moon down here",
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
		NIGHTMARELIGHT = "feels like home heh",
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
        OPALSTAFF = "little moon maker, how pretty!",
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
            ON = "Science makes it light up.",
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
        TREASURECHEST_TRAP = "how convenient!",

        TURF_CARPETFLOOR = "fuzzy",
        TURF_CHECKERFLOOR = "this would look good under a crockpot",
        TURF_DIRT = "part of the earth",
        TURF_FOREST = "part of the earth",
        TURF_GRASS = "part of the earth",
        TURF_MARSH = "part of the earth",
        TURF_METEOR = "part of the moon",
        TURF_PEBBLEBEACH = "part of the beach",
        TURF_ROAD = "part of the earth",
        TURF_ROCKY = "part of the earth",
        TURF_SAVANNA = "part of the earth",
        TURF_WOODFLOOR = "just some floorboards",

		TURF_CAVE="part of the underground",
		TURF_FUNGUS="part of the underground",
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
        CHESSPIECE_BUTTERFLY = "i like this one",
        CHESSPIECE_ANCHOR = "not very useful...",
        CHESSPIECE_MOON = "o how beautiful!",
		CHESSPIECE_CARRAT = "It makes us feel content.",
        CHESSPIECE_MALBATROSS = "its much less scary like that",
        CHESSPIECE_CRABKING = "he had quite an attitude...",
        CHESSPIECE_TOADSTOOL = "it has returned to the stone it came from",
        CHESSPIECE_STALKER = "i am sorry friend",
        CHESSPIECE_KLAUS = "he looks better with those chains on",
        CHESSPIECE_BEEQUEEN = "shes much better like this...",
       
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
		CRITTER_LUNARMOTHLING = "a little moth from the moon",

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
			FRESHLIGHT = "o! bright light!",
			OLDLIGHT = "i think it needs new bulbs...", -- will be wilted soon, light radius will be very small at this point
		},
		DECIDUOUSTREE = 
		{
			BURNING = "What a waste of wood.",
			BURNT = "I feel like I could have prevented that.",
			CHOPPED = "Take that, nature!",
			POISON = "It looks unhappy about me stealing those birchnuts!",
			GENERIC = "It's all leafy. Most of the time.",
		},
		ACORN = "There's definitely something inside there.",
        ACORN_SAPLING = "It'll be a tree soon!",
		ACORN_COOKED = "Roasted to perfection.",
		BIRCHNUTDRAKE = "A mad little nut.",
		EVERGREEN =
		{
			BURNING = "What a waste of wood.",
			BURNT = "I feel like I could have prevented that.",
			CHOPPED = "Take that, nature!",
			GENERIC = "It's all piney.",
		},
		EVERGREEN_SPARSE =
		{
			BURNING = "What a waste of wood.",
			BURNT = "I feel like I could have prevented that.",
			CHOPPED = "Take that, nature!",
			GENERIC = "This sad tree has no cones.",
		},
		TWIGGYTREE = 
		{
			BURNING = "What a waste of wood.",
			BURNT = "I feel like I could have prevented that.",
			CHOPPED = "Take that, nature!",
			GENERIC = "It's all stick-y.",			
			DISEASED = "It looks sick. More so than usual.",
		},
		TWIGGY_NUT_SAPLING = "It doesn't need any help to grow.",
        TWIGGY_OLD = "That tree looks pretty wimpy.",
		TWIGGY_NUT = "There's a stick-y tree inside it that wants to get out.",
		EYEPLANT = "I think I'm being watched.",
		INSPECTSELF = "Am I still in one piece?",
		FARMPLOT =
		{
			GENERIC = "I should try planting some crops.",
			GROWING = "Go plants go!",
			NEEDSFERTILIZER = "I think it needs to be fertilized.",
			BURNT = "I don't think anything will grow in a pile of ash.",
		},
		FEATHERHAT = "BECOME THE BIRD!",
		FEATHER_CROW = "A feather from a black bird.",
		FEATHER_ROBIN = "A redbird feather.",
		FEATHER_ROBIN_WINTER = "A snowbird feather.",
		FEATHER_CANARY = "A canary feather.",
		FEATHERPENCIL = "The feather increases the scientific properties of the writing.",
		FEM_PUPPET = "She's trapped!",
		FIREFLIES =
		{
			GENERIC = "If only I could catch them!",
			HELD = "They make my pocket glow!",
		},
		FIREHOUND = "That one is glowy.",
		FIREPIT =
		{
			EMBERS = "I should put something on the fire before it goes out.",
			GENERIC = "Sure beats darkness.",
			HIGH = "Good thing it's contained!",
			LOW = "The fire's getting a bit low.",
			NORMAL = "Nice and comfy.",
			OUT = "At least I can start it up again.",
		},
		COLDFIREPIT =
		{
			EMBERS = "I should put something on the fire before it goes out.",
			GENERIC = "Sure beats darkness.",
			HIGH = "Good thing it's contained!",
			LOW = "The fire's getting a bit low.",
			NORMAL = "Nice and comfy.",
			OUT = "At least I can start it up again.",
		},
		FIRESTAFF = "I don't want to set the world on fire.",
		FIRESUPPRESSOR = 
		{	
			ON = "Fling on!",
			OFF = "All quiet on the flinging front.",
			LOWFUEL = "The fuel tank is getting a bit low.",
		},

		FISH = "Now I shall eat for a day.",
		FISHINGROD = "Hook, line and stick!",
		FISHSTICKS = "Sticks to your ribs.",
		FISHTACOS = "Crunchy and delicious!",
		FISH_COOKED = "Grilled to perfection.",
		FLINT = "It's a very sharp rock.",
		FLOWER = 
		{
            GENERIC = "It's pretty, but it smells like a common laborer.",
            ROSE = "To match my rosy cheeks.",
        },
        FLOWER_WITHERED = "I don't think it got enough sun.",
		FLOWERHAT = "It smells like prettiness.",
		FLOWER_EVIL = "Augh! It's so evil!",
		FOLIAGE = "Some leafy greens.",
		FOOTBALLHAT = "I don't like sports.",
        FOSSIL_PIECE = "Science bones! We should put them back together.",
        FOSSIL_STALKER =
        {
			GENERIC = "Still missing some pieces.",
			FUNNY = "My scientific instincts say this isn't quite right.",
			COMPLETE = "It's alive! Oh wait, no, it's not.",
        },
        STALKER = "The skeleton fused with the shadows!",
        STALKER_ATRIUM = "Why'd it have to be so big?",
        STALKER_MINION = "Anklebiters!",
        THURIBLE = "It smells like chemicals.",
        ATRIUM_OVERGROWTH = "I don't recognize any of these symbols.",
		FROG =
		{
			DEAD = "He's croaked.",
			GENERIC = "He's so cute!",
			SLEEPING = "Aww, look at him sleep!",
		},
		FROGGLEBUNWICH = "A very leggy sandwich.",
		FROGLEGS = "I've heard it's a delicacy.",
		FROGLEGS_COOKED = "Tastes like chicken.",
		FRUITMEDLEY = "Fruity.",
		FURTUFT = "Black and white fur.", 
		GEARS = "A pile of mechanical parts.",
		GHOST = "This offends me as a scientist.",
		GOLDENAXE = "That's one fancy axe.",
		GOLDENPICKAXE = "Hey, isn't gold really soft?",
		GOLDENPITCHFORK = "Why did I even make a pitchfork this fancy?",
		GOLDENSHOVEL = "I can't wait to dig holes.",
		GOLDNUGGET = "I can't eat it, but it sure is shiny.",
		GRASS =
		{
			BARREN = "It needs poop.",
			WITHERED = "It's not going to grow back while it's so hot.",
			BURNING = "That's burning fast!",
			GENERIC = "It's a tuft of grass.",
			PICKED = "It was cut down in the prime of its life.",
			DISEASED = "It looks pretty sick.",
			DISEASING = "Err, something's not right.",
		},
		GRASSGEKKO = 
		{
			GENERIC = "It's an extra leafy lizard.",	
			DISEASED = "It looks really sick.",
		},
		GREEN_CAP = "It seems pretty normal.",
		GREEN_CAP_COOKED = "It's different now...",
		GREEN_MUSHROOM =
		{
			GENERIC = "It's a mushroom.",
			INGROUND = "It's sleeping.",
			PICKED = "I wonder if it will come back?",
		},
		GUNPOWDER = "It looks like pepper.",
		HAMBAT = "This seems unsanitary.",
		HAMMER = "Stop! It's time! To hammer things!",
		HEALINGSALVE = "The stinging means that it's working.",
		HEATROCK =
		{
			FROZEN = "It's colder than ice.",
			COLD = "That's a cold stone.",
			GENERIC = "I could manipulate its temperature.",
			WARM = "It's quite warm and cuddly... for a rock!",
			HOT = "Nice and toasty hot!",
		},
		HOME = "Someone must live here.",
		HOMESIGN =
		{
			GENERIC = "It says \"You are here\".",
            UNWRITTEN = "The sign is currently blank.",
			BURNT = "\"Don't play with matches.\"",
		},
		ARROWSIGN_POST =
		{
			GENERIC = "It says \"Thataway\".",
            UNWRITTEN = "The sign is currently blank.",
			BURNT = "\"Don't play with matches.\"",
		},
		ARROWSIGN_PANEL =
		{
			GENERIC = "It says \"Thataway\".",
            UNWRITTEN = "The sign is currently blank.",
			BURNT = "\"Don't play with matches.\"",
		},
		HONEY = "Looks delicious!",
		HONEYCOMB = "Bees used to live in this.",
		HONEYHAM = "Sweet and savory.",
		HONEYNUGGETS = "Tastes like chicken, but I don't think it is.",
		HORN = "It sounds like a beefalo field in there.",
		HOUND = "You ain't nothing, hound dog!",
		HOUNDCORPSE =
		{
			GENERIC = "The smell is not the most pleasant.",
			BURNING = "I think we're safe now.",
			REVIVING = "Science save us!",
		},
		HOUNDBONE = "Creepy.",
		HOUNDMOUND = "I've got no bones to pick with the owner. Really.",
		ICEBOX = "I have harnessed the power of cold!",
		ICEHAT = "Stay cool, boy.",
		ICEHOUND = "Are there hounds for every season?",
		INSANITYROCK =
		{
			ACTIVE = "TAKE THAT, SANE SELF!",
			INACTIVE = "It's more of a pyramid than an obelisk.",
		},
		JAMMYPRESERVES = "Probably should have made a jar.",

		KABOBS = "Lunch on a stick.",
		KILLERBEE =
		{
			GENERIC = "Oh no! It's a killer bee!",
			HELD = "This seems dangerous.",
		},
		KNIGHT = "Check it out!",
		KOALEFANT_SUMMER = "Adorably delicious.",
		KOALEFANT_WINTER = "It looks warm and full of meat.",
		KRAMPUS = "He's going after my stuff!",
		KRAMPUS_SACK = "Ew. It has Krampus slime all over it.",
		LEIF = "He's huge!",
		LEIF_SPARSE = "He's huge!",
		LIGHTER  = "It's her lucky lighter.",
		LIGHTNING_ROD =
		{
			CHARGED = "The power is mine!",
			GENERIC = "To harness the heavens!",
		},
		LIGHTNINGGOAT = 
		{
			GENERIC = "\"Baaaah\" yourself!",
			CHARGED = "I don't think it liked being struck by lightning.",
		},
		LIGHTNINGGOATHORN = "It's like a miniature lightning rod.",
		GOATMILK = "It's buzzing with tastiness!",
		LITTLE_WALRUS = "He won't be cute and cuddly forever.",
		LIVINGLOG = "It looks worried.",
		LOG =
		{
			BURNING = "That's some hot wood!",
			GENERIC = "It's big, it's heavy, and it's wood.",
		},
		LUCY = "That's a prettier axe than I'm used to.",
		LUREPLANT = "It's so alluring.",
		LUREPLANTBULB = "Now I can start my very own meat farm.",
		MALE_PUPPET = "He's trapped!",

		MANDRAKE_ACTIVE = "Cut it out!",
		MANDRAKE_PLANTED = "I've heard strange things about those plants.",
		MANDRAKE = "Mandrake roots have strange properties.",

        MANDRAKESOUP = "Well, he won't be waking up again.",
        MANDRAKE_COOKED = "It doesn't seem so strange anymore.",
        MAPSCROLL = "A blank map. Doesn't seem very useful.",
        MARBLE = "Fancy!",
        MARBLEBEAN = "I traded the old family cow for it.",
        MARBLEBEAN_SAPLING = "It looks carved.",
        MARBLESHRUB = "Makes sense to me.",
        MARBLEPILLAR = "I think I could use that.",
        MARBLETREE = "I don't think an axe will cut it.",
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
            BURNING = "Spikes and fire!",
            BURNT = "Now it's burnt and spiky.",
            CHOPPED = "Not so spiky now!",
            GENERIC = "Those spikes look sharp!",
        },
        MAXWELL = "I hate that guy.",
        MAXWELLHEAD = "I can see into his pores.",
        MAXWELLLIGHT = "I wonder how they work.",
        MAXWELLLOCK = "Looks almost like a key hole.",
        MAXWELLTHRONE = "That doesn't look very comfortable.",
        MEAT = "It's a bit gamey, but it'll do.",
        MEATBALLS = "It's just a big wad of meat.",
        MEATRACK =
        {
            DONE = "Jerky time!",
            DRYING = "Meat takes a while to dry.",
            DRYINGINRAIN = "Meat takes even longer to dry in rain.",
            GENERIC = "I should dry some meats.",
            BURNT = "The rack got dried.",
            DONE_NOTMEAT = "In laboratory terms, we would call that \"dry\".",
            DRYING_NOTMEAT = "Drying things is not an exact science.",
            DRYINGINRAIN_NOTMEAT = "Rain, rain, go away. Be wet again another day.",
        },
        MEAT_DRIED = "Just jerky enough.",
        MERM = "Smells fishy!",
        MERMHEAD =
        {
            GENERIC = "The stinkiest thing I'll smell all day.",
            BURNT = "Burnt merm flesh somehow smells even worse.",
        },
        MERMHOUSE =
        {
            GENERIC = "Who would live here?",
            BURNT = "Nothing to live in, now.",
        },
        MINERHAT = "A hands-free way to brighten your day.",
        MONKEY = "Curious little guy.",
        MONKEYBARREL = "Did that just move?",
        MONSTERLASAGNA = "It's an affront to science.",
        FLOWERSALAD = "A bowl of foliage.",
        ICECREAM = "I scream for ice cream!",
        WATERMELONICLE = "Cryogenic watermelon.",
        TRAILMIX = "A healthy, natural snack.",
        HOTCHILI = "Five alarm!",
        GUACAMOLE = "Avogadro's favorite dish.",
        MONSTERMEAT = "Ugh. I don't think I should eat that.",
        MONSTERMEAT_DRIED = "Strange-smelling jerky.",
        MOOSE = "I don't exactly know what that thing is.",
        MOOSE_NESTING_GROUND = "It puts its babies there.",
        MOOSEEGG = "The babies are like excited electrons trying to escape.",
        MOSSLING = "Aaah! You are definitely not an electron!",
        FEATHERFAN = "Down, to bring the temperature down.",
        MINIFAN = "Somehow the breeze comes out the back twice as fast.",
        GOOSE_FEATHER = "Fluffy!",
        STAFF_TORNADO = "Spinning doom.",
        MOSQUITO =
        {
            GENERIC = "Disgusting little bloodsucker.",
            HELD = "Hey, is that my blood?",
        },
        MOSQUITOSACK = "It's probably someone else's blood...",
        MOUND =
        {
            DUG = "He probably deserved it.",
            GENERIC = "I bet there's all sorts of good stuff down there!",
        },
        NIGHTLIGHT = "It gives off a spooky light.",
        NIGHTMAREFUEL = "This stuff is crazy!",
        NIGHTSWORD = "Why would anyone make this? It's terrifying.",
        NITRE = "I'm not a geologist.",
        ONEMANBAND = "We should add a beefalo bell.",
        OASISLAKE =
		{
			GENERIC = "Is that a mirage?",
			EMPTY = "It's dry as a bone.",
		},
        PANDORASCHEST = "It may contain something fantastic! Or horrible.",
        PANFLUTE = "To serenade the animals.",
        PAPYRUS = "Some sheets of paper.",
        WAXPAPER = "Some sheets of wax paper.",
        PENGUIN = "Must be breeding season.",
        PERD = "Stupid bird! Stay away from those berries!",
        PEROGIES = "These turned out pretty good.",
        PETALS = "Sure showed those flowers who's boss!",
        PETALS_EVIL = "I'm not sure I want to hold those.",
        PHLEGM = "It's thick and pliable. And salty.",
        PICKAXE = "Iconic, isn't it?",
        PIGGYBACK = "This little piggy's gone... \"home\".",
        PIGHEAD =
        {
            GENERIC = "Looks like an offering to the beast.",
            BURNT = "Crispy.",
        },
        PIGHOUSE =
        {
            FULL = "I can see a snout pressed up against the window.",
            GENERIC = "These pigs have pretty fancy houses.",
            LIGHTSOUT = "Come ON! I know you're home!",
            BURNT = "Not so fancy now, pig!",
        },
        PIGKING = "Ewwww, he smells!",
        PIGMAN =
        {
            DEAD = "Someone should tell its family.",
            FOLLOWER = "You're part of my entourage.",
            GENERIC = "They kind of creep me out.",
            GUARD = "Looks serious.",
            WEREPIG = "Not a friendly pig!!",
        },
        PIGSKIN = "It still has the tail on it.",
        PIGTENT = "Smells like bacon.",
        PIGTORCH = "Sure looks cozy.",
        PINECONE = "I can hear a tiny tree inside it, trying to get out.",
        PINECONE_SAPLING = "It'll be a tree soon!",
        LUMPY_SAPLING = "How did this tree even reproduce?",
        PITCHFORK = "Now I just need an angry mob to join.",
        PLANTMEAT = "That doesn't look very appealing.",
        PLANTMEAT_COOKED = "At least it's warm now.",
        PLANT_NORMAL =
        {
            GENERIC = "Leafy!",
            GROWING = "Guh! It's growing so slowly!",
            READY = "Mmmm. Ready to harvest.",
            WITHERED = "The heat killed it.",
        },
        POMEGRANATE = "It looks like the inside of an alien's brain.",
        POMEGRANATE_COOKED = "Haute Cuisine!",
        POMEGRANATE_SEEDS = "It's a pome-whatsit seed.",
        POND = "I can't see the bottom!",
        POOP = "I should fill my pockets!",
        FERTILIZER = "That is definitely a bucket full of poop.",
        PUMPKIN = "It's as big as my head!",
        PUMPKINCOOKIE = "That's a pretty gourd cookie!",
        PUMPKIN_COOKED = "How did it not turn into a pie?",
        PUMPKIN_LANTERN = "Spooky!",
        PUMPKIN_SEEDS = "It's a pumpkin seed.",
        PURPLEAMULET = "It's whispering to me.",
        PURPLEGEM = "It contains the mysteries of the universe.",
        RABBIT =
        {
            GENERIC = "He's looking for carrots.",
            HELD = "Do you like science?",
        },
        RABBITHOLE =
        {
            GENERIC = "That must lead to the Kingdom of the Bunnymen.",
            SPRING = "The Kingdom of the Bunnymen is closed for the season.",
        },
        RAINOMETER =
        {
            GENERIC = "It measures cloudiness.",
            BURNT = "The measuring parts went up in a cloud of smoke.",
        },
        RAINCOAT = "Keeps the rain where it ought to be. Outside your body.",
        RAINHAT = "Messy hair... the terrible price of dryness.",
        RATATOUILLE = "An excellent source of fiber.",
        RAZOR = "A sharpened rock tied to a stick. For hygiene!",
        REDGEM = "It sparkles with inner warmth.",
        RED_CAP = "It smells funny.",
        RED_CAP_COOKED = "It's different now...",
        RED_MUSHROOM =
        {
            GENERIC = "It's a mushroom.",
            INGROUND = "It's sleeping.",
            PICKED = "I wonder if it will come back?",
        },
        REEDS =
        {
            BURNING = "That's really burning!",
            GENERIC = "It's a clump of reeds.",
            PICKED = "All the useful reeds have already been picked.",
        },
        RELIC = "Ancient household goods.",
        RUINS_RUBBLE = "This can be fixed.",
        RUBBLE = "Just bits and pieces of rock.",
        RESEARCHLAB =
        {
            GENERIC = "It breaks down objects into their scientific components.",
            BURNT = "It won't be doing much science now.",
        },
        RESEARCHLAB2 =
        {
            GENERIC = "It's even more science-y than the last one!",
            BURNT = "The extra science didn't keep it alive.",
        },
        RESEARCHLAB3 =
        {
            GENERIC = "What have I created?",
            BURNT = "Whatever it was, it's burnt now.",
        },
        RESEARCHLAB4 =
        {
            GENERIC = "Who would name something that?",
            BURNT = "Fire doesn't really solve naming issues...",
        },
        RESURRECTIONSTATUE =
        {
            GENERIC = "What a handsome devil!",
            BURNT = "Not much use anymore.",
        },
        RESURRECTIONSTONE = "It's always a good idea to touch base.",
        ROBIN =
        {
            GENERIC = "Does that mean winter is gone?",
            HELD = "He likes my pocket.",
        },
        ROBIN_WINTER =
        {
            GENERIC = "Life in the frozen wastes.",
            HELD = "It's so soft.",
        },
        ROBOT_PUPPET = "They're trapped!",
        ROCK_LIGHT =
        {
            GENERIC = "A crusted over lava pit.",
            OUT = "Looks fragile.",
            LOW = "The lava's crusting over.",
            NORMAL = "Nice and comfy.",
        },
        CAVEIN_BOULDER =
        {
            GENERIC = "I think I can lift this one.",
            RAISED = "It's out of reach.",
        },
        ROCK = "It wouldn't fit in my pocket.",
        PETRIFIED_TREE = "It looks scared stiff.",
        ROCK_PETRIFIED_TREE = "It looks scared stiff.",
        ROCK_PETRIFIED_TREE_OLD = "It looks scared stiff.",
        ROCK_ICE =
        {
            GENERIC = "Ice to meet you.",
            MELTED = "Won't be useful until it freezes again.",
        },
        ROCK_ICE_MELTED = "Won't be useful until it freezes again.",
        ICE = "Ice to meet you.",
        ROCKS = "We could make stuff with these.",
        ROOK = "Storm the castle!",
        ROPE = "Some short lengths of rope.",
        ROTTENEGG = "Ew! It stinks!",
        ROYAL_JELLY = "It infuses the eater with the power of science!",
        JELLYBEAN = "One part jelly, one part bean.",
        SADDLE_BASIC = "That'll allow the mounting of some smelly animal.",
        SADDLE_RACE = "This saddle really flies!",
        SADDLE_WAR = "The only problem is the saddle sores.",
        SADDLEHORN = "This could take a saddle off.",
        SALTLICK = "How many licks does it take to get to the center?",
        BRUSH = "I bet the beefalo really like this.",
		SANITYROCK =
		{
			ACTIVE = "That's a CRAZY looking rock!",
			INACTIVE = "Where did the rest of it go?",
		},
		SAPLING =
		{
			BURNING = "That's burning fast!",
			WITHERED = "It might be okay if it cooled down.",
			GENERIC = "Baby trees are so cute!",
			PICKED = "That'll teach him.",
			DISEASED = "It looks pretty sick.",
			DISEASING = "Err, something's not right.",
		},
   		SCARECROW = 
   		{
			GENERIC = "All dressed up and no where to crow.",
			BURNING = "Someone made that strawman eat crow.",
			BURNT = "Someone MURDERed that scarecrow!",
   		},
   		SCULPTINGTABLE=
   		{
			EMPTY = "We can make stone sculptures with this.",
			BLOCK = "Ready for sculpting.",
			SCULPTURE = "A masterpiece!",
			BURNT = "Burnt right down.",
   		},
        SCULPTURE_KNIGHTHEAD = "Where's the rest of it?",
		SCULPTURE_KNIGHTBODY = 
		{
			COVERED = "It's an odd marble statue.",
			UNCOVERED = "I guess he cracked under the pressure.",
			FINISHED = "At least it's back in one piece now.",
			READY = "Something's moving inside.",
		},
        SCULPTURE_BISHOPHEAD = "Is that a head?",
		SCULPTURE_BISHOPBODY = 
		{
			COVERED = "It looks old, but it feels new.",
			UNCOVERED = "There's a big piece missing.",
			FINISHED = "Now what?",
			READY = "Something's moving inside.",
		},
        SCULPTURE_ROOKNOSE = "Where did this come from?",
		SCULPTURE_ROOKBODY = 
		{
			COVERED = "It's some sort of marble statue.",
			UNCOVERED = "It's not in the best shape.",
			FINISHED = "All patched up.",
			READY = "Something's moving inside.",
		},
        GARGOYLE_HOUND = "I don't like how it's looking at me.",
        GARGOYLE_WEREPIG = "It looks very lifelike.",
		SEEDS = "Each one is a tiny mystery.",
		SEEDS_COOKED = "That cooked the life right out of 'em!",
		SEWING_KIT = "Darn it! Darn it all to heck!",
		SEWING_TAPE = "Good for mending.",
		SHOVEL = "There's a lot going on underground.",
		SILK = "It comes from a spider's butt.",
		SKELETON = "Better you than me.",
		SCORCHED_SKELETON = "Spooky.",
		SKULLCHEST = "I'm not sure if I want to open it.",
		SMALLBIRD =
		{
			GENERIC = "That's a rather small bird.",
			HUNGRY = "It looks hungry.",
			STARVING = "It must be starving.",
			SLEEPING = "It's barely making a peep.",
		},
		SMALLMEAT = "A tiny chunk of dead animal.",
		SMALLMEAT_DRIED = "A little jerky.",
		SPAT = "What a crusty looking animal.",
		SPEAR = "That's one pointy stick.",
		SPEAR_WATHGRITHR = "It feels very stabby.",
		WATHGRITHRHAT = "Pretty fancy hat, that.",
		SPIDER =
		{
			DEAD = "Ewwww!",
			GENERIC = "I hate spiders.",
			SLEEPING = "I'd better not be here when he wakes up.",
		},
		SPIDERDEN = "Sticky!",
		SPIDEREGGSACK = "I hope these don't hatch. Period.",
		SPIDERGLAND = "It has a tangy, antiseptic smell.",
		SPIDERHAT = "I hope I got all of the spider goo out of it.",
		SPIDERQUEEN = "AHHHHHHHH! That spider is huge!",
		SPIDER_WARRIOR =
		{
			DEAD = "Good riddance!",
			GENERIC = "Looks even meaner than usual.",
			SLEEPING = "I should keep my distance.",
		},
		SPOILED_FOOD = "It's a furry ball of rotten food.",
        STAGEHAND =
        {
			AWAKE = "Just keep your hand to yourself, alright?",
			HIDING = "Something's odd here, but I can't put my finger on it.",
        },
        STATUE_MARBLE = 
        {
            GENERIC = "It's a fancy marble statue.",
            TYPE1 = "Don't lose your head now!",
            TYPE2 = "Statuesque.",
            TYPE3 = "I wonder who the artist is.", --bird bath type statue
        },
		STATUEHARP = "What happened to the head?",
		STATUEMAXWELL = "He's a lot shorter in person.",
		STEELWOOL = "Scratchy metal fibers.",
		STINGER = "Looks sharp!",
		STRAWHAT = "Hats always ruin my hair.",
		STUFFEDEGGPLANT = "It's really stuffing!",
		SWEATERVEST = "This vest is dapper as all get-out.",
		REFLECTIVEVEST = "Keep off, evil sun!",
		HAWAIIANSHIRT = "It's not lab-safe!",
		TAFFY = "If I had a dentist they'd be mad I ate stuff like that.",
		TALLBIRD = "That's a tall bird!",
		TALLBIRDEGG = "Will it hatch?",
		TALLBIRDEGG_COOKED = "Delicious and nutritious.",
		TALLBIRDEGG_CRACKED =
		{
			COLD = "Is it shivering or am I?",
			GENERIC = "Looks like it's hatching!",
			HOT = "Are eggs supposed to sweat?",
			LONG = "I have a feeling this is going to take a while...",
			SHORT = "It should hatch any time now.",
		},
		TALLBIRDNEST =
		{
			GENERIC = "That's quite an egg!",
			PICKED = "The nest is empty.",
		},
		TEENBIRD =
		{
			GENERIC = "Not a very tall bird.",
			HUNGRY = "You need some food and quick, huh?",
			STARVING = "It has a dangerous look in its eye.",
			SLEEPING = "It's getting some shut-eye",
		},
		TELEPORTATO_BASE =
		{
			ACTIVE = "With this I can surely pass through space and time!",
			GENERIC = "This appears to be a nexus to another world!",
			LOCKED = "There's still something missing.",
			PARTIAL = "Soon, the invention will be complete!",
		},
		TELEPORTATO_BOX = "This may control the polarity of the whole universe.",
		TELEPORTATO_CRANK = "Tough enough to handle the most intense experiments.",
		TELEPORTATO_POTATO = "This metal potato contains great and fearful power...",
		TELEPORTATO_RING = "A ring that could focus dimensional energies.",
		TELESTAFF = "That could reveal the world.",
		TENT = 
		{
			GENERIC = "I get sort of crazy when I don't sleep.",
			BURNT = "Nothing left to sleep in.",
		},
		SIESTAHUT = 
		{
			GENERIC = "A nice place for an afternoon rest, safely out of the heat.",
			BURNT = "It won't provide much shade now.",
		},
		TENTACLE = "That looks dangerous.",
		TENTACLESPIKE = "It's pointy and slimy.",
		TENTACLESPOTS = "I think these were its genitalia.",
		TENTACLE_PILLAR = "A slimy pole.",
        TENTACLE_PILLAR_HOLE = "Seems stinky, but worth exploring.",
		TENTACLE_PILLAR_ARM = "Little slippery arms.",
		TENTACLE_GARDEN = "Yet another slimy pole.",
		TOPHAT = "What a nice hat.",
		TORCH = "Something to hold back the night.",
		TRANSISTOR = "It's whirring with electricity.",
		TRAP = "I wove it real tight.",
		TRAP_TEETH = "This is a nasty surprise.",
		TRAP_TEETH_MAXWELL = "I'll want to avoid stepping on that!",
		TREASURECHEST = 
		{
			GENERIC = "It's a tickle trunk!",
			BURNT = "That trunk was truncated.",
		},
		TREASURECHEST_TRAP = "How convenient!",
		SACRED_CHEST = 
		{
			GENERIC = "I hear whispers. It wants something.",
			LOCKED = "It's passing its judgment.",
		},
		TREECLUMP = "It's almost like someone is trying to prevent me from going somewhere.",
		
		TRINKET_1 = "Melted. Maybe Willow had some fun with them?", --Melted Marbles
		TRINKET_2 = "What's kazoo with you?", --Fake Kazoo
		TRINKET_3 = "The knot is stuck. Forever.", --Gord's Knot
		TRINKET_4 = "It must be some kind of religious artifact.", --Gnome
		TRINKET_5 = "Sadly it's too small for me to escape on.", --Toy Rocketship
		TRINKET_6 = "Their electricity carrying days are over.", --Frazzled Wires
		TRINKET_7 = "There's no time for fun and games!", --Ball and Cup
		TRINKET_8 = "Great. All of my tub stopping needs are met.", --Rubber Bung
		TRINKET_9 = "I'm more of a zipper person, myself.", --Mismatched Buttons
		TRINKET_10 = "They've quickly become Wes' favorite prop.", --Dentures
		TRINKET_11 = "Hal whispers beautiful lies to me.", --Lying Robot
		TRINKET_12 = "That's just asking to be experimented on.", --Dessicated Tentacle
		TRINKET_13 = "It must be some kind of religious artifact.", --Gnomette
		TRINKET_14 = "Now if I only had some tea...", --Leaky Teacup
		TRINKET_15 = "...Maxwell left his stuff out again.", --Pawn
		TRINKET_16 = "...Maxwell left his stuff out again.", --Pawn
		TRINKET_17 = "A horrifying utensil fusion. Maybe science *can* go too far.", --Bent Spork
		TRINKET_18 = "I wonder what it's hiding?", --Trojan Horse
		TRINKET_19 = "It doesn't spin very well.", --Unbalanced Top
		TRINKET_20 = "Wigfrid keeps jumping out and hitting me with it?!", --Backscratcher
		TRINKET_21 = "This egg beater is all bent out of shape.", --Egg Beater
		TRINKET_22 = "I have a few theories about this string.", --Frayed Yarn
		TRINKET_23 = "I can put my shoes on without help, thanks.", --Shoehorn
		TRINKET_24 = "I think Wickerbottom had a cat.", --Lucky Cat Jar
		TRINKET_25 = "It smells kind of stale.", --Air Unfreshener
		TRINKET_26 = "Food and a cup! The ultimate survival container.", --Potato Cup
		TRINKET_27 = "If you unwound it you could poke someone from really far away.", --Coat Hanger
		TRINKET_28 = "How Machiavellian.", --Rook
        TRINKET_29 = "How Machiavellian.", --Rook
        TRINKET_30 = "Honestly, he just leaves them out wherever.", --Knight
        TRINKET_31 = "Honestly, he just leaves them out wherever.", --Knight
        TRINKET_32 = "I know someone who'd have a ball with this!", --Cubic Zirconia Ball
        TRINKET_33 = "I hope this doesn't attract spiders.", --Spider Ring
        TRINKET_34 = "Let's make a wish. For science.", --Monkey Paw
        TRINKET_35 = "Hard to find a good flask around here.", --Empty Elixir
        TRINKET_36 = "I might need these after all that candy.", --Faux fangs
        TRINKET_37 = "I don't believe in the supernatural.", --Broken Stake
        TRINKET_38 = "I think it came from another world. One with grifts.", -- Binoculars Griftlands trinket
        TRINKET_39 = "I wonder where the other one is?", -- Lone Glove Griftlands trinket
        TRINKET_40 = "Holding it makes me feel like bartering.", -- Snail Scale Griftlands trinket
        TRINKET_41 = "It's a little warm to the touch.", -- Goop Canister Hot Lava trinket
        TRINKET_42 = "It's full of someone's childhood memories.", -- Toy Cobra Hot Lava trinket
        TRINKET_43= "It's not very good at jumping.", -- Crocodile Toy Hot Lava trinket
        TRINKET_44 = "It's some sort of plant specimen.", -- Broken Terrarium ONI trinket
        TRINKET_45 = "It's picking up frequencies from another world.", -- Odd Radio ONI trinket
        TRINKET_46 = "Maybe a tool for testing aerodynamics?", -- Hairdryer ONI trinket
        
        HALLOWEENCANDY_1 = "The cavities are probably worth it, right?",
        HALLOWEENCANDY_2 = "What corruption of science grew these?",
        HALLOWEENCANDY_3 = "It's... corn.",
        HALLOWEENCANDY_4 = "They wriggle on the way down.",
        HALLOWEENCANDY_5 = "My teeth are going to have something to say about this tomorrow.",
        HALLOWEENCANDY_6 = "I... don't think I'll be eating those.",
        HALLOWEENCANDY_7 = "Everyone'll be raisin' a fuss over these.",
        HALLOWEENCANDY_8 = "Only a sucker wouldn't love this.",
        HALLOWEENCANDY_9 = "Sticks to your teeth.",
        HALLOWEENCANDY_10 = "Only a sucker wouldn't love this.",
        HALLOWEENCANDY_11 = "Much better tasting than the real thing.",
        HALLOWEENCANDY_12 = "Did that candy just move?", --ONI meal lice candy
        HALLOWEENCANDY_13 = "Oh, my poor jaw.", --Griftlands themed candy
        HALLOWEENCANDY_14 = "I don't do well with spice.", --Hot Lava pepper candy
        CANDYBAG = "It's some sort of delicious pocket dimension for sugary treats.",

		HALLOWEEN_ORNAMENT_1 = "A spectornament I could hang in a tree.",
		HALLOWEEN_ORNAMENT_2 = "Completely batty decoration.",
		HALLOWEEN_ORNAMENT_3 = "This wood look good hanging somewhere.", 
		HALLOWEEN_ORNAMENT_4 = "Almost i-tentacle to the real ones.",
		HALLOWEEN_ORNAMENT_5 = "Eight-armed adornment.",
		HALLOWEEN_ORNAMENT_6 = "Everyone's raven about tree decorations these days.", 

		HALLOWEENPOTION_DRINKS_WEAK = "I was hoping for something bigger.",
		HALLOWEENPOTION_DRINKS_POTENT = "A potent potion.",
        HALLOWEENPOTION_BRAVERY = "Full of grit.",
		HALLOWEENPOTION_MOON = "Infused with transforming such-and-such.",
		HALLOWEENPOTION_FIRE_FX = "Crystallized inferno.", 
		MADSCIENCE_LAB = "Sanity is a small price to pay for science!",
		LIVINGTREE_ROOT = "Something's in there! I'll have to root it out.", 
		LIVINGTREE_SAPLING = "It'll grow up big and horrifying.",

        DRAGONHEADHAT = "So who gets to be the head?",
        DRAGONBODYHAT = "I'm middling on this middle piece.",
        DRAGONTAILHAT = "Someone has to bring up the rear.",
        PERDSHRINE =
        {
            GENERIC = "I feel like it wants something.",
            EMPTY = "I've got to plant something there.",
            BURNT = "That won't do at all.",
        },
        REDLANTERN = "This lantern feels more special than the others.",
        LUCKY_GOLDNUGGET = "What a lucky find!",
        FIRECRACKERS = "Filled with explosion science!",
        PERDFAN = "It's inordinately large.",
        REDPOUCH = "Is there something inside?",
        WARGSHRINE = 
        {
            GENERIC = "I should make something fun.",
            EMPTY = "I need to put a torch in it.",
            BURNING = "I should make something fun.", --for willow to override
            BURNT = "It burned down.",
        },
        CLAYWARG = 
        {
        	GENERIC = "A terror cotta monster!",
        	STATUE = "Did it just move?",
        },
        CLAYHOUND = 
        {
        	GENERIC = "It's been unleashed!",
        	STATUE = "It looks so real.",
        },
        HOUNDWHISTLE = "This'd stop a dog in its tracks.",
        CHESSPIECE_CLAYHOUND = "That thing's the leashed of my worries.",
        CHESSPIECE_CLAYWARG = "And I didn't even get eaten!",

		PIGSHRINE =
		{
            GENERIC = "More stuff to make.",
            EMPTY = "It's hungry for meat.",
            BURNT = "Burnt out.",
		},
		PIG_TOKEN = "This looks important.",
		PIG_COIN = "This'll pay off in a fight.",
		YOTP_FOOD1 = "A feast fit for me.",
		YOTP_FOOD2 = "A meal only a beast would love.",
		YOTP_FOOD3 = "Nothing fancy.",

		PIGELITE1 = "What are you looking at?", --BLUE
		PIGELITE2 = "He's got gold fever!", --RED
		PIGELITE3 = "Here's mud in your eye!", --WHITE
		PIGELITE4 = "Wouldn't you rather hit someone else?", --GREEN

		PIGELITEFIGHTER1 = "What are you looking at?", --BLUE
		PIGELITEFIGHTER2 = "He's got gold fever!", --RED
		PIGELITEFIGHTER3 = "Here's mud in your eye!", --WHITE
		PIGELITEFIGHTER4 = "Wouldn't you rather hit someone else?", --GREEN

		BISHOP_CHARGE_HIT = "Ow!",
		TRUNKVEST_SUMMER = "Wilderness casual.",
		TRUNKVEST_WINTER = "Winter survival gear.",
		TRUNK_COOKED = "Somehow even more nasal than before.",
		TRUNK_SUMMER = "A light breezy trunk.",
		TRUNK_WINTER = "A thick, hairy trunk.",
		TUMBLEWEED = "Who knows what that tumbleweed has picked up.",
		TURKEYDINNER = "Mmmm.",
		TWIGS = "It's a bunch of small twigs.",
		UMBRELLA = "I always hate when my hair gets wet and poofy.",
		GRASS_UMBRELLA = "My hair looks good wet... it's when it dries that's the problem.",
		UNIMPLEMENTED = "It doesn't look finished! It could be dangerous.",
		WAFFLES = "I'm waffling on whether it needs more syrup.",
		WALL_HAY = 
		{	
			GENERIC = "Hmmmm. I guess that'll have to do.",
			BURNT = "That won't do at all.",
		},
		WALL_HAY_ITEM = "This seems like a bad idea.",
		WALL_STONE = "That's a nice wall.",
		WALL_STONE_ITEM = "They make me feel so safe.",
		WALL_RUINS = "An ancient piece of wall.",
		WALL_RUINS_ITEM = "A solid piece of history.",
		WALL_WOOD = 
		{
			GENERIC = "Pointy!",
			BURNT = "Burnt!",
		},
		WALL_WOOD_ITEM = "Pickets!",
		WALL_MOONROCK = "Spacey and smooth!",
		WALL_MOONROCK_ITEM = "Very light, but surprisingly tough.",
		FENCE = "It's just a wood fence.",
        FENCE_ITEM = "All we need to build a nice, sturdy fence.",
        FENCE_GATE = "It opens. And closes sometimes, too.",
        FENCE_GATE_ITEM = "All we need to build a nice, sturdy gate.",
		WALRUS = "Walruses are natural predators.",
		WALRUSHAT = "It's covered with walrus hairs.",
		WALRUS_CAMP =
		{
			EMPTY = "Looks like somebody was camping here.",
			GENERIC = "It looks warm and cozy inside.",
		},
		WALRUS_TUSK = "I'm sure I'll find a use for it eventually.",
		WARDROBE = 
		{
			GENERIC = "It holds dark, forbidden secrets...",
            BURNING = "That's burning fast!",
			BURNT = "It's out of style now.",
		},
		WARG = "You might be something to reckon with, big dog.",
		WASPHIVE = "I think those bees are mad.",
		WATERBALLOON = "What a scientific marvel!",
		WATERMELON = "Sticky sweet.",
		WATERMELON_COOKED = "Juicy and warm.",
		WATERMELONHAT = "Let the juice run down your face.",
		WAXWELLJOURNAL = "Spooky.",
		WETGOOP = "It tastes like nothing.",
        WHIP = "Nothing like loud noises to help keep the peace.",
		WINTERHAT = "It'll be good for when winter comes.",
		WINTEROMETER = 
		{
			GENERIC = "Mercurial.",
			BURNT = "Its measuring days are over.",
		},

        WINTER_TREE =
        {
            BURNT = "That puts a damper on the festivities.",
            BURNING = "That was a mistake, I think.",
            CANDECORATE = "Happy Winter's Feast!",
            YOUNG = "It's almost Winter's Feast!",
        },
		WINTER_TREESTAND = 
		{
			GENERIC = "I need a pine cone for that.",
            BURNT = "That puts a damper on the festivities.",
		},
        WINTER_ORNAMENT = "Every scientist appreciates a good bauble.",
        WINTER_ORNAMENTLIGHT = "A tree's not complete without some electricity.",
        WINTER_ORNAMENTBOSS = "This one is especially impressive.",
		WINTER_ORNAMENTFORGE = "I should hang this one over a fire.",
		WINTER_ORNAMENTGORGE = "For some reason it makes me hungry.",

        WINTER_FOOD1 = "The anatomy's not right, but I'll overlook it.", --gingerbread cookie
        WINTER_FOOD2 = "I'm going to eat forty. For science.", --sugar cookie
        WINTER_FOOD3 = "A Yuletide toothache waiting to happen.", --candy cane
        WINTER_FOOD4 = "That experiment may have been a tiny bit unethical.", --fruitcake
        WINTER_FOOD5 = "It's nice to eat something other than berries for once.", --yule log cake
        WINTER_FOOD6 = "I'm puddin' that straight in my mouth!", --plum pudding
        WINTER_FOOD7 = "It's a hollowed apple filled with yummy juice.", --apple cider
        WINTER_FOOD8 = "How does it stay warm? A thermodynamical mug?", --hot cocoa
        WINTER_FOOD9 = "Can science explain why it tastes so good?", --eggnog

        KLAUS = "What on earth is that thing!",
        KLAUS_SACK = "We should definitely open that.",
		KLAUSSACKKEY = "It's really fancy for a deer antler.",
		WORMHOLE =
		{
			GENERIC = "Soft and undulating.",
			OPEN = "Science compels me to jump in.",
		},
		WORMHOLE_LIMITED = "Guh, that thing looks worse off than usual.",
		ACCOMPLISHMENT_SHRINE = "I want to use it, and I want the world to know that I did.",        
		LIVINGTREE = "Is it watching me?",
		ICESTAFF = "It's cold to the touch.",
		REVIVER = "The beating of this hideous heart will bring a ghost back to life!",
		SHADOWHEART = "The power of science must have reanimated it...",
        ATRIUM_RUBBLE = 
        {
			LINE_1 = "It depicts an old civilization. The people look hungry and scared.",
			LINE_2 = "This tablet is too worn to make out.",
			LINE_3 = "Something dark creeps over the city and its people.",
			LINE_4 = "The people are shedding their skins. They look different underneath.",
			LINE_5 = "It shows a massive, technologically advanced city.",
		},
        ATRIUM_STATUE = "It doesn't seem fully real.",
        ATRIUM_LIGHT = 
        {
			ON = "A truly unsettling light.",
			OFF = "Something must power it.",
		},
        ATRIUM_GATE =
        {
			ON = "Back in working order.",
			OFF = "The essential components are still intact.",
			CHARGING = "It's gaining power.",
			DESTABILIZING = "The gateway is destabilizing.",
			COOLDOWN = "It needs time to recover. Me too.",
        },
        ATRIUM_KEY = "There is power emanating from it.",
		LIFEINJECTOR = "A scientific breakthrough! The cure!",
		SKELETON_PLAYER =
		{
			MALE = "%s must've died performing an experiment with %s.",
			FEMALE = "%s must've died performing an experiment with %s.",
			ROBOT = "%s must've died performing an experiment with %s.",
			DEFAULT = "%s must've died performing an experiment with %s.",
		},
		HUMANMEAT = "Flesh is flesh. Where do I draw the line?",
		HUMANMEAT_COOKED = "Cooked nice and pink, but still morally gray.",
		HUMANMEAT_DRIED = "Letting it dry makes it not come from a human, right?",
		ROCK_MOON = "That rock came from the moon.",
		MOONROCKNUGGET = "That rock came from the moon.",
		MOONROCKCRATER = "I should stick something shiny in it. For research.",
		MOONROCKSEED = "There's science inside!",

        REDMOONEYE = "It can see and be seen for miles!",
        PURPLEMOONEYE = "Makes a good marker, but I wish it'd stop looking at me.",
        GREENMOONEYE = "That'll keep a watchful eye on the place.",
        ORANGEMOONEYE = "No one could get lost with that thing looking out for them.",
        YELLOWMOONEYE = "That ought to show everyone the way.",
        BLUEMOONEYE = "It's always smart to keep an eye out.",

        --Arena Event
        LAVAARENA_BOARLORD = "That's the guy in charge here.",
        BOARRIOR = "You sure are big!",
        BOARON = "I can take him!",
        PEGHOOK = "That spit is corrosive!",
        TRAILS = "He's got a strong arm on him.",
        TURTILLUS = "Its shell is so spiky!",
        SNAPPER = "This one's got bite.",
		RHINODRILL = "He's got a nose for this kind of work.",
		BEETLETAUR = "I can smell him from here!",

        LAVAARENA_PORTAL = 
        {
            ON = "I'll just be going now.",
            GENERIC = "That's how we got here. Hopefully how we get back, too.",
        },
        LAVAARENA_KEYHOLE = "It needs a key.",
		LAVAARENA_KEYHOLE_FULL = "That should do it.",
        LAVAARENA_BATTLESTANDARD = "Everyone, break the Battle Standard!",
        LAVAARENA_SPAWNER = "This is where those enemies are coming from.",

        HEALINGSTAFF = "It conducts regenerative energy.",
        FIREBALLSTAFF = "It calls a meteor from above.",
        HAMMER_MJOLNIR = "It's a heavy hammer for hitting things.",
        SPEAR_GUNGNIR = "I could do a quick charge with that.",
        BLOWDART_LAVA = "That's a weapon I could use from range.",
        BLOWDART_LAVA2 = "It uses a strong blast of air to propel a projectile.",
        LAVAARENA_LUCY = "That weapon's for throwing.",
        WEBBER_SPIDER_MINION = "I guess they're fighting for us.",
        BOOK_FOSSIL = "This'll keep those monsters held for a little while.",
		LAVAARENA_BERNIE = "He might make a good distraction for us.",
		SPEAR_LANCE = "It gets to the point.",
		BOOK_ELEMENTAL = "I can't make out the text.",
		LAVAARENA_ELEMENTAL = "It's a rock monster!",

   		LAVAARENA_ARMORLIGHT = "Light, but not very durable.",
		LAVAARENA_ARMORLIGHTSPEED = "Lightweight and designed for mobility.",
		LAVAARENA_ARMORMEDIUM = "It offers a decent amount of protection.",
		LAVAARENA_ARMORMEDIUMDAMAGER = "That could help me hit a little harder.",
		LAVAARENA_ARMORMEDIUMRECHARGER = "I'd have energy for a few more stunts wearing that.",
		LAVAARENA_ARMORHEAVY = "That's as good as it gets.",
		LAVAARENA_ARMOREXTRAHEAVY = "This armor has been petrified for maximum protection.",

		LAVAARENA_FEATHERCROWNHAT = "Those fluffy feathers make me want to run!",
        LAVAARENA_HEALINGFLOWERHAT = "The blossom interacts well with healing magic.",
        LAVAARENA_LIGHTDAMAGERHAT = "My strikes would hurt a little more wearing that.",
        LAVAARENA_STRONGDAMAGERHAT = "It looks like it packs a wallop.",
        LAVAARENA_TIARAFLOWERPETALSHAT = "Looks like it amplifies healing expertise.",
        LAVAARENA_EYECIRCLETHAT = "It has a gaze full of science.",
        LAVAARENA_RECHARGERHAT = "Those crystals will quickened my abilities.",
        LAVAARENA_HEALINGGARLANDHAT = "This garland will restore a bit of my vitality.",
        LAVAARENA_CROWNDAMAGERHAT = "That could cause some major destruction.",

		LAVAARENA_ARMOR_HP = "That should keep me safe.",

		LAVAARENA_FIREBOMB = "It smells like brimstone.",
		LAVAARENA_HEAVYBLADE = "A sharp looking instrument.",

        --Quagmire
        QUAGMIRE_ALTAR = 
        {
        	GENERIC = "We'd better start cooking some offerings.",
        	FULL = "It's in the process of digestinating.",
    	},
		QUAGMIRE_ALTAR_STATUE1 = "It's an old statue.",
		QUAGMIRE_PARK_FOUNTAIN = "Been a long time since it was hooked up to water.",
		
        QUAGMIRE_HOE = "It's a farming instrument.",
        
        QUAGMIRE_TURNIP = "It's a raw turnip.",
        QUAGMIRE_TURNIP_COOKED = "Cooking is science in practice.",
        QUAGMIRE_TURNIP_SEEDS = "A handful of odd seeds.",
        
        QUAGMIRE_GARLIC = "The number one breath enhancer.",
        QUAGMIRE_GARLIC_COOKED = "Perfectly browned.",
        QUAGMIRE_GARLIC_SEEDS = "A handful of odd seeds.",
        
        QUAGMIRE_ONION = "Looks crunchy.",
        QUAGMIRE_ONION_COOKED = "A successful chemical reaction.",
        QUAGMIRE_ONION_SEEDS = "A handful of odd seeds.",
        
        QUAGMIRE_POTATO = "The apples of the earth.",
        QUAGMIRE_POTATO_COOKED = "A successful temperature experiment.",
        QUAGMIRE_POTATO_SEEDS = "A handful of odd seeds.",
        
        QUAGMIRE_TOMATO = "It's red because it's full of science.",
        QUAGMIRE_TOMATO_COOKED = "Cooking's easy if you understand chemistry.",
        QUAGMIRE_TOMATO_SEEDS = "A handful of odd seeds.",
        
        QUAGMIRE_FLOUR = "Ready for baking.",
        QUAGMIRE_WHEAT = "It looks a bit grainy.",
        QUAGMIRE_WHEAT_SEEDS = "A handful of odd seeds.",
        --NOTE: raw/cooked carrot uses regular carrot strings
        QUAGMIRE_CARROT_SEEDS = "A handful of odd seeds.",
        
        QUAGMIRE_ROTTEN_CROP = "I don't think the altar will want that.",
        
		QUAGMIRE_SALMON = "Mm, fresh fish.",
		QUAGMIRE_SALMON_COOKED = "Ready for the dinner table.",
		QUAGMIRE_CRABMEAT = "No imitations here.",
		QUAGMIRE_CRABMEAT_COOKED = "I can put a meal together in a pinch.",
        QUAGMIRE_POT = "This one holds more ingredients.",
        QUAGMIRE_POT_SMALL = "Let's get cooking!",
        QUAGMIRE_POT_HANGER_ITEM = "For suspension-based cookery.",
		QUAGMIRE_SUGARWOODTREE = 
		{
			GENERIC = "It's full of delicious, delicious sap.",
			STUMP = "Where'd the tree go? I'm stumped.",
			TAPPED_EMPTY = "Here sappy, sappy, sap.",
			TAPPED_READY = "Sweet golden sap.",
			TAPPED_BUGS = "That's how you get ants.",
			WOUNDED = "It looks ill.",
		},
		QUAGMIRE_SPOTSPICE_SHRUB = 
		{
			GENERIC = "It reminds me of those tentacle monsters.",
			PICKED = "I can't get anymore out of that shrub.",
		},
		QUAGMIRE_SPOTSPICE_SPRIG = "I could grind it up to make a spice.",
		QUAGMIRE_SPOTSPICE_GROUND = "Flavorful.",
		QUAGMIRE_SAPBUCKET = "We can use it to gather sap from the trees.",
		QUAGMIRE_SAP = "It tastes sweet.",
		QUAGMIRE_SALT_RACK =
		{
			READY = "Salt has gathered on the rope.",
			GENERIC = "Science takes time.",
		},
		
		QUAGMIRE_POND_SALT = "A little salty spring.",
		QUAGMIRE_SALT_RACK_ITEM = "For harvesting salt from the pond.",

		QUAGMIRE_SAFE = 
		{
			GENERIC = "It's a safe. For keeping things safe.",
			LOCKED = "It won't open without the key.",
		},

		QUAGMIRE_KEY = "Safe bet this'll come in handy.",
		QUAGMIRE_KEY_PARK = "I'll park it in my pocket until I get to the park.",
        QUAGMIRE_PORTAL_KEY = "This looks science-y.",

		
		QUAGMIRE_MUSHROOMSTUMP =
		{
			GENERIC = "Are those mushrooms? I'm stumped.",
			PICKED = "I don't think it's growing back.",
		},
		QUAGMIRE_MUSHROOMS = "These are edible mushrooms.",
        QUAGMIRE_MEALINGSTONE = "The daily grind.",
		QUAGMIRE_PEBBLECRAB = "That rock's alive!",

		
		QUAGMIRE_RUBBLE_CARRIAGE = "On the road to nowhere.",
        QUAGMIRE_RUBBLE_CLOCK = "Someone beat the clock. Literally.",
        QUAGMIRE_RUBBLE_CATHEDRAL = "Preyed upon.",
        QUAGMIRE_RUBBLE_PUBDOOR = "No longer a-door-able.",
        QUAGMIRE_RUBBLE_ROOF = "Someone hit the roof.",
        QUAGMIRE_RUBBLE_CLOCKTOWER = "That clock's been punched.",
        QUAGMIRE_RUBBLE_BIKE = "Must have mis-spoke.",
        QUAGMIRE_RUBBLE_HOUSE =
        {
            "No one's here.",
            "Something destroyed this town.",
            "I wonder who they angered.",
        },
        QUAGMIRE_RUBBLE_CHIMNEY = "Something put a damper on that chimney.",
        QUAGMIRE_RUBBLE_CHIMNEY2 = "Something put a damper on that chimney.",
        QUAGMIRE_MERMHOUSE = "What an ugly little house.",
        QUAGMIRE_SWAMPIG_HOUSE = "It's seen better days.",
        QUAGMIRE_SWAMPIG_HOUSE_RUBBLE = "Some pig's house was ruined.",
        QUAGMIRE_SWAMPIGELDER =
        {
            GENERIC = "I guess you're in charge around here?",
            SLEEPING = "It's sleeping, for now.",
        },
        QUAGMIRE_SWAMPIG = "It's a super hairy pig.",
        
        QUAGMIRE_PORTAL = "Another dead end.",
        QUAGMIRE_SALTROCK = "Salt. The tastiest mineral.",
        QUAGMIRE_SALT = "It's full of salt.",
        --food--
        QUAGMIRE_FOOD_BURNT = "That one was an experiment.",
        QUAGMIRE_FOOD =
        {
        	GENERIC = "I should offer it on the Altar of Gnaw.",
            MISMATCH = "That's not what it wants.",
            MATCH = "Science says this will appease the sky God.",
            MATCH_BUT_SNACK = "It's more of a light snack, really.",
        },
        
        QUAGMIRE_FERN = "Probably chock full of vitamins.",
        QUAGMIRE_FOLIAGE_COOKED = "We cooked the foliage.",
        QUAGMIRE_COIN1 = "I'd like more than a penny for my thoughts.",
        QUAGMIRE_COIN2 = "A decent amount of coin.",
        QUAGMIRE_COIN3 = "Seems valuable.",
        QUAGMIRE_COIN4 = "We can use these to reopen the Gateway.",
        QUAGMIRE_GOATMILK = "Good if you don't think about where it came from.",
        QUAGMIRE_SYRUP = "Adds sweetness to the mixture.",
        QUAGMIRE_SAP_SPOILED = "Might as well toss it on the fire.",
        QUAGMIRE_SEEDPACKET = "Sow what?",
        
        QUAGMIRE_POT = "This pot holds more ingredients.",
        QUAGMIRE_POT_SMALL = "Let's get cooking!",
        QUAGMIRE_POT_SYRUP = "I need to sweeten this pot.",
        QUAGMIRE_POT_HANGER = "It has hang-ups.",
        QUAGMIRE_POT_HANGER_ITEM = "For suspension-based cookery.",
        QUAGMIRE_GRILL = "Now all I need is a backyard to put it in.",
        QUAGMIRE_GRILL_ITEM = "I'll have to grill someone about this.",
        QUAGMIRE_GRILL_SMALL = "Barbecurious.",
        QUAGMIRE_GRILL_SMALL_ITEM = "For grilling small meats.",
        QUAGMIRE_OVEN = "It needs ingredients to make the science work.",
        QUAGMIRE_OVEN_ITEM = "For scientifically burning things.",
        QUAGMIRE_CASSEROLEDISH = "A dish for all seasonings.",
        QUAGMIRE_CASSEROLEDISH_SMALL = "For making minuscule motleys.",
        QUAGMIRE_PLATE_SILVER = "A silver plated plate.",
        QUAGMIRE_BOWL_SILVER = "A bright bowl.",
        QUAGMIRE_CRATE = "Kitchen stuff.",
        
        QUAGMIRE_MERM_CART1 = "Any science in there?", --sammy's wagon
        QUAGMIRE_MERM_CART2 = "I could use some stuff.", --pipton's cart
        QUAGMIRE_PARK_ANGEL = "Take that, creature!",
        QUAGMIRE_PARK_ANGEL2 = "So lifelike.",
        QUAGMIRE_PARK_URN = "Ashes to ashes.",
        QUAGMIRE_PARK_OBELISK = "A monumental monument.",
        QUAGMIRE_PARK_GATE =
        {
            GENERIC = "Turns out a key was the key to getting in.",
            LOCKED = "Locked tight.",
        },
        QUAGMIRE_PARKSPIKE = "The scientific term is: \"Sharp pointy thing\".",
        QUAGMIRE_CRABTRAP = "A crabby trap.",
        QUAGMIRE_TRADER_MERM = "Maybe they'd be willing to trade.",
        QUAGMIRE_TRADER_MERM2 = "Maybe they'd be willing to trade.",
        
        QUAGMIRE_GOATMUM = "Reminds me of my old nanny.",
        QUAGMIRE_GOATKID = "This goat's much smaller.",
        QUAGMIRE_PIGEON =
        {
            DEAD = "They're dead.",
            GENERIC = "He's just winging it.",
            SLEEPING = "It's sleeping, for now.",
        },
        QUAGMIRE_LAMP_POST = "Huh. Reminds me of home.",

        QUAGMIRE_BEEFALO = "Science says it should have died by now.",
        QUAGMIRE_SLAUGHTERTOOL = "Laboratory tools for surgical butchery.",

        QUAGMIRE_SAPLING = "I can't get anything else out of that.",
        QUAGMIRE_BERRYBUSH = "Those berries are all gone.",

        QUAGMIRE_ALTAR_STATUE2 = "What are you looking at?",
        QUAGMIRE_ALTAR_QUEEN = "A monumental monument.",
        QUAGMIRE_ALTAR_BOLLARD = "As far as posts go, this one is adequate.",
        QUAGMIRE_ALTAR_IVY = "Kind of clingy.",

        QUAGMIRE_LAMP_SHORT = "Enlightening.",

        --v2 Winona
        WINONA_CATAPULT = 
        {
        	GENERIC = "She's made a sort of automatic defense system.",
        	OFF = "It needs some electricity.",
        	BURNING = "It's on fire!",
        	BURNT = "Science couldn't save it.",
        },
        WINONA_SPOTLIGHT = 
        {
        	GENERIC = "What an ingenious idea!",
        	OFF = "It needs some electricity.",
        	BURNING = "It's on fire!",
        	BURNT = "Science couldn't save it.",
        },
        WINONA_BATTERY_LOW = 
        {
        	GENERIC = "Looks science-y. How does it work?",
        	LOWPOWER = "It's getting low on power.",
        	OFF = "I could get it working, if Winona's busy.",
        	BURNING = "It's on fire!",
        	BURNT = "Science couldn't save it.",
        },
        WINONA_BATTERY_HIGH = 
        {
        	GENERIC = "Hey! That's not science!",
        	LOWPOWER = "It'll turn off soon.",
        	OFF = "Science beats magic, every time.",
        	BURNING = "It's on fire!",
        	BURNT = "Science couldn't save it.",
        },

        --Wormwood
        COMPOSTWRAP = "Wormwood offered me a bite, but I respectfully declined.",
        ARMOR_BRAMBLE = "The best offense is a good defense.",
        TRAP_BRAMBLE = "It'd really poke whoever stepped on it.",

        BOATFRAGMENT03 = "Not much left of it.",
        BOATFRAGMENT04 = "Not much left of it.",
        BOATFRAGMENT05 = "Not much left of it.",
		BOAT_LEAK = "I should patch that up before we sink.",
        MAST = "Avast! A mast!",
        SEASTACK = "It's a rock.",
        FISHINGNET = "Nothing but net.",
        ANTCHOVIES = "Yeesh. Can I toss it back?",
        STEERINGWHEEL = "I could have been a sailor in another life.",
        ANCHOR = "I wouldn't want my boat to float away.",
        BOATPATCH = "Just in case of disaster.",
        DRIFTWOOD_TREE = 
        {
            BURNING = "That driftwood's burning!",
            BURNT = "Doesn't look very useful anymore.",
            CHOPPED = "There might still be something worth digging up.",
            GENERIC = "A dead tree that washed up on shore.",
        },

        DRIFTWOOD_LOG = "It floats on water.",

        MOON_TREE = 
        {
            BURNING = "The tree is burning!",
            BURNT = "The tree burned down.",
            CHOPPED = "That was a pretty thick tree.",
            GENERIC = "I didn't know trees grew on the moon.",
        },
		MOON_TREE_BLOSSOM = "It fell from the moon tree.",

        MOONBUTTERFLY = 
        {
        	GENERIC = "My vast scientific knowledge tells me it's... a moon butterfly.",
        	HELD = "I've got you now.",
        },
		MOONBUTTERFLYWINGS = "We're really winging it now.",
        MOONBUTTERFLY_SAPLING = "A moth turned into a tree? Lunacy!",
        ROCK_AVOCADO_FRUIT = "I'd shatter my teeth on that.",
        ROCK_AVOCADO_FRUIT_RIPE = "Uncooked stone fruit is the pits.",
        ROCK_AVOCADO_FRUIT_RIPE_COOKED = "It's actually soft enough to eat now.",
        ROCK_AVOCADO_FRUIT_SPROUT = "It's growing.",
        ROCK_AVOCADO_BUSH = 
        {
        	BARREN = "Its fruit growing days are over.",
			WITHERED = "It's pretty hot out.",
			GENERIC = "It's a bush... from the moon!",
			PICKED = "It'll take awhile to grow more fruit.",
			DISEASED = "It looks pretty sick.",
            DISEASING = "Err, something's not right.",
			BURNING = "It's burning!",
		},
        DEAD_SEA_BONES = "That's what they get for coming up on land.",
        HOTSPRING = 
        {
        	GENERIC = "If only I could soak my weary bones.",
        	BOMBED = "Just a simple chemical reaction.",
        	GLASS = "Water turns to glass under the moon. That's just science.",
			EMPTY = "I'll just have to wait for it to fill up again.",
        },
        MOONGLASS = "It's very sharp.",
        MOONGLASS_ROCK = "I can practically see my reflection in it.",
        BATHBOMB = "It's just textbook chemistry.",
        TRAP_STARFISH =
        {
            GENERIC = "Aw, what a cute little starfish!",
            CLOSED = "It tried to chomp me!",
        },
        DUG_TRAP_STARFISH = "It's not fooling anyone now.",
        SPIDER_MOON = 
        {
        	GENERIC = "Oh good. The moon mutated it.",
        	SLEEPING = "Thank science, it stopped moving.",
        	DEAD = "Is it really dead?",
        },
        MOONSPIDERDEN = "That's not a normal spider den.",
		FRUITDRAGON =
		{
			GENERIC = "It's cute, but it's not ripe yet.",
			RIPE = "I think it's ripe now.",
			SLEEPING = "It's snoozing.",
		},
        PUFFIN =
        {
            GENERIC = "I've never seen a live puffin before!",
            HELD = "Catching one ain't puffin to brag about.",
            SLEEPING = "Peacefully huffin' and puffin'.",
        },

		MOONGLASSAXE = "I've made it extra effective.",
		GLASSCUTTER = "I'm not really cut out for fighting.",

        ICEBERG =
        {
            GENERIC = "Let's steer clear of that.",
            MELTED = "It's completely melted.",
        },
        ICEBERG_MELTED = "It's completely melted.",

        MINIFLARE = "I can light it to let everyone know I'm here.",

		MOON_FISSURE = 
		{
			GENERIC = "My brain pulses with peace and terror.", 
			NOLIGHT = "The cracks in this place are starting to show.",
		},
        MOON_ALTAR =
        {
            MOON_ALTAR_WIP = "It wants to be finished.",
            GENERIC = "Hm? What did you say?",
        },

        MOON_ALTAR_IDOL = "I feel compelled to carry it somewhere.",
        MOON_ALTAR_GLASS = "It doesn't want to be on the ground.",
        MOON_ALTAR_SEED = "It wants me to give it a home.",

        MOON_ALTAR_ROCK_IDOL = "There's something trapped inside.",
        MOON_ALTAR_ROCK_GLASS = "There's something trapped inside.",
        MOON_ALTAR_ROCK_SEED = "There's something trapped inside.",

        SEAFARING_PROTOTYPER =
        {
            GENERIC = "I think tanks are in order.",
            BURNT = "The science has been lost to sea.",
        },
        BOAT_ITEM = "It would be nice to do some experiments on the water.",
        STEERINGWHEEL_ITEM = "That's going to be the steering wheel.",
        ANCHOR_ITEM = "Now I can build an anchor.",
        MAST_ITEM = "Now I can build a mast.",
        MUTATEDHOUND = 
        {
        	DEAD = "Now I can breathe easy.",
        	GENERIC = "Science save us!",
        	SLEEPING = "I have a very strong desire to run.",
        },

        MUTATED_PENGUIN = 
        {
			DEAD = "That's the end of that.",
			GENERIC = "That thing's terrifying!",
			SLEEPING = "Thank goodness. It's sleeping.",
		},
        CARRAT = 
        {
        	DEAD = "That's the end of that.",
        	GENERIC = "Are carrots supposed to have legs?",
        	HELD = "You're kind of ugly up close.",
        	SLEEPING = "It's almost cute.",
        },

		BULLKELP_PLANT = 
        {
            GENERIC = "Welp. It's kelp.",
            PICKED = "I just couldn't kelp myself.",
        },
		BULLKELP_ROOT = "I can plant it in deep water.",
        KELPHAT = "Sometimes you have to feel worse to feel better.",
		KELP = "It gets my pockets all wet and gross.",
		KELP_COOKED = "It's closer to a liquid than a solid.",
		KELP_DRIED = "The sodium content's kinda high.",

		GESTALT = "They're promising me... knowledge.",

		COOKIECUTTER = "I don't like the way it's looking at my boat...",
		COOKIECUTTERSHELL = "A shell of its former self.",
		COOKIECUTTERHAT = "At least my hair will stay dry.",
		SALTSTACK =
		{
			GENERIC = "Are those natural formations?",
			MINED_OUT = "It's mined... it's all mined!",
			GROWING = "I guess it just grows like that.",
		},
		SALTROCK = "Science compels me to lick it.",
		SALTBOX = "Just the cure for spoiling food!",

        MALBATROSS = "A fowl beast indeed!",
        MALBATROSS_FEATHER = "Plucked from a fine feathered fiend.",
        MALBATROSS_BEAK = "Smells fishy.",
        MAST_MALBATROSS_ITEM = "It's lighter than it looks.",
        MAST_MALBATROSS = "Spread my wings and sail away!",
		MALBATROSS_FEATHERED_WEAVE = "I'm making a quill-t!",

        WALKINGPLANK = "Couldn't we have just made a lifeboat?",
        OAR = "Manual ship acceleration.",
		OAR_DRIFTWOOD = "Manual ship acceleration.",

		----------------------- ROT STRINGS GO ABOVE HERE ------------------

        --Wortox
        WORTOX_SOUL = "only_used_by_wortox", --only wortox can inspect souls

        PORTABLECOOKPOT_ITEM =
        {
            GENERIC = "Now we're cookin'!",
            DONE = "Now we're done cookin'!",

			COOKING_LONG = "That meal is going to take a while.",
			COOKING_SHORT = "It'll be ready in no-time!",
			EMPTY = "I bet there's nothing in there.",
        },
        
        PORTABLEBLENDER_ITEM = "It mixes all the food.",
        PORTABLESPICER_ITEM =
        {
            GENERIC = "This will spice things up.",
            DONE = "Should make things a little tastier.",
        },
        SPICEPACK = "A breakthrough in culinary science!",
        SPICE_GARLIC = "A powerfully potent powder.",
        SPICE_SUGAR = "Sweet! It's sweet!",
        SPICE_CHILI = "A flagon of fiery fluid.",
        SPICE_SALT = "A little sodium's good for the heart.",
        MONSTERTARTARE = "There's got to be something else to eat around here.",
        FRESHFRUITCREPES = "Sugary fruit! Part of a balanced breakfast.",
        FROGFISHBOWL = "Is that just... frogs stuffed inside a fish?",
        POTATOTORNADO = "Potato, scientifically infused with the power of a tornado!",
        DRAGONCHILISALAD = "I hope I can handle the spice level.",
        GLOWBERRYMOUSSE = "Warly sure can cook.",
        VOLTGOATJELLY = "It's shockingly delicious.",
        NIGHTMAREPIE = "It's a little spooky.",
        BONESOUP = "No bones about it, Warly can cook.",
        MASHEDPOTATOES = "I've heard cooking is basically chemistry. I should try it.",
        POTATOSOUFFLE = "I forgot what good food tasted like.",
        MOQUECA = "He's as talented a chef as I am a scientist.",
        GAZPACHO = "How in science does it taste so good?",
        ASPARAGUSSOUP = "Smells like it tastes.",
        VEGSTINGER = "Can you use the celery as a straw?",
        BANANAPOP = "No, not brain freeze! I need that for science!",
        CEVICHE = "Can I get a bigger bowl? This one looks a little shrimpy.",
        SALSA = "So... hot...!",
        PEPPERPOPPER = "What a mouthful!",

        TURNIP = "It's a raw turnip.",
        TURNIP_COOKED = "Cooking is science in practice.",
        TURNIP_SEEDS = "A handful of odd seeds.",
        
        GARLIC = "The number one breath enhancer.",
        GARLIC_COOKED = "Perfectly browned.",
        GARLIC_SEEDS = "A handful of odd seeds.",
        
        ONION = "Looks crunchy.",
        ONION_COOKED = "A successful chemical reaction.",
        ONION_SEEDS = "A handful of odd seeds.",
        
        POTATO = "The apples of the earth.",
        POTATO_COOKED = "A successful temperature experiment.",
        POTATO_SEEDS = "A handful of odd seeds.",
        
        TOMATO = "It's red because it's full of science.",
        TOMATO_COOKED = "Cooking's easy if you understand chemistry.",
        TOMATO_SEEDS = "A handful of odd seeds.",

        ASPARAGUS = "A vegetable.", 
        ASPARAGUS_COOKED = "Science says it's good for me.",
        ASPARAGUS_SEEDS = "It's asparagus seeds.",

        PEPPER = "Nice and spicy.",
        PEPPER_COOKED = "It was already hot to begin with.",
        PEPPER_SEEDS = "A handful of seeds.",

        WEREITEM_BEAVER = "I guess science works differently up North.",
        WEREITEM_GOOSE = "That thing's giving ME goosebumps!",
        WEREITEM_MOOSE = "A perfectly normal cursed moose thing.",

        MERMHAT = "Finally, I can show my face in public.",
        MERMTHRONE =
        {
            GENERIC = "Looks fit for a swamp king!",
            BURNT = "There was something fishy about that throne anyway.",
        },        
        MERMTHRONE_CONSTRUCTION =
        {
            GENERIC = "Just what is she planning?",
            BURNT = "I suppose we'll never know what it was for now.",
        },        
        MERMHOUSE_CRAFTED = 
        {
            GENERIC = "It's actually kind of cute.",
            BURNT = "Ugh, the smell!",
        },

        MERMWATCHTOWER_REGULAR = "They seem happy to have found a king.",
        MERMWATCHTOWER_NOKING = "A royal guard with no Royal to guard.",
        MERMKING = "Your Majesty!",
        MERMGUARD = "I feel very guarded around these guys...",
        MERM_PRINCE = "They operate on a first-come, first-sovereigned basis.",

    },

    DESCRIBE_GENERIC = "It's a... thing.",
    DESCRIBE_TOODARK = "It's too dark to see!",
    DESCRIBE_SMOLDERING = "That thing is about to catch fire.",
    EAT_FOOD =
    {
        TALLBIRDEGG_CRACKED = "Mmm. Beaky.",
    },
}
