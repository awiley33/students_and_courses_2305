require 'rspec'
require './lib/course'
require './lib/student'

RSpec.describe Course do 
  before do
    @course = Course.new("Calculus", 2)  
    @student1 = Student.new({name: "Morgan", age: 21})
    @student2 = Student.new({name: "Jordan", age: 29})    
  end

  it "exists and has readable attributes" do
    expect(@course.name).to eq "Calculus"
    expect(@course.capacity).to eq 2
    expect(@course.students).to eq []
  end

  it "can add students and check if course is full" do
    expect(@course.full?).to eq false

    @course.enroll(@student1)
    @course.enroll(@student2)

    expect(@course.students).to eq [@student1, @student2]
    expect(@course.full?).to eq true
  end
end