module CacheMoney
  def coin_count()
    puts "you have $" + (@total/100).to_s
    i = 0
    number_of_coins_used = []
    running_total = 0
    @coins.each do |key, value|
      j = 0
      while (running_total + value*j) <= (@total)
        j = j + 1
      end
      running_total = running_total + value*(j-1)
      number_of_coins_used.push(j-1)
      i = i +1
    end
    number_of_coins_used
  end

  def display_coins_used()
    coin_array = coin_count()
    i = 0
    @coins.each do |key, value|
      puts key + ": " + (coin_array[i].to_s)
      i = i + 1
    end
    coin_array
  end
end

class CoinCount
  include CacheMoney

  def initialize(dollar_amount)
    @coins = {
      "sacagawea dollar"=>100,
      "half dollar"=>50,
      "quarter"=>25,
      "dime"=>10,
      "nickle"=>5,
      "penny"=>1,
      "hay penny"=>0.5
    }
    @total = dollar_amount*100
  end
end
