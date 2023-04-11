require './person'

class Student < Person
  def initialize(age, name, parent_permission, classroom)
    super(age, name, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end

student_one = Student.new(31, 'Jame', false, 21)
puts student_one.can_use_services?
