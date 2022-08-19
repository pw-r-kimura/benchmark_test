require 'benchmark'

n = 100000000
Benchmark.bm(7) do |x|
  x.report("double:")   { for i in 1..n; a =  "I like to do it"; end }
  x.report("single:")   { for i in 1..n; a =  'I like to do it'; end }
end
