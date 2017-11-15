require 'my_transpose'

describe '#my_transpose' do
  it 'should transpose a square matrix' do
    array = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8]
    ]
    expect(my_transpose(array)).to eq(array.transpose)
  end
end
