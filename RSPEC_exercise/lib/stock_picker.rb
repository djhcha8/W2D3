def stock_picker(stock_prices)
  largest_diff = 0
  days = []

  stock_prices.each_index do |idx1|
    ((idx1 + 1)...stock_prices.length).each do |idx2|
      current_diff = stock_prices[idx2] - stock_prices[idx1]
      if current_diff  > largest_diff
        largest_diff = current_diff
        days = [idx1, idx2]
      end
    end
  end
  
  days
end
