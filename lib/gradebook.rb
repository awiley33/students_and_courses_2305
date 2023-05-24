class Gradebook
  attr_reader :instructor,
              :courses
  
  def initialize(instructor)
    @instructor = instructor
    @courses = []
  end

  def add_course(course)
    @courses << course
  end

  def list_all_students
    @courses.group_by {|course| , course.students}
      # course => course.students
    
  end
  
end
