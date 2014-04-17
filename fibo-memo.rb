# Fibonacci numbers WITH memoization.

# Initialize the memoization array.
@fibos = Array.new

# Calculate the nth Fibonacci number, f(n).
def fibo (n)
  if n <= 1
    n
  else
    @fibos[n] ||= (fibo(n-1) + fibo(n-2))
  end
end

# Display the Fibonacci sequence.
(1..50).each do |number|
  puts "fibo(#{number}) = #{fibo(number)}"
end
