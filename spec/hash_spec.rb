
describe Hash do
  
  context "creation" do
    
    #
    # How to create an Hash
    #
    it "Hash" do
      my_Hash = Hash.new
      my_Hash.should be_kind_of(Hash)
      my_Hash.should be_empty
    end
    
    #
    # The quicker and often used method
    # to represent an Hash
    #
    it "{}" do
      {}.should be_kind_of(Hash)
      {}.should be_empty
    end
    
    it "can be created with elements within it" do
      
      { "abc" => 1, :def => 2 }.length.should eq 2
      
    end
    
    it "can be created with different classes of keys and values" do
      
      my_hash = { "a" => "b", :c => :d, "e" => 1, :f => 2 }
      my_hash.length.should eq 4
      
    end
    
    it "can be created specially for Strings" do
      
      %w[ one two three ].length.should eq 3
      
    end
    
  end
  
  #
  # When you store an item in a hash you specify a value that 
  # is the key to that value.
  #
  context "adding an item" do
    

    # NOTE: normally when you test you want to test one thing; I am being lazy
    # here to ensure you see all the possible operations
    it "should set the value, have keys, have values, and have the proper length" do
      
      # create
      my_hash = {}
  
      # set the key :name to the value 'Erik'
      my_hash[:name] = 'Erik'

      # testing if the key :name has the value 'Erik'
      my_hash[:name].should eq 'Erik'

      # keys will give you an array or keys
      my_hash.keys.should eq [ :name ]

      # values will give you an array of values
      my_hash.values.should eq [ 'Erik' ]

      # there should be one key-value pair
      my_hash.length.should eq 1

    end
    
  end

  context "changing an item" do
  
    it "should change the value" do

      # you can also create hashes with data in them to save space
      favorites = { :animal => 'giraffe', :color => 'blue' }

      favorites[:animal].should eq 'giraffe'

      # Now I will change my favorite animal

      favorites[:animal] = 'honey badger'

      favorites[:animal].should eq 'honey badger'

    end
  
  end
  
  #
  # When you delete an item in a hash you need to specify the key
  #
  context "deleting an item" do
    
    # NOTE: normally when you test you want to test one thing; I am being lazy
    # here to ensure you see all the possible operations
    it "should remove the item from the hash" do
      
      my_hash = {}
  
      my_hash['status'] = 'ONLINE'
      my_hash['start_time'] = Time.now

      # verify that we set up everything
      my_hash['status'].should eq 'ONLINE'
      my_hash.has_key?('start_time')
      my_hash['start_time'].should be_kind_of(Time)
      my_hash.length.should eq 2

      # now remove an element
      deleted_status = my_hash.delete('status')

      # when you call delete the result should return the value that you deleted
      deleted_status.should eq 'ONLINE'

      # Our hash should be smaller
      my_hash.length.should eq 1

    end
    
  end
  
  context "keys" do
    
    it "should return an array of all the keys" do
      
      favorites = { :animal => 'giraffe', :color => 'blue' }
      
      favorites.keys.length.should eq 2
      favorites.keys.first.should eq :animal
      favorites.keys.last.should eq :color
      
    end
    
  end
  
  context "values" do
    
    it "should return an array of all the values" do
      
      favorites = { :animal => 'giraffe', :color => 'blue' }
      
      favorites.values.length.should eq 2
      favorites.values.first.should eq 'giraffe'
      favorites.values.last.should eq 'blue'
      
    end
    
  end

end

describe "Failing Specs" do
  
  # To solve these specs make the changes to the Hash returned by the favorites
  # function/method. Add or change any keys or values to make all of the examples
  # pass.
  def favorites
    { :animal => 'giraffe', 
      :color => 'blue', 
      :drink => 'bloody mary', 
      :food => 'steak' }
  end
  
  it "favorites should return the correct value for the key" do
    favorites[:animal].should eq 'tiger'
  end
  
  it "season should be in the list of favorites" do
    favorites.has_key?(:season).should be_true
  end
  
  it "favorite season should be fall" do
    favorites[:season].should eq 'fall'
  end
  
  it "one of the favorites values should be green" do
    favorites.values.should include 'green'
  end
  
end