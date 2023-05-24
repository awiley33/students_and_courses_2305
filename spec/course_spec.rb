require 'rspec'
require './lib/course'
require './lib/student'

RSpec.describe Course do 
  it "exists and has readable attributes" do
    course = Course.new("Calculus", 2)  

    expect(course.name).to eq "Calculus"
    expect(course.capacity).to eq 2
    expect(course.students).to eq []
  end

  # # it "can check if the course is full" do

  # end
end