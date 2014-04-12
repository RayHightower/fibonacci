# Calculating Fibonacci numbers WITH memoization.
@fib_array[1..100] = -1

def fib (n)
  if n <= 1
    return n
  elsif @fib_array[n] != -1
    return @fib_array[n]
  else
    @fib_array[n] = fib(n-1) + fib(n-2)
    return value
  end
end

def phi(n)
  value = fib(n).to_f/fib(n-1)
  return value
end

(1..20).each do |number|
  puts "fib(#{number}) = #{fib(number)}, phi = #{phi(number)}"
end
