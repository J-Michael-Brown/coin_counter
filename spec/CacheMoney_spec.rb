require ('rspec')
require('CacheMoney')
require ('pry')

describe('#CoinCount') do
  it("#counts coins correctly") do
    coin = CoinCount.new(0.67)
    expect(coin.display_coins_used()).to(eq([0, 1, 0, 1, 1, 2, 0]))
  end
end

describe('#CoinCount') do
  it("#counts coins correctly") do
    coin = CoinCount.new(2.67)
    expect(coin.display_coins_used()).to(eq([2, 1, 0, 1, 1, 2, 0]))
  end
end

describe('#CoinCount') do
  it("#counts coins correctly") do
    coin = CoinCount.new(30.455)
    expect(coin.display_coins_used()).to(eq([30, 0, 1, 2, 0, 0, 1]))
  end

end
