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

  def self.max_fibo_size
    100
  end

  def self.scratchpad
    @scratchpad ||= build_scratchpad
  end

  def self.build_scratchpad
    arry = (1..max_fibo_size).map { |i| :notcalculated }

    arry.unshift nil
  end
end
