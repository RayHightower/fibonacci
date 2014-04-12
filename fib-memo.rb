# Calculating Fibonacci numbers WITH memoization.

# Initialize the memoization array.
@fib_array = Array.new
(1..20).each do |i|
  @fib_array[i] = -1
end


def fib (n)
  if n <= 1
    return n
  elsif @fib_array[n] != -1
    return @fib_array[n]
  else
    @fib_array[n] = fib(n-1) + fib(n-2)
    return @fib_array[n]
  end
end

def phi(n)
  value = fib(n).to_f/fib(n-1)
  return value
end

(1..20).each do |number|
  puts "fib(#{number}) = #{fib(number)}, phi = #{phi(number)}"
end
