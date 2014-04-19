# Fibonacci numbers WITH memoization.
# Created by Jack Watson-Hamblin https://gist.github.com/FluffyJack/11081403
# Fast and memory efficient fib calculation based off Ray Hightower's memoization method but with better memory usage 
 
# Initialize the memoization hash.
@scratchpad = {}
@max_fibo_size = 1_000_000_000_000
 
# Calculate the nth Fibonacci number, f(n).
def fibo (n)
  val = if n <= 1
    n
  elsif @scratchpad[n] != nil
    @scratchpad[n]
  else
    @scratchpad[n] = fibo(n-1) + fibo(n-2)
  end
 
  val
end
 
start = last_time = Time.now
puts "%-13s | %-20s | %21s | %21s" % ['fib(n)', 'fib(n) length', '"lap" time', 'total time']
 
# Display the Fibonacci sequence.
(1..@max_fibo_size).each do |number|
  result = fibo(number)
  if number % 100_000 == 0
    puts "%-13d | %-20d | %21.10f | %21.10f" % [number, result.to_s.length, Time.now - last_time, Time.now - start]
    last_time = Time.now
  end
  
  # memory cleaning
  clean_count = 1000
  if number % (clean_count || 50) == 0
    @scratchpad.delete_if do |k, v|
      k < (number - 10)
    end
 
    clean_count -= 100
 
    GC.start
  end
end
