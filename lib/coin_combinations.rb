class Coin
  def initialize(number)
    @number = number.to_i
  end

  def coin_combinations
    @quarters = @number/25
    @dimes = (@number%25)/10
    @nickels = ((@number%25)%10)/5
    @pennies = ((@number%25)%10)%5
    "It is equal to #{@quarters} quarters, #{@dimes} dimes, #{@nickels} nickels, #{@pennies} pennies."
  end
end
