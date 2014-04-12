# Fibonacci numbers WITH memoization.

# Initialize the memoization array.
@scratchpad = []
(1..40).each do |i|
  @scratchpad[i] = :notcalculated
end

# Calculate the nth Fibonacci number, f(n).
def fibo (n)
  if n <= 1
    return n
  elsif @scratchpad[n] != :notcalculated
    return @scratchpad[n]
  else
    @scratchpad[n] = fibo(n-1) + fibo(n-2)
    return @scratchpad[n]
  end
end

# Display the Fibonacci sequence.
(1..50).each do |number|
  puts "fibo(#{number}) = #{fibo(number)}"
end
