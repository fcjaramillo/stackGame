part of 'data.dart';

List<RecipeModel> recipes = <RecipeModel>[
  RecipeModel(
    id: 0,
    cards: <CardModel>[
      cards[0],
      cards[1],
      cards[2],
    ],
    time: 10,
  ),
  RecipeModel(
    id: 1,
    cards: <CardModel>[
      cards[0],
      cards[1],
      cards[1],
      cards[1],
    ],
    time: 5,
  ),
  RecipeModel(
    id: 2,
    cards: <CardModel>[
      cards[0],
      cards[2],
      cards[4],
    ],
    time: 3,
  ),
];
