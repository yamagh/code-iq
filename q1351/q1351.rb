require 'benchmark'
def cnt
(2..300).each do |x|
  (2..300).each do |y|
    (2..300).each do |z|
      puts "#{x} #{y} #{z} #{x*y*z}" if x*y*z <= 300
    end
  end
end
end
m = Benchmark.measure {cnt}
r = Benchmark.realtime {cnt}
puts Benchmark::CAPTION
puts m
puts r

# Case: 2..75
#user     system      total        real
#  0.070000   0.010000   0.080000 (  0.090559)
#  0.07767825200062362

# Case: 2..300
#user     system      total        real
#  2.990000   0.020000   3.010000 (  3.047404)
#  2.959170902000551


