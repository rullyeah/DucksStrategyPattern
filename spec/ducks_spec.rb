describe 'Duck specification' do
  it 'all ducks can swim' do
    redheadDuck = RedheadDuck.new
    mallardDuck = MallardDuck.new

    expect(:swimming).to eq(redheadDuck.swim)
    expect(:swimming).to eq(mallardDuck.swim)
  end

  it 'all ducks can swim' do
    redheadDuck = RedheadDuck.new
    mallardDuck = MallardDuck.new

    expect(:quacking).to eq(redheadDuck.quack)
    expect(:quacking).to eq(mallardDuck.quack)
  end
end

class Duck
  def swim
    :swimming
  end

  def quack
    :quacking
  end
end

class RedheadDuck < Duck
end

class MallardDuck < Duck
end