part of 'data.dart';

List<PackModel> packs = [
  PackModel(
    id: 0,
    name: 'Initial Pack',
    description: '   Provide basic materials.',
    nameInt: (context) => L10n.of(context).initialPack,
    descriptionInt: (context) => L10n.of(context).initialPackDescription,
    cost: 3,
    numberCards: 3,
    day: 0,
    devCard: kFabian,
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
    description: 'Provide basic food and different food recipes.',
    nameInt: (context) => L10n.of(context).foodPack,
    descriptionInt: (context) => L10n.of(context).foodPackDescription,
    cost: 5,
    numberCards: 3,
    day: 4,
    devCard: kSantiago,
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
    description: 'Provide materials and composite materials recipes.',
    nameInt: (context) => L10n.of(context).materialPack,
    descriptionInt: (context) => L10n.of(context).materialPackDescription,
    cost: 5,
    numberCards: 3,
    day: 1,
    devCard: kBrian,
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
        'Provide essential material to create structures and structures recipes.',
    nameInt: (context) => L10n.of(context).structurePack,
    descriptionInt: (context) => L10n.of(context).structurePackDescription,
    cost: 10,
    numberCards: 3,
    day: 10,
    devCard: kFabian,
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
    description: 'Provide animals and plants and nature recipes.',
    nameInt: (context) => L10n.of(context).naturePack,
    descriptionInt: (context) => L10n.of(context).naturePackDescription,
    cost: 8,
    numberCards: 3,
    day: 7,
    devCard: kYonnier,
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
    nameInt: (context) => L10n.of(context).ideaPack,
    descriptionInt: (context) => L10n.of(context).ideaPackDescription,
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
