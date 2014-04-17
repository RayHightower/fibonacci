# Fibonacci numbers WITH memoization.

# Initialize the memoization array.
@max_fibo_size = 50
@scratchpad = Array.new @max_fibo_size + 1, :notcalculated
@scratchpad[0] = nil

# Calculate the nth Fibonacci number, f(n).
def fibo (n)
  return "n must be #{@max_fibo_size} or less."  if n > @max_fibo_size
  return n  if n <= 1

  if @scratchpad[n] == :notcalculated
    @scratchpad[n] = fibo(n-1) + fibo(n-2)
  end

  return @scratchpad[n]
end

# Display the Fibonacci sequence.
(1..50).each do |number|
  puts "fibo(#{number}) = #{fibo(number)}"
end

