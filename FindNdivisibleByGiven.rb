#https://www.codewars.com/kata/55edaba99da3a9c84000003b/solutions/ruby

def divisible_by(numbers, divisor)
  numbers.keep_if {|n| n % divisor == 0}
end

divisible_by([1, 2, 3, 4, 5, 6], 2)