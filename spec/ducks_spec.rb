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
end

class Duck
  def swim
    :swimming
  end

  def quack
    :quacking
  end

  def fly
  end
end

class RedheadDuck < Duck
end

class MallardDuck < Duck
end