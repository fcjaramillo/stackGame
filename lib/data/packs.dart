part of 'data.dart';

List<PackModel> packs = [
  PackModel(
    id: 0,
    name: 'Initial Pack',
    description: '''Provide basic materials.
   Probabilities:
   - Plastic 15%
   - Rock 15%
   - Wood 12%
   - Apple 10%
   - Banana 10%
   - Dirt 10%
   - Coal 10%
   - Water 10%
   - Copper 4%
   - Iron 4%
   ''',
    cost: 3,
    numberCards: 3,
    day: 0,
    cards: <CardProbabilityModel>[
      CardProbabilityModel(
        card: kPlastic,
        percentage: 14,
      ),
      CardProbabilityModel(
        card: kRock,
        percentage: 14,
      ),
      CardProbabilityModel(
        card: kIron,
        percentage: 4,
      ),
      CardProbabilityModel(
        card: kCoal,
        percentage: 10,
      ),
      CardProbabilityModel(
        card: kWood,
        percentage: 8,
      ),
      CardProbabilityModel(
        card: kCopper,
        percentage: 4,
      ),
      CardProbabilityModel(
        card: kDirt,
        percentage: 10,
      ),
      CardProbabilityModel(
        card: kWater,
        percentage: 8,
      ),
      CardProbabilityModel(
        card: kApple,
        percentage: 14,
      ),
      CardProbabilityModel(
        card: kBanana,
        percentage: 14,
      ),
    ],
  ),
  PackModel(
    id: 1,
    name: 'Food Pack',
    description: '''Provide basic food and different food recipes.
   Probabilities:
   - Wheat 10%
   - Carrot 10%
   - Potato 10%
   - Banana 10%
   - Apple 10%
   - Milk 10%
   - Meat 10%
   - Egg 10%
   - Flour 10%
   - Recipe 10%
   ''',
    cost: 5,
    numberCards: 3,
    day: 4,
    cards: <CardProbabilityModel>[
      CardProbabilityModel(
        card: kWheat,
        percentage: 10,
      ),
      CardProbabilityModel(
        card: kCarrot,
        percentage: 10,
      ),
      CardProbabilityModel(
        card: kPotato,
        percentage: 10,
      ),
      CardProbabilityModel(
        card: kBanana,
        percentage: 10,
      ),
      CardProbabilityModel(
        card: kApple,
        percentage: 10,
      ),
      CardProbabilityModel(
        card: kDev,
        percentage: 10,
      ),
      CardProbabilityModel(
        card: kMilk,
        percentage: 10,
      ),
      CardProbabilityModel(
        card: kMeat,
        percentage: 10,
      ),
      CardProbabilityModel(
        card: kEgg,
        percentage: 10,
      ),
      CardProbabilityModel(
        card: kFlour,
        percentage: 10,
      ),
    ],
    ideas: [
      kStewIdea,
      kFriedMeatIdea,
      kFlourIdea,
      kBreadIdea,
      kCakeIdea,
      kHealthySaladIdea,
      kFruitShakeIdea,
      kPotatoOmeletIdea,
      kApplePieIdea,
      kFarmFeastIdea,
      kMilkIdea,
    ],
  ),
  PackModel(
    id: 2,
    name: 'Material Pack',
    description: '''Provide materials and composite materials recipes.
   Probabilities:
   - Iron 14%
   - Coal 14%
   - Copper 14%
   - Dirt 14%
   - Water 14%
   - Glass 12%
   - Rock 4%
   - Wood 4%
   - Recipe 10%
   ''',
    cost: 8,
    numberCards: 3,
    day: 1,
    cards: <CardProbabilityModel>[
      CardProbabilityModel(
        card: kWood,
        percentage: 14,
      ),
      CardProbabilityModel(
        card: kCoal,
        percentage: 14,
      ),
      CardProbabilityModel(
        card: kCopper,
        percentage: 14,
      ),
      CardProbabilityModel(
        card: kDirt,
        percentage: 14,
      ),
      CardProbabilityModel(
        card: kWater,
        percentage: 14,
      ),
      CardProbabilityModel(
        card: kGlass,
        percentage: 12,
      ),
      CardProbabilityModel(
        card: kRock,
        percentage: 4,
      ),
      CardProbabilityModel(
        card: kGlass,
        percentage: 4,
      ),
      CardProbabilityModel(
        //This is for the recipes
        card: kDev,
        percentage: 10,
      ),
    ],
    ideas: [
      kIronIngotsIdea,
      kSiliconIdea,
      kCopperLineIdea,
      kInsulatorIdea,
      kSolarCellsIdea,
      kStructureIdea,
      kCablesIdea,
    ],
  ),
  PackModel(
    id: 4,
    name: 'Structure Pack',
    description:
        '''Provide essential material to create structures and structures recipes.
   Probabilities:
   - Structure 30%
   - Planks 25%
   - Crafting Table 15%
   - Electric Table 15%
   - Structure Recipe 15%
   ''',
    cost: 10,
    numberCards: 3,
    day: 10,
    cards: <CardProbabilityModel>[
      CardProbabilityModel(
        card: kStructure,
        percentage: 30,
      ),
      CardProbabilityModel(
        card: kPlanks,
        percentage: 25,
      ),
      CardProbabilityModel(
        card: kCraftingTable,
        percentage: 15,
      ),
      CardProbabilityModel(
        card: kElectricTable,
        percentage: 15,
      ),
      CardProbabilityModel(
        //This is for the recipes
        card: kDev,
        percentage: 15,
      ),
    ],
    ideas: [
      kBaulIdea,
      kWarehouseIdea,
      kFurnaceIdea,
      kCraftingTableIdea,
      kSawmillIdea,
      kElectronicTableIdea,
      kSolarPanelIdea,
      kFarmIdea,
      kOrchardIdea,
      kMillIdea,
      kGreenhouseIdea,
      kWindTurbineIdea,
      kRecyclerIdea,
    ],
  ),
  PackModel(
    id: 6,
    name: 'Nature Pack',
    description: '''Provide animals and plants and nature recipes.
   Probabilities:
   - TreeSeed 25%
   - Tree 15%
   - AppleTree 12%
   - BananaTree 12%
   - Cow 10%
   - Hen 10%
   - Recipe 10%
   - Dog 6%
   ''',
    cost: 8,
    numberCards: 3,
    day: 7,
    cards: <CardProbabilityModel>[
      CardProbabilityModel(
        card: kDog,
        percentage: 6,
      ),
      CardProbabilityModel(
        card: kCow,
        percentage: 10,
      ),
      CardProbabilityModel(
        card: kHen,
        percentage: 10,
      ),
      CardProbabilityModel(
        card: kTree,
        percentage: 15,
      ),
      CardProbabilityModel(
        card: kAppleTree,
        percentage: 12,
      ),
      CardProbabilityModel(
        card: kBananaTree,
        percentage: 12,
      ),
      CardProbabilityModel(
        card: kTreeSeed,
        percentage: 25,
      ),
      CardProbabilityModel(
        //This is for the recipes
        card: kDev,
        percentage: 10,
      ),
    ],
    ideas: [
      kComposterIdea,
      kCampfireIdea,
      kAppleTreeIdea,
      kBananaTreeIdea,
      kFertilizerIdea,
      kWoodIdea,
    ],
  ),
  PackModel(
    id: 5,
    name: 'Idea Pack',
    description: 'Provide one unfound idea or special card.',
    cost: 30,
    numberCards: 1,
    day: 10,
    cards: <CardProbabilityModel>[
      CardProbabilityModel(
        //This is for the recipes
        card: kDev,
        percentage: 10,
      ),
    ],
  ),
];
