# Shorter implementation with cool Rubyisms by Oleh Khomey (Varyform, https://gist.github.com/varyform/11013785)
# Fibonacci numbers WITH memoization.
 
# Initialize the memoization array.
@scratchpad = []
 
# Calculate the nth Fibonacci number, f(n).
def fibo(n)
  if n <= 1
    n
  else
    @scratchpad[n] ||= fibo(n-1) + fibo(n-2)
  end
end
 
# Display the Fibonacci sequence.
1.upto 100 do |number|
  puts "fibo(#{number}) = #{fibo(number)}"
end

