
describe "Range objects" do

  it "look funny" do

    (1..3).should eq Range.new(1,3)

  end

  it "describe a sequential set" do
    (1..3).should include(2)
  end
  it "handle string ranges too" do

    ('a'..'z').count.should eq 26

  end

  it "uses three dots to exclude the final value" do

    # useful when using both 1 and 0 based indexes
    (1..2).count.should eq (1...3).count

  end

  it "get #each method from the Enumerable class" do

    (1..3).should respond_to(:each)

  end

  it "get #map method from the Enumerable class" do

    ('a'..'d').map{|c| c.upcase }.to_a.should eq ['A','B','C','D']

  end


end
