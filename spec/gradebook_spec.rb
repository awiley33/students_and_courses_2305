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
    expect(@gradebook).to be_a Gradebook
  end

  it "starts without courses and can add them" do
    expect(@gradebook.courses).to eq []

    @gradebook.add_course(@course1)
    @gradebook.add_course(@course2)
    
    expect(@gradebook.courses).to eq [@course1, @course2]
  end
  
  it "can list the students in its courses" do
    @gradebook.add_course(@course1)
    @gradebook.add_course(@course2)
    @course1.enroll(@student1)
    @course1.enroll(@student2)
    @course2.enroll(@student3)

    expect(@gradebook.list_all_students).to eq({
      @course1: [@student1, @student2], @course2: [@student3]
    })
  end

end
