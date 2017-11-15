require 'remove_dups'

describe "#remove_dups" do
  array = [4, 4, 5, 1, 5, 5]

  it "should remove duplicates from an array" do
    expect(remove_dups(array)).to eq(array.uniq)
  end

  it "should return the result in the order they appear" do
    result = remove_dups(array)
    unique_res = array.uniq

    res_indices = result.map do |el|
      array.index(el)
    end

    arr_indices = unique_res.map do |el|
      array.index(el)
    end

    expect(res_indices).to eq(arr_indices)
  end

end
