def fib (n)
  if n <= 1
    return n
  else
    value = fib(n-1) + fib(n-2)
    return value
  end
end

def phi(n)
  value = fib(n).to_f/fib(n-1)
  return value
end

(0..20).each do |number|
  puts "fib(#{number}) = #{fib(number)}, phi = #{phi(number)}"
end
