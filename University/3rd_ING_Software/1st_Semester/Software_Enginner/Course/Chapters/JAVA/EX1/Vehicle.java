public class Vehicle implements Drivable {

String Model;
VehicleType Type;

public Vehicle(String Model,VehicleType Type) {
	this.Model = Model;
	this.Type = Type;
}

@Override
public void drive() {
System.out.println("The " + this.Type.toString().toLowerCase() + " is driving.");
}

}
