// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class L10n {
  L10n();

  static L10n? _current;

  static L10n get current {
    assert(_current != null,
        'No instance of L10n was loaded. Try to initialize the L10n delegate before accessing L10n.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<L10n> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = L10n();
      L10n._current = instance;

      return instance;
    });
  }

  static L10n of(BuildContext context) {
    final instance = L10n.maybeOf(context);
    assert(instance != null,
        'No instance of L10n present in the widget tree. Did you add L10n.delegate in localizationsDelegates?');
    return instance!;
  }

  static L10n? maybeOf(BuildContext context) {
    return Localizations.of<L10n>(context, L10n);
  }

  /// `Cantidad`
  String get quantity {
    return Intl.message(
      'Cantidad',
      name: 'quantity',
      desc: '',
      args: [],
    );
  }

  /// `Comida`
  String get food {
    return Intl.message(
      'Comida',
      name: 'food',
      desc: '',
      args: [],
    );
  }

  /// `Salud`
  String get health {
    return Intl.message(
      'Salud',
      name: 'health',
      desc: '',
      args: [],
    );
  }

  /// `Oxígeno`
  String get oxygen {
    return Intl.message(
      'Oxígeno',
      name: 'oxygen',
      desc: '',
      args: [],
    );
  }

  /// `Huella de Carbono`
  String get carbonFP {
    return Intl.message(
      'Huella de Carbono',
      name: 'carbonFP',
      desc: '',
      args: [],
    );
  }

  /// `Moneda`
  String get coin {
    return Intl.message(
      'Moneda',
      name: 'coin',
      desc: '',
      args: [],
    );
  }

  /// `Cartas`
  String get cards {
    return Intl.message(
      'Cartas',
      name: 'cards',
      desc: '',
      args: [],
    );
  }

  /// `Huella de Carbono`
  String get carbonFootprint {
    return Intl.message(
      'Huella de Carbono',
      name: 'carbonFootprint',
      desc: '',
      args: [],
    );
  }

  /// `Misión`
  String get quest {
    return Intl.message(
      'Misión',
      name: 'quest',
      desc: '',
      args: [],
    );
  }

  /// `Recetas`
  String get recipes {
    return Intl.message(
      'Recetas',
      name: 'recipes',
      desc: '',
      args: [],
    );
  }

  /// `Logros`
  String get achivements {
    return Intl.message(
      'Logros',
      name: 'achivements',
      desc: '',
      args: [],
    );
  }

  /// `Tiempo: {tiempo} seg`
  String timeRecipe(Object tiempo) {
    return Intl.message(
      'Tiempo: $tiempo seg',
      name: 'timeRecipe',
      desc: '',
      args: [tiempo],
    );
  }

  /// `GREENSTACK`
  String get welcomeTitle {
    return Intl.message(
      'GREENSTACK',
      name: 'welcomeTitle',
      desc: '',
      args: [],
    );
  }

  /// `¿Quieres cambiar tus hábitos? Para hacerlo, mueve, agrupa, crea y vende cartas.`
  String get welcomeSubtitle {
    return Intl.message(
      '¿Quieres cambiar tus hábitos? Para hacerlo, mueve, agrupa, crea y vende cartas.',
      name: 'welcomeSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Presiona enter`
  String get welcomeAction {
    return Intl.message(
      'Presiona enter',
      name: 'welcomeAction',
      desc: '',
      args: [],
    );
  }

  /// `GREENSTACK`
  String get onboardingTitle {
    return Intl.message(
      'GREENSTACK',
      name: 'onboardingTitle',
      desc: '',
      args: [],
    );
  }

  /// `Sigue las misiones y busca las recetas en los paquetes.\n \n CONTROLES: Espacio = Pausa, tecla m = Sonido ACTIVADO/DESACTIVADO, tecla f = Velocidad ACTIVADA/DESACTIVADA`
  String get onboardingSubtitle {
    return Intl.message(
      'Sigue las misiones y busca las recetas en los paquetes.\n \n CONTROLES: Espacio = Pausa, tecla m = Sonido ACTIVADO/DESACTIVADO, tecla f = Velocidad ACTIVADA/DESACTIVADA',
      name: 'onboardingSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Presiona enter`
  String get onboardingAction {
    return Intl.message(
      'Presiona enter',
      name: 'onboardingAction',
      desc: '',
      args: [],
    );
  }

  /// `F I N   D E L   J U E G O`
  String get gameOverTitle {
    return Intl.message(
      'F I N   D E L   J U E G O',
      name: 'gameOverTitle',
      desc: '',
      args: [],
    );
  }

  /// `Toca para Jugar de Nuevo`
  String get gameOverSubtitle {
    return Intl.message(
      'Toca para Jugar de Nuevo',
      name: 'gameOverSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Presiona enter`
  String get gameOverAction {
    return Intl.message(
      'Presiona enter',
      name: 'gameOverAction',
      desc: '',
      args: [],
    );
  }

  /// `¡G A N A S T E ! ! !`
  String get wonTitle {
    return Intl.message(
      '¡G A N A S T E ! ! !',
      name: 'wonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Toca para Jugar de Nuevo`
  String get wonSubtitle {
    return Intl.message(
      'Toca para Jugar de Nuevo',
      name: 'wonSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Presiona enter`
  String get wonAction {
    return Intl.message(
      'Presiona enter',
      name: 'wonAction',
      desc: '',
      args: [],
    );
  }

  /// `Debes vender algunas cartas`
  String get sellingTitle {
    return Intl.message(
      'Debes vender algunas cartas',
      name: 'sellingTitle',
      desc: '',
      args: [],
    );
  }

  /// `La Primera Creación`
  String get achivementFirtsCraft {
    return Intl.message(
      'La Primera Creación',
      name: 'achivementFirtsCraft',
      desc: '',
      args: [],
    );
  }

  /// `¡Felicidades! Has creado tu primer objeto. ¿Quién sabía que palos y piedras podían hacer tanto?`
  String get achivementFirtsCraftDescription {
    return Intl.message(
      '¡Felicidades! Has creado tu primer objeto. ¿Quién sabía que palos y piedras podían hacer tanto?',
      name: 'achivementFirtsCraftDescription',
      desc: '',
      args: [],
    );
  }

  /// `El Primer Día`
  String get achivementFirtsDay {
    return Intl.message(
      'El Primer Día',
      name: 'achivementFirtsDay',
      desc: '',
      args: [],
    );
  }

  /// `¡Has sobrevivido tu primer día! El futuro parece brillante... ¿o es solo el amanecer?`
  String get achivementFirtsDayDescription {
    return Intl.message(
      '¡Has sobrevivido tu primer día! El futuro parece brillante... ¿o es solo el amanecer?',
      name: 'achivementFirtsDayDescription',
      desc: '',
      args: [],
    );
  }

  /// `Evolución del Huevo`
  String get achivementEggvolution {
    return Intl.message(
      'Evolución del Huevo',
      name: 'achivementEggvolution',
      desc: '',
      args: [],
    );
  }

  /// `¿10 huevos en el mapa? ¡Prácticamente eres un granjero de aves ahora!`
  String get achivementEggvolutionDescription {
    return Intl.message(
      '¿10 huevos en el mapa? ¡Prácticamente eres un granjero de aves ahora!',
      name: 'achivementEggvolutionDescription',
      desc: '',
      args: [],
    );
  }

  /// `La Culpa de la Vaca`
  String get achivementCow {
    return Intl.message(
      'La Culpa de la Vaca',
      name: 'achivementCow',
      desc: '',
      args: [],
    );
  }

  /// `Encontraste tu primer excremento. Esta es una situación desagradable, pero alguien tiene que manejarla.`
  String get achivementCowDescription {
    return Intl.message(
      'Encontraste tu primer excremento. Esta es una situación desagradable, pero alguien tiene que manejarla.',
      name: 'achivementCowDescription',
      desc: '',
      args: [],
    );
  }

  /// `Amigos Peludos`
  String get achivementFuriends {
    return Intl.message(
      'Amigos Peludos',
      name: 'achivementFuriends',
      desc: '',
      args: [],
    );
  }

  /// `¡Conseguiste tu primer perro! Recuerda, con gran poder viene una gran responsabilidad... de recoger excrementos.`
  String get achivementFuriendsDescription {
    return Intl.message(
      '¡Conseguiste tu primer perro! Recuerda, con gran poder viene una gran responsabilidad... de recoger excrementos.',
      name: 'achivementFuriendsDescription',
      desc: '',
      args: [],
    );
  }

  /// `Descubridor de los Devs`
  String get achivementDevsCoverer {
    return Intl.message(
      'Descubridor de los Devs',
      name: 'achivementDevsCoverer',
      desc: '',
      args: [],
    );
  }

  /// `Desbloqueaste la carta de Dev. No estamos seguros si deberías estar orgulloso o preocupado.`
  String get achivementDevsCovererDescription {
    return Intl.message(
      'Desbloqueaste la carta de Dev. No estamos seguros si deberías estar orgulloso o preocupado.',
      name: 'achivementDevsCovererDescription',
      desc: '',
      args: [],
    );
  }

  /// `Hágase la Luz`
  String get achivementLight {
    return Intl.message(
      'Hágase la Luz',
      name: 'achivementLight',
      desc: '',
      args: [],
    );
  }

  /// `Hiciste tu primer panel solar. ¿Quién necesita el sol cuando tienes tecnología?`
  String get achivementLightDescription {
    return Intl.message(
      'Hiciste tu primer panel solar. ¿Quién necesita el sol cuando tienes tecnología?',
      name: 'achivementLightDescription',
      desc: '',
      args: [],
    );
  }

  /// `Panza Llena, Corazón Contento`
  String get achivementFullBelly {
    return Intl.message(
      'Panza Llena, Corazón Contento',
      name: 'achivementFullBelly',
      desc: '',
      args: [],
    );
  }

  /// `Preparaste tu primer banquete de granja. ¡Buen provecho!`
  String get achivementFullBellyDescription {
    return Intl.message(
      'Preparaste tu primer banquete de granja. ¡Buen provecho!',
      name: 'achivementFullBellyDescription',
      desc: '',
      args: [],
    );
  }

  /// `Vida Verde`
  String get achivementGreenLife {
    return Intl.message(
      'Vida Verde',
      name: 'achivementGreenLife',
      desc: '',
      args: [],
    );
  }

  /// `Ganaste el juego por primera vez. La Madre Naturaleza estaría orgullosa.`
  String get achivementGreenLifeDescription {
    return Intl.message(
      'Ganaste el juego por primera vez. La Madre Naturaleza estaría orgullosa.',
      name: 'achivementGreenLifeDescription',
      desc: '',
      args: [],
    );
  }

  /// `Apocalipsis`
  String get achivementApocalypse {
    return Intl.message(
      'Apocalipsis',
      name: 'achivementApocalypse',
      desc: '',
      args: [],
    );
  }

  /// `Perdiste el juego por primera vez. No es el fin del mundo... oh espera.`
  String get achivementApocalypseDescription {
    return Intl.message(
      'Perdiste el juego por primera vez. No es el fin del mundo... oh espera.',
      name: 'achivementApocalypseDescription',
      desc: '',
      args: [],
    );
  }

  /// `Adicción al Medio Ambiente`
  String get achivementAddiction {
    return Intl.message(
      'Adicción al Medio Ambiente',
      name: 'achivementAddiction',
      desc: '',
      args: [],
    );
  }

  /// `Obtuviste todos los logros. ¡Oficialmente eres un amante de la naturaleza!`
  String get achivementAddictionDescription {
    return Intl.message(
      'Obtuviste todos los logros. ¡Oficialmente eres un amante de la naturaleza!',
      name: 'achivementAddictionDescription',
      desc: '',
      args: [],
    );
  }

  /// `Ve al Trabajo`
  String get questWork {
    return Intl.message(
      'Ve al Trabajo',
      name: 'questWork',
      desc: '',
      args: [],
    );
  }

  /// `Comienza tu viaje yendo al trabajo.`
  String get questWorkDescription {
    return Intl.message(
      'Comienza tu viaje yendo al trabajo.',
      name: 'questWorkDescription',
      desc: '',
      args: [],
    );
  }

  /// `Vende la Tarjeta de Salario`
  String get questSalary {
    return Intl.message(
      'Vende la Tarjeta de Salario',
      name: 'questSalary',
      desc: '',
      args: [],
    );
  }

  /// `Gana algunas monedas iniciales vendiendo tu tarjeta de salario.`
  String get questSalaryDescription {
    return Intl.message(
      'Gana algunas monedas iniciales vendiendo tu tarjeta de salario.',
      name: 'questSalaryDescription',
      desc: '',
      args: [],
    );
  }

  /// `Compra el Paquete Inicial`
  String get questInitial {
    return Intl.message(
      'Compra el Paquete Inicial',
      name: 'questInitial',
      desc: '',
      args: [],
    );
  }

  /// `Invierte en tu supervivencia comprando el Paquete Inicial.`
  String get questInitialDescription {
    return Intl.message(
      'Invierte en tu supervivencia comprando el Paquete Inicial.',
      name: 'questInitialDescription',
      desc: '',
      args: [],
    );
  }

  /// `Compra Comida en CCBurger`
  String get questBuyFood {
    return Intl.message(
      'Compra Comida en CCBurger',
      name: 'questBuyFood',
      desc: '',
      args: [],
    );
  }

  /// `Mantén el hambre a raya con una comida de CCBurger.`
  String get questBuyFoodDescription {
    return Intl.message(
      'Mantén el hambre a raya con una comida de CCBurger.',
      name: 'questBuyFoodDescription',
      desc: '',
      args: [],
    );
  }

  /// `Sobrevive el Primer Día`
  String get questSurvive {
    return Intl.message(
      'Sobrevive el Primer Día',
      name: 'questSurvive',
      desc: '',
      args: [],
    );
  }

  /// `Sobrevive tu primer día sin morir.`
  String get questSurviveDescription {
    return Intl.message(
      'Sobrevive tu primer día sin morir.',
      name: 'questSurviveDescription',
      desc: '',
      args: [],
    );
  }

  /// `Crea una Mesa de Trabajo`
  String get questCrafting {
    return Intl.message(
      'Crea una Mesa de Trabajo',
      name: 'questCrafting',
      desc: '',
      args: [],
    );
  }

  /// `Construye una mesa de trabajo para desbloquear nuevas posibilidades de creación.`
  String get questCraftingDescription {
    return Intl.message(
      'Construye una mesa de trabajo para desbloquear nuevas posibilidades de creación.',
      name: 'questCraftingDescription',
      desc: '',
      args: [],
    );
  }

  /// `Desbloquea una Idea`
  String get questUnlock {
    return Intl.message(
      'Desbloquea una Idea',
      name: 'questUnlock',
      desc: '',
      args: [],
    );
  }

  /// `Gasta tus monedas en cualquier paquete para desbloquear nuevas ideas.`
  String get questUnlockDescription {
    return Intl.message(
      'Gasta tus monedas en cualquier paquete para desbloquear nuevas ideas.',
      name: 'questUnlockDescription',
      desc: '',
      args: [],
    );
  }

  /// `Recicla 30 Plásticos`
  String get questRecycle {
    return Intl.message(
      'Recicla 30 Plásticos',
      name: 'questRecycle',
      desc: '',
      args: [],
    );
  }

  /// `Contribuye al medio ambiente reciclando 30 plásticos.`
  String get questRecycleDescription {
    return Intl.message(
      'Contribuye al medio ambiente reciclando 30 plásticos.',
      name: 'questRecycleDescription',
      desc: '',
      args: [],
    );
  }

  /// `Crea un Banquete de Granja`
  String get questCraftFeast {
    return Intl.message(
      'Crea un Banquete de Granja',
      name: 'questCraftFeast',
      desc: '',
      args: [],
    );
  }

  /// `Prepara un delicioso banquete de granja para restaurar tu energía.`
  String get questCraftFeastDescription {
    return Intl.message(
      'Prepara un delicioso banquete de granja para restaurar tu energía.',
      name: 'questCraftFeastDescription',
      desc: '',
      args: [],
    );
  }

  /// `Crea un Panel Solar`
  String get questCraftPanel {
    return Intl.message(
      'Crea un Panel Solar',
      name: 'questCraftPanel',
      desc: '',
      args: [],
    );
  }

  /// `Aprovecha el poder del sol con un panel solar.`
  String get questCraftPanelDescription {
    return Intl.message(
      'Aprovecha el poder del sol con un panel solar.',
      name: 'questCraftPanelDescription',
      desc: '',
      args: [],
    );
  }

  /// `Título`
  String get title {
    return Intl.message(
      'Título',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `buscar`
  String get search {
    return Intl.message(
      'buscar',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `viaje`
  String get travel {
    return Intl.message(
      'viaje',
      name: 'travel',
      desc: '',
      args: [],
    );
  }

  /// `lista de deseos`
  String get wishList {
    return Intl.message(
      'lista de deseos',
      name: 'wishList',
      desc: '',
      args: [],
    );
  }

  /// `mensajes`
  String get menssages {
    return Intl.message(
      'mensajes',
      name: 'menssages',
      desc: '',
      args: [],
    );
  }

  /// `billetera`
  String get wallet {
    return Intl.message(
      'billetera',
      name: 'wallet',
      desc: '',
      args: [],
    );
  }

  /// `Demo de Flutter`
  String get flutterDemo {
    return Intl.message(
      'Demo de Flutter',
      name: 'flutterDemo',
      desc: '',
      args: [],
    );
  }

  /// `Página de inicio de la demostración de Flutter`
  String get flutterDemoHomePage {
    return Intl.message(
      'Página de inicio de la demostración de Flutter',
      name: 'flutterDemoHomePage',
      desc: '',
      args: [],
    );
  }

  /// `Descargar`
  String get download {
    return Intl.message(
      'Descargar',
      name: 'download',
      desc: '',
      args: [],
    );
  }

  /// `tú`
  String get you {
    return Intl.message(
      'tú',
      name: 'you',
      desc: '',
      args: [],
    );
  }

  /// `¿Qué estás mirando? -_-`
  String get youDescription {
    return Intl.message(
      '¿Qué estás mirando? -_-',
      name: 'youDescription',
      desc: '',
      args: [],
    );
  }

  /// `Roca`
  String get rock {
    return Intl.message(
      'Roca',
      name: 'rock',
      desc: '',
      args: [],
    );
  }

  /// `Tan resistente que incluso Goliat temblaría al verla. Ideal para construir o lanzar gigantes molestos.`
  String get rockDescription {
    return Intl.message(
      'Tan resistente que incluso Goliat temblaría al verla. Ideal para construir o lanzar gigantes molestos.',
      name: 'rockDescription',
      desc: '',
      args: [],
    );
  }

  /// `Hierro`
  String get iron {
    return Intl.message(
      'Hierro',
      name: 'iron',
      desc: '',
      args: [],
    );
  }

  /// `Más fuerte que el amor de mamá. Ideal para crear estructuras.`
  String get ironDescription {
    return Intl.message(
      'Más fuerte que el amor de mamá. Ideal para crear estructuras.',
      name: 'ironDescription',
      desc: '',
      args: [],
    );
  }

  /// `Carbón`
  String get coal {
    return Intl.message(
      'Carbón',
      name: 'coal',
      desc: '',
      args: [],
    );
  }

  /// `Una fuente de energía esencial y materia prima para la fabricación de silicio.`
  String get coalDescription {
    return Intl.message(
      'Una fuente de energía esencial y materia prima para la fabricación de silicio.',
      name: 'coalDescription',
      desc: '',
      args: [],
    );
  }

  /// `Madera`
  String get wood {
    return Intl.message(
      'Madera',
      name: 'wood',
      desc: '',
      args: [],
    );
  }

  /// `Renovable y abundante, la madera es esencial para la construcción y fabricación de una variedad de objetos.`
  String get woodDescription {
    return Intl.message(
      'Renovable y abundante, la madera es esencial para la construcción y fabricación de una variedad de objetos.',
      name: 'woodDescription',
      desc: '',
      args: [],
    );
  }

  /// `Vidrio`
  String get glass {
    return Intl.message(
      'Vidrio',
      name: 'glass',
      desc: '',
      args: [],
    );
  }

  /// `El amigo invisible de las ventanas y las botellas: ¡el vidrio, el material que te permite espiar a tus vecinos sin que ellos lo sepan!`
  String get glassDescription {
    return Intl.message(
      'El amigo invisible de las ventanas y las botellas: ¡el vidrio, el material que te permite espiar a tus vecinos sin que ellos lo sepan!',
      name: 'glassDescription',
      desc: '',
      args: [],
    );
  }

  /// `Plástico`
  String get plastic {
    return Intl.message(
      'Plástico',
      name: 'plastic',
      desc: '',
      args: [],
    );
  }

  /// `La cosa que nunca se echa a perder, al igual que tus deudas estudiantiles.`
  String get plasticDescription {
    return Intl.message(
      'La cosa que nunca se echa a perder, al igual que tus deudas estudiantiles.',
      name: 'plasticDescription',
      desc: '',
      args: [],
    );
  }

  /// `Cobre`
  String get copper {
    return Intl.message(
      'Cobre',
      name: 'copper',
      desc: '',
      args: [],
    );
  }

  /// `Un excelente conductor de electricidad, el cobre es esencial para la fabricación de cables y componentes electrónicos.`
  String get copperDescription {
    return Intl.message(
      'Un excelente conductor de electricidad, el cobre es esencial para la fabricación de cables y componentes electrónicos.',
      name: 'copperDescription',
      desc: '',
      args: [],
    );
  }

  /// `Tierra`
  String get dirt {
    return Intl.message(
      'Tierra',
      name: 'dirt',
      desc: '',
      args: [],
    );
  }

  /// `El abrazo de la naturaleza, ¡la madre de todas las plantas y gusanos! Rica en nutrientes y esencial para la vida de las plantas.`
  String get dirtDescription {
    return Intl.message(
      'El abrazo de la naturaleza, ¡la madre de todas las plantas y gusanos! Rica en nutrientes y esencial para la vida de las plantas.',
      name: 'dirtDescription',
      desc: '',
      args: [],
    );
  }

  /// `Agua`
  String get water {
    return Intl.message(
      'Agua',
      name: 'water',
      desc: '',
      args: [],
    );
  }

  /// `El elixir de la vida, esencial para la supervivencia de todas las formas de vida conocidas.`
  String get waterDescription {
    return Intl.message(
      'El elixir de la vida, esencial para la supervivencia de todas las formas de vida conocidas.',
      name: 'waterDescription',
      desc: '',
      args: [],
    );
  }

  /// ` Lingotes de Hierro`
  String get ironIngots {
    return Intl.message(
      ' Lingotes de Hierro',
      name: 'ironIngots',
      desc: '',
      args: [],
    );
  }

  /// `Lingotes de hierro refinados y resistentes listos para ser forjados en las herramientas más fuertes. ¡Con estos lingotes, incluso Iron Man estaría celoso!`
  String get ironIngotsDescription {
    return Intl.message(
      'Lingotes de hierro refinados y resistentes listos para ser forjados en las herramientas más fuertes. ¡Con estos lingotes, incluso Iron Man estaría celoso!',
      name: 'ironIngotsDescription',
      desc: '',
      args: [],
    );
  }

  /// `Silicio`
  String get silicon {
    return Intl.message(
      'Silicio',
      name: 'silicon',
      desc: '',
      args: [],
    );
  }

  /// `El bloque de construcción esencial para la tecnología moderna, el silicio es la piedra angular de la electrónica. ¿Quién sabía que la arena de la playa podría ser tan útil? ¡Gracias, silicio!`
  String get siliconDescription {
    return Intl.message(
      'El bloque de construcción esencial para la tecnología moderna, el silicio es la piedra angular de la electrónica. ¿Quién sabía que la arena de la playa podría ser tan útil? ¡Gracias, silicio!',
      name: 'siliconDescription',
      desc: '',
      args: [],
    );
  }

  /// `Línea de Cobre`
  String get copperLine {
    return Intl.message(
      'Línea de Cobre',
      name: 'copperLine',
      desc: '',
      args: [],
    );
  }

  /// `Necesitan ser refinados para conducir energía. Estos cables tienen una nueva moda. Ahora se ven más desnudos que nunca.`
  String get copperLineDescription {
    return Intl.message(
      'Necesitan ser refinados para conducir energía. Estos cables tienen una nueva moda. Ahora se ven más desnudos que nunca.',
      name: 'copperLineDescription',
      desc: '',
      args: [],
    );
  }

  /// `Aislantes`
  String get insulators {
    return Intl.message(
      'Aislantes',
      name: 'insulators',
      desc: '',
      args: [],
    );
  }

  /// `Protegen contra cortocircuitos y descargas eléctricas, manteniendo la corriente en su lugar. ¿Quién hubiera pensado que un poco de plástico podría prevenir tanto drama eléctrico?`
  String get insulatorsDescription {
    return Intl.message(
      'Protegen contra cortocircuitos y descargas eléctricas, manteniendo la corriente en su lugar. ¿Quién hubiera pensado que un poco de plástico podría prevenir tanto drama eléctrico?',
      name: 'insulatorsDescription',
      desc: '',
      args: [],
    );
  }

  /// `Celdas Solares`
  String get solarCells {
    return Intl.message(
      'Celdas Solares',
      name: 'solarCells',
      desc: '',
      args: [],
    );
  }

  /// `Estas celdas solares transforman la luz solar en electricidad, proporcionando energía limpia y sostenible y haciendo que el sol trabaje horas extras. Buen trabajo, sol.`
  String get solarCellsDescription {
    return Intl.message(
      'Estas celdas solares transforman la luz solar en electricidad, proporcionando energía limpia y sostenible y haciendo que el sol trabaje horas extras. Buen trabajo, sol.',
      name: 'solarCellsDescription',
      desc: '',
      args: [],
    );
  }

  /// `Estructura`
  String get structure {
    return Intl.message(
      'Estructura',
      name: 'structure',
      desc: '',
      args: [],
    );
  }

  /// `Proporciona estabilidad y soporte para diversas construcciones, desde casas hasta maquinaria. Tan fuerte que incluso Chuck Norris estaría orgulloso.`
  String get structureDescription {
    return Intl.message(
      'Proporciona estabilidad y soporte para diversas construcciones, desde casas hasta maquinaria. Tan fuerte que incluso Chuck Norris estaría orgulloso.',
      name: 'structureDescription',
      desc: '',
      args: [],
    );
  }

  /// `Cables`
  String get cables {
    return Intl.message(
      'Cables',
      name: 'cables',
      desc: '',
      args: [],
    );
  }

  /// `Cables listos para conectar y transmitir energía de manera eficiente. Estos cables funcionales son tan confiables como la excusa de 'el perro se comió mi tarea'.`
  String get cablesDescription {
    return Intl.message(
      'Cables listos para conectar y transmitir energía de manera eficiente. Estos cables funcionales son tan confiables como la excusa de \'el perro se comió mi tarea\'.',
      name: 'cablesDescription',
      desc: '',
      args: [],
    );
  }

  /// `Comida Rápida`
  String get fastFood {
    return Intl.message(
      'Comida Rápida',
      name: 'fastFood',
      desc: '',
      args: [],
    );
  }

  /// `Alimentos preparados de manera rápida y conveniente, pero con bajo valor nutricional.`
  String get fastFoodDescription {
    return Intl.message(
      'Alimentos preparados de manera rápida y conveniente, pero con bajo valor nutricional.',
      name: 'fastFoodDescription',
      desc: '',
      args: [],
    );
  }

  /// `Trigo`
  String get wheat {
    return Intl.message(
      'Trigo',
      name: 'wheat',
      desc: '',
      args: [],
    );
  }

  /// `Cereal utilizado para hacer harina y diversos productos horneados. Y aunque no lo parezca, a las vacas les encanta.`
  String get wheatDescription {
    return Intl.message(
      'Cereal utilizado para hacer harina y diversos productos horneados. Y aunque no lo parezca, a las vacas les encanta.',
      name: 'wheatDescription',
      desc: '',
      args: [],
    );
  }

  /// `Zanahoria`
  String get carrot {
    return Intl.message(
      'Zanahoria',
      name: 'carrot',
      desc: '',
      args: [],
    );
  }

  /// `Una verdura rica en nutrientes y crucial para mantener una dieta equilibrada. Tan buena que podría hacer que Bugs Bunny renuncie a las zanahorias de la competencia.`
  String get carrotDescription {
    return Intl.message(
      'Una verdura rica en nutrientes y crucial para mantener una dieta equilibrada. Tan buena que podría hacer que Bugs Bunny renuncie a las zanahorias de la competencia.',
      name: 'carrotDescription',
      desc: '',
      args: [],
    );
  }

  /// `Patata`
  String get potato {
    return Intl.message(
      'Patata',
      name: 'potato',
      desc: '',
      args: [],
    );
  }

  /// `La humilde patata, la heroína olvidada de la cocina, haciendo felices los estómagos desde tiempos inmemoriales.`
  String get potatoDescription {
    return Intl.message(
      'La humilde patata, la heroína olvidada de la cocina, haciendo felices los estómagos desde tiempos inmemoriales.',
      name: 'potatoDescription',
      desc: '',
      args: [],
    );
  }

  /// `Manzana`
  String get apple {
    return Intl.message(
      'Manzana',
      name: 'apple',
      desc: '',
      args: [],
    );
  }

  /// `Una fruta fresca y crujiente, llena de sabor y nutrientes. ¡Cuidado con las manzanas que caen del cielo! Si Newton pudo tener un momento 'eureka' con una, ¿quién sabe qué ideas brillantes podrías tener tú?`
  String get appleDescription {
    return Intl.message(
      'Una fruta fresca y crujiente, llena de sabor y nutrientes. ¡Cuidado con las manzanas que caen del cielo! Si Newton pudo tener un momento \'eureka\' con una, ¿quién sabe qué ideas brillantes podrías tener tú?',
      name: 'appleDescription',
      desc: '',
      args: [],
    );
  }

  /// `Leche`
  String get milk {
    return Intl.message(
      'Leche',
      name: 'milk',
      desc: '',
      args: [],
    );
  }

  /// `Una fuente fundamental de calcio y nutrientes para una dieta equilibrada. El elixir blanco de la vida que te ayuda a crecer fuerte y grande.`
  String get milkDescription {
    return Intl.message(
      'Una fuente fundamental de calcio y nutrientes para una dieta equilibrada. El elixir blanco de la vida que te ayuda a crecer fuerte y grande.',
      name: 'milkDescription',
      desc: '',
      args: [],
    );
  }

  /// `Carne`
  String get meat {
    return Intl.message(
      'Carne',
      name: 'meat',
      desc: '',
      args: [],
    );
  }

  /// `Una importante fuente de proteínas y nutrientes para mantenerte saludable y lleno de energía. Nada como un buen trozo de carne para satisfacer tu estómago rugiente.`
  String get meatDescription {
    return Intl.message(
      'Una importante fuente de proteínas y nutrientes para mantenerte saludable y lleno de energía. Nada como un buen trozo de carne para satisfacer tu estómago rugiente.',
      name: 'meatDescription',
      desc: '',
      args: [],
    );
  }

  /// `Banana`
  String get Banana {
    return Intl.message(
      'Banana',
      name: 'Banana',
      desc: '',
      args: [],
    );
  }

  /// `La nutritiva banana, energía natural en su empaque amarillo. Viene con su propio estuche y la promesa de hacerte sonreír, incluso si pareces un mono comiéndola.`
  String get bananaDescription {
    return Intl.message(
      'La nutritiva banana, energía natural en su empaque amarillo. Viene con su propio estuche y la promesa de hacerte sonreír, incluso si pareces un mono comiéndola.',
      name: 'bananaDescription',
      desc: '',
      args: [],
    );
  }

  /// `Huevo`
  String get egg {
    return Intl.message(
      'Huevo',
      name: 'egg',
      desc: '',
      args: [],
    );
  }

  /// `El huevo, fuente de proteínas de la más alta calidad y versatilidad en la cocina. Se enfrenta a sartenes calientes y batidores sin miedo.`
  String get eggDescription {
    return Intl.message(
      'El huevo, fuente de proteínas de la más alta calidad y versatilidad en la cocina. Se enfrenta a sartenes calientes y batidores sin miedo.',
      name: 'eggDescription',
      desc: '',
      args: [],
    );
  }

  /// `Estofado`
  String get stew {
    return Intl.message(
      'Estofado',
      name: 'stew',
      desc: '',
      args: [],
    );
  }

  /// `Plato tradicional que combina carne, verduras y caldo en una preparación reconfortante. Como un abrazo en forma de comida, perfecto para esos días fríos o cuando el alma necesita consuelo.`
  String get stewDescription {
    return Intl.message(
      'Plato tradicional que combina carne, verduras y caldo en una preparación reconfortante. Como un abrazo en forma de comida, perfecto para esos días fríos o cuando el alma necesita consuelo.',
      name: 'stewDescription',
      desc: '',
      args: [],
    );
  }

  /// `Carne Frita`
  String get friedMeat {
    return Intl.message(
      'Carne Frita',
      name: 'friedMeat',
      desc: '',
      args: [],
    );
  }

  /// `El arte de transformar lo ordinario en lo extraordinario con un poco de aceite y una sartén caliente.`
  String get friedMeatDescription {
    return Intl.message(
      'El arte de transformar lo ordinario en lo extraordinario con un poco de aceite y una sartén caliente.',
      name: 'friedMeatDescription',
      desc: '',
      args: [],
    );
  }

  /// `Harina`
  String get flour {
    return Intl.message(
      'Harina',
      name: 'flour',
      desc: '',
      args: [],
    );
  }

  /// `Harina, la base de muchas delicias horneadas y platos de todo el mundo. El polvo mágico que convierte cualquier receta en algo delicioso. Solo agrega agua y fe.`
  String get flourDescription {
    return Intl.message(
      'Harina, la base de muchas delicias horneadas y platos de todo el mundo. El polvo mágico que convierte cualquier receta en algo delicioso. Solo agrega agua y fe.',
      name: 'flourDescription',
      desc: '',
      args: [],
    );
  }

  /// `Pan`
  String get bread {
    return Intl.message(
      'Pan',
      name: 'bread',
      desc: '',
      args: [],
    );
  }

  /// `Pan, un alimento básico en la mesa de millones de personas en todo el mundo. La razón por la que la humanidad inventó la mantequilla. ¡Y la mermelada!`
  String get breadDescription {
    return Intl.message(
      'Pan, un alimento básico en la mesa de millones de personas en todo el mundo. La razón por la que la humanidad inventó la mantequilla. ¡Y la mermelada!',
      name: 'breadDescription',
      desc: '',
      args: [],
    );
  }

  /// `Pastel`
  String get cake {
    return Intl.message(
      'Pastel',
      name: 'cake',
      desc: '',
      args: [],
    );
  }

  /// `Un delicioso pastel hecho con ingredientes frescos y amorosos, perfecto para celebrar ocasiones especiales.`
  String get cakeDescription {
    return Intl.message(
      'Un delicioso pastel hecho con ingredientes frescos y amorosos, perfecto para celebrar ocasiones especiales.',
      name: 'cakeDescription',
      desc: '',
      args: [],
    );
  }

  /// `Ensalada Saludable`
  String get healthySalad {
    return Intl.message(
      'Ensalada Saludable',
      name: 'healthySalad',
      desc: '',
      args: [],
    );
  }

  /// `Una mezcla fresca de verduras y ingredientes saludables. Nada como la comida saludable.`
  String get healthySaladDescription {
    return Intl.message(
      'Una mezcla fresca de verduras y ingredientes saludables. Nada como la comida saludable.',
      name: 'healthySaladDescription',
      desc: '',
      args: [],
    );
  }

  /// `Batido de Frutas`
  String get fruitShake {
    return Intl.message(
      'Batido de Frutas',
      name: 'fruitShake',
      desc: '',
      args: [],
    );
  }

  /// `Una refrescante mezcla de frutas frescas, perfecta para recargar energía y vitaminas.`
  String get fruitShakeDescription {
    return Intl.message(
      'Una refrescante mezcla de frutas frescas, perfecta para recargar energía y vitaminas.',
      name: 'fruitShakeDescription',
      desc: '',
      args: [],
    );
  }

  /// `Tortilla`
  String get omelet {
    return Intl.message(
      'Tortilla',
      name: 'omelet',
      desc: '',
      args: [],
    );
  }

  /// `Una deliciosa combinación de papas y huevos, perfecta para cualquier comida con un sabor que hará sonreír incluso al chef más serio.`
  String get omeletDescription {
    return Intl.message(
      'Una deliciosa combinación de papas y huevos, perfecta para cualquier comida con un sabor que hará sonreír incluso al chef más serio.',
      name: 'omeletDescription',
      desc: '',
      args: [],
    );
  }

  /// `Tarta de Manzana`
  String get applePie {
    return Intl.message(
      'Tarta de Manzana',
      name: 'applePie',
      desc: '',
      args: [],
    );
  }

  /// `Una clásica tarta de manzana horneada con amor, que no solo llena el estómago sino también el corazón. ¡Esta tarta hará que olvides todas tus preocupaciones, al menos hasta que se acabe!`
  String get applePieDescription {
    return Intl.message(
      'Una clásica tarta de manzana horneada con amor, que no solo llena el estómago sino también el corazón. ¡Esta tarta hará que olvides todas tus preocupaciones, al menos hasta que se acabe!',
      name: 'applePieDescription',
      desc: '',
      args: [],
    );
  }

  /// `Banquete de Granja`
  String get farmFeast {
    return Intl.message(
      'Banquete de Granja',
      name: 'farmFeast',
      desc: '',
      args: [],
    );
  }

  /// `El festín que hace que las granjas se sientan como palacios. Una comida completa que mezcla los mejores productos de la granja para una experiencia culinaria satisfactoria, preparada con amor y cuidado para compartir con tus seres queridos.`
  String get farmFeastDescription {
    return Intl.message(
      'El festín que hace que las granjas se sientan como palacios. Una comida completa que mezcla los mejores productos de la granja para una experiencia culinaria satisfactoria, preparada con amor y cuidado para compartir con tus seres queridos.',
      name: 'farmFeastDescription',
      desc: '',
      args: [],
    );
  }

  /// `Baúl`
  String get baul {
    return Intl.message(
      'Baúl',
      name: 'baul',
      desc: '',
      args: [],
    );
  }

  /// `Espacio de almacenamiento para tus posesiones más preciosas y necesarias. Un contenedor confiable que añade un poco más a la capacidad de almacenamiento de tus cartas.`
  String get baulDescription {
    return Intl.message(
      'Espacio de almacenamiento para tus posesiones más preciosas y necesarias. Un contenedor confiable que añade un poco más a la capacidad de almacenamiento de tus cartas.',
      name: 'baulDescription',
      desc: '',
      args: [],
    );
  }

  /// `Almacén`
  String get warehouse {
    return Intl.message(
      'Almacén',
      name: 'warehouse',
      desc: '',
      args: [],
    );
  }

  /// `El lugar donde terminan tus cosas cuando decides que son demasiado valiosas para tirarlas. Un espacio grande y organizado para almacenar y gestionar tus recursos de manera eficiente. Aumenta enormemente la capacidad de almacenamiento de tus cartas.`
  String get warehouseDescription {
    return Intl.message(
      'El lugar donde terminan tus cosas cuando decides que son demasiado valiosas para tirarlas. Un espacio grande y organizado para almacenar y gestionar tus recursos de manera eficiente. Aumenta enormemente la capacidad de almacenamiento de tus cartas.',
      name: 'warehouseDescription',
      desc: '',
      args: [],
    );
  }

  /// `Horno`
  String get furnace {
    return Intl.message(
      'Horno',
      name: 'furnace',
      desc: '',
      args: [],
    );
  }

  /// `El escenario de las hazañas más épicas, donde los materiales se convierten en obras maestras (o desastres). Ya sea cocinando delicias suculentas o derritiendo metales y creando nuevos materiales.`
  String get furnaceDescription {
    return Intl.message(
      'El escenario de las hazañas más épicas, donde los materiales se convierten en obras maestras (o desastres). Ya sea cocinando delicias suculentas o derritiendo metales y creando nuevos materiales.',
      name: 'furnaceDescription',
      desc: '',
      args: [],
    );
  }

  /// `Mesa de Trabajo`
  String get craftingTable {
    return Intl.message(
      'Mesa de Trabajo',
      name: 'craftingTable',
      desc: '',
      args: [],
    );
  }

  /// `El epicentro de la creación en tu aldea. Aquí, las ideas se convierten en realidad. Desde simples estantes hasta estructuras complejas, todo comienza aquí.`
  String get craftingTableDescription {
    return Intl.message(
      'El epicentro de la creación en tu aldea. Aquí, las ideas se convierten en realidad. Desde simples estantes hasta estructuras complejas, todo comienza aquí.',
      name: 'craftingTableDescription',
      desc: '',
      args: [],
    );
  }

  /// `Aserradero`
  String get sawmill {
    return Intl.message(
      'Aserradero',
      name: 'sawmill',
      desc: '',
      args: [],
    );
  }

  /// `El taller de madera, donde los árboles sacrifican su ser para convertirse en muebles finamente elaborados... y los pájaros lloran silenciosamente por su pérdida.`
  String get sawmillDescription {
    return Intl.message(
      'El taller de madera, donde los árboles sacrifican su ser para convertirse en muebles finamente elaborados... y los pájaros lloran silenciosamente por su pérdida.',
      name: 'sawmillDescription',
      desc: '',
      args: [],
    );
  }

  /// `Mesa Eléctrica`
  String get electricTable {
    return Intl.message(
      'Mesa Eléctrica',
      name: 'electricTable',
      desc: '',
      args: [],
    );
  }

  /// `Una mesa especializada equipada con herramientas y equipos para la creación de dispositivos electrónicos. Trata de no perder la paciencia cuando los cables decidan enredarse como una fiesta de serpientes.`
  String get electricTableDescription {
    return Intl.message(
      'Una mesa especializada equipada con herramientas y equipos para la creación de dispositivos electrónicos. Trata de no perder la paciencia cuando los cables decidan enredarse como una fiesta de serpientes.',
      name: 'electricTableDescription',
      desc: '',
      args: [],
    );
  }

  /// `Panel Solar`
  String get solarPanel {
    return Intl.message(
      'Panel Solar',
      name: 'solarPanel',
      desc: '',
      args: [],
    );
  }

  /// `Un panel solar diseñado para capturar la energía solar y convertirla en una fuente de energía limpia y renovable que aprovecha la luz del sol para generar electricidad y reducir la dependencia de los combustibles fósiles.`
  String get solarPanelDescription {
    return Intl.message(
      'Un panel solar diseñado para capturar la energía solar y convertirla en una fuente de energía limpia y renovable que aprovecha la luz del sol para generar electricidad y reducir la dependencia de los combustibles fósiles.',
      name: 'solarPanelDescription',
      desc: '',
      args: [],
    );
  }

  /// `Granja`
  String get farm {
    return Intl.message(
      'Granja',
      name: 'farm',
      desc: '',
      args: [],
    );
  }

  /// `Un terreno fértil dedicado a la producción agrícola. Cultiva alimentos esenciales de manera más eficiente para producir una variedad de alimentos frescos y saludables.`
  String get farmDescription {
    return Intl.message(
      'Un terreno fértil dedicado a la producción agrícola. Cultiva alimentos esenciales de manera más eficiente para producir una variedad de alimentos frescos y saludables.',
      name: 'farmDescription',
      desc: '',
      args: [],
    );
  }

  /// `Huerto`
  String get orchard {
    return Intl.message(
      'Huerto',
      name: 'orchard',
      desc: '',
      args: [],
    );
  }

  /// `Aunque las frutas son deliciosas, esta parcela de frutas es menos eficiente que la Granja. Pero ¿quién puede resistirse a una manzana recién recogida?`
  String get orchardDescription {
    return Intl.message(
      'Aunque las frutas son deliciosas, esta parcela de frutas es menos eficiente que la Granja. Pero ¿quién puede resistirse a una manzana recién recogida?',
      name: 'orchardDescription',
      desc: '',
      args: [],
    );
  }

  /// `Molino`
  String get mill {
    return Intl.message(
      'Molino',
      name: 'mill',
      desc: '',
      args: [],
    );
  }

  /// `Don Quijote lo odiaría, pero tus granos lo amarán. Un molino que convierte el trigo en harina, una pieza esencial de la comida.`
  String get millDescription {
    return Intl.message(
      'Don Quijote lo odiaría, pero tus granos lo amarán. Un molino que convierte el trigo en harina, una pieza esencial de la comida.',
      name: 'millDescription',
      desc: '',
      args: [],
    );
  }

  /// `Invernadero`
  String get greenhouse {
    return Intl.message(
      'Invernadero',
      name: 'greenhouse',
      desc: '',
      args: [],
    );
  }

  /// `Un invernadero donde las plantas prosperan como si estuvieran en un día de spa, empapándose de los rayos del sol y sorbiendo cócteles de nutrientes. Mejora la producción de cultivos, permitiéndote cultivar plantas de manera más efectiva.`
  String get greenhouseDescription {
    return Intl.message(
      'Un invernadero donde las plantas prosperan como si estuvieran en un día de spa, empapándose de los rayos del sol y sorbiendo cócteles de nutrientes. Mejora la producción de cultivos, permitiéndote cultivar plantas de manera más efectiva.',
      name: 'greenhouseDescription',
      desc: '',
      args: [],
    );
  }

  /// `Turbina Eólica`
  String get windTurbine {
    return Intl.message(
      'Turbina Eólica',
      name: 'windTurbine',
      desc: '',
      args: [],
    );
  }

  /// `Atrapa el viento como un superhéroe atrapa villanos. Una fuente de energía limpia y renovable, capturando el poder del viento para iluminar y calentar nuestros hogares.`
  String get windTurbineDescription {
    return Intl.message(
      'Atrapa el viento como un superhéroe atrapa villanos. Una fuente de energía limpia y renovable, capturando el poder del viento para iluminar y calentar nuestros hogares.',
      name: 'windTurbineDescription',
      desc: '',
      args: [],
    );
  }

  /// `Reciclador`
  String get recycler {
    return Intl.message(
      'Reciclador',
      name: 'recycler',
      desc: '',
      args: [],
    );
  }

  /// `Un Centro de Reciclaje avanzado que te permite desmontar y reutilizar las cartas que ya no necesitas, devolviéndote los materiales para proyectos futuros. Un botón 'deshacer' para construcciones no deseadas.`
  String get recyclerDescription {
    return Intl.message(
      'Un Centro de Reciclaje avanzado que te permite desmontar y reutilizar las cartas que ya no necesitas, devolviéndote los materiales para proyectos futuros. Un botón \'deshacer\' para construcciones no deseadas.',
      name: 'recyclerDescription',
      desc: '',
      args: [],
    );
  }

  /// `Compostador`
  String get composter {
    return Intl.message(
      'Compostador',
      name: 'composter',
      desc: '',
      args: [],
    );
  }

  /// `Donde los residuos van a repensar sus elecciones de vida. Una herramienta para convertir los desechos orgánicos en compost, una práctica esencial para la agricultura sostenible.`
  String get composterDescription {
    return Intl.message(
      'Donde los residuos van a repensar sus elecciones de vida. Una herramienta para convertir los desechos orgánicos en compost, una práctica esencial para la agricultura sostenible.',
      name: 'composterDescription',
      desc: '',
      args: [],
    );
  }

  /// `Fogata`
  String get campfire {
    return Intl.message(
      'Fogata',
      name: 'campfire',
      desc: '',
      args: [],
    );
  }

  /// `Una fuente de calor y un medio para cocinar alimentos al estilo tradicional del pueblo, aunque puede ser menos eficiente que un horno moderno. ¿Qué tal una ronda de malvaviscos quemados?`
  String get campfireDescription {
    return Intl.message(
      'Una fuente de calor y un medio para cocinar alimentos al estilo tradicional del pueblo, aunque puede ser menos eficiente que un horno moderno. ¿Qué tal una ronda de malvaviscos quemados?',
      name: 'campfireDescription',
      desc: '',
      args: [],
    );
  }

  /// `Perro`
  String get dog {
    return Intl.message(
      'Perro',
      name: 'dog',
      desc: '',
      args: [],
    );
  }

  /// `¡El mejor amigo del hombre! Ladra, come, te da carne para tu estofado ¡y mejora tu humor! Un todo en uno peludo.`
  String get dogDescription {
    return Intl.message(
      '¡El mejor amigo del hombre! Ladra, come, te da carne para tu estofado ¡y mejora tu humor! Un todo en uno peludo.',
      name: 'dogDescription',
      desc: '',
      args: [],
    );
  }

  /// `Vaca`
  String get cow {
    return Intl.message(
      'Vaca',
      name: 'cow',
      desc: '',
      args: [],
    );
  }

  /// `Este noble animal produce leche y estiércol a un ritmo impresionante. Muchas gracias muuuuucha vaca.`
  String get cowDescription {
    return Intl.message(
      'Este noble animal produce leche y estiércol a un ritmo impresionante. Muchas gracias muuuuucha vaca.',
      name: 'cowDescription',
      desc: '',
      args: [],
    );
  }

  /// `Gallina`
  String get hen {
    return Intl.message(
      'Gallina',
      name: 'hen',
      desc: '',
      args: [],
    );
  }

  /// `Una gallina doméstica que proporciona un suministro constante de huevos frescos. La gallina que pone huevos de oro. Bueno, no exactamente dorados, ¡pero casi!`
  String get henDescription {
    return Intl.message(
      'Una gallina doméstica que proporciona un suministro constante de huevos frescos. La gallina que pone huevos de oro. Bueno, no exactamente dorados, ¡pero casi!',
      name: 'henDescription',
      desc: '',
      args: [],
    );
  }

  /// `Árbol`
  String get tree {
    return Intl.message(
      'Árbol',
      name: 'tree',
      desc: '',
      args: [],
    );
  }

  /// `Un símbolo de vida y naturaleza que proporciona madera para construir y oxígeno para respirar. Cuídalos como si fueran tus tesoros más preciados.`
  String get treeDescription {
    return Intl.message(
      'Un símbolo de vida y naturaleza que proporciona madera para construir y oxígeno para respirar. Cuídalos como si fueran tus tesoros más preciados.',
      name: 'treeDescription',
      desc: '',
      args: [],
    );
  }

  /// `Energía`
  String get energy {
    return Intl.message(
      'Energía',
      name: 'energy',
      desc: '',
      args: [],
    );
  }

  /// `La chispa que pone en marcha el motor de la aldea, solo ten cuidado de no encender accidentalmente la aldea. Un impulso de energía para mantener tus máquinas en funcionamiento y tu mente activa. Aumenta la duración del día en 20 segundos.`
  String get energyDescription {
    return Intl.message(
      'La chispa que pone en marcha el motor de la aldea, solo ten cuidado de no encender accidentalmente la aldea. Un impulso de energía para mantener tus máquinas en funcionamiento y tu mente activa. Aumenta la duración del día en 20 segundos.',
      name: 'energyDescription',
      desc: '',
      args: [],
    );
  }

  /// `Crazy Cave Burgers`
  String get ccBurgers {
    return Intl.message(
      'Crazy Cave Burgers',
      name: 'ccBurgers',
      desc: '',
      args: [],
    );
  }

  /// `Las hamburguesas de la cueva loca: los mejores amigos del estómago y los peores enemigos de la dieta. Una solución rápida para esos días ocupados, incluso si su contenido nutricional es tan misterioso como la cueva de la que provienen.`
  String get ccBurgersDescription {
    return Intl.message(
      'Las hamburguesas de la cueva loca: los mejores amigos del estómago y los peores enemigos de la dieta. Una solución rápida para esos días ocupados, incluso si su contenido nutricional es tan misterioso como la cueva de la que provienen.',
      name: 'ccBurgersDescription',
      desc: '',
      args: [],
    );
  }

  /// `Empleo`
  String get employment {
    return Intl.message(
      'Empleo',
      name: 'employment',
      desc: '',
      args: [],
    );
  }

  /// `¡El sistema de 9 a 5 de la aldea! Si estás buscando monedas, aquí es donde haces cola para intercambiar tiempo por esas codiciadas monedas del juego. Incluso hay rumores de que el perro usa corbata los viernes.`
  String get employmentDescription {
    return Intl.message(
      '¡El sistema de 9 a 5 de la aldea! Si estás buscando monedas, aquí es donde haces cola para intercambiar tiempo por esas codiciadas monedas del juego. Incluso hay rumores de que el perro usa corbata los viernes.',
      name: 'employmentDescription',
      desc: '',
      args: [],
    );
  }

  /// `Planta de Carbón`
  String get coalPlant {
    return Intl.message(
      'Planta de Carbón',
      name: 'coalPlant',
      desc: '',
      args: [],
    );
  }

  /// `Central Eléctrica de Carbón: una fuente de energía efectiva pero poco ecológica. Cuidado con el carbón, puede ensuciar tus pulmones y tu conciencia.`
  String get coalPlantDescription {
    return Intl.message(
      'Central Eléctrica de Carbón: una fuente de energía efectiva pero poco ecológica. Cuidado con el carbón, puede ensuciar tus pulmones y tu conciencia.',
      name: 'coalPlantDescription',
      desc: '',
      args: [],
    );
  }

  /// `Árbol de Manzana`
  String get appleTree {
    return Intl.message(
      'Árbol de Manzana',
      name: 'appleTree',
      desc: '',
      args: [],
    );
  }

  /// `Este manzano es tan generoso que incluso los gusanos tienen tarjetas de membresía. ¡Las manzanas están fuera de este mundo!`
  String get appleTreeDescription {
    return Intl.message(
      'Este manzano es tan generoso que incluso los gusanos tienen tarjetas de membresía. ¡Las manzanas están fuera de este mundo!',
      name: 'appleTreeDescription',
      desc: '',
      args: [],
    );
  }

  /// `Árbol de Banano`
  String get bananaTree {
    return Intl.message(
      'Árbol de Banano',
      name: 'bananaTree',
      desc: '',
      args: [],
    );
  }

  /// `Un árbol tropical que produce una fruta que produce muchos resbalones en el mundo, rica en potasio y otros nutrientes esenciales. Una adición sabrosa y saludable a tu dieta diaria.`
  String get bananaTreeDescription {
    return Intl.message(
      'Un árbol tropical que produce una fruta que produce muchos resbalones en el mundo, rica en potasio y otros nutrientes esenciales. Una adición sabrosa y saludable a tu dieta diaria.',
      name: 'bananaTreeDescription',
      desc: '',
      args: [],
    );
  }

  /// `Estiércol`
  String get poop {
    return Intl.message(
      'Estiércol',
      name: 'poop',
      desc: '',
      args: [],
    );
  }

  /// `El ciclo de la vida se completa con este humilde regalo de la naturaleza. Más allá de su apariencia modesta, el estiércol es el guardián del equilibrio ecológico y la fertilidad del suelo. ¿Qué secretos podrían estar enterrados bajo su superficie?`
  String get poopDescription {
    return Intl.message(
      'El ciclo de la vida se completa con este humilde regalo de la naturaleza. Más allá de su apariencia modesta, el estiércol es el guardián del equilibrio ecológico y la fertilidad del suelo. ¿Qué secretos podrían estar enterrados bajo su superficie?',
      name: 'poopDescription',
      desc: '',
      args: [],
    );
  }

  /// `Tablas`
  String get planks {
    return Intl.message(
      'Tablas',
      name: 'planks',
      desc: '',
      args: [],
    );
  }

  /// `Un elemento esencial en la construcción, las tablas son versátiles e imprescindibles para erigir estructuras fuertes y duraderas.`
  String get planksDescription {
    return Intl.message(
      'Un elemento esencial en la construcción, las tablas son versátiles e imprescindibles para erigir estructuras fuertes y duraderas.',
      name: 'planksDescription',
      desc: '',
      args: [],
    );
  }

  /// `Paquete de Comida`
  String get foodPack {
    return Intl.message(
      'Paquete de Comida',
      name: 'foodPack',
      desc: '',
      args: [],
    );
  }

  /// `Tarjeta de Comida`
  String get foodCard {
    return Intl.message(
      'Tarjeta de Comida',
      name: 'foodCard',
      desc: '',
      args: [],
    );
  }

  /// `Proporciona 3 tarjetas de comida`
  String get foodPackDescription {
    return Intl.message(
      'Proporciona 3 tarjetas de comida',
      name: 'foodPackDescription',
      desc: '',
      args: [],
    );
  }

  /// `Paquete de Material`
  String get materialPack {
    return Intl.message(
      'Paquete de Material',
      name: 'materialPack',
      desc: '',
      args: [],
    );
  }

  /// `Tarjeta de Material`
  String get materialCard {
    return Intl.message(
      'Tarjeta de Material',
      name: 'materialCard',
      desc: '',
      args: [],
    );
  }

  /// `Proporciona 3 tarjetas de material`
  String get materialPackDescription {
    return Intl.message(
      'Proporciona 3 tarjetas de material',
      name: 'materialPackDescription',
      desc: '',
      args: [],
    );
  }

  /// `Pack inicial`
  String get initialPack {
    return Intl.message(
      'Pack inicial',
      name: 'initialPack',
      desc: '',
      args: [],
    );
  }

  /// `Pack inicial para comenzar tu aventura`
  String get initialPackSubtitle {
    return Intl.message(
      'Pack inicial para comenzar tu aventura',
      name: 'initialPackSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Pack inicial para empezar tu aventura`
  String get initialPackDescription {
    return Intl.message(
      'Pack inicial para empezar tu aventura',
      name: 'initialPackDescription',
      desc: '',
      args: [],
    );
  }

  /// `Salario`
  String get salary {
    return Intl.message(
      'Salario',
      name: 'salary',
      desc: '',
      args: [],
    );
  }

  /// `Salario`
  String get salaryDescription {
    return Intl.message(
      'Salario',
      name: 'salaryDescription',
      desc: '',
      args: [],
    );
  }

  /// `Paquete de Estructura`
  String get structurePack {
    return Intl.message(
      'Paquete de Estructura',
      name: 'structurePack',
      desc: '',
      args: [],
    );
  }

  /// `Tarjeta de Estructura`
  String get structureCard {
    return Intl.message(
      'Tarjeta de Estructura',
      name: 'structureCard',
      desc: '',
      args: [],
    );
  }

  /// `Proporciona 3 tarjetas de estructura`
  String get structurePackDescription {
    return Intl.message(
      'Proporciona 3 tarjetas de estructura',
      name: 'structurePackDescription',
      desc: '',
      args: [],
    );
  }

  /// `Paquete de Ideas`
  String get ideaPack {
    return Intl.message(
      'Paquete de Ideas',
      name: 'ideaPack',
      desc: '',
      args: [],
    );
  }

  /// `Tarjeta de Idea`
  String get ideaCard {
    return Intl.message(
      'Tarjeta de Idea',
      name: 'ideaCard',
      desc: '',
      args: [],
    );
  }

  /// `Proporciona 3 tarjetas de idea`
  String get ideaPackDescription {
    return Intl.message(
      'Proporciona 3 tarjetas de idea',
      name: 'ideaPackDescription',
      desc: '',
      args: [],
    );
  }

  /// `Paquete de Naturaleza`
  String get naturePack {
    return Intl.message(
      'Paquete de Naturaleza',
      name: 'naturePack',
      desc: '',
      args: [],
    );
  }

  /// `Tarjeta de Naturaleza`
  String get natureCard {
    return Intl.message(
      'Tarjeta de Naturaleza',
      name: 'natureCard',
      desc: '',
      args: [],
    );
  }

  /// `Proporciona 3 tarjetas de naturaleza`
  String get naturePackDescription {
    return Intl.message(
      'Proporciona 3 tarjetas de naturaleza',
      name: 'naturePackDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Lingotes de Hierro`
  String get ideaIronIngots {
    return Intl.message(
      'Idea: Lingotes de Hierro',
      name: 'ideaIronIngots',
      desc: '',
      args: [],
    );
  }

  /// `La elaboración es:\n2 x Hierro\n1 x Carbón\n1 x Horno`
  String get ideaIronIngotsDescription {
    return Intl.message(
      'La elaboración es:\n2 x Hierro\n1 x Carbón\n1 x Horno',
      name: 'ideaIronIngotsDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Silicio`
  String get ideaSilicon {
    return Intl.message(
      'Idea: Silicio',
      name: 'ideaSilicon',
      desc: '',
      args: [],
    );
  }

  /// `La elaboración es:\n6 x Carbón\n1 x Horno`
  String get ideaSiliconDescription {
    return Intl.message(
      'La elaboración es:\n6 x Carbón\n1 x Horno',
      name: 'ideaSiliconDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Cable de Cobre`
  String get ideaCopperLine {
    return Intl.message(
      'Idea: Cable de Cobre',
      name: 'ideaCopperLine',
      desc: '',
      args: [],
    );
  }

  /// `La elaboración es:\n2 x Cobre\n1 x Carbón\n1 x Horno\n1 x Mesa de Trabajo`
  String get ideaCopperLineDescription {
    return Intl.message(
      'La elaboración es:\n2 x Cobre\n1 x Carbón\n1 x Horno\n1 x Mesa de Trabajo',
      name: 'ideaCopperLineDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Aislantes`
  String get ideaInsulators {
    return Intl.message(
      'Idea: Aislantes',
      name: 'ideaInsulators',
      desc: '',
      args: [],
    );
  }

  /// `La elaboración es:\n1 x Plástico\n1 x Vidrio\n1 x Mesa de Trabajo`
  String get ideaInsulatorsDescription {
    return Intl.message(
      'La elaboración es:\n1 x Plástico\n1 x Vidrio\n1 x Mesa de Trabajo',
      name: 'ideaInsulatorsDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Celdas Solares`
  String get ideaSolarCells {
    return Intl.message(
      'Idea: Celdas Solares',
      name: 'ideaSolarCells',
      desc: '',
      args: [],
    );
  }

  /// `La elaboración es:\n5 x Silicio\n2 x Cobre\n1 x Mesa Eléctrica`
  String get ideaSolarCellsDescription {
    return Intl.message(
      'La elaboración es:\n5 x Silicio\n2 x Cobre\n1 x Mesa Eléctrica',
      name: 'ideaSolarCellsDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Estructura`
  String get ideaStructure {
    return Intl.message(
      'Idea: Estructura',
      name: 'ideaStructure',
      desc: '',
      args: [],
    );
  }

  /// `La elaboración es:\n10 x Madera\n5 x Hierro Lingotes\n1 x Sierra Eléctrica`
  String get ideaStructureDescription {
    return Intl.message(
      'La elaboración es:\n10 x Madera\n5 x Hierro Lingotes\n1 x Sierra Eléctrica',
      name: 'ideaStructureDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Cables`
  String get ideaCables {
    return Intl.message(
      'Idea: Cables',
      name: 'ideaCables',
      desc: '',
      args: [],
    );
  }

  /// `La elaboración es:\n2 x Cobre Lineas\n1 x Aislantes\n1 x Mesa de Trabajo`
  String get ideaCablesDescription {
    return Intl.message(
      'La elaboración es:\n2 x Cobre Lineas\n1 x Aislantes\n1 x Mesa de Trabajo',
      name: 'ideaCablesDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Estofado`
  String get ideaStew {
    return Intl.message(
      'Idea: Estofado',
      name: 'ideaStew',
      desc: '',
      args: [],
    );
  }

  /// `La elaboración es:\n1 x Carne\n1 x Papa\n1 x Zanahoria\n1 x Agua\n1 x (Horno + Carbón)/Fogata`
  String get ideaStewDescription {
    return Intl.message(
      'La elaboración es:\n1 x Carne\n1 x Papa\n1 x Zanahoria\n1 x Agua\n1 x (Horno + Carbón)/Fogata',
      name: 'ideaStewDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Carne Frita`
  String get ideaFriedMeat {
    return Intl.message(
      'Idea: Carne Frita',
      name: 'ideaFriedMeat',
      desc: '',
      args: [],
    );
  }

  /// `La elaboración es:\n1 x Carne\n1 x (Horno + Carbón)/Fogata`
  String get ideaFriedMeatDescription {
    return Intl.message(
      'La elaboración es:\n1 x Carne\n1 x (Horno + Carbón)/Fogata',
      name: 'ideaFriedMeatDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Harina`
  String get ideaFlour {
    return Intl.message(
      'Idea: Harina',
      name: 'ideaFlour',
      desc: '',
      args: [],
    );
  }

  /// `La elaboración es:\n1 x Trigo\n1 x Molino\n1 x Humano`
  String get ideaFlourDescription {
    return Intl.message(
      'La elaboración es:\n1 x Trigo\n1 x Molino\n1 x Humano',
      name: 'ideaFlourDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Pan`
  String get ideaBread {
    return Intl.message(
      'Idea: Pan',
      name: 'ideaBread',
      desc: '',
      args: [],
    );
  }

  /// `La elaboración es:\n1 x Harina\n1 x Agua\n1 x (Horno + Carbón)/Fogata`
  String get ideaBreadDescription {
    return Intl.message(
      'La elaboración es:\n1 x Harina\n1 x Agua\n1 x (Horno + Carbón)/Fogata',
      name: 'ideaBreadDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Pastel`
  String get ideaCake {
    return Intl.message(
      'Idea: Pastel',
      name: 'ideaCake',
      desc: '',
      args: [],
    );
  }

  /// `La elaboración es:\n3 x Harina\n3 x Huevo\n3 x Leche\n1 x (Horno + Carbón)/Fogata`
  String get ideaCakeDescription {
    return Intl.message(
      'La elaboración es:\n3 x Harina\n3 x Huevo\n3 x Leche\n1 x (Horno + Carbón)/Fogata',
      name: 'ideaCakeDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Ensalada Saludable`
  String get ideaHealthySalad {
    return Intl.message(
      'Idea: Ensalada Saludable',
      name: 'ideaHealthySalad',
      desc: '',
      args: [],
    );
  }

  /// `La elaboración es:\n1 x Zanahoria\n1 x Papa\n1 x Manzana\n1 x Banano\n1 x Mesa de trabajo\n1 x Humano`
  String get ideaHealthySaladDescription {
    return Intl.message(
      'La elaboración es:\n1 x Zanahoria\n1 x Papa\n1 x Manzana\n1 x Banano\n1 x Mesa de trabajo\n1 x Humano',
      name: 'ideaHealthySaladDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Batido de Frutas`
  String get ideaFruitShake {
    return Intl.message(
      'Idea: Batido de Frutas',
      name: 'ideaFruitShake',
      desc: '',
      args: [],
    );
  }

  /// `La elaboración es:\n1 x Manzana\n1 x Banano\n1 x Leche\n1 x Mesa de trabajo\n1 x Humano`
  String get ideaFruitShakeDescription {
    return Intl.message(
      'La elaboración es:\n1 x Manzana\n1 x Banano\n1 x Leche\n1 x Mesa de trabajo\n1 x Humano',
      name: 'ideaFruitShakeDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Tortilla de Patata`
  String get ideaPotatoOmelet {
    return Intl.message(
      'Idea: Tortilla de Patata',
      name: 'ideaPotatoOmelet',
      desc: '',
      args: [],
    );
  }

  /// `La elaboración es:\n2 x Papa\n3 x Huevo\n1 x Harina\n1 x Leche\n1 x (Horno + Carbón)/Fogata`
  String get ideaPotatoOmeletDescription {
    return Intl.message(
      'La elaboración es:\n2 x Papa\n3 x Huevo\n1 x Harina\n1 x Leche\n1 x (Horno + Carbón)/Fogata',
      name: 'ideaPotatoOmeletDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Tarta de Manzana`
  String get ideaApplePie {
    return Intl.message(
      'Idea: Tarta de Manzana',
      name: 'ideaApplePie',
      desc: '',
      args: [],
    );
  }

  /// `La elaboración es:\n2 x Manzana\n2 x Harina\n2 x Huevo\n1 x Leche\n1 x (Horno + Carbón)/Fogata`
  String get ideaApplePieDescription {
    return Intl.message(
      'La elaboración es:\n2 x Manzana\n2 x Harina\n2 x Huevo\n1 x Leche\n1 x (Horno + Carbón)/Fogata',
      name: 'ideaApplePieDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Banquete Granjero`
  String get ideaFarmFeast {
    return Intl.message(
      'Idea: Banquete Granjero',
      name: 'ideaFarmFeast',
      desc: '',
      args: [],
    );
  }

  /// `La elaboración es:\n1 x Estofado\n1 x Ensalada Saludable\n1 x Tortilla de Patata\n1 x Tarta de Manzana\n1 x Batido de Frutas\n1 x Pastel\n1 x (Horno + Carbón)/Fogata`
  String get ideaFarmFeastDescription {
    return Intl.message(
      'La elaboración es:\n1 x Estofado\n1 x Ensalada Saludable\n1 x Tortilla de Patata\n1 x Tarta de Manzana\n1 x Batido de Frutas\n1 x Pastel\n1 x (Horno + Carbón)/Fogata',
      name: 'ideaFarmFeastDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Baúl`
  String get ideaBaul {
    return Intl.message(
      'Idea: Baúl',
      name: 'ideaBaul',
      desc: '',
      args: [],
    );
  }

  /// `Proporciona 5 espacios de tarjetas adicionales.\nLa elaboración es:\n2 x Estructuras\n2 x Tablas, \n1 x Mesa de trabajo\n1 x Humano`
  String get ideaBaulDescription {
    return Intl.message(
      'Proporciona 5 espacios de tarjetas adicionales.\nLa elaboración es:\n2 x Estructuras\n2 x Tablas, \n1 x Mesa de trabajo\n1 x Humano',
      name: 'ideaBaulDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Almacén`
  String get ideaWarehouse {
    return Intl.message(
      'Idea: Almacén',
      name: 'ideaWarehouse',
      desc: '',
      args: [],
    );
  }

  /// `Proporciona 15 espacios de tarjetas adicionales.\nLa elaboración es:\n4 x Estructuras\n4 x Tablas\n1 x Mesa de trabajo\n1 x Humano`
  String get ideaWarehouseDescription {
    return Intl.message(
      'Proporciona 15 espacios de tarjetas adicionales.\nLa elaboración es:\n4 x Estructuras\n4 x Tablas\n1 x Mesa de trabajo\n1 x Humano',
      name: 'ideaWarehouseDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Horno`
  String get ideaFurnace {
    return Intl.message(
      'Idea: Horno',
      name: 'ideaFurnace',
      desc: '',
      args: [],
    );
  }

  /// `La elaboración es:\n4 x Roca\n2 x Estructura\n1 x Mesa de trabajo\n1 x Humano`
  String get ideaFurnaceDescription {
    return Intl.message(
      'La elaboración es:\n4 x Roca\n2 x Estructura\n1 x Mesa de trabajo\n1 x Humano',
      name: 'ideaFurnaceDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Mesa de Trabajo`
  String get ideaCraftingTable {
    return Intl.message(
      'Idea: Mesa de Trabajo',
      name: 'ideaCraftingTable',
      desc: '',
      args: [],
    );
  }

  /// `La elaboración es:\n4 x Madera\n1 x Humano`
  String get ideaCraftingTableDescription {
    return Intl.message(
      'La elaboración es:\n4 x Madera\n1 x Humano',
      name: 'ideaCraftingTableDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Aserradero`
  String get ideaSawmill {
    return Intl.message(
      'Idea: Aserradero',
      name: 'ideaSawmill',
      desc: '',
      args: [],
    );
  }

  /// `La elaboración es:\n4 x Árbol\n3 x Hierro\n2 x Estructura\n1 x Mesa de trabajo\n1 x Humano`
  String get ideaSawmillDescription {
    return Intl.message(
      'La elaboración es:\n4 x Árbol\n3 x Hierro\n2 x Estructura\n1 x Mesa de trabajo\n1 x Humano',
      name: 'ideaSawmillDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Mesa Electrónica`
  String get ideaElectronicTable {
    return Intl.message(
      'Idea: Mesa Electrónica',
      name: 'ideaElectronicTable',
      desc: '',
      args: [],
    );
  }

  /// `La elaboración es:\n3 x Cable\n2 x Estructura\n2 x Aislante\n2 x Mesa de trabajo\n1 x Humano`
  String get ideaElectronicTableDescription {
    return Intl.message(
      'La elaboración es:\n3 x Cable\n2 x Estructura\n2 x Aislante\n2 x Mesa de trabajo\n1 x Humano',
      name: 'ideaElectronicTableDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Panel Solar`
  String get ideaSolarpanel {
    return Intl.message(
      'Idea: Panel Solar',
      name: 'ideaSolarpanel',
      desc: '',
      args: [],
    );
  }

  /// `La elaboración es:\n4 x Estructura\n4 x Cables\n2 x Celdas Solares\n2 x Aislante\n1 x Mesa Electrónica\n1 x Humano`
  String get ideaSolarpanelDescription {
    return Intl.message(
      'La elaboración es:\n4 x Estructura\n4 x Cables\n2 x Celdas Solares\n2 x Aislante\n1 x Mesa Electrónica\n1 x Humano',
      name: 'ideaSolarpanelDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Granja`
  String get ideaFarm {
    return Intl.message(
      'Idea: Granja',
      name: 'ideaFarm',
      desc: '',
      args: [],
    );
  }

  /// `La elaboración es:\n4 x Estructura\n4 x Tierra\n4 x Agua\n4 x Tablas\n4 x Fertilizante\n1 x Mesa de trabajo\n1 x Humano`
  String get ideaFarmDescription {
    return Intl.message(
      'La elaboración es:\n4 x Estructura\n4 x Tierra\n4 x Agua\n4 x Tablas\n4 x Fertilizante\n1 x Mesa de trabajo\n1 x Humano',
      name: 'ideaFarmDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Huerto`
  String get ideaOrchard {
    return Intl.message(
      'Idea: Huerto',
      name: 'ideaOrchard',
      desc: '',
      args: [],
    );
  }

  /// `La elaboración es:\n4 x Tierra\n2 x Agua\n2 x Madera\n2 x Fertilizante\n1 x Mesa de trabajo\n1 x Humano`
  String get ideaOrchardDescription {
    return Intl.message(
      'La elaboración es:\n4 x Tierra\n2 x Agua\n2 x Madera\n2 x Fertilizante\n1 x Mesa de trabajo\n1 x Humano',
      name: 'ideaOrchardDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Molino`
  String get ideaMill {
    return Intl.message(
      'Idea: Molino',
      name: 'ideaMill',
      desc: '',
      args: [],
    );
  }

  /// `La elaboración es:\n2 x Roca\n2 x Madera\n1 x Estructura\n1 x Lingote de Hierro\n1 x Mesa de trabajo\n1 x Humano`
  String get ideaMillDescripcion {
    return Intl.message(
      'La elaboración es:\n2 x Roca\n2 x Madera\n1 x Estructura\n1 x Lingote de Hierro\n1 x Mesa de trabajo\n1 x Humano',
      name: 'ideaMillDescripcion',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Invernadero`
  String get ideaGreenhouse {
    return Intl.message(
      'Idea: Invernadero',
      name: 'ideaGreenhouse',
      desc: '',
      args: [],
    );
  }

  /// `La elaboración es:\n6 x Vidrio\n4 x Estructura\n2 x Árbol\n1 x Mesa de trabajo\n1 x Humano`
  String get ideaGreenhouseDescripcion {
    return Intl.message(
      'La elaboración es:\n6 x Vidrio\n4 x Estructura\n2 x Árbol\n1 x Mesa de trabajo\n1 x Humano',
      name: 'ideaGreenhouseDescripcion',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Aerogenerador`
  String get ideaWindturbine {
    return Intl.message(
      'Idea: Aerogenerador',
      name: 'ideaWindturbine',
      desc: '',
      args: [],
    );
  }

  /// `Proporciona 5 energía adicional.\nLa elaboración es:\n4 x Tablas\n2 x Estructura\n2 x Cables\n1 x Mesa de trabajo\n1 x Humano`
  String get ideaWindturbineDescription {
    return Intl.message(
      'Proporciona 5 energía adicional.\nLa elaboración es:\n4 x Tablas\n2 x Estructura\n2 x Cables\n1 x Mesa de trabajo\n1 x Humano',
      name: 'ideaWindturbineDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Reciclador`
  String get ideaRecycler {
    return Intl.message(
      'Idea: Reciclador',
      name: 'ideaRecycler',
      desc: '',
      args: [],
    );
  }

  /// `La elaboración es:\n8 x Tablas\n4 x Estructura\n1 x Mesa de trabajo\n1 x Humano`
  String get ideaRecyclerDescription {
    return Intl.message(
      'La elaboración es:\n8 x Tablas\n4 x Estructura\n1 x Mesa de trabajo\n1 x Humano',
      name: 'ideaRecyclerDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Compostador`
  String get ideaComposter {
    return Intl.message(
      'Idea: Compostador',
      name: 'ideaComposter',
      desc: '',
      args: [],
    );
  }

  /// `La elaboración es:\n2 x Estructura\n2 x Tablas\n4 x Plástico\n1 x Caca\n1 x Mesa de trabajo\n1 x Humano`
  String get ideaComposterDescripcion {
    return Intl.message(
      'La elaboración es:\n2 x Estructura\n2 x Tablas\n4 x Plástico\n1 x Caca\n1 x Mesa de trabajo\n1 x Humano',
      name: 'ideaComposterDescripcion',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Fogata`
  String get ideaCampfire {
    return Intl.message(
      'Idea: Fogata',
      name: 'ideaCampfire',
      desc: '',
      args: [],
    );
  }

  /// `La elaboración es:\n4 x Madera\n4 x Roca\n1 x Humano`
  String get ideaCampfireDescription {
    return Intl.message(
      'La elaboración es:\n4 x Madera\n4 x Roca\n1 x Humano',
      name: 'ideaCampfireDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Manzano`
  String get ideaAppleTree {
    return Intl.message(
      'Idea: Manzano',
      name: 'ideaAppleTree',
      desc: '',
      args: [],
    );
  }

  /// `La elaboración es:\n1 x Semilla de Árbol\n1 x Manzana\n1 x Agua\n1 x Granja\n1 x Humano`
  String get ideaAppleTreeDescription {
    return Intl.message(
      'La elaboración es:\n1 x Semilla de Árbol\n1 x Manzana\n1 x Agua\n1 x Granja\n1 x Humano',
      name: 'ideaAppleTreeDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Platanero`
  String get ideaBananaTree {
    return Intl.message(
      'Idea: Platanero',
      name: 'ideaBananaTree',
      desc: '',
      args: [],
    );
  }

  /// `La elaboración es:\n1 x Semilla de Árbol\n1 x Banano\n1 x Agua\n1 x Granja\n1 x Humano`
  String get ideaBananaTreeDescription {
    return Intl.message(
      'La elaboración es:\n1 x Semilla de Árbol\n1 x Banano\n1 x Agua\n1 x Granja\n1 x Humano',
      name: 'ideaBananaTreeDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Leche`
  String get ideaMilk {
    return Intl.message(
      'Idea: Leche',
      name: 'ideaMilk',
      desc: '',
      args: [],
    );
  }

  /// `La elaboración es:\n1 x Vaca\n1 x Humano`
  String get ideaMilkDescription {
    return Intl.message(
      'La elaboración es:\n1 x Vaca\n1 x Humano',
      name: 'ideaMilkDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Fertilizante`
  String get ideaFertilizer {
    return Intl.message(
      'Idea: Fertilizante',
      name: 'ideaFertilizer',
      desc: '',
      args: [],
    );
  }

  /// `La elaboración es:\n1 x Caca\n1 x Compostador\n1 x Agua\n1 x Humano`
  String get ideaFertilizerDescription {
    return Intl.message(
      'La elaboración es:\n1 x Caca\n1 x Compostador\n1 x Agua\n1 x Humano',
      name: 'ideaFertilizerDescription',
      desc: '',
      args: [],
    );
  }

  /// `Idea: Madera`
  String get ideaWood {
    return Intl.message(
      'Idea: Madera',
      name: 'ideaWood',
      desc: '',
      args: [],
    );
  }

  /// `La elaboración es:\n1 x Árbol\n1 x Humano`
  String get ideaWoodDescription {
    return Intl.message(
      'La elaboración es:\n1 x Árbol\n1 x Humano',
      name: 'ideaWoodDescription',
      desc: '',
      args: [],
    );
  }

  /// `Fertilizante`
  String get fertilizer {
    return Intl.message(
      'Fertilizante',
      name: 'fertilizer',
      desc: '',
      args: [],
    );
  }

  /// `Un compuesto enriquecido que estimula el crecimiento de tus cultivos. Este fertilizante garantiza que tus plantas estén siempre felices y saludables.`
  String get fertilizerDescription {
    return Intl.message(
      'Un compuesto enriquecido que estimula el crecimiento de tus cultivos. Este fertilizante garantiza que tus plantas estén siempre felices y saludables.',
      name: 'fertilizerDescription',
      desc: '',
      args: [],
    );
  }

  /// `Semilla de Árbol`
  String get treeSeed {
    return Intl.message(
      'Semilla de Árbol',
      name: 'treeSeed',
      desc: '',
      args: [],
    );
  }

  /// `Un pequeño tesoro de la naturaleza que lleva consigo la promesa de un futuro verde y exuberante. Planta esta semilla con amor y cuidado, y verás cómo crecerá un majestuoso árbol que proporcionará sombra y oxígeno.`
  String get treeSeedDescription {
    return Intl.message(
      'Un pequeño tesoro de la naturaleza que lleva consigo la promesa de un futuro verde y exuberante. Planta esta semilla con amor y cuidado, y verás cómo crecerá un majestuoso árbol que proporcionará sombra y oxígeno.',
      name: 'treeSeedDescription',
      desc: '',
      args: [],
    );
  }

  /// `Pozo`
  String get well {
    return Intl.message(
      'Pozo',
      name: 'well',
      desc: '',
      args: [],
    );
  }

  /// `Una fuente confiable de agua potable para tu comunidad. Este pozo garantiza un suministro constante de líquido vital para mantener a todos hidratados.`
  String get wellDescription {
    return Intl.message(
      'Una fuente confiable de agua potable para tu comunidad. Este pozo garantiza un suministro constante de líquido vital para mantener a todos hidratados.',
      name: 'wellDescription',
      desc: '',
      args: [],
    );
  }

  /// `Equipo de Desarrollo`
  String get devTeam {
    return Intl.message(
      'Equipo de Desarrollo',
      name: 'devTeam',
      desc: '',
      args: [],
    );
  }

  /// `¿Alguien realmente lee las descripciones? ¿De verdad estás leyendo esto? ¿No tienes nada mejor que hacer? Bueno, supongo que somos dos. Has desbloqueado la tarjeta del Equipo de Desarrollo. Alguien en algún lugar probablemente pensó que era una buena idea. ¿Estás emocionado? Probablemente no, pero gracias por estar aquí de todos modos. Desarrolladores: ...`
  String get devTeamDescription {
    return Intl.message(
      '¿Alguien realmente lee las descripciones? ¿De verdad estás leyendo esto? ¿No tienes nada mejor que hacer? Bueno, supongo que somos dos. Has desbloqueado la tarjeta del Equipo de Desarrollo. Alguien en algún lugar probablemente pensó que era una buena idea. ¿Estás emocionado? Probablemente no, pero gracias por estar aquí de todos modos. Desarrolladores: ...',
      name: 'devTeamDescription',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<L10n> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'es'),
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'fr'),
      Locale.fromSubtags(languageCode: 'pt'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<L10n> load(Locale locale) => L10n.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
