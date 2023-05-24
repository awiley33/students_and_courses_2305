require 'rspec'
require './lib/course'
require './lib/student'
require './gradebook'

RSpec.describe Gradebook do
  before do
    @gradebook = Gradebook.new("Ms. Wiley")
    @course1 = Course.new("Calculus", 2)  
    @course2 = Course.new("Statistics", 3)
    @student1 = Student.new({name: "Morgan", age: 21})
    @student2 = Student.new({name: "Jordan", age: 29})    
    @student3 = Student.new({name: "Luca", age: 24})    
  end
  it "exists and has readable attributes" do
    expect(gradebook).to be_a Gradebook
  end

  it "starts without courses and can add them" do

  end

end
