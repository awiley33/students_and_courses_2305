require 'rspec'
require './lib/course'
require './lib/student'
require './gradebook'

RSpec.describe Gradebook do
  it "exists and has readable attributes" do
    gradebook = Gradebook.new("Ms. Wiley")

    expect(gradebook).to be_a Gradebook
  end

end
