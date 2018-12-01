filename = 'day1.txt'

data = (File.read filename).split
#data = ['+1', '-1']
#data = ['+3', '+3', '+4', '-2', '-4']
#data = ['-6', '+3', '+8', '+5', '-6']
#data = ['+7', '+7', '-2', '-7', '-4']

freq = 0
all_freq = [0]

repeat = false

while !repeat
  data.each do |i|
    freq = freq + i.to_i
    all_freq.push freq
    if all_freq.count(freq) > 1
      repeat = true
      puts freq
      break
    end
  end
end
