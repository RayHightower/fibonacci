# Calculate the nth Fibonacci number, f(n). Using invariants
# Originally written by Manuel Vidaurre, https://gist.github.com/mvidaurre/11006570
def fibo_tr(n, acc1, acc2)
  if n == 0
    0
  elsif n < 2
    acc2
  else
    return fibo_tr(n - 1, acc2, acc2 + acc1)
  end
end
 
def fibo (n)
  fibo_tr(n, 0, 1)
end 
 
# Display the Fibonacci sequence.
(1..50).each do |number|
  puts "fibo(#{number}) = #{fibo(number)}"
end

# Display 50 Fibonacci numbers in a random sequence.
number_of_values = 50
puts "\nNow, display #{number_of_values} Fibonacci numbers in random sequence..."
number_of_values.times do
  number = (rand*number_of_values + 1).to_i
  puts "fibo(#{number}) = #{fibo(number)}"
end
