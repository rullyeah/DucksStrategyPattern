require_relative 'Behaviors'

class Duck
  @swimBehavior
  @soundBehavior
  @flightBehavior 

  def initialize (
    swimBehavior = DefaultSwimBehavior.new,
    soundBehavior = QuackSoundBehavior.new,
    flightBehavior = WingedFlightBehavior.new
  )
    @swimBehavior = swimBehavior
    @soundBehavior = soundBehavior
    @flightBehavior = flightBehavior
  end

  def swim
    @swimBehavior.swim
  end

  def quack
    @soundBehavior.sounds
  end

  def fly
    @flightBehavior.fly
  end
end

class RedheadDuck < Duck
end

class MallardDuck < Duck
end

class RubberDuck < Duck
  def initialize
    super(
      DefaultSwimBehavior.new,
      SqueakSoundBehavior.new,
      NoFlightBehavior.new
    )
  end
end

class DecoyDuck < Duck
  def initialize
    super(
      DefaultSwimBehavior.new,
      NoSoundBehavior.new,
      NoFlightBehavior.new
    )
  end
end