require_relative 'code.rb'
require 'rspec'
RSpec.describe "duplicateCounter" do
  it 'for a given input it give the correct output' do
    example = [1,1,1,2,2,2,3,5]

    expect(duplicate_counter(example)).to eq(4)
  end

  it "handles empty array properly" do
    expect(duplicate_counter([])).to eq(0)
  end

end
