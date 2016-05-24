max = 10
num1 = 0
num2 = 1
sum = 0
total = 0

# I am a brute!
# Even this can be written more efficient but look to the smart part ;)
while num2 <=4000000
  break if max == num2
  total = num1 + num2 
  sum += total if total.even?
  num1 = num2
  num2 = total
end

p "Bruteforce: " + sum.to_s

# doing it smart
# Faster then the previous one byt complexity is still the same: O(log(M)) and M is the limiit
# I'm not smart enough but it can be done in O(log(log(M)))
# Oh I had to research all this before being able to do it ;)
a, b, sum2 = 1, 2, 0
while b <= 4000000
  # Apply Fibonacci three times to get the next even number.
  a, b, sum2 = a + 2 * b, 2 * a + 3 * b, sum2 + b
end

p "Researched solution: " + sum2.to_s
