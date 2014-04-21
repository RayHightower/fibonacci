class RawFibo
  def self.calculate(n)
    if n <= 1
      return n
    else
      value = calculate(n-1) + calculate(n-2)
      return value
    end
  end
end
