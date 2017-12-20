describe 'Duck specification' do
  it 'all ducks can swim' do
    redheadDuck = RedheadDuck.new
    mallardDuck = MallardDuck.new

    expect('swimming').to eq(redheadDuck.swim)
    expect('swimming').to eq(mallardDuck.swim)
  end
end

class Duck
  def swim
    'swimming'
  end
end

class RedheadDuck < Duck
end

class MallardDuck < Duck
end