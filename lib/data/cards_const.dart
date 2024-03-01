part of 'data.dart';

const CardModel kHuman = CardModel(
  type: TypeCard.human,
  id: 0,
  name: 'Human',
  description: '''What are you watching? -_-''',
  prize: 0,
  quantity: 1,
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
  name: 'Iron ingots',
  description:
      '''Refined and robust iron ingots ready to be forged into the strongest tools. With these ingots, even Iron Man would be jealous!''',
  prize: 3,
  quantity: 2,
  //2 iron, furnace
);
const CardModel kSilicon = CardModel(
  type: TypeCard.material,
  id: 11,
  name: 'Silicon',
  description:
      '''The essential building block for modern technology, silicon is the cornerstone of electronics. Who knew that beach sand could be so useful? Thank you, silicon!''',
  prize: 5,
  quantity: 1,
  // 5 coal, furnace
);
const CardModel kCopperLine = CardModel(
  type: TypeCard.material,
  id: 12,
  name: 'Copper line',
  description:
      '''They need to be refined to conduct energy. These cables have a new fashion. Now they look more naked than ever''',
  prize: 2,
  quantity: 1,
  // 2 copper, furnace, Crafting table
);
const CardModel kInsulators = CardModel(
  type: TypeCard.material,
  id: 13,
  name: 'Insulators',
  description:
      '''They protect against short circuits and electric shocks, keeping the current in place. Who would have thought that a little plastic could prevent so much electrical drama?''',
  prize: 1,
  quantity: 1,
  // 2 plastic, furnace, Crafting table
);
const CardModel kSolarCells = CardModel(
  type: TypeCard.material,
  id: 14,
  name: 'Solar cells',
  description:
      '''These solar cells transform sunlight into electricity, providing clean, sustainable energy and making the sun work overtime. Good job, sunshine.''',
  prize: 20,
  quantity: 5,
  // 4 silicon, electronic table
);
const CardModel kStructure = CardModel(
  type: TypeCard.material,
  id: 15,
  name: 'Structure',
  description:
      '''It provides stability and support for various constructions, from houses to machinery. So strong that even Chuck Norris would be proud.''',
  prize: 4,
  quantity: 2,
  // 2 wood, 2 iron, Crafting table
);
const CardModel kCables = CardModel(
  type: TypeCard.material,
  id: 16,
  name: 'Cables',
  description:
      '''Cables ready to connect and transmit power efficiently. These functional cables are as reliable as the "dog ate my homework" excuse.''',
  prize: 3,
  quantity: 1,
  //  1 copper line, 1 insulators, electronic table
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
  // 1 meat, 1 potato, 1 carrot, 1 water, furnace
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
  // 1 meat, furnace
);
const CardModel kFlour = CardModel(
  type: TypeCard.food,
  id: 28,
  name: 'Flour',
  description:
      '''Flour, the base of many baked delicacies and dishes from around the world. The magic powder that turns any recipe into something delicious. Just add water and faith.''',
  prize: 1,
  quantity: 1,
  // 1 wheat, mill
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
  // 1 flour, 1 water, furnace
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
  // 3 flour, 3 egg, 3 milk, furnace
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
  // 1 carrot, 1 potato, 1 apple, 1 banana, Crafting table
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
  // 1 apple, 1 banana, 1 milk, Crafting table
);
const CardModel kPotatoOmelet = CardModel(
  type: TypeCard.food,
  id: 33,
  name: 'Potato Omelet',
  description:
      '''A delicious combination of potatoes and eggs, perfect for any meal with a flavor that will make even the most serious chef smile.''',
  prize: 10,
  quantity: 2,
  health: 5,
  handicap: -300,
  food: 5,
  // 2 potato, 3 eggs, 1 flour, 1 milk, furnace
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
  //2 apples, 2 flour, 2 eggs, 1 milk, furnace
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
  // 1 Stew, 1 healthy salad, 1 potato omelet, 1 apple pie, 1 fruit shakes
  // 1 cake, furnace
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
  // 2 structures, 2 Planks, Crafting table
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
  // 4 structures, 4 Planks, Crafting table
);
const CardModel kOven = CardModel(
  type: TypeCard.structure,
  id: 38,
  name: 'Furnace',
  description:
      '''The scene of the most epic feats, where materials become masterpieces (or disasters). Whether cooking succulent delicacies or melting metals and creating new materials.''',
  prize: 10,
  quantity: 5,
  // 2 estructure, 2 rock, Crafting table
);
const CardModel kCraftingTable = CardModel(
  type: TypeCard.structure,
  id: 39,
  name: 'Crafting Table',
  description:
      '''The epicenter of creation in your village. Here, ideas become reality. From simple shelves to complex structures, it all starts here.''',
  prize: 4,
  quantity: 2,
  // 4 wood
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
  // 2 structure, 4 tree, 3 iron, crafting table
);
const CardModel kElectronicsTable = CardModel(
  type: TypeCard.structure,
  id: 41,
  name: 'Electronics table',
  description:
      '''A specialized table equipped with tools and equipment for the creation of electronic devices. Try not to lose patience when the wires decide to get tangled up like a snake party.''',
  prize: 15,
  quantity: 5,
  energy: -1,
  // 2 structure, 3 cables, 2 insulators, crafting table
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
  // 2 Solar Cells, 4 Structure, 4 Cables, 2 Insulators, 1 Electronics Table
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
  // 4 Structure, 4 Dirt, 4 Water, 4 Wood, 4 Fertilizer, 1 Crafting Table
);
const CardModel kOrchard = CardModel(
  type: TypeCard.structure,
  id: 44,
  name: 'Orchard',
  description:
      '''Although the fruits are delicious, this fruit plot is less efficient than the Farm. But who can resist a freshly picked apple.''',
  prize: 10,
  quantity: 5,
  // 4 Dirt, 2 water, 2 Wood, 2 Fertilizer, 1 Crafting Table
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
  // 1 Structure, 2 Rock, 2 wood, 1 Iron Ingot, 1 Crafting Table
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
  // 6 Glass, 4 structure, 2 Tree, 1 Crafting Table
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
  // 4 Tables, 2 Structure, 2 cables, 1 Crafting Table
);
const CardModel kRecyclingCenter = CardModel(
  type: TypeCard.structure,
  id: 48,
  name: 'Recycling center',
  description:
      '''An advanced Recycling Center that allows you to disassemble and reuse the cards you no longer need, giving you back the materials for future projects. An 'undo' button for unwanted constructions.''',
  prize: 15,
  quantity: 15,
  energy: -10,
  // 8 Planks, 4 Structure, 1 Crafting Table
);
const CardModel kCompostingMachine = CardModel(
  type: TypeCard.structure,
  id: 49,
  name: 'Composting machine',
  description:
      '''Where waste goes to rethink your life choices. A tool to convert organic waste into compost, an essential practice for sustainable agriculture.''',
  prize: 10,
  quantity: 10,
  // 2 Structure, 4 Plastic, 2 Planks, 1 Poop, 1 Crafting Table, 1 Human
);
const CardModel kCampfire = CardModel(
  type: TypeCard.structure,
  id: 50,
  name: 'Campfire',
  description:
      '''A heat source and a means of cooking food in the traditional village way, although it may be less efficient than a modern oven. How about a round of burnt marshmallows?''',
  prize: 8,
  quantity: 2,
  // 4 Wood, 4 Rock, 1 Human
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
      '''An environmentally unfriendly but effective energy source. Beware of coal, it can taint your lungs and your conscience.''',
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
