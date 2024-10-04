// คลาสหลัก Vehicle
class Vehicle {
  String brand;
  String model;

  // คอนสตรัคเตอร์
  Vehicle(this.brand, this.model);

  void drive() {
    print("Vehicle is driving.");
  }
}

// คลาสย่อย Car
class Car extends Vehicle {
  int numOfDoors;

  // คอนสตรัคเตอร์
  Car(String brand, String model, this.numOfDoors) : super(brand, model);

  @override
  void drive() {
    print("Car is driving."); // override เมธอด drive
  }
}

// ฟังก์ชัน main
void main() {
  var myCar = Car("Toyota", "Camry", 4); // สร้างออบเจกต์จากคลาส Car
  print("Brand: ${myCar.brand}");
  print("Model: ${myCar.model}");
  print("Number of Doors: ${myCar.numOfDoors}");
  myCar.drive(); // เรียกใช้งานเมธอด drive
}
