filename = 'day1.txt'

data = (File.read filename).split

freq = 0
data.each do |i|
  freq = freq + i.to_i
end

puts freq
