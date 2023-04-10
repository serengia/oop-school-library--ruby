class Person
  attr_writer :pin
  attr_accessor :name, :age

  def initialize(age, name = "Unknown", parent_permission = true)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    (age >= 18 || parent_permission) ? true : false
  end

  private

  def is_of_age?
    age >= 18
  end
end
