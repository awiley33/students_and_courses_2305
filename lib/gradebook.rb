class Gradebook
  attr_reader :instructor
              :courses
  
  def initialize(instructor)
    @instructor = instructor
    @courses = []
    @students = []
  end
  
end
