class School
  attr_accessor :roster, :name, :length, :grade
  
  def initialize(name)
    @roster = {}
  end
  
  def add_student(student, grade)
    if @roster[grade]
      @roster[grade] << student
    else
    @roster[grade] = [student]
    end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.each do |key, value|
      key = value.sort
      binding.pry
    end
  end
end