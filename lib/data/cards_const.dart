part of 'data.dart';

const CardModel kHuman = CardModel(
  type: TypeCard.human,
  id: 0,
  name: 'Human',
  description: '''What are you watching? -_-''',
  prize: 0,
  quantity: 1,
  oxygen: -3,
);
const CardModel kRock = CardModel(
  type: TypeCard.material,
  id: 1,
  name: 'Rock',
  description:
      '''So sturdy that even Goliath would tremble at the sight of it. Ideal for building or hurling pesky giants.''',
  prize: 1,
  quantity: 1,
);
const CardModel kIron = CardModel(
  type: TypeCard.material,
  id: 2,
  name: 'Iron',
  description: 'Stronger than mom`s love. Ideal for creating structures',
  prize: 1,
  quantity: 1,
);
const CardModel kCoal = CardModel(
  type: TypeCard.material,
  id: 3,
  name: 'Coal',
  description:
      '''An essential energy source and raw material for the manufacture of silicon.''',
  prize: 1,
  quantity: 1,
);
const CardModel kWood = CardModel(
  type: TypeCard.material,
  id: 4,
  name: 'Wood',
  description:
      '''Renewable and abundant, wood is essential for the construction and manufacture of a variety of objects.''',
  prize: 1,
  quantity: 1,
  // 1 tree, 1 human
);
const CardModel kGlass = CardModel(
  type: TypeCard.material,
  id: 5,
  name: 'Glass',
  description:
      '''The invisible friend of windows and bottles: glass, the material that allows you to spy on your neighbors without them knowing!''',
  prize: 1,
  quantity: 1,
);
const CardModel kPlastic = CardModel(
  type: TypeCard.material,
  id: 6,
  name: 'Plastic',
  description:
      '''The stuff that never goes bad, just like your student debts.''',
  prize: 0,
  quantity: 1,
  carbonFootprint: 1,
  //this card cant be sold
);
const CardModel kCopper = CardModel(
  type: TypeCard.material,
  id: 7,
  name: 'Copper',
  description:
      '''An excellent conductor of electricity, copper is essential for the manufacture of cables and electronic components.''',
  prize: 1,
  quantity: 1,
);
const CardModel kDirt = CardModel(
  type: TypeCard.material,
  id: 8,
  name: 'Dirt',
  description:
      '''Nature's embrace, the mother of all plants and worms! Rich in nutrients and essential for plant life''',
  prize: 1,
  quantity: 1,
);
const CardModel kWater = CardModel(
  type: TypeCard.material,
  id: 9,
  name: 'Water',
  description:
      '''The elixir of life, essential for the survival of all known life forms.''',
  prize: 1,
  quantity: 1,
);
const CardModel kIronIngots = CardModel(
  type: TypeCard.material,
  id: 10,
  name: 'Iron Ingots',
  description:
      '''Refined and robust iron ingots ready to be forged into the strongest tools. With these ingots, even Iron Man would be jealous!''',
  prize: 3,
  quantity: 2,
);
const CardModel kSilicon = CardModel(
  type: TypeCard.material,
  id: 11,
  name: 'Silicon',
  description:
      '''The essential building block for modern technology, silicon is the cornerstone of electronics. Who knew that beach sand could be so useful? Thank you, silicon!''',
  prize: 5,
  quantity: 1,
);
const CardModel kCopperLine = CardModel(
  type: TypeCard.material,
  id: 12,
  name: 'Copper line',
  description:
      '''They need to be refined to conduct energy. These cables have a new fashion. Now they look more naked than ever''',
  prize: 2,
  quantity: 1,
);
const CardModel kInsulator = CardModel(
  type: TypeCard.material,
  id: 13,
  name: 'Insulators',
  description:
      '''They protect against short circuits and electric shocks, keeping the current in place. Who would have thought that a little plastic could prevent so much electrical drama?''',
  prize: 1,
  quantity: 1,
);
const CardModel kSolarCells = CardModel(
  type: TypeCard.material,
  id: 14,
  name: 'Solar cells',
  description:
      '''These solar cells transform sunlight into electricity, providing clean, sustainable energy and making the sun work overtime. Good job, sunshine.''',
  prize: 20,
  quantity: 5,
);
const CardModel kStructure = CardModel(
  type: TypeCard.material,
  id: 15,
  name: 'Structure',
  description:
      '''It provides stability and support for various constructions, from houses to machinery. So strong that even Chuck Norris would be proud.''',
  prize: 4,
  quantity: 2,
);
const CardModel kCables = CardModel(
  type: TypeCard.material,
  id: 16,
  name: 'Cables',
  description:
      '''Cables ready to connect and transmit power efficiently. These functional cables are as reliable as the "dog ate my homework" excuse.''',
  prize: 3,
  quantity: 1,
);
const CardModel kFastFood = CardModel(
  type: TypeCard.food,
  id: 17,
  name: 'Fast Food',
  description:
      '''Foods prepared quickly and conveniently, but with low nutritional value.''',
  prize: 0,
  quantity: 3,
  carbonFootprint: 1,
  food: 3,
  handicap: 500,
);
const CardModel kWheat = CardModel(
  type: TypeCard.food,
  id: 18,
  name: 'Wheat',
  description:
      '''Cereal used to make flour and various baked goods. And although it may not seem like it, cows love it.''',
  prize: 1,
  quantity: 1,
);
const CardModel kCarrot = CardModel(
  type: TypeCard.food,
  id: 19,
  name: 'Carrot',
  description:
      '''A vegetable rich in nutrients and crucial to maintain a balanced diet. So good that it might make Bugs Bunny give up on the competition's carrots.''',
  prize: 1,
  quantity: 1,
  food: 1,
);
const CardModel kPotato = CardModel(
  type: TypeCard.food,
  id: 20,
  name: 'Potato',
  description:
      '''The humble potato, the unsung hero of the kitchen, making stomachs happy since time immemorial.''',
  prize: 1,
  quantity: 1,
  food: 1,
);
const CardModel kApple = CardModel(
  type: TypeCard.food,
  id: 21,
  name: 'Apple',
  description:
      '''A fresh and crunchy fruit, full of flavor and nutrients. Watch out for apples falling from the sky! If Newton could have a 'eureka' moment with one, who knows what brilliant ideas you might have?''',
  prize: 1,
  quantity: 1,
  food: 1,
);
const CardModel kMilk = CardModel(
  type: TypeCard.food,
  id: 22,
  name: 'Milk',
  description:
      '''A fundamental source of calcium and nutrients for a balanced diet. White elixir of life that helps you grow strong and big.''',
  prize: 1,
  quantity: 1,
  food: 1,
);
const CardModel kMeat = CardModel(
  type: TypeCard.food,
  id: 23,
  name: 'Meat',
  description:
      '''An important source of protein and nutrients to keep you healthy and full of energy. Nothing like a good piece of meat to satisfy your growling stomach.''',
  prize: 1,
  quantity: 1,
);
const CardModel kBanana = CardModel(
  type: TypeCard.food,
  id: 24,
  name: 'Banana',
  description:
      '''The nutritious banana, natural energy in its yellow packaging. It comes with its own case and the promise to make you smile, even if you look like a monkey eating it.''',
  prize: 1,
  quantity: 1,
  food: 1,
);
const CardModel kEgg = CardModel(
  type: TypeCard.food,
  id: 25,
  name: 'Egg',
  description:
      '''The egg, source of proteins of the highest quality and versatility in the kitchen. It faces hot pans and whisks without fear.''',
  prize: 1,
  quantity: 1,
);
const CardModel kStew = CardModel(
  type: TypeCard.food,
  id: 26,
  name: 'Stew',
  description:
      '''Traditional dish that combines meat, vegetables and broth in a comforting preparation. Like a hug in the form of food, perfect for those cold days or when the soul needs comfort.''',
  prize: 5,
  quantity: 1,
  food: 3,
  handicap: -200,
  health: 10,
);
const CardModel kFriedMeat = CardModel(
  type: TypeCard.food,
  id: 27,
  name: 'Fried Meat',
  description:
      '''The art of transforming the ordinary into the extraordinary with a little oil and a hot frying pan.''',
  prize: 2,
  quantity: 1,
  food: 3,
  health: 1,
);
const CardModel kFlour = CardModel(
  type: TypeCard.food,
  id: 28,
  name: 'Flour',
  description:
      '''Flour, the base of many baked delicacies and dishes from around the world. The magic powder that turns any recipe into something delicious. Just add water and faith.''',
  prize: 1,
  quantity: 1,
);
const CardModel kBread = CardModel(
  type: TypeCard.food,
  id: 29,
  name: 'Bread',
  description:
      '''Bread, a staple food on the table of millions of people around the world. The reason mankind invented butter. And jam!''',
  prize: 2,
  quantity: 1,
  food: 2,
);
const CardModel kCake = CardModel(
  type: TypeCard.food,
  id: 30,
  name: 'Cake',
  description:
      '''A delicious cake made with fresh and loving ingredients, perfect for celebrating special occasions.''',
  prize: 12,
  quantity: 3,
  health: 5,
  handicap: -300,
  food: 5,
);
const CardModel kHealthySalad = CardModel(
  type: TypeCard.food,
  id: 31,
  name: 'Healthy Salad',
  description:
      '''A fresh mix of vegetables and healthy toppings. Nothing like healthy food.''',
  prize: 5,
  quantity: 2,
  food: 5,
  health: 5,
  handicap: -100,
  carbonFootprint: 100,
);
const CardModel kFruitShake = CardModel(
  type: TypeCard.food,
  id: 32,
  name: 'Fruit Shake',
  description:
      '''A refreshing blend of fresh fruits, perfect for recharging energy and vitamins.''',
  prize: 5,
  quantity: 1,
  food: 3,
  health: 5,
);
const CardModel kOmelet = CardModel(
  type: TypeCard.food,
  id: 33,
  name: 'Omelet',
  description:
      '''A delicious combination of potatoes and eggs, perfect for any meal with a flavor that will make even the most serious chef smile.''',
  prize: 10,
  quantity: 2,
  health: 5,
  handicap: -300,
  food: 5,
);
const CardModel kApplePie = CardModel(
  type: TypeCard.food,
  id: 34,
  name: 'Apple Pie',
  description:
      '''A classic apple pie baked with love, that not only fills the stomach but also the heart. This pie will make you forget all your worries, at least until it's gone!''',
  prize: 10,
  quantity: 3,
  food: 5,
  handicap: -200,
  health: 5,
);
const CardModel kFarmFeast = CardModel(
  type: TypeCard.food,
  id: 35,
  name: 'Farm Feast',
  description:
      '''The feast that makes farms feel like palaces. A complete meal that blends the best farm products for a satisfying culinary experience, prepared with love and care to share with your loved ones.''',
  prize: 50,
  quantity: 2,
  handicap: -1000,
  carbonFootprint: -100,
  health: 20,
  food: 20,
);
const CardModel kBaul = CardModel(
  type: TypeCard.structure,
  id: 36,
  name: 'Baul',
  description:
      '''Storage space for your most precious and necessary possessions. A reliable container that adds a little extra to your card storage capacity.''',
  prize: 10,
  quantity: 2,
  // Provide 5 more card slot
);
const CardModel kWarehouse = CardModel(
  type: TypeCard.structure,
  id: 37,
  name: 'Warehouse',
  description:
      '''The place where your stuff ends up when you decide it's too valuable to throw away. A large, organized space to store and manage your resources efficiently. Greatly increases your card storage capacity.''',
  prize: 20,
  quantity: 5,
  energy: -2,
  // Provide 15 more card slot
);
const CardModel kFurnace = CardModel(
  type: TypeCard.structure,
  id: 38,
  name: 'Furnace',
  description:
      '''The scene of the most epic feats, where materials become masterpieces (or disasters). Whether cooking succulent delicacies or melting metals and creating new materials.''',
  prize: 10,
  quantity: 5,
);
const CardModel kCraftingTable = CardModel(
  type: TypeCard.structure,
  id: 39,
  name: 'Crafting Table',
  description:
      '''The epicenter of creation in your village. Here, ideas become reality. From simple shelves to complex structures, it all starts here.''',
  prize: 4,
  quantity: 2,
);
const CardModel kSawmill = CardModel(
  type: TypeCard.structure,
  id: 40,
  name: 'Sawmill',
  description:
      '''The wood workshop, where trees sacrifice their being to become finely crafted furniture... and birds cry silently for their loss.''',
  prize: 15,
  quantity: 15,
  energy: -2,
);
const CardModel kElectricTable = CardModel(
  type: TypeCard.structure,
  id: 41,
  name: 'Electric table',
  description:
      '''A specialized table equipped with tools and equipment for the creation of electronic devices. Try not to lose patience when the wires decide to get tangled up like a snake party.''',
  prize: 15,
  quantity: 5,
  energy: -1,
);
const CardModel kSolarPanel = CardModel(
  type: TypeCard.structure,
  id: 42,
  name: 'Solar panel',
  description:
      '''A solar panel designed to capture solar energy and convert it into a clean, renewable energy source that harnesses sunlight to generate electricity and reduce dependence on fossil fuels.''',
  prize: 60,
  quantity: 20,
  // Provide 30 additional energy
);
const CardModel kFarm = CardModel(
  type: TypeCard.structure,
  id: 43,
  name: 'Farm',
  description:
      '''A plot of fertile land dedicated to agricultural production. It grows essential foods more efficiently to produce a variety of fresh and healthy foods.''',
  prize: 30,
  quantity: 20,
  energy: -10,
);
const CardModel kOrchard = CardModel(
  type: TypeCard.structure,
  id: 44,
  name: 'Orchard',
  description:
      '''Although the fruits are delicious, this fruit plot is less efficient than the Farm. But who can resist a freshly picked apple.''',
  prize: 10,
  quantity: 5,
);
const CardModel kMill = CardModel(
  type: TypeCard.structure,
  id: 45,
  name: 'Mill',
  description:
      '''Don Quixote would hate it, but your grains will love it. A mill that turns wheat into flour, an essential piece of food.''',
  prize: 5,
  quantity: 5,
  energy: -2,
);
const CardModel kGreenhouse = CardModel(
  type: TypeCard.structure,
  id: 46,
  name: 'Greenhouse',
  description:
      '''A greenhouse where plants thrive like they're at a spa day, soaking in sun rays and sipping on nutrient cocktails. Improves crop production, allowing you to grow plants more effectively.''',
  prize: 10,
  quantity: 5,
  energy: -2,
);
const CardModel kWindTurbine = CardModel(
  type: TypeCard.structure,
  id: 47,
  name: 'Wind turbine',
  description:
      '''Catches wind like a superhero catches villains. A clean and renewable source of energy, capturing the power of the wind to light and heat our homes.''',
  prize: 15,
  quantity: 5,
  // Provide 5 additional energy
);
const CardModel kRecycler = CardModel(
  type: TypeCard.structure,
  id: 48,
  name: 'Recycler',
  description:
      '''An advanced Recycling Center that allows you to disassemble and reuse the cards you no longer need, giving you back the materials for future projects. An 'undo' button for unwanted constructions.''',
  prize: 15,
  quantity: 15,
  energy: -10,
);
const CardModel kComposter = CardModel(
  type: TypeCard.structure,
  id: 49,
  name: 'Composter',
  description:
      '''Where waste goes to rethink your life choices. A tool to convert organic waste into compost, an essential practice for sustainable agriculture.''',
  prize: 10,
  quantity: 10,
);
const CardModel kCampfire = CardModel(
  type: TypeCard.structure,
  id: 50,
  name: 'Campfire',
  description:
      '''A heat source and a means of cooking food in the traditional village way, although it may be less efficient than a modern furnace. How about a round of burnt marshmallows?''',
  prize: 8,
  quantity: 2,
);
const CardModel kDog = CardModel(
  type: TypeCard.animal,
  id: 51,
  name: 'Dog',
  description:
      '''Man's best friend! He barks, eats, gives you meat for your stew and improves your mood! A furry all-in-one.''',
  prize: 0,
  quantity: 1,
  handicap: -500,
  oxygen: -2,
);
const CardModel kCow = CardModel(
  type: TypeCard.animal,
  id: 52,
  name: 'Cow',
  description:
      '''This noble animal produces milk and manure at an impressive rate. Thank you very muuuuuch cow.''',
  prize: 5,
  quantity: 1,
  carbonFootprint: 300,
  oxygen: -2,
);
const CardModel kHen = CardModel(
  type: TypeCard.animal,
  id: 53,
  name: 'Hen',
  description:
      '''A domestic hen that provides a steady supply of fresh eggs. The hen that lays golden eggs. Well, not exactly golden, but almost!''',
  prize: 2,
  quantity: 1,
  oxygen: -2,
);
const CardModel kTree = CardModel(
  type: TypeCard.plant,
  id: 54,
  name: 'Tree',
  description:
      '''A symbol of life and nature that provides wood to build with and oxygen to breathe. Take care of them as if they were your most precious treasures.''',
  prize: 1,
  quantity: 1,
  oxygen: 2,
);
const CardModel kEnergy = CardModel(
  type: TypeCard.idea,
  id: 55,
  name: 'Energy',
  description:
      '''The spark that starts the village engine just be careful not to accidentally ignite the village. An energy boost to keep your machines running and your mind moving. Increases the length of the day by 20 seconds.''',
  prize: 1,
  quantity: 1,
);
const CardModel kCCBurgers = CardModel(
  type: TypeCard.structure,
  id: 56,
  name: 'CC Burgers',
  description:
      '''Crazy Cave Burgers: The stomach's best friends and the diet's worst enemies. A quick fix for those busy days, even if their nutritional content is as mysterious as the cave they come from.''',
  prize: 1,
  quantity: 3,
);
const CardModel kEmployment = CardModel(
  type: TypeCard.structure,
  id: 57,
  name: 'Employment',
  description:
      '''The village's 9 to 5 system! If you're looking for coins, this is where you line up to trade time for those coveted game coins! There are even rumors that the dog wears a tie on Fridays.''',
  prize: 1,
  quantity: 5,
);
const CardModel kCoalPlant = CardModel(
  type: TypeCard.structure,
  id: 58,
  name: 'Coal Plant',
  description:
      '''Coal-Fired Power Plant: An environmentally unfriendly but effective energy source. Beware of coal, it can taint your lungs and your conscience.''',
  prize: 1,
  quantity: 1,
  energy: 10,
  carbonFootprint: 200,
  oxygen: -5,
);
const CardModel kAppleTree = CardModel(
  type: TypeCard.plant,
  id: 59,
  name: 'Apple Tree',
  description:
      '''This apple tree is so generous that even the worms have membership cards. The apples are out of this world!''',
  prize: 1,
  quantity: 1,
  oxygen: 2,
);
const CardModel kBananaTree = CardModel(
  type: TypeCard.plant,
  id: 60,
  name: 'Banana Tree',
  description:
      '''A tropical tree that produces a fruit that produces many slips in the world, rich in potassium and other essential nutrients. A tasty and healthy addition to your daily diet.''',
  prize: 1,
  quantity: 1,
  oxygen: 2,
);
const CardModel kPoop = CardModel(
  type: TypeCard.material,
  id: 61,
  name: 'Poop',
  description:
      '''The cycle of life is completed by this humble gift of nature. Beyond its modest appearance, manure is the guardian of ecological balance and soil fertility. What secrets might be buried beneath its surface?''',
  prize: 1,
  quantity: 1,
  carbonFootprint: 100,
);
const CardModel kPlanks = CardModel(
  type: TypeCard.material,
  id: 62,
  name: 'Planks',
  description:
      '''An essential element in construction, boards are versatile and essential for erecting strong and durable structures.''',
  prize: 1,
  quantity: 1,
);
const CardModel kFoodPack = CardModel(
  type: TypeCard.pack,
  id: 63,
  name: 'Food Pack',
  //subtitle: 'Food Card',
  description: '''Provide 3 food cards''',
  prize: 0,
  quantity: 0,
);
const CardModel kMaterialPack = CardModel(
  type: TypeCard.pack,
  id: 64,
  name: 'Material Pack',
  //subtitle: 'Material Card',
  description: '''Provide 3 material cards''',
  prize: 0,
  quantity: 0,
);
const CardModel kCompositePack = CardModel(
  type: TypeCard.pack,
  id: 65,
  name: 'Composite Kit',
  //subtitle: 'Compound Material Card',
  description: '''Provide 3 material compound cards''',
  prize: 0,
  quantity: 0,
);
const CardModel kStructurePack = CardModel(
  type: TypeCard.pack,
  id: 66,
  name: 'Structure Pack',
  //subtitle: 'Structure Card',
  description: '''Provide 3 structure cards''',
  prize: 0,
  quantity: 0,
);
const CardModel kIdeaPack = CardModel(
  type: TypeCard.pack,
  id: 67,
  name: 'Idea Pack',
  //subtitle: 'Idea Card',
  description: '''Provide 3 idea cards''',
  prize: 0,
  quantity: 0,
);
const CardModel kNaturePack = CardModel(
  type: TypeCard.pack,
  id: 68,
  name: 'Nature Pack',
  //subtitle: 'Nature Card',
  description: '''Provide 3 nature cards''',
  prize: 0,
  quantity: 0,
);
const CardModel kIronIngotsIdea = CardModel(
  id: 69,
  name: 'Idea: Iron Ingots',
  description: '''The crafting is: 
    2 x Iron
    1 x Coal
    1 x Furnace''',
  type: TypeCard.idea,
  prize: 1,
  quantity: 1,
);
const CardModel kSiliconIdea = CardModel(
  type: TypeCard.idea,
  id: 70,
  name: 'Idea: Silicon',
  description: '''The crafting is: 
    6 x Coal
    1 x Furnace''',
  prize: 1,
  quantity: 1,
);
const CardModel kCopperLineIdea = CardModel(
  type: TypeCard.idea,
  id: 71,
  name: 'Idea: Copper Line',
  description: '''The crafting is: 
        2 x Cooper
        1 x Coal
        1 x Furnace
        1 x Crafting Table
        1 x Human''',
  prize: 1,
  quantity: 1,
);
const CardModel kInsulatorIdea = CardModel(
  type: TypeCard.idea,
  id: 72,
  name: 'Idea: Insulator',
  description: '''The crafting is: 
        2 x Plastic
        1 x Coal
        1 x Furnace
        1 x Crafting Table
        1 x Human''',
  prize: 1,
  quantity: 1,
);
const CardModel kSolarCellsIdea = CardModel(
  type: TypeCard.idea,
  id: 73,
  name: 'Idea: Solar cells',
  description: '''The crafting is: 
    4 x Silicon
    1 x Electronic Table
    1 x Human''',
  prize: 1,
  quantity: 1,
);
const CardModel kStructureIdea = CardModel(
  type: TypeCard.idea,
  id: 74,
  name: 'Idea: Structure',
  description: '''The crafting is: 
    2 x wood
    2 x Iron
    1 x Crafting Table
    1 x Human''',
  prize: 1,
  quantity: 1,
);
const CardModel kCablesIdea = CardModel(
  type: TypeCard.idea,
  id: 75,
  name: 'Idea: Cables',
  description: '''The crafting is: 
        1 x Cooper line
        1 x Insulators
        1 x Crafting Table
        1 x Human''',
  prize: 1,
  quantity: 1,
);
const CardModel kStewIdea = CardModel(
  type: TypeCard.idea,
  id: 76,
  name: 'Idea: Stew',
  description: '''The crafting is: 
        1 x Meat
        1 x Potato
        1 x Carrot
        1 x Water
        1 x (Funarce + Coal)/Campfire''',
  prize: 1,
  quantity: 1,
);
const CardModel kFriedMeatIdea = CardModel(
  type: TypeCard.idea,
  id: 77,
  name: 'Idea: Fried Meat',
  description: '''The crafting is: 
    1 x Meat
    1 x (Funarce + Coal)/Campfire''',
  prize: 1,
  quantity: 1,
);
const CardModel kFlourIdea = CardModel(
  type: TypeCard.idea,
  id: 78,
  name: 'Idea: Flour',
  description: '''The crafting is: 
    1 x Wheat
    1 x Mill
    1 x Human''',
  prize: 1,
  quantity: 1,
);
const CardModel kBreadIdea = CardModel(
  type: TypeCard.idea,
  id: 79,
  name: 'Idea: Bread',
  description: '''The crafting is: 
    1 x Flour
    1 x Water
    1 x (Funarce + Coal)/Campfire''',
  prize: 2,
  quantity: 1,
);
const CardModel kCakeIdea = CardModel(
  type: TypeCard.idea,
  id: 80,
  name: 'Idea: Cake',
  description: '''The crafting is: 
    3 x Flour 
    3 x Egg 
    3 x Milk
    1 x (Funarce + Coal)/Campfire''',
  prize: 1,
  quantity: 1,
);
const CardModel kHealthySaladIdea = CardModel(
  type: TypeCard.idea,
  id: 81,
  name: 'Idea: Healthy Salad',
  description: '''The crafting is: 
    1 x Carrot
    1 x Potato
    1 x Apple
    1 x Banana
    1 x Crafting Table
    1 x Human''',
  prize: 1,
  quantity: 1,
);
const CardModel kFruitShakeIdea = CardModel(
  type: TypeCard.idea,
  id: 82,
  name: 'Idea: Fruit Shake',
  description: '''The crafting is: 
    1 x Apple
    1 x Banana
    1 x Milk
    1 x Crafting Table
    1 x Human''',
  prize: 1,
  quantity: 1,
);
const CardModel kPotatoOmeletIdea = CardModel(
  type: TypeCard.idea,
  id: 83,
  name: 'Idea: Potato Omelet',
  description: '''The crafting is: 
    2 x Potato
    3 x Egg
    1 x Flour
    1 x Milk
    1 x (Funarce + Coal)/Campfire''',
  prize: 1,
  quantity: 1,
);
const CardModel kApplePieIdea = CardModel(
  type: TypeCard.idea,
  id: 84,
  name: 'Idea: Apple Pie',
  description: '''The crafting is: 
    2 x Apple
    2 x Flour
    2 x Egg
    1 x Milk
    1 x (Funarce + Coal)/Campfire''',
  prize: 1,
  quantity: 1,
);
const CardModel kFarmFeastIdea = CardModel(
  type: TypeCard.idea,
  id: 85,
  name: 'Idea: Farm Feast',
  description: '''The crafting is: 
    1 x Stew
    1 x Healthy Salad
    1 x Potato Omelet
    1 x Apple Pie
    1 x Fruit Shake
    1 x Cake
    1 x (Funarce + Coal)/Campfire''',
  prize: 1,
  quantity: 1,
);
const CardModel kBaulIdea = CardModel(
  type: TypeCard.idea,
  id: 86,
  name: 'Idea: Baul',
  description: '''Provide 5 more card slot.
    The crafting is:   
    2 x Structures
    2 x Planks, 
    1 x Crafting Table
    1 x Human''',
  prize: 1,
  quantity: 1,
);
const CardModel kWarehouseIdea = CardModel(
  type: TypeCard.idea,
  id: 87,
  name: 'Idea: Warehouse',
  description: '''Provide 15 more card slot.
    The crafting is: 
    4 x Structures
    4 x Planks
    1 x Crafting Table
    1 x Human''',
  prize: 1,
  quantity: 1,
);
const CardModel kFurnaceIdea = CardModel(
  type: TypeCard.idea,
  id: 88,
  name: 'Idea: Furnace',
  description: '''The crafting is: 
    4 x Rock
    2 x Structure
    1 x Crafting Table
    1 x Human''',
  prize: 1,
  quantity: 1,
);
const CardModel kCraftingTableIdea = CardModel(
  type: TypeCard.idea,
  id: 89,
  name: 'Idea: Crafting Table',
  description: '''The crafting is: 
    4 x Wood
    1 x Human''',
  prize: 1,
  quantity: 1,
);
const CardModel kSawmillIdea = CardModel(
  type: TypeCard.idea,
  id: 90,
  name: 'Idea: Sawmill',
  description: '''The crafting is: 
    4 x Tree
    3 x Iron
    2 x Structure
    1 x Crafting Table
    1 x Human''',
  prize: 1,
  quantity: 1,
);
const CardModel kElectronicTableIdea = CardModel(
  type: TypeCard.idea,
  id: 91,
  name: 'Idea: Electronic table',
  description: '''The crafting is: 
    3 x Cable
    2 x Structure
    2 x Insulator
    2 x Crafting table
    1 x Human''',
  prize: 1,
  quantity: 1,
);
const CardModel kSolarPanelIdea = CardModel(
  type: TypeCard.idea,
  id: 92,
  name: 'Idea: Solar panel',
  description: '''The crafting is: 
    4 x Structure
    4 x Cables
    2 x Solar Cell
    2 x Insulator
    1 x Electronic Table
    1 x Human''',
  prize: 1,
  quantity: 1,
);
const CardModel kFarmIdea = CardModel(
  type: TypeCard.idea,
  id: 93,
  name: 'Idea: Farm',
  description: '''The crafting is: 
    4 x Structure
    4 x Dirt
    4 x Water
    4 x Planks
    4 x Fertilizer
    1 x Crafting Table
    1 x Human''',
  prize: 1,
  quantity: 1,
);
const CardModel kOrchardIdea = CardModel(
  type: TypeCard.idea,
  id: 94,
  name: 'Idea: Orchard',
  description: '''The crafting is: 
    4 x Dirt
    2 x Water
    2 x Wood
    2 x Fertilizer
    1 x Crafting Table
    1 x Human''',
  prize: 1,
  quantity: 1,
);
const CardModel kMillIdea = CardModel(
  type: TypeCard.idea,
  id: 95,
  name: 'Idea: Mill',
  description: '''The crafting is: 
    2 x Rock
    2 x Wood
    1 x Structure
    1 x Iron Ingot
    1 x Crafting Table 
    1 x Human''',
  prize: 1,
  quantity: 1,
);
const CardModel kGreenhouseIdea = CardModel(
  type: TypeCard.idea,
  id: 96,
  name: 'Idea: Greenhouse',
  description: '''The crafting is: 
    6 x Glass
    4 x Structure
    2 x Tree
    1 x Crafting Table
    1 x Human''',
  prize: 1,
  quantity: 1,
);
const CardModel kWindTurbineIdea = CardModel(
  type: TypeCard.idea,
  id: 97,
  name: 'Idea: Wind turbine',
  description: '''Provide 5 additional energy.
    The crafting is:
    4 x Planks
    2 x Structure
    2 x Cables
    1 x Crafting Table
    1 x Human''',
  prize: 1,
  quantity: 1,
);
const CardModel kRecyclerIdea = CardModel(
  type: TypeCard.idea,
  id: 98,
  name: 'Idea: Recycler',
  description: '''The crafting is:
    8 x Planks
    4 x Structure
    1 x Crafting Table
    1 x Human''',
  prize: 1,
  quantity: 1,
);
const CardModel kComposterIdea = CardModel(
  type: TypeCard.idea,
  id: 99,
  name: 'Idea: Composter',
  description: '''The crafting is:
    2 x Structure
    2 x Planks
    4 x Plastic
    1 x Poop
    1 x Crafting Table
    1 x Human''',
  prize: 1,
  quantity: 1,
);
const CardModel kCampfireIdea = CardModel(
  type: TypeCard.idea,
  id: 100,
  name: 'Idea: Campfire',
  description: '''The crafting is:
    4 x Wood
    4 x Rock
    1 x Human''',
  prize: 1,
  quantity: 1,
);
const CardModel kAppleTreeIdea = CardModel(
  type: TypeCard.idea,
  id: 101,
  name: 'Idea: Apple Tree',
  description: '''The crafting is:
    1 x Tree Seed
    1 x Apple
    1 x Water
    1 x Farm
    1 x Human''',
  prize: 1,
  quantity: 1,
);
const CardModel kBananaTreeIdea = CardModel(
  type: TypeCard.idea,
  id: 102,
  name: 'Idea: Banana Tree',
  description: '''The crafting is:
    1 x Tree Seed
    1 x Banana
    1 x Water
    1 x Farm
    1 x Human''',
  prize: 1,
  quantity: 1,
);
const CardModel kMilkIdea = CardModel(
  type: TypeCard.idea,
  id: 103,
  name: 'Idea: Milk',
  description: '''The crafting is:
    1 x Cow
    1 x Human''',
  prize: 1,
  quantity: 1,
);
const CardModel kFertilizerIdea = CardModel(
  type: TypeCard.idea,
  id: 104,
  name: 'Idea: Fertilizer',
  description: '''The crafting is:
    1 x Poop
    1 x Composter
    1 x Water
    1 x Human''',
  prize: 1,
  quantity: 1,
);
const CardModel kWoodIdea = CardModel(
  type: TypeCard.idea,
  id: 105,
  name: 'Idea: Wood',
  description: '''The crafting is:
    1 x Tree
    1 x Human''',
  prize: 1,
  quantity: 1,
);
const CardModel kFertilizer = CardModel(
  id: 106,
  name: 'Fertilizer',
  description:
      '''An enriched compound that boosts the growth of your crops. This fertilizer ensures that your plants are always happy and healthy.''',
  type: TypeCard.material,
  prize: 1,
  quantity: 1,
);
const CardModel kTreeSeed = CardModel(
  id: 107,
  name: 'Tree Seed',
  description:
      '''A small treasure of nature that carries with it the promise of a green and lush future. Plant this seed with love and care, and you will see how a majestic tree will grow and provide shade and oxygen.''',
  type: TypeCard.material,
  prize: 1,
  quantity: 1,
);
const CardModel kWell = CardModel(
  id: 108,
  name: 'Well',
  description:
      '''A reliable source of drinking water for your community. This well guarantees a constant supply of vital liquid to keep everyone hydrated.''',
  type: TypeCard.structure,
  prize: 1,
  quantity: 1,
);
const CardModel kDev = CardModel(
  type: TypeCard.dev,
  id: 1000,
  name: 'Dev team',
  description:
      '''Does anyone actually read the descriptions? Are you seriously reading this? Don`t you have anything better to do? Well, I guess that makes two of us. You´ve unlocked the Development Team card. Someone somewhere probably thought it was a good idea. Are you excited? Probably not, but thanks for being here anyway. Developers: …''',
  prize: 1,
  quantity: 1,
  oxygen: 5,
  carbonFootprint: -500,
  energy: 10,
  handicap: -500,
);
const CardModel kFabian = CardModel(
  id: 1001,
  name: 'Fabian Jaramillo',
  description: '',
  type: TypeCard.dev,
  prize: 1,
  quantity: 1,
  oxygen: 3,
);
const CardModel kYonnier = CardModel(
  id: 1002,
  name: 'Yonnier Munoz',
  description: '',
  type: TypeCard.dev,
  prize: 1,
  quantity: 1,
  carbonFootprint: -300,
);
const CardModel kBrian = CardModel(
  id: 1003,
  name: 'Brian Yepez',
  description: '',
  type: TypeCard.dev,
  prize: 1,
  quantity: 1,
  energy: 7,
);
const CardModel kSantiago = CardModel(
  id: 1004,
  name: 'Santiago Argote',
  description: '',
  type: TypeCard.dev,
  prize: 1,
  quantity: 1,
  handicap: -300,
);
