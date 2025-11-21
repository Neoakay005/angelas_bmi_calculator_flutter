void main() {
  Car myCar = Car(drive: slowDrive);
  myCar.drive();

  // update the assignment
  myCar.drive = fastDrive;
  myCar.drive();
}

class Car {
  Car({required this.drive});

  Function drive;
}

void slowDrive() {
  print("car is very slow!");
}

void fastDrive() {
  print("car is super fast!");
}
