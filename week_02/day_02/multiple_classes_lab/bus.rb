class Bus

attr_reader :number, :destination, :passengers

  def initialize(number, destination)
    @number = number
    @destination = destination
    @passengers = []
  end

  def drive
    return "Brum brum"
  end

  def pick_up(person)
    @passengers.push(person)
  end

  def drop_off(person)
    @passengers.delete(person)
  end

  def empty
    @passengers = []
  end

  def pick_up_from_stop(stop)
    for person in stop.queue
      @passengers.push(person)
    end
  end



end
