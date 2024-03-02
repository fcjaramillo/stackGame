part of 'data.dart';

List<PackModel> packs = [
  PackModel(
    id: 0,
    name: 'Initial Pack',
    description: '''Provide basic materials.
    Probabilities:
    - Plastic 30%
    - Rock 15%
    - Apple 15%
    - Banana 10%
    - Dirt 10%
    - Coal 10%
    - Wood 2%
    - Water 5%
    - Copper 2%
    - Iron 1%''',
    cost: 3,
    numberCards: 3,
    cards: <CardProbabilityModel>[
      CardProbabilityModel(
        card: kWood,
        percentage: 30,
      ),
      CardProbabilityModel(
        card: kRock,
        percentage: 15,
      ),
      CardProbabilityModel(
        card: kIron,
        percentage: 1,
      ),
      CardProbabilityModel(
        card: kCoal,
        percentage: 10,
      ),
      CardProbabilityModel(
        card: kWood,
        percentage: 2,
      ),
      CardProbabilityModel(
        card: kCopper,
        percentage: 2,
      ),
      CardProbabilityModel(
        card: kDirt,
        percentage: 10,
      ),
      CardProbabilityModel(
        card: kWater,
        percentage: 5,
      ),
      CardProbabilityModel(
        card: kApple,
        percentage: 15,
      ),
      CardProbabilityModel(
        card: kBanana,
        percentage: 10,
      ),
    ],
  ),
];
