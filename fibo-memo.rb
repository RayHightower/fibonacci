# Fibonacci numbers WITHOUT memoization.

# Calculate the nth Fibonacci number, f(n).
def fibo (n)
  @fibo_cache ||= {}
  @fibo_cache.fetch(n) do
    if n <= 1
      value = n
    else
      value = fibo(n-1) + fibo(n-2)
    end

    @fibo_cache[n] = value
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
