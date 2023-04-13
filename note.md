## Classroom class explanation

```
class Classroom
  attr_accessor :label
  attr_reader :students

  def initialize(label)
    @label = label
    @students = []
  end

  def add_student(student)
    @students.push(student)
    student.classroom = self
  end
end
```

In the `Classroom` class, `student.classroom = self` sets the `classroom` attribute of the `student object` to the `instance` of the `Classroom` class that is currently executing the `add_student` method.

The `self` keyword in `Ruby` refers to the `current instance` of the `class`. In this case, when the `add_student` method is called on an instance of the Classroom class, `self` refers to that `instance`.

Therefore, when a new student object is added to the `@students` array using the push method, the `classroom attribute` of the `student object` is set to the `current instance` of the Classroom class (i.e., self). This establishes a `bi-directional relationship` between the `Classroom` and `Student` classes, where each student object knows which classroom it belongs to.

Note that the `attr_accessor :lable` line creates a setter method for the lable attribute, allowing it to be modified using `classroom.lable = "new label"`. The `attr_reader :students` line creates a getter method for the students attribute, allowing it to be accessed using `classroom.students`.
