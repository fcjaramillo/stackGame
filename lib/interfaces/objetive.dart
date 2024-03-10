part of 'interfaces.dart';

abstract class Objetive {
  final int id;
  final String Function(BuildContext) name;
  final String Function(BuildContext) description;
  final bool isComplete;

  const Objetive({
    required this.id,
    required this.name,
    required this.description,
    required this.isComplete,
  });
}
