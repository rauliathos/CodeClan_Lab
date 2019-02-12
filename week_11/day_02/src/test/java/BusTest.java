import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class BusTest {
    Bus bus;
    BusStop busStop;
    Person person;

    @Before
    public  void before(){
        person = new Person();
        busStop = new BusStop("Edinburgh");
        bus = new Bus("Edinburgh", 5);
        busStop.addPersonToQueue(person);
    }

    @Test
    public void testNumOfPassengers(){
        assertEquals(0,bus.getNumOfPassengers());
    }

    @Test
    public void testBusCapacity(){
        assertEquals(true, bus.busNotFull());
    }

    @Test
    public void testAddPerson(){
        bus.addPassenger(person);
        bus.addPassenger(person);
        assertEquals(2,bus.getNumOfPassengers());
    }

    @Test
    public void testRemovePassenger(){
        bus.addPassenger(person);
        bus.addPassenger(person);
        bus.addPassenger(person);
        assertEquals(3,bus.getNumOfPassengers());
        bus.removePassenger();
        assertEquals(2, bus.getNumOfPassengers());
    }

    @Test
    public void testBus(){
        bus.pickUpPerson(busStop, person);
        assertEquals(1,bus.getNumOfPassengers());
    }



}
