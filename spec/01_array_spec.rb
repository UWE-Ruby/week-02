
describe Array do
  
  describe "creation" do
    
    #
    # How to create an Array
    #
    it "Array" do
      my_array = Array.new
      my_array.should be_kind_of(Array)
      my_array.should be_empty
    end
    
    #
    # The quicker and often used method
    # to represent an Array
    #
    it "[]" do
      [].should be_kind_of(Array)
      [].should be_empty
    end
    
    it "can be created with elements within it" do
      
      [ 1, 2, 3, 4, 5 ].length.should eq 5
      
    end
    
    it "can be created with different classes of items" do
      
      my_array = [ 1, "two", :three ]
      my_array.length.should eq 3
      
    end
    
    it "can be created specially for Strings" do
      
      %w[ one two three ].length.should eq 3
      
    end
    
  end
  
  describe "adding an item" do
    
    it "add" do
      my_array = []
      my_array.push(1)
      my_array.should == [1]
    end
    
    it "<<" do
      my_array = []
      my_array << 1
      my_array.should == [1]
    end
    
  end
  
  describe "accessing elements" do
    
    #
    # This is a method that I have defined that returns an Array
    # that will be used in all the following examples
    #
    def test_array
      return [ :larry, :curly, :moe ]
    end
    
    #
    # The size or number of elements within the Array
    #
    it "length" do
      test_array.length.should == 3
    end
    
    #
    # Ruby provides a method to access the first element with
    # a human-readable name.
    #
    it "first" do
      test_array.first.should == :larry
    end
    
    #
    # This is another way to access the first element. Note
    # that counting starts at 0 and not 1. This is most every
    # language has done it forever and Ruby carries on the 
    # tradition
    #
    it "[0]" do
      test_array[0].should == test_array.first
    end
    
    #
    # Accessing other elements are as you would imagine
    #
    it "[1]" do
      test_array[1].should == :curly
    end
    
    #
    # Like first, Ruby array's provide a last
    #
    it "last" do
      test_array.last.should == :moe
    end
    
    #
    # While you can count to the last element or use last,
    # you can also use negative numbers and they will start
    # counting back from the end.
    #
    #
    it "[-1]" do
      test_array[-1].should == test_array.last
    end
    
    
  end
  
  describe "removing an item" do
    
    #
    # Deleting an item happens immediately and is removed from
    # the Array
    #
    it "delete" do
      my_array = [ :coffee, :bacon, :bullets ]
      my_array.delete(:bacon)
      my_array.should == [ :coffee, :bullets ]
    end
    
    #
    # You can even subtract an Array from another
    # Array.  All the elements that are equal will
    # be removed.
    #
    it " - (minus)" do
      my_array = [ :coffee, :bacon, :bullets ]
      my_array = my_array - [ :bacon ]
      my_array.should == [ :coffee, :bullets ]
    end
    
  end
  
end


describe "Failing Specs" do
  
  it "should report the correct length" do

    people = [ :ian, :sung, :john, :chase, :aaron, :james ]
    people.should == 4

  end

  it "should have all the right people" do

    people = [ :colin, :greg, :paul, :jesse ]
    people.should == [ :colin, :greg, :paul, :jesse, :john, :andrew ]

  end
  
  it "should include a particular student" do
    
    [ :john, :colby, :seung, :christopher, :andrew ].should include :"shang-chih"
    
  end

  it "the method 'first' should equal the :third value" do

    order_matters = [ :third, :first, :second ]
    order_matters.first.should == :first

  end

  it "the method 'last' should equal the :second value" do

    order_matters = [ :third, :first, :second ]
    order_matters.last.should == :third

  end

  #
  # Both of these expectations are incorrect here.
  # Remember that order of the elements in the array matter
  #
  it "adding an element" do

    owned_things = [ 'movies', 'music', 'games' ]
    owned_things << 'car'

    owned_things.length.should == 3
    owned_things.should == [ 'music', 'games', 'movies', 'car' ]

  end

  it "deleting elements" do

    vices = [ 'drinking', 'cursing', 'nail-biting' ]
    vices.delete('nail-biting')

    vices.length.should == 3
    owned_things.should == [ 'cursing', 'drinking' ]

  end
  
end