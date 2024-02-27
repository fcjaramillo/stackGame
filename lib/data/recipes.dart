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
      cards[1],
      cards[3],
      cards[5],
    ],
    time: 3,
    remove: <CardModel>[
      cards[3],
      cards[5],
    ],
    create: <CardModel>[
      cards[0],
    ],
  ),
];
