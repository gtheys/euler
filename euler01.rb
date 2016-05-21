#
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# 
# Find the sum of all the multiples of 3 or 5 below 1000.
#
# Solution = 233168
#


def main

  sum = 0

  (0..999).each do |i|
    sum += check(i)
  end

  puts "Total - O(n) #{sum}"

  # Needed to refresh following: https://en.wikipedia.org/wiki/Arithmetic_progression
  sum2 = sum_multiples(3, 1000) + sum_multiples(5, 1000) - sum_multiples(15, 1000)

  # Refreshed Big O too : http://stackoverflow.com/questions/487258/plain-english-explanation-of-big-o 
  puts "Total - O(1) #{sum2}"

end


def check(num)
  if num % 3 == 0 || num % 5 == 0
    return num
  else 
    return 0
  end
end

def sum_multiples(multiple, to)
    n = (to-1) / multiple
    n * (n+1) / 2 * multiple
end

main
