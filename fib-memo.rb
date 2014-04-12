# Fibonacci numbers WITH memoization.

# Initialize the memoization array.
@scratchpad = Array.new
(1..40).each do |i|
  @scratchpad[i] = :notcalculated
end

# Calculate the nth Fibonacci number, f(n).
def fib (n)
  if n <= 1
    return n
  elsif @scratchpad[n] != :notcalculated
    return @scratchpad[n]
  else
    @scratchpad[n] = fib(n-1) + fib(n-2)
    return @scratchpad[n]
  end
end

# Display the Fibonacci sequence.
(1..40).each do |number|
  puts "fib(#{number}) = #{fib(number)}"
end
