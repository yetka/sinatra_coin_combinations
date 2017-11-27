class Coins
  def initialize(number)
    @quarters = number/25
    @dimes = (number%25)/10
    @nickels = ((number%25)%10)/5
    @pennies = ((number%25)%10)%5
  end
  def result_displayer()
    "It is equal to #{@quarters} quarters, #{@dimes} dimes, #{@nickels} nickels, #{@pennies} pennies."
  end
end
