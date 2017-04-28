require "pry-byebug"

class SumOfFifthPowerDigits

  def initialize(num_of_digits, max_num)
    @digits = num_of_digits
    @max_num = max_num
    @solution_set = []
  end

  def iterate_down
    (1..@max_num).map do |num|
      if equal_sums?(num)
        @solution_set << num
      end
    end
  end

  def equal_sums?(num)
    num.to_s.split("").map do |dig| 
      sum = []
      if dig.to_i > 1 ? sum << dig.to_i ** @digits 
      return true if (sum.inject(:+) == num)
    end
  end

  def answer
    iterate_down
    @solution_set
  end

end


puts "What power do you want to do?"
ints = gets.strip.to_i
puts "whats the biggest number you want to look at?"
max_num = gets.strip.to_i
puts "#{SumOfFifthPowerDigits.new(ints, max_num).answer}"