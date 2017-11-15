def remove_dups(array)
  result = []

  array.each do |el|
    result << el unless result.include?(el)
  end

  result
end
