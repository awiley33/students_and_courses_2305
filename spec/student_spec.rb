require 'rspec'
require './lib/student'

RSpec.describe Student do
  it "exists and has readable attributes" do
    student = Student.new({name: "Morgan", age: 21})

    expect(student).to be_a Student
    expect(student.name).to eq "Morgan"
    expect(student.age).to eq 21
    expect(student.scores).to eq []
  end
end