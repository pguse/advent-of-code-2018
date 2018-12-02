def compare s1, s2
  num_char = s1.length
  i = 0
  count = 0
  while i < num_char
    if s1[i] != s2[i]
      count = count + 1
    end
    i = i + 1
  end
  return count
end

def common s1, s2
  num_char = s1.length
  i = 0
  count = 0
  s = ""
  while i < num_char
    if s1[i] == s2[i]
      s = s + s1[i]
    end
    i = i + 1
  end
  return s
end

filename = 'day2.txt'
data = (File.read filename).split

len_data = data.length

i = 0
while i < len_data - 1
  j = i + 1
  while j < len_data
    if compare(data[i], data[j]) == 1
      puts common(data[i], data[j])
    end
    j = j + 1
  end
  i = i + 1
end
