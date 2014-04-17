# Calculate the nth Fibonacci number, f(n). Using invariants
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
(1..40).each do |number|
  puts "fibo(#{number}) = #{fibo(number)}"
end
