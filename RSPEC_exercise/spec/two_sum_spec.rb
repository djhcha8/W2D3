require "two_sum"

describe "#two_sum" do
  array = [-1, 0, 2, -2, 1]

  it "should return an array of all pairs of indices where those elements
    sum to zero" do
    expect(two_sum(array)).to eq([[0,4],[2,3]])
  end

  it "each of the pairs should be sorted from smaller to bigger index" do
    result = two_sum(array)
    expect(result).to eq(result.sort)
  end
end
