require('minitest/autorun')
require('minitest/rg')
require_relative("../bus")
require_relative("../person")

class BusTest < MiniTest::Test

  def test_bus_number
    bus = Bus.new(25, "Ocean Terminal")
    assert_equal(25, bus.number)
  end

  def test_drive
    bus = Bus.new(25, "Ocean Terminal")
    assert_equal("Brum brum", bus.drive)
  end

  def test_number_of_passengers
    bus = Bus.new(25, "Ocean Terminal")
    assert_equal(0,bus.passengers.length)
  end

  def test_pick_up
    passenger = Person.new("James", 22)
    bus = Bus.new(25, "Ocean Terminal")
    bus.pick_up(passenger)
    result = bus.passengers[0].name
    assert_equal("James", result)
  end

  def test_drop_off
    passenger1 = Person.new("James", 22)
    passenger2 = Person.new("Steve", 30)
    bus = Bus.new(25, "Ocean Terminal")
    bus.pick_up(passenger1)
    bus.pick_up(passenger2)
    bus.drop_off(passenger2)
    result = bus.passengers.length
    assert_equal(1, result)
  end

  def test_empty
    passenger1 = Person.new("James", 22)
    passenger2 = Person.new("Steve", 30)
    bus = Bus.new(25, "Ocean Terminal")
    bus.pick_up(passenger1)
    bus.pick_up(passenger2)
    bus.empty
    result = bus.passengers.length
    assert_equal(0, result)
  end

end
