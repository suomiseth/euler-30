require "pry-byebug"

class SumOfFifthPowerDigits

  def find_combinations
    # find all combinations for all 10 digits that are under (power + 1) * (9 ** power)
  end

  def find_upper_bound
    # write something to find the upper bound based on the number of digits
  end

  def restrict
   # restrict the combinations based on what digits even apply
   # based on how many digits the number has--example, a 3 digit number can't have more 4**5
  end

  def answer(power)
    find_combinations(power)
  end
end


puts "What power do you want to do?"
power = gets.strip.to_i
puts "#{SumOfFifthPowerDigits.new.answer(power)}"