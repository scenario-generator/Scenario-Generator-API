GAMES[:dwarffortress] = {
    buy_link: 'http://www.bay12games.com/dwarves/',
    site: 'bay12',
    title: 'Dwarf Fortress',
    background: 'dwarffortress.png',
    last_updated: Date.strptime('20150228',"%Y%m%d"),
    columns: {
        biome: {
            chance_of_multiple: 0,
            min: 1,
            max: 1,
            options: [
                :"Grassy/Forest",
                :"Desert",
                :"Glacier",
                :"Mountainous",
                :"Seaside",
                :"River Junction",
                :"Badlands",
                :"Volcano",
                :"Island",
                :"Free-pick",
                :"Near a tower"
            ]
        },
        surroundings: {
            chance_of_multiple: 0,
            min: 1,
            max: 1,
            options: [
                :"Calm",
                :"Wilderness",
                :"Untamed Wilds",
                :"Serene",
                :"Mirthful",
                :"Joyous Wilds",
                :"Sinister",
                :"Haunted",
                :"Terrifying",
                :"Good",
                :"Neutral",
                :"Evil",
                :"Peaceful",
                :"Savage",
                :"Free-pick"
            ]
        },
        challenges: {
            chance_of_multiple: 35,
            min: 1,
            max: 3,
            options: [
                :"No danger rooms",
                :"No traps",
                :"No walls",
                :"No bridges",
                :"No Goblinite",
                :"No Adamantine",
                :"No Trading",
                :"No Plump Helmets or Eggs",
                :"No weapons (wrestlers only)",
                :"Use only the starting 7 dwarves",
                :"The only metal you are allowed to use is copper",
                :"The only metal you are allowed to use is Iron",
                :"The only metal you are allowed to use is Bronze",
                :"You are only allowed to use Stone when no alternative exists",
                :"No hospital",
                :"No farming, obtain all food via trading",
                :"No smithing, obtain all metal goods via trading",
                :"No booze (slow mode)",
                :"Embark with as many towers as possible",
                :"Embark with an aquifer",
                :"No soldiers, only war animals",
                :"All men are soldiers",
                :"You can only mine veins and up to 9 rock tiles per z-level",
                :"No stairs, no walls, no doors, no bridges",
                :"Your only food is meat, all armour must be bone",
                :"Your only food is fish, all armour must be shell",
                :"Your only food is meat",
                :"Your only food is fish",
                :"All resources must be used as soon as possible",
                :"Everything but stockpiles must be above ground",
                :"Perform a science experiment and share your results",
                :"Maintain a 5:1 cat to dwarf ratio at all times. Extra dwarfs must be terminated with extreme prejudice.",
                :"Start with only an anvil and 2 copper ore",
                :"Start with 6 jesters and a single skilled dwarf",
                :"Spend 0 points on embark",
                :"You are only allowed to embark with at most 1 of each item",
                :"Embark with a single pick",
                :"All dwarves have all skills enabled",
                :"If a single dwarf dies you must abandon the fort",
                :"Choose an industry, you may only work that industry (I.E. Only metalworking, only crafting etc.)",
                :"Metalworking only. No other industry",
                :"Foodworking only. No other industry",
                :"Brewing only. No other industry",
                :"Cooking only. No other industry",
                :"Crafting only. No other industry",
                :"Woodworking only. No other industry",
                :"Gemwork only. No other industry",
                :"Clothmaking only. No other industry",
                :"You have one season above ground. As soon as the seasons change you must move everything underground, seal yourself off and never return",
                :"All food must be grown above ground",
                :"All food must be gathered",
                :"Do not dive below 2 z-levels. All buildings must be small hobbit holes",
                :"No mechanisms",
                :"No crossbows",
                :"Embark near a tower. Construct no walls, gates, doors, or bridges",
                :"All dwarves must serve in the military for at least 1 year and at most 3 years before retiring",
                :"Enable no new labors. Dwarves can only ever work the jobs they came with",
                :"You have one year to dig the framework of your fortress, after that you may not build any more constructions or dig any more tiles",
                :"Only legendary miners may enter the main fort. Construct a training fort outside your main walls where immigrants train",
                :"No lethal traps",
                :"Kill all non-dwarf sentients",
                :"All rooms are max 3x3",
                :"No alcohol",
                :'1x1 embark'
            ]
        },
        goals: {
            chance_of_multiple: 45,
            min: 1,
            max: 6,
            options: [
                :"Kill all Elf and Human caravans",
                :"Generate 25 million dorfbucks",
                :"Make a vampire fort",
                :"Make a were-fort",
                :"Hermit Fortress (Only one dwarf)",
                :"Go to Megaprojects page on the wiki and roll a d20",
                :"Get two of as many animals as you can",
                :"Make a massive above-ground town",
                :"Keep the caverns open and reach Adamantine in the first year",
                :"Using only your starting 7 and the first two migrant waves, reach 150 population",
                :"Reach 150 population",
                :"Reach 250 population",
                :"Capture a forgotten beast",
                :"Become the capital",
                :"Bring lava to the surface",
                :"Colonise a cavern layer",
                :"Unleash hell",
                :"Defeat hell",
                :"Colonise hell",
                :"Become a barony within 3 years",
                :"Become a barony within 2 years",
                :"Become the mountainhome within 5 years",
                :"Train a dwarf to level 15 in every non social/military skill",
                :"Build a Colosseum. Capture all invaders and have them fight your soldiers to the death",
                :"Build a town",
                :"Split your fortress into two underground societies within the first year, never allow them to mix",
                :"Build your fort in the trees",
                :"Build a large artificial lake with your fort underneath the surface",
                :"Build an underwater fort",
                :"Capture as many enemies as possible",
                :"Build your fort in an ever growing tower, max width: 10x10",
                :"Build a castle",
                :"Create a device that will continually spew lava onto the surface forever",
                :"Give all dwarves a regal version of every room",
                :"Hook every dwarf's bedroom up to a magma trap. Anyone who becomes unhappy once their trap is hooked up is locked inside and burnt alive",
                :"The world tree has died. Construct a new one. It must reach the maximum z-level and have a radius of at least 5 blocks. It can be hollow",
                :"Immediately dig to the caverns and lock your dwarves in. Survive",
                :"Dig exactly the amount of stone you need for each task, no more",
                :"The initial 7 dwarves are prison guards. Lock all immigrants in their cells and keep them alive. After 10 years in their cell each dwarf can be released as a new guard. Native born dwarves become guards",
                :"Build Venice. Your fort must be above ground with moats between buildings, you can travel between buildings via bridges",
                :"Build a fort with a task based on the translation of it's randomizeed name",
                :"Treat your nobles like nobility. As soon as the King declares his first stupid mandate, execute every noble in an interesting way",
                :"Infect all your dwarves with vampirism",
                :"Turn all your dwarves into werecreatures",
                :"Capture and imprison all supernatural beings that enter your map",
                :"Capture a necromancer in a cage, place him in a the middle of a Colosseum with sight of the surrounding area. Have your military fight enemies you have caught in cage traps in the Colosseum."
            ]
        }
    }
}