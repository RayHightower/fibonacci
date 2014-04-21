require 'benchmark'

require './fibo-raw'
require './fibo-memo'
require './fibo-tr'

max = 30

Benchmark.bmbm do |b|
  b.report('RawFibo') do
    (1..max).each do |n|
      RawFibo.calculate n
    end
  end

  b.report('MemoFibo') do
    (1..max).each do |n|
      MemoFibo.calculate n
    end
  end

  b.report('TailFibo') do
    (1..max).each do |n|
      TailFibo.calculate n
    end
  end
end
