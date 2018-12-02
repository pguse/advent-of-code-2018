filename = 'day2.txt'

data = (File.read filename).split
#data = ['abcdef','bababc','abbcde','abcccd','aabcdd','abcdee','ababab']

alpha = 'abcdefghijklmnopqrstuvwxyz'
twoTimes = 0
threeTimes = 0

data.each do |id|
  three = false
  two = false
  alpha.each_char do |letter|
    if two && three
      break
    elsif id.count(letter) == 3 && !three
      threeTimes = threeTimes + 1
      three = true
    elsif id.count(letter) == 2 && !two
      twoTimes = twoTimes + 1
      two = true
    end
  end
end

puts twoTimes * threeTimes
