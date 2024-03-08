part of 'data.dart';

List<PackModel> packs = [
  PackModel(
    id: 0,
    name: 'Initial Pack',
    description: '''   Provide basic materials.

   Probabilities:

   - Rock 15%
   - Wood 12%
   - Tree Seed 10%
   - Dirt 10%
   - Recipe 10%
   - Water 10%
   - Apple 8%
   - Banana 8%
   - Plastic 6%
   - Iron 6%
   - Copper 5%
   ''',
    cost: 3,
    numberCards: 3,
    day: 0,
    cards: <CardProbabilityModel>[
      CardProbabilityModel(
        card: kRock,
        percentage: 12,
      ),
      CardProbabilityModel(
        card: kWood,
        percentage: 12,
      ),
      CardProbabilityModel(
        card: kTreeSeed,
        percentage: 10,
      ),
      CardProbabilityModel(
        card: kDirt,
        percentage: 10,
      ),
      CardProbabilityModel(
        card: kDev,
        percentage: 18,
      ),
      CardProbabilityModel(
        card: kWater,
        percentage: 10,
      ),
      CardProbabilityModel(
        card: kPlastic,
        percentage: 6,
      ),
      CardProbabilityModel(
        card: kIron,
        percentage: 6,
      ),
      CardProbabilityModel(
        card: kApple,
        percentage: 8,
      ),
      CardProbabilityModel(
        card: kBanana,
        percentage: 8,
      ),
    ],
    ideas: [
      kBaulIdea,
      kFurnaceIdea,
      kStructureIdea,
      kTreeIdea,
      kCraftingTableIdea,
    ],
  ),
  PackModel(
    id: 1,
    name: 'Food Pack',
    description: '''Provide basic food and different food recipes.
   Probabilities:
   - Recipe 12%
   - Carrot 10%
   - Potato 10%
   - Banana 10%
   - Apple 10%
   - Flour 10%
   - Wheat 10%
   - Milk 10%
   - Egg 10%
   - Meat 8%
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
        card: kMilk,
        percentage: 10,
      ),
      CardProbabilityModel(
        card: kMeat,
        percentage: 8,
      ),
      CardProbabilityModel(
        card: kEgg,
        percentage: 10,
      ),
      CardProbabilityModel(
        card: kFlour,
        percentage: 10,
      ),
      CardProbabilityModel(
        card: kDev,
        percentage: 12,
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
   - Recipe 12%
   - Glass 6%
   - Rock 6%
   - Wood 6%
   ''',
    cost: 5,
    numberCards: 3,
    day: 1,
    cards: <CardProbabilityModel>[
      CardProbabilityModel(
        card: kIron,
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
        percentage: 6,
      ),
      CardProbabilityModel(
        card: kRock,
        percentage: 6,
      ),
      CardProbabilityModel(
        card: kWood,
        percentage: 6,
      ),
      CardProbabilityModel(
        card: kDev,
        percentage: 12,
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
   - Structure Recipe 15%
   - Silicon 10%
   - Crafting Table 10%
   - Electric Table 5%
   - Iron 5%
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
        card: kSilicon,
        percentage: 10,
      ),
      CardProbabilityModel(
        card: kCraftingTable,
        percentage: 10,
      ),
      CardProbabilityModel(
        card: kElectricTable,
        percentage: 5,
      ),
      CardProbabilityModel(
        card: kDev,
        percentage: 15,
      ),
    ],
    ideas: [
      kWarehouseIdea,
      kCraftingTableIdea,
      kSawmillIdea,
      kElectronicTableIdea,
      kSolarPanelIdea,
      kFarmIdea,
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
   - Tree Seed 40%
   - Recipe 12%
   - Hen 12%
   - Cow 10%
   - Dog 8%
   - Tree 8%
   - AppleTree 5%
   - BananaTree 5%
   ''',
    cost: 8,
    numberCards: 3,
    day: 7,
    cards: <CardProbabilityModel>[
      CardProbabilityModel(
        card: kTreeSeed,
        percentage: 40,
      ),
      CardProbabilityModel(
        card: kCow,
        percentage: 10,
      ),
      CardProbabilityModel(
        card: kHen,
        percentage: 12,
      ),
      CardProbabilityModel(
        card: kTree,
        percentage: 8,
      ),
      CardProbabilityModel(
        card: kAppleTree,
        percentage: 5,
      ),
      CardProbabilityModel(
        card: kBananaTree,
        percentage: 5,
      ),
      CardProbabilityModel(
        card: kDog,
        percentage: 8,
      ),
      CardProbabilityModel(
        card: kDev,
        percentage: 12,
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
    cost: 20,
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
