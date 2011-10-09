
describe "Numeric type" do

  context "Integer" do

    it "can only be a whole number -- no rounding" do

      (199 / 100).should eq 1

    end

    it "can return the #next value" do
      24.next.should eq 25
    end

    it "can define an iterator with #times" do

      counter = 0

      3.times do
        counter = counter + 1
      end

      counter.should eq 3

    end

    it "can define an iterator with #upto" do

      counter = 0

      2.upto(4) do |number|
        counter = counter + number
      end

      counter.should eq 9

    end

    it "has methods to evaluate if the number is odd or even" do

      odd_numbers = []

      1.upto(10) do |number|

        # replace 'true' with a method call on number that makes the expectation pass
        odd_numbers.push number if true

      end

      odd_numbers.should eq [1,3,5,7,9]

    end

  end

  context "Float" do

    it "supports decimal values" do

      (1.0 + 1.5).should eq 2.5

    end

    it "needs at least one number in a calculation to be a float in order to return a float" do

      # change as little as possible in this calculation to make the expectation pass
      result = (1 / 2)

      result.should eq 0.5

    end

  end




end
