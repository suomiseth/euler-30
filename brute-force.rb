require "pry-byebug"

class SumOfFifthPowerDigits

  def initialize(power, max_num)
    @power = power
    @max_num = max_num
    @solution_set = []
  end

  def iterate_through
    (2..@max_num).map do |num|
      @solution_set << num if equal_sums?(num)
    end
  end

  def equal_sums?(num)
    numbers = num.to_s.split("").map {|dig| dig.to_i ** @power}
    (numbers.inject(:+) == num) ? true : false
  end

  def answer
    iterate_through
    @solution_set.inject(:+)
  end
end


puts "What power do you want to do?"
power = gets.strip.to_i
puts "whats the biggest number you want to look at?"
max_num = gets.strip.to_i
puts "#{SumOfFifthPowerDigits.new(power, max_num).answer}"