def two_sum(array)
  result = []
  array.each_with_index do |el, i|
    (i+1...array.length).each do |i2|
      result << [i, i2] if array[i] + array[i2] == 0
    end
  end
  result
end
