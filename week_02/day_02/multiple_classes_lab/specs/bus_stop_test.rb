require('minitest/autorun')
require('minitest/rg')
require_relative("../bus")
require_relative("../person")
require_relative("../bus_stop")

class BusStopTest < MiniTest::Test

  def test_get_name
    bus_stop = BusStop.new("Ocean Terminal")
    assert_equal("Ocean Terminal", bus_stop.name)
  end

  def test_get_queue_length
    bus_stop = BusStop.new("Ocean Terminal")
    assert_equal(0, bus_stop.queue.length)
  end

  def test_add_person
    bus_stop = BusStop.new("Ocean Terminal")
    person = Person.new("Steve", 30)
    bus_stop.add_person_to_queue(person)
    result = bus_stop.queue[0].name
    assert_equal("Steve", result)
  end

  def test_pick_up_passengers
    bus = Bus.new(25, "Silverknowes")
    bus_stop1 = BusStop.new("Lothian Road")
    bus_stop2 = BusStop.new("Ocean Terminal")
    person1 = Person.new("Steve", 30)
    person2 = Person.new("James", 22)
    person3 = Person.new("Sarah", 35)
    person4 = Person.new("Roz", 30)
    bus_stop1.add_person_to_queue(person1)
    bus_stop1.add_person_to_queue(person2)
    bus_stop2.add_person_to_queue(person3)
    bus_stop2.add_person_to_queue(person4)
    bus.pick_up_from_stop(bus_stop1)
    bus_stop1.empty
    bus.pick_up_from_stop(bus_stop2)
    bus_stop2.empty
    assert_equal(0, bus_stop1.queue.length)
    assert_equal(0, bus_stop2.queue.length)
    assert_equal(4, bus.passengers.length)
    assert_equal("Roz", bus.passengers[3].name)
  end

end
