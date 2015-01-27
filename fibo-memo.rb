class MemoFibo
  def self.calculate (n)
    if n > max_fibo_size
      return "n must be #{max_fibo_size} or less."
    elsif n <= 1
      return n
    elsif scratchpad[n] != :notcalculated
      return scratchpad[n]
    else
      scratchpad[n] = calculate(n-1) + calculate(n-2)
      return scratchpad[n]
    end
  end

<<<<<<< HEAD
  def self.max_fibo_size
    100
  end

  def self.scratchpad
    @scratchpad ||= build_scratchpad
=======
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
>>>>>>> 3560858467d3e2bb7f5f9efceafa8dcd0ecdc52e
  end

  def self.build_scratchpad
    arry = (1..max_fibo_size).map { |i| :notcalculated }

    arry.unshift nil
  end
end
