# Fibonacci numbers WITH memoization.

# Initialize the memoization array.
@fib_array = Array.new
(1..40).each do |i|
  @fib_array[i] = :notcalculated
end

# Calculate the nth Fibonacci number, f(n).
def fib (n)
  if n <= 1
    return n
  elsif @fib_array[n] != :notcalculated
    return @fib_array[n]
  else
    @fib_array[n] = fib(n-1) + fib(n-2)
    return @fib_array[n]
  end
end

# Display the Fibonacci sequence.
(1..40).each do |number|
  puts "fib(#{number}) = #{fib(number)}"
end
