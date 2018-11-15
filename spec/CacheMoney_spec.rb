require ('rspec')
require('CacheMoney')
require ('pry')

describe('#CoinCount') do
  it("#counts number of hay pennies needed to fillulfil the remainder (rounded down)") do
    coin = CoinCount.new(0.005)
    expect(coin.display_coins_used()).to(eq([0, 0, 0, 0, 0, 0, 1]))
  end
end

describe('#CoinCount') do
  it("#counts more than one possible coin to fulfill criteria") do
    coin = CoinCount.new(0.015)
    expect(coin.display_coins_used()).to(eq([0, 0, 0, 0, 0, 1, 1]))
  end
end

describe('#CoinCount') do
  it("#counts coins correctly gives the least number of coins neccessary to reach the specified amount") do
    coin = CoinCount.new(0.305)
    expect(coin.display_coins_used()).to(eq([0, 0, 1, 0, 1, 0, 1]))
  end
end

describe('#CoinCount') do
  it("#counts coins correctly gives values for dollar coin, half dolar coin, quarter, dime, nickle, penny, and hay penny (half penny)") do
    coin = CoinCount.new(1.915)
    expect(coin.display_coins_used()).to(eq([1, 1, 1, 1, 1, 1, 1]))
  end
end
