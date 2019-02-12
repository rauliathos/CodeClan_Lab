import java.util.ArrayList;

public class Bus {
    private String destination;
    private int capacity;
    private ArrayList<Person> passengers;

    public Bus(String destination, int capacity ){
        this.destination = destination;
        this.capacity = capacity;
        this.passengers = new ArrayList<>();

    }

    public int getNumOfPassengers(){
        return this.passengers.size();
    }

    public boolean busNotFull(){
        if (getNumOfPassengers() < this.capacity){
            return true;
        }else {
            return false;
        }
    }

    public void addPassenger( Person person){
        if (this.busNotFull() == true){
            this.passengers.add(person);
        }

    }

    public void removePassenger(){
        this.passengers.remove(0);
    }

    public void pickUpPerson(BusStop busStop, Person person){
        busStop.removePersonFromQueue();
        this.addPassenger(person);

    }





}
