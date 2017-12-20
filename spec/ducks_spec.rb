require_relative '../src/Duck'

describe 'Duck specification' do
  it 'ducks can swim by default' do
    redheadDuck = RedheadDuck.new
    mallardDuck = MallardDuck.new

    expect(redheadDuck.swim).to eq(:swimming)
    expect(mallardDuck.swim).to eq(:swimming)
  end

  it 'ducks can quack by default' do
    redheadDuck = RedheadDuck.new
    mallardDuck = MallardDuck.new

    expect(redheadDuck.quack).to eq(:quacking)
    expect(mallardDuck.quack).to eq(:quacking)
  end

  it 'ducks can fly by default' do
    redheadDuck = RedheadDuck.new
    mallardDuck = MallardDuck.new

    expect(redheadDuck.fly).to eq(:flying)
    expect(mallardDuck.fly).to eq(:flying)
  end

  it 'rubberDuck squeak when quack' do
    rubberDuck = RubberDuck.new

    expect(rubberDuck.quack).to eq(:squeaking)
  end

  it 'rubberDuck can not fly' do
    rubberDuck = RubberDuck.new

    expect(rubberDuck.fly).to eq(nil)
  end

  it 'DecoyDuck can not quack' do
    decoyDuck = DecoyDuck.new

    expect(decoyDuck.quack).to eq(nil)
  end

  it 'DecoyDuck can not fly' do
    decoyDuck = DecoyDuck.new

    expect(decoyDuck.fly).to eq(nil)
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