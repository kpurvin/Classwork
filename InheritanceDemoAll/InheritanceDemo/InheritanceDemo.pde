void setup()
{
size(800,600);
}

void draw()

{
Car v = new Car(50, "Pontiac");
v.print();
}

class Vehicle

{
float speed = 30;

Vehicle(float _speed)
  {
  this.speed= _speed;
  }
  
  void print()
  {
    println(this.speed);
  }
}

class Car extends Vehicle
{
  String name;
  Car(float speed, String _name)
  {
    super (speed);
    this.name = _name;
  }
  
  void print()
  {
    println(this.name+"'s speed is "+this.speed);
  }
}
