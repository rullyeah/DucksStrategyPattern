describe 'Duck specification' do
  it 'all ducks can swim' do
    redheadDuck = RedheadDuck.new
    mallardDuck = MallardDuck.new

    expect(:swimming).to eq(redheadDuck.swim)
    expect(:swimming).to eq(mallardDuck.swim)
  end

  it 'all ducks can quack' do
    redheadDuck = RedheadDuck.new
    mallardDuck = MallardDuck.new

    expect(:quacking).to eq(redheadDuck.quack)
    expect(:quacking).to eq(mallardDuck.quack)
  end

  it 'all ducks can fly' do
    redheadDuck = RedheadDuck.new
    mallardDuck = MallardDuck.new

    expect(:flying).to eq(redheadDuck.fly)
    expect(:flying).to eq(mallardDuck.fly)
  end

  it 'rubberDuck squeak when quack' do
    rubberDuck = RubberDuck.new

    expect(:squeaking).to eq(rubberDuck.quack)
  end

  it 'rubberDuck can not fly' do
    rubberDuck = RubberDuck.new

    expect(nil).to eq(rubberDuck.fly)
  end
end

class Duck
  def swim
    :swimming
  end

  def quack
    :quacking
  end

  def fly
    :flying
  end
end

class RedheadDuck < Duck
end

class MallardDuck < Duck
end

class RubberDuck < Duck
  def quack
    :squeaking
  end

  def fly
  end
end