def my_transpose(array)
  result = []

  array.each_index do |i|
    row = []
    array.each_index do |j|
      row << array[j][i]
    end
    result << row
  end

  result
end
