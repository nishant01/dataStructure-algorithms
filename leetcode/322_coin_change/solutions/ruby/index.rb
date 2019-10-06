# Desktop run for an example
# coins=[1,2,5]
# amount=11
#
# amount_left = 11, change = []
# amount_left = 6, change = [5]
# amount_left = 1, change = [5,5]
# amount_left = 0, change = [5,5,1]
#
# change = [5,5,1] => 3 coins

def coin_change(coins, amount)
  sorted_coins = coins.sort.reverse
  amount_left = amount
  change = []

  loop do
    sorted_coins.each do |coin|
      next if amount_left < coin
      amount_left -= coin
      change.push(coin)
      break
    end

    break if amount_left == 0
    break if amount_left < sorted_coins.last
  end

  amount_left == 0 ? change.count : -1
end
