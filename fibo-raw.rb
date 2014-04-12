# Fibonacci numbers WITHOUT memoization.

# Calculate the nth Fibonacci number, f(n).
def fib (n)
  if n <= 1
    return n
  else
    value = fib(n-1) + fib(n-2)
    return value
  end
end

# Display the Fibonacci sequence.
(1..40).each do |number|
  puts "fib(#{number}) = #{fib(number)}"
end
