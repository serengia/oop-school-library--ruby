require "./nameable"

class Person < Nameable
  attr_writer :id
  attr_accessor :name, :age

  # rubocop:disable Style/OptionalBooleanParameter
  def initialize(age, name = "Unknown", parent_permission = true)
    # rubocop:enable Style/OptionalBooleanParameter
    super()
    @id = rand(1..10_000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    age >= 18 || @parent_permission
  end

  def correct_name
    name
  end

  private

  def of_age?
    age >= 18
  end
end
