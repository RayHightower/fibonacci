class TailFibo
  def self.calculate(n)
    fibo_tr(n, 0, 1)
  end

  def self.fibo_tr(n, acc1, acc2)
    if n == 0
      0
    elsif n < 2
      acc2
    else
      return fibo_tr(n - 1, acc2, acc2 + acc1)
    end
  end
end
