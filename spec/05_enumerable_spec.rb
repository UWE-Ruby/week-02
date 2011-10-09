#
# Arrays include the Enumerable functionality. What follows are a few examples
# that employ this functionality.
# 
describe "Enumerable" do
  
  def students
    %w[ David Saurabh Sage Thomas Daniel Catherine Joel ]
  end
  
  #
  # @see http://rubydoc.info/stdlib/core/1.9.2/Array#each-instance_method
  # 
  context "#each" do
    
    # This test employs an RSpec expectation to ensure the output is called
    # the correct number of times.
    # 
    # @see https://www.relishapp.com/rspec/rspec-mocks/docs/message-expectations
    it "should move through each element of the array using 'do ... end' notation" do
      
      should_receive(:puts).exactly( students.length ).times
      
      students.each do |student|
        puts student
      end
      
    end
    
    it "should move through each element of the array using '{ }' notation" do
      
      should_receive(:puts).exactly( students.length ).times
      
      students.each {|student| puts student }
      
    end
    
  end
  
  # 
  # @see http://rubydoc.info/stdlib/core/1.9.2/Array#map-instance_method
  # 
  context "#map" do
    
    
    it "should return a new array with each element changed" do
      
      formatted_list = students.map {|student| student.downcase }
      
      formatted_list.should eq %w[ david saurabh sage thomas daniel catherine joel ]
      
    end
    
  end
  
  context "Failing Specs" do
    
    
    context "#map" do
      
      it "should return a new array with each element changed" do

        formatted_list = students.map do |student| 
          student.upcase
          puts student.upcase
        end
        
        formatted_list.should eq %w[ DAVID SAURABH SAGE THOMAS DANIEL CATHERINE JOEL ]

      end
      
      
    end
    
  end
  
end