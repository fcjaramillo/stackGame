part of 'data.dart';

List<QuestModel> kRoadMap = [
  QuestModel(
    id: 0,
    name: (context) => L10n.of(context).questWork,
    description: (context) => L10n.of(context).questWorkDescription,
    isComplete: false,
  ),
  QuestModel(
    id: 1,
    name: (context) => L10n.of(context).questSalary,
    description: (context) => L10n.of(context).questSalaryDescription,
    isComplete: false,
  ),
  QuestModel(
    id: 2,
    name: (context) => L10n.of(context).questInitial,
    description: (context) => L10n.of(context).questInitialDescription,
    isComplete: false,
  ),
  QuestModel(
    id: 3,
    name: (context) => L10n.of(context).questBuyFood,
    description: (context) => L10n.of(context).questBuyFoodDescription,
    isComplete: false,
  ),
  QuestModel(
    id: 4,
    name: (context) => L10n.of(context).questSurvive,
    description: (context) => L10n.of(context).questSurviveDescription,
    isComplete: false,
  ),
  QuestModel(
    id: 5,
    name: (context) => L10n.of(context).questCrafting,
    description: (context) => L10n.of(context).questCraftingDescription,
    isComplete: false,
  ),
  QuestModel(
    id: 6,
    name: (context) => L10n.of(context).questUnlock,
    description: (context) => L10n.of(context).questUnlockDescription,
    isComplete: false,
  ),
  /*QuestModel(
    id: 7,
    name: (context) => L10n.of(context).questUnlock,
    description: (context) => L10n.of(context).questUnlockDescription,
    name: "Recycle 30 Plastics",
    description: "Contribute to the environment by recycling 30 plastics.",
    isComplete: false,
  ),*/
  QuestModel(
    id: 8,
    name: (context) => L10n.of(context).questCraftFeast,
    description: (context) => L10n.of(context).questCraftFeastDescription,
    isComplete: false,
  ),
  QuestModel(
    id: 9,
    name: (context) => L10n.of(context).questCraftPanel,
    description: (context) => L10n.of(context).questCraftPanel,
    isComplete: false,
  ),
];
