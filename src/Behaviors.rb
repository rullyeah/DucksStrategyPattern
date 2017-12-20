class QuackSoundBehavior
  def sounds
    :quacking
  end
end

class SqueakSoundBehavior
  def sounds
    :squeaking
  end
end

class NoSoundBehavior
  def sounds
  end
end

class DefaultSwimBehavior
  def swim
    :swimming
  end
end

class WingedFlightBehavior
  def fly
    :flying
  end
end

class NoFlightBehavior
  def fly
  end
end

class RocketPoweredFlightBehavior
  def fly
    :rocketPoweredFlight
  end
end