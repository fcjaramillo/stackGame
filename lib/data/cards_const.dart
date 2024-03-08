part of 'data.dart';

CardModel kHuman = CardModel(
  type: TypeCard.human,
  id: 0,
  name: L10n.current.you,
  description: L10n.current.youDescription,
  prize: 0,
  quantity: -1,
  oxygen: -3,
);
CardModel kRock = CardModel(
  type: TypeCard.material,
  id: 1,
  name: L10n.current.rock,
  description: L10n.current.rockDescription,
  prize: 1,
  quantity: -1,
);
CardModel kIron = CardModel(
  type: TypeCard.material,
  id: 2,
  name: L10n.current.iron,
  description: L10n.current.ironDescription,
  prize: 1,
  quantity: -1,
);
CardModel kCoal = CardModel(
  type: TypeCard.material,
  id: 3,
  name: L10n.current.coal,
  description: L10n.current.coalDescription,
  prize: 1,
  quantity: -1,
);
CardModel kWood = CardModel(
  type: TypeCard.material,
  id: 4,
  name: L10n.current.wood,
  description: L10n.current.woodDescription,
  prize: 1,
  quantity: -1,
  // 1 tree, 1 human
);
CardModel kGlass = CardModel(
  type: TypeCard.material,
  id: 5,
  name: L10n.current.glass,
  description: L10n.current.glassDescription,
  prize: 1,
  quantity: -1,
);
CardModel kPlastic = CardModel(
  type: TypeCard.material,
  id: 6,
  name: L10n.current.plastic,
  description: L10n.current.plasticDescription,
  prize: 0,
  quantity: -1,
  carbonFootprint: 1,
  //this card cant be sold
);
CardModel kCopper = CardModel(
  type: TypeCard.material,
  id: 7,
  name: L10n.current.copper,
  description: L10n.current.copperDescription,
  prize: 1,
  quantity: -1,
);
CardModel kDirt = CardModel(
  type: TypeCard.material,
  id: 8,
  name: L10n.current.dirt,
  description: L10n.current.dirtDescription,
  prize: 1,
  quantity: -1,
);
CardModel kWater = CardModel(
  type: TypeCard.material,
  id: 9,
  name: L10n.current.water,
  description: L10n.current.waterDescription,
  prize: 1,
  quantity: -1,
);
CardModel kIronIngots = CardModel(
  type: TypeCard.material,
  id: 10,
  name: L10n.current.ironIngots,
  description: L10n.current.ironIngotsDescription,
  prize: 3,
  quantity: -2,
);
CardModel kSilicon = CardModel(
  type: TypeCard.material,
  id: 11,
  name: L10n.current.silicon,
  description: L10n.current.siliconDescription,
  prize: 5,
  quantity: -1,
);
CardModel kCopperLine = CardModel(
  type: TypeCard.material,
  id: 12,
  name: L10n.current.copperLine,
  description: L10n.current.copperLineDescription,
  prize: 2,
  quantity: -1,
);
CardModel kInsulator = CardModel(
  type: TypeCard.material,
  id: 13,
  name: L10n.current.insulators,
  description: L10n.current.insulatorsDescription,
  prize: 1,
  quantity: -1,
);
CardModel kSolarCells = CardModel(
  type: TypeCard.material,
  id: 14,
  name: L10n.current.solarCells,
  description: L10n.current.solarCellsDescription,
  prize: 20,
  quantity: -5,
);
CardModel kStructure = CardModel(
  type: TypeCard.material,
  id: 15,
  name: L10n.current.structure,
  description: L10n.current.structureDescription,
  prize: 4,
  quantity: -2,
);
CardModel kCables = CardModel(
  type: TypeCard.material,
  id: 16,
  name: L10n.current.cables,
  description: L10n.current.cablesDescription,
  prize: 3,
  quantity: -1,
);
CardModel kFastFood = CardModel(
  type: TypeCard.food,
  id: 17,
  name: L10n.current.fastFood,
  description: L10n.current.fastFoodDescription,
  prize: 0,
  quantity: -3,
  carbonFootprint: 1,
  food: 3,
  handicap: 500,
);
CardModel kWheat = CardModel(
  type: TypeCard.food,
  id: 18,
  name: L10n.current.wheat,
  description: L10n.current.wheatDescription,
  prize: 1,
  quantity: -1,
);
CardModel kCarrot = CardModel(
  type: TypeCard.food,
  id: 19,
  name: L10n.current.carrot,
  description: L10n.current.carrotDescription,
  prize: 1,
  quantity: -1,
  food: 1,
);
CardModel kPotato = CardModel(
  type: TypeCard.food,
  id: 20,
  name: L10n.current.potato,
  description: L10n.current.potatoDescription,
  prize: 1,
  quantity: -1,
  food: 1,
);
CardModel kApple = CardModel(
  type: TypeCard.food,
  id: 21,
  name: L10n.current.apple,
  description: L10n.current.appleDescription,
  prize: 1,
  quantity: -1,
  food: 1,
);
CardModel kMilk = CardModel(
  type: TypeCard.food,
  id: 22,
  name: L10n.current.milk,
  description: L10n.current.milkDescription,
  prize: 1,
  quantity: -1,
  food: 1,
);
CardModel kMeat = CardModel(
  type: TypeCard.food,
  id: 23,
  name: L10n.current.meat,
  description: L10n.current.meatDescription,
  prize: 1,
  quantity: -1,
);
CardModel kBanana = CardModel(
  type: TypeCard.food,
  id: 24,
  name: L10n.current.Banana,
  description: L10n.current.bananaDescription,
  prize: 1,
  quantity: -1,
  food: 1,
);
CardModel kEgg = CardModel(
  type: TypeCard.food,
  id: 25,
  name: L10n.current.egg,
  description: L10n.current.eggDescription,
  prize: 1,
  quantity: -1,
);
CardModel kStew = CardModel(
  type: TypeCard.food,
  id: 26,
  name: L10n.current.stew,
  description: L10n.current.stewDescription,
  prize: 5,
  quantity: -1,
  food: 3,
  handicap: -200,
  health: 10,
);
CardModel kFriedMeat = CardModel(
  type: TypeCard.food,
  id: 27,
  name: L10n.current.friedMeat,
  description: L10n.current.friedMeatDescription,
  prize: 2,
  quantity: -1,
  food: 3,
  health: 1,
);
CardModel kFlour = CardModel(
  type: TypeCard.food,
  id: 28,
  name: L10n.current.flour,
  description: L10n.current.flourDescription,
  prize: 1,
  quantity: -1,
);
CardModel kBread = CardModel(
  type: TypeCard.food,
  id: 29,
  name: L10n.current.bread,
  description: L10n.current.breadDescription,
  prize: 2,
  quantity: -1,
  food: 2,
);
CardModel kCake = CardModel(
  type: TypeCard.food,
  id: 30,
  name: L10n.current.cake,
  description: L10n.current.cakeDescription,
  prize: 12,
  quantity: -3,
  health: 5,
  handicap: -300,
  food: 5,
);
CardModel kHealthySalad = CardModel(
  type: TypeCard.food,
  id: 31,
  name: L10n.current.healthySalad,
  description: L10n.current.healthySaladDescription,
  prize: 5,
  quantity: -2,
  food: 5,
  health: 5,
  handicap: -100,
  carbonFootprint: 100,
);
CardModel kFruitShake = CardModel(
  type: TypeCard.food,
  id: 32,
  name: L10n.current.fruitShake,
  description: L10n.current.fruitShakeDescription,
  prize: 5,
  quantity: -1,
  food: 3,
  health: 5,
);
CardModel kOmelet = CardModel(
  type: TypeCard.food,
  id: 33,
  name: L10n.current.omelet,
  description: L10n.current.omeletDescription,
  prize: 10,
  quantity: -2,
  health: 5,
  handicap: -300,
  food: 5,
);
CardModel kApplePie = CardModel(
  type: TypeCard.food,
  id: 34,
  name: L10n.current.applePie,
  description: L10n.current.applePieDescription,
  prize: 10,
  quantity: -3,
  food: 5,
  handicap: -200,
  health: 5,
);
CardModel kFarmFeast = CardModel(
  type: TypeCard.food,
  id: 35,
  name: L10n.current.farmFeast,
  description: L10n.current.farmFeastDescription,
  prize: 50,
  quantity: -2,
  handicap: -1000,
  carbonFootprint: -100,
  health: 20,
  food: 20,
);
CardModel kBaul = CardModel(
  type: TypeCard.structure,
  id: 36,
  name: L10n.current.baul,
  description: L10n.current.baulDescription,
  prize: 10,
  quantity: 3,
  // Provide 5 more card slot
);
CardModel kWarehouse = CardModel(
  type: TypeCard.structure,
  id: 37,
  name: L10n.current.warehouse,
  description: L10n.current.warehouseDescription,
  prize: 20,
  quantity: 7,
  energy: -2,
  // Provide 15 more card slot
);
CardModel kFurnace = CardModel(
  type: TypeCard.structure,
  id: 38,
  name: L10n.current.furnace,
  description: L10n.current.furnaceDescription,
  prize: 10,
  quantity: -5,
);
CardModel kCraftingTable = CardModel(
  type: TypeCard.structure,
  id: 39,
  name: L10n.current.craftingTable,
  description: L10n.current.craftingTableDescription,
  prize: 4,
  quantity: -2,
);
CardModel kSawmill = CardModel(
  type: TypeCard.structure,
  id: 40,
  name: L10n.current.sawmill,
  description: L10n.current.sawmillDescription,
  prize: 15,
  quantity: -15,
  energy: -2,
);
CardModel kElectricTable = CardModel(
  type: TypeCard.structure,
  id: 41,
  name: L10n.current.electricTable,
  description: L10n.current.electricTableDescription,
  prize: 15,
  quantity: -5,
  energy: -1,
);
CardModel kSolarPanel = CardModel(
  type: TypeCard.structure,
  id: 42,
  name: L10n.current.solarPanel,
  description: L10n.current.solarPanelDescription,
  prize: 60,
  quantity: -20,
  // Provide 30 additional energy
);
CardModel kFarm = CardModel(
  type: TypeCard.structure,
  id: 43,
  name: L10n.current.farm,
  description: L10n.current.farmDescription,
  prize: 30,
  quantity: -20,
  energy: -10,
);
CardModel kOrchard = CardModel(
  type: TypeCard.structure,
  id: 44,
  name: L10n.current.orchard,
  description: L10n.current.orchardDescription,
  prize: 10,
  quantity: -5,
);
CardModel kMill = CardModel(
  type: TypeCard.structure,
  id: 45,
  name: L10n.current.mill,
  description: L10n.current.millDescription,
  prize: 5,
  quantity: -5,
  energy: -2,
);
CardModel kGreenhouse = CardModel(
  type: TypeCard.structure,
  id: 46,
  name: L10n.current.greenhouse,
  description: L10n.current.greenhouseDescription,
  prize: 10,
  quantity: -5,
  energy: -2,
);
CardModel kWindTurbine = CardModel(
  type: TypeCard.structure,
  id: 47,
  name: L10n.current.windTurbine,
  description: L10n.current.windTurbineDescription,
  prize: 15,
  quantity: -5,
  // Provide 5 additional energy
);
CardModel kRecycler = CardModel(
  type: TypeCard.structure,
  id: 48,
  name: L10n.current.recycler,
  description: L10n.current.recyclerDescription,
  prize: 15,
  quantity: -15,
  energy: -10,
);
CardModel kComposter = CardModel(
  type: TypeCard.structure,
  id: 49,
  name: L10n.current.composter,
  description: L10n.current.composterDescription,
  prize: 10,
  quantity: -10,
);
CardModel kCampfire = CardModel(
  type: TypeCard.structure,
  id: 50,
  name: L10n.current.campfire,
  description: L10n.current.campfireDescription,
  prize: 8,
  quantity: -2,
);
CardModel kDog = CardModel(
  type: TypeCard.animal,
  id: 51,
  name: L10n.current.dog,
  description: L10n.current.dogDescription,
  prize: 0,
  quantity: -1,
  handicap: -500,
  oxygen: -2,
);
CardModel kCow = CardModel(
  type: TypeCard.animal,
  id: 52,
  name: L10n.current.cow,
  description: L10n.current.cowDescription,
  prize: 5,
  quantity: -1,
  carbonFootprint: 300,
  oxygen: -2,
);
CardModel kHen = CardModel(
  type: TypeCard.animal,
  id: 53,
  name: L10n.current.hen,
  description: L10n.current.henDescription,
  prize: 2,
  quantity: -1,
  oxygen: -2,
);
CardModel kTree = CardModel(
  type: TypeCard.plant,
  id: 54,
  name: L10n.current.tree,
  description: L10n.current.treeDescription,
  prize: 1,
  quantity: -1,
  oxygen: 2,
);
CardModel kEnergy = CardModel(
  type: TypeCard.idea,
  id: 55,
  name: L10n.current.energy,
  description: L10n.current.energyDescription,
  prize: 1,
  quantity: -1,
);
CardModel kCCBurgers = CardModel(
  type: TypeCard.structure,
  id: 56,
  name: L10n.current.ccBurgers,
  description: L10n.current.ccBurgersDescription,
  prize: 1,
  quantity: -3,
);
CardModel kEmployment = CardModel(
  type: TypeCard.structure,
  id: 57,
  name: L10n.current.employment,
  description: L10n.current.employmentDescription,
  prize: 1,
  quantity: -5,
);
CardModel kCoalPlant = CardModel(
  type: TypeCard.structure,
  id: 58,
  name: L10n.current.coalPlant,
  description: L10n.current.coalPlantDescription,
  prize: 1,
  quantity: -1,
  energy: 10,
  carbonFootprint: 200,
  oxygen: -5,
);
CardModel kAppleTree = CardModel(
  type: TypeCard.plant,
  id: 59,
  name: L10n.current.appleTree,
  description: L10n.current.appleTreeDescription,
  prize: 1,
  quantity: -1,
  oxygen: 2,
);
CardModel kBananaTree = CardModel(
  type: TypeCard.plant,
  id: 60,
  name: L10n.current.bananaTree,
  description: L10n.current.bananaTreeDescription,
  prize: 1,
  quantity: -1,
  oxygen: 2,
);
CardModel kPoop = CardModel(
  type: TypeCard.material,
  id: 61,
  name: L10n.current.poop,
  description: L10n.current.poopDescription,
  prize: 1,
  quantity: -1,
  carbonFootprint: 100,
);
CardModel kPlanks = CardModel(
  type: TypeCard.material,
  id: 62,
  name: L10n.current.planks,
  description: L10n.current.planksDescription,
  prize: 1,
  quantity: -1,
);
CardModel kFoodPack = CardModel(
  type: TypeCard.pack,
  id: 63,
  name: L10n.current.foodPack,
  //subtitle: 'Food Card',
  description: L10n.current.foodPackDescription,
  prize: 0,
  quantity: -0,
);
CardModel kMaterialPack = CardModel(
  type: TypeCard.pack,
  id: 64,
  name: L10n.current.materialPack,
  //subtitle: 'Material Card',
  description: L10n.current.materialPackDescription,
  prize: 0,
  quantity: -0,
);
CardModel kInitialPack = CardModel(
  type: TypeCard.pack,
  id: 65,
  name: L10n.current.initialPack,
  //subtitle: 'Compound Material Card',
  description: L10n.current.initialPackDescription,
  prize: 0,
  quantity: -0,
);
CardModel kStructurePack = CardModel(
  type: TypeCard.pack,
  id: 66,
  name: L10n.current.structurePack,
  //subtitle: 'Structure Card',
  description: L10n.current.structurePackDescription,
  prize: 0,
  quantity: -0,
);
CardModel kIdeaPack = CardModel(
  type: TypeCard.pack,
  id: 67,
  name: L10n.current.ideaPack,
  //subtitle: 'Idea Card',
  description: L10n.current.ideaPackDescription,
  prize: 0,
  quantity: -0,
);
CardModel kNaturePack = CardModel(
  type: TypeCard.pack,
  id: 68,
  name: L10n.current.naturePack,
  //subtitle: 'Nature Card',
  description: L10n.current.naturePackDescription,
  prize: 0,
  quantity: -0,
);
CardModel kIronIngotsIdea = CardModel(
  type: TypeCard.idea,
  id: 69,
  name: L10n.current.ideaIronIngots,
  description: L10n.current.ideaIronIngotsDescription,
  prize: 1,
  quantity: -1,
);
CardModel kSiliconIdea = CardModel(
  type: TypeCard.idea,
  id: 70,
  name: L10n.current.ideaSilicon,
  description: L10n.current.ideaSiliconDescription,
  prize: 1,
  quantity: -1,
);
CardModel kCopperLineIdea = CardModel(
  type: TypeCard.idea,
  id: 71,
  name: L10n.current.ideaCopperLine,
  description: L10n.current.ideaCopperLineDescription,
  prize: 1,
  quantity: -1,
);
CardModel kInsulatorIdea = CardModel(
  type: TypeCard.idea,
  id: 72,
  name: L10n.current.ideaInsulators,
  description: L10n.current.ideaInsulatorsDescription,
  prize: 1,
  quantity: -1,
);
CardModel kSolarCellsIdea = CardModel(
  type: TypeCard.idea,
  id: 73,
  name: L10n.current.ideaSolarCells,
  description: L10n.current.ideaSolarCellsDescription,
  prize: 1,
  quantity: -1,
);
CardModel kStructureIdea = CardModel(
  type: TypeCard.idea,
  id: 74,
  name: L10n.current.ideaStructure,
  description: L10n.current.ideaStructureDescription,
  prize: 1,
  quantity: -1,
);
CardModel kCablesIdea = CardModel(
  type: TypeCard.idea,
  id: 75,
  name: L10n.current.ideaCables,
  description: L10n.current.ideaCablesDescription,
  prize: 1,
  quantity: -1,
);
CardModel kStewIdea = CardModel(
  type: TypeCard.idea,
  id: 76,
  name: L10n.current.ideaStew,
  description: L10n.current.ideaStewDescription,
  prize: 1,
  quantity: -1,
);
CardModel kFriedMeatIdea = CardModel(
  type: TypeCard.idea,
  id: 77,
  name: L10n.current.ideaFriedMeat,
  description: L10n.current.ideaFriedMeatDescription,
  prize: 1,
  quantity: -1,
);
CardModel kFlourIdea = CardModel(
  type: TypeCard.idea,
  id: 78,
  name: L10n.current.ideaFlour,
  description: L10n.current.ideaFlourDescription,
  prize: 1,
  quantity: -1,
);
CardModel kBreadIdea = CardModel(
  type: TypeCard.idea,
  id: 79,
  name: L10n.current.ideaBread,
  description: L10n.current.ideaBreadDescription,
  prize: 2,
  quantity: -1,
);
CardModel kCakeIdea = CardModel(
  type: TypeCard.idea,
  id: 80,
  name: L10n.current.ideaCake,
  description: L10n.current.ideaCakeDescription,
  prize: 1,
  quantity: -1,
);
CardModel kHealthySaladIdea = CardModel(
  type: TypeCard.idea,
  id: 81,
  name: L10n.current.ideaHealthySalad,
  description: L10n.current.ideaHealthySaladDescription,
  prize: 1,
  quantity: -1,
);
CardModel kFruitShakeIdea = CardModel(
  type: TypeCard.idea,
  id: 82,
  name: L10n.current.ideaFruitShake,
  description: L10n.current.ideaFruitShakeDescription,
  prize: 1,
  quantity: -1,
);
CardModel kPotatoOmeletIdea = CardModel(
  type: TypeCard.idea,
  id: 83,
  name: L10n.current.ideaPotatoOmelet,
  description: L10n.current.ideaPotatoOmeletDescription,
  prize: 1,
  quantity: -1,
);
CardModel kApplePieIdea = CardModel(
  type: TypeCard.idea,
  id: 84,
  name: L10n.current.ideaApplePie,
  description: L10n.current.ideaApplePieDescription,
  prize: 1,
  quantity: -1,
);
CardModel kFarmFeastIdea = CardModel(
  type: TypeCard.idea,
  id: 85,
  name: L10n.current.ideaFarmFeast,
  description: L10n.current.ideaFarmFeastDescription,
  prize: 1,
  quantity: -1,
);
CardModel kBaulIdea = CardModel(
  type: TypeCard.idea,
  id: 86,
  name: L10n.current.ideaBaul,
  description: L10n.current.ideaBaulDescription,
  prize: 1,
  quantity: -1,
);
CardModel kWarehouseIdea = CardModel(
  type: TypeCard.idea,
  id: 87,
  name: L10n.current.ideaWarehouse,
  description: L10n.current.ideaWarehouseDescription,
  prize: 1,
  quantity: -1,
);
CardModel kFurnaceIdea = CardModel(
  type: TypeCard.idea,
  id: 88,
  name: L10n.current.ideaFurnace,
  description: L10n.current.ideaFurnaceDescription,
  prize: 1,
  quantity: -1,
);
CardModel kCraftingTableIdea = CardModel(
  type: TypeCard.idea,
  id: 89,
  name: L10n.current.ideaCraftingTable,
  description: L10n.current.ideaCraftingTableDescription,
  prize: 1,
  quantity: -1,
);
CardModel kSawmillIdea = CardModel(
  type: TypeCard.idea,
  id: 90,
  name: L10n.current.ideaSawmill,
  description: L10n.current.ideaSawmillDescription,
  prize: 1,
  quantity: -1,
);
CardModel kElectronicTableIdea = CardModel(
  type: TypeCard.idea,
  id: 91,
  name: L10n.current.electricTable,
  description: L10n.current.electricTable,
  prize: 1,
  quantity: -1,
);
CardModel kSolarPanelIdea = CardModel(
  type: TypeCard.idea,
  id: 92,
  name: L10n.current.ideaSolarpanel,
  description: L10n.current.ideaSolarpanelDescription,
  prize: 1,
  quantity: -1,
);
CardModel kFarmIdea = CardModel(
  type: TypeCard.idea,
  id: 93,
  name: L10n.current.ideaFarm,
  description: L10n.current.ideaFarmDescription,
  prize: 1,
  quantity: -1,
);
CardModel kOrchardIdea = CardModel(
  type: TypeCard.idea,
  id: 94,
  name: L10n.current.ideaOrchard,
  description: L10n.current.ideaOrchardDescription,
  prize: 1,
  quantity: -1,
);
CardModel kMillIdea = CardModel(
  type: TypeCard.idea,
  id: 95,
  name: L10n.current.ideaMill,
  description: L10n.current.ideaMillDescripcion,
  prize: 1,
  quantity: -1,
);
CardModel kGreenhouseIdea = CardModel(
  type: TypeCard.idea,
  id: 96,
  name: L10n.current.ideaGreenhouse,
  description: L10n.current.ideaGreenhouseDescripcion,
  prize: 1,
  quantity: -1,
);
CardModel kWindTurbineIdea = CardModel(
  type: TypeCard.idea,
  id: 97,
  name: L10n.current.ideaWindturbine,
  description: L10n.current.ideaWindturbineDescription,
  prize: 1,
  quantity: -1,
);
CardModel kRecyclerIdea = CardModel(
  type: TypeCard.idea,
  id: 98,
  name: L10n.current.ideaRecycler,
  description: L10n.current.ideaRecyclerDescription,
  prize: 1,
  quantity: -1,
);
CardModel kComposterIdea = CardModel(
  type: TypeCard.idea,
  id: 99,
  name: L10n.current.ideaComposter,
  description: L10n.current.ideaComposterDescripcion,
  prize: 1,
  quantity: -1,
);
CardModel kCampfireIdea = CardModel(
  type: TypeCard.idea,
  id: 100,
  name: L10n.current.ideaCampfire,
  description: L10n.current.ideaCampfireDescription,
  prize: 1,
  quantity: -1,
);
CardModel kAppleTreeIdea = CardModel(
  type: TypeCard.idea,
  id: 101,
  name: L10n.current.ideaAppleTree,
  description: L10n.current.ideaAppleTreeDescription,
  prize: 1,
  quantity: -1,
);
CardModel kBananaTreeIdea = CardModel(
  type: TypeCard.idea,
  id: 102,
  name: L10n.current.ideaBananaTree,
  description: L10n.current.ideaBananaTreeDescription,
  prize: 1,
  quantity: -1,
);
CardModel kMilkIdea = CardModel(
  type: TypeCard.idea,
  id: 103,
  name: L10n.current.ideaMilk,
  description: L10n.current.ideaMilkDescription,
  prize: 1,
  quantity: -1,
);
CardModel kFertilizerIdea = CardModel(
  type: TypeCard.idea,
  id: 104,
  name: L10n.current.ideaFertilizer,
  description: L10n.current.ideaFertilizerDescription,
  prize: 1,
  quantity: -1,
);
CardModel kWoodIdea = CardModel(
  type: TypeCard.idea,
  id: 105,
  name: L10n.current.ideaWood,
  description: L10n.current.ideaWoodDescription,
  prize: 1,
  quantity: -1,
);
CardModel kFertilizer = CardModel(
  id: 106,
  name: L10n.current.fertilizer,
  description: L10n.current.fertilizerDescription,
  type: TypeCard.material,
  prize: 1,
  quantity: -1,
);
CardModel kTreeSeed = CardModel(
  id: 107,
  name: L10n.current.treeSeed,
  description: L10n.current.treeSeedDescription,
  type: TypeCard.material,
  prize: 1,
  quantity: -1,
);
CardModel kWell = CardModel(
  id: 108,
  name: L10n.current.well,
  description: L10n.current.wellDescription,
  type: TypeCard.structure,
  prize: 1,
  quantity: -1,
);
CardModel kSallary = CardModel(
  id: 114,
  name: L10n.current.salary,
  description: L10n.current.salaryDescription,
  type: TypeCard.structure,
  prize: 8,
  quantity: -1,
);
CardModel kDev = CardModel(
  type: TypeCard.dev,
  id: 1000,
  name: L10n.current.devTeam,
  description: L10n.current.devTeamDescription,
  prize: 1,
  quantity: -1,
  oxygen: 5,
  carbonFootprint: -500,
  energy: 10,
  handicap: -500,
);
CardModel kFabian = CardModel(
  id: 1001,
  name: 'Fabian Jaramillo',
  description: '',
  type: TypeCard.dev,
  prize: 1,
  quantity: -1,
  oxygen: 3,
);
CardModel kYonnier = CardModel(
  id: 1002,
  name: 'Yonnier Munoz',
  description: '',
  type: TypeCard.dev,
  prize: 1,
  quantity: -1,
  carbonFootprint: -300,
);
CardModel kBrian = CardModel(
  id: 1003,
  name: 'Brian Yepez',
  description: '',
  type: TypeCard.dev,
  prize: 1,
  quantity: -1,
  energy: 7,
);
CardModel kSantiago = CardModel(
  id: 1004,
  name: 'Santiago Argote',
  description: '',
  type: TypeCard.dev,
  prize: 1,
  quantity: -1,
  handicap: -300,
);
