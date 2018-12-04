require 'pp'

filename = 'day3.txt'

data = (File.readlines filename)
#data = ['#1 @ 1,3: 4x4','#2 @ 3,1: 4x4','#3 @ 5,5: 2x2']

# Determine dimensions of 2-dimensional array
mX = 0
mY = 0
data.each do |item|
  a = item.chomp.split(/[#x@,:]/).map{ |n| n.to_i }
  x = a[2]+a[4]-1
  y = a[3]+a[5]-1
  if x > mX
    mX = x
  end
  if y > mY
    mY = y
  end
end
# Create 2-dimensional array filled with zeros
grid = Array.new(mX+2) { Array.new(mY+2, 0) }
# Fill array with given data
data.each do |item|
  a = item.chomp.split(/[#x@,:]/).map{ |n| n.to_i }
  i = a[2]
  while i < a[2]+a[4]
    j = a[3]
    while j < a[3]+a[5]
      if grid[i][j]==0
        grid[i][j] = 1
      elsif grid[i][j]==1
        grid[i][j] = 2
      end
      j = j + 1
    end
    i = i + 1
  end

end

#pp grid

# add all 2's - overlapping cells
# calculates area*2
area = 0
grid.each do |sub|
  sub.each do |int|
    if int == 2
      area = area + int
    end
  end
end

puts area/2

# Fill array with given data
data.each do |item|
  a = item.chomp.split(/[#x@,:]/).map{ |n| n.to_i }
  intact = true
  i = a[2]
  while i < a[2]+a[4]
    j = a[3]
    while j < a[3]+a[5]
      if grid[i][j]==2
        intact = false
      end
      j = j + 1
    end
    i = i + 1
  end
  if intact
    puts a[1]
  end
end
