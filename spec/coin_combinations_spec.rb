require('rspec')
require('coin_combinations')
require('pry')

describe(Coin) do
  describe('coin_combinations') do
    it("lets a user enter an amount of cents and shows the smallest number of quarters, dimes, nickels, and pennies needed to make that change") do
      new_coin = Coin.new(57)
      expect(new_coin.coin_combinations).to(eq("It is equal to 2 quarters, 0 dimes, 1 nickels, 2 pennies."))
    end
  end
end
