# Calculate the nth Fibonacci number, f(n).
def fibo (n)
    if n <= 1
      return n
    else
      value = fibo(n-1) + fibo(n-2)
      return value
    end
  end
  
  # Display the Fibonacci sequence.
  (1..40).each do |number|
    puts "fibo(#{number}) = #{fibo(number)}"
  end