class Calc

  def number_sum(num1, num2)
    num1 + num2
  end

  def number_sub(num1, num2)
    num1 - num2
  end

  def number_mul(num1, num2)
    num1 * num2
  end

  def number_div(num1, num2)
    num1 / num2
  end

end

calc = Calc.new

operations = ['sum','sub','mul','div']

@num1 = 2
@num2 = 2

operations.each do | operation |
  result = calc.send('number_' + operation, @num1, @num2)
  p "#{operation.capitalize!} of #{@num1} and #{@num2} is #{result}"
end