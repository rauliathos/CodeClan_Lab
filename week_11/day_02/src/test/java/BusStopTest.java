import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class BusStopTest {
    BusStop busStop;
    Person person;

    @Before
    public void before(){
        busStop = new BusStop("Edinburg");
        person = new Person();
    }

    @Test
    public void testAddPersonInQueue(){
        busStop.addPersonToQueue(person);
        assertEquals(1,busStop.numOfPassInQueue());
    }

    @Test
    public void testRemovePersonFromQueue(){
        busStop.addPersonToQueue(person);
        assertEquals(1,busStop.numOfPassInQueue());
        busStop.removePersonFromQueue();
        assertEquals(0,busStop.numOfPassInQueue());


    }

}
