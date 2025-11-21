// ignore_for_file: unused_local_variable

void main() {
  Car myXcar = Car(carStyle: CarType.coupe);
}

class Car {
  CarType carStyle;
  Car({required this.carStyle});
}

enum CarType { hatchback, coupe, convertible, SUV }
