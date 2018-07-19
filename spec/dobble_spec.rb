require "spec_helper"

RSpec.describe Dobble do
  include Dobble
  #it "has a version number" do
  #  expect(Dobble::VERSION).not_to be nil
  #end

  it "does not change already normalized input" do
    example = "abcd efg"
    expect(normalize(example)).to eq(example)
  end

  it "normalizes input" do
    test_string = " One Individual™'s Journey` : ~Mountain,  river. -hill & valley ."
    expected_normalized = "one individuals journey mountain river hill valley"
    puts expected_normalized
    expect(normalize(test_string)).to eq(expected_normalized)
  end
  it "compares two strings after being normalized" do
    test_string1 = "one SeaSon after  another-"
    test_string2 = "One season  after ~another"
    expect(compare(test_string1, test_string2)).to eq(true)
  end
end
