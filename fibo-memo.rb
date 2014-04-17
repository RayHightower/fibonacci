# Fibonacci numbers WITH memoization.

# Initialize the memoization array.
@scratchpad = []
@max_fibo_size = 100
(1..@max_fibo_size).each do |i|
  @scratchpad[i] = :notcalculated
end

# Calculate the nth Fibonacci number, f(n).
def fibo (n)
  if n > @max_fibo_size
    return "n must be #{@max_fibo_size} or less."
  elsif n <= 1
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

# Display 50 Fibonacci numbers in a random sequence.
number_of_values = 100
puts "\nNow, display #{number_of_values} Fibonacci numbers in random sequence..."
number_of_values.times do
  number = (rand*number_of_values + 1).to_i
  puts "fibo(#{number}) = #{fibo(number)}"
end
