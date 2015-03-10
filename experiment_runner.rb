require_relative 'count_inversions'
require_relative 'count_inversions_quadratic'

def ms
  (Time.now.to_f * 1000.0).to_i
end

def rand_array(size)
  size.times.map { (rand * 10**5).to_i }
end

def duration_of
  init = ms
  yield
  final = ms
  elapsed = (final - init)
  puts "#{elapsed/1000.0} second(s) - #{elapsed} millisecond(s)"
end

arrays = [rand_array(1000), rand_array(2000), rand_array(4000), rand_array(8000), rand_array(16000)]

puts "quadratic inversions"
arrays.each do |array|
  duration_of { array.count_inversions_quadratic }
end
puts "Running time: 4.6567482e-05 * N^2.0042383 -> O(n^2)"

puts

puts "divide and conquer inversions"
arrays.each do |array|
  duration_of { array.count_inversions }
end
puts "Running time: 4.8741764e-03 * N^1.0159415 -> O(n log(n))"

