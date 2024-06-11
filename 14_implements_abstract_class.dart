void main() {
  final windPlant = WindPlant(initialEnergy: 100);
  print(windPlant);
  print('Wind: ${chargePhone(windPlant)}');

  final nuclearPlant = NuclearPlant(energyLeft: 200);
  print(nuclearPlant);
  print('Nuclear: ${chargePhone(nuclearPlant)}');
}

// Función para cargar el teléfono usando una planta
double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('Not enought energy');
  }
  return plant.energyLeft - 10;
}

// Enum
enum PlantType { nuclerar, wind, water }

// Abstract class
abstract class EnergyPlant {
  double energyLeft;
  final PlantType type;

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}

// Extends EnergyPlant
class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

// Implements EnergyPlant
class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  final PlantType type = PlantType.nuclerar;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}
