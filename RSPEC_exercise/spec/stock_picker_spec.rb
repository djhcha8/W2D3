require 'stock_picker'

describe "#stock_picker" do
  stock_prices = [25, 4, 40, 2, 50, 1, 45, 1, 1, 1, 1]

  it "should output the most profitable pair of days" do
    expect(stock_picker(stock_prices)).to eq([3, 4])
  end

  it "the purchase date should not be after the sell date" do
    result = stock_picker(stock_prices)
    expect(result).to eq(result.sort)
  end
end
