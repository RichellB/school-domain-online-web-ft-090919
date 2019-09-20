# code here!
class School 
  
  attr_accessor :name, :roster
  
  def iniitialize(name)
    @name = name 
    @roster = {}
  end 
  
  def add_student(names, grade)
    roster[grade] ||= []
    roster[grade] << names
  end
  
  def grade(grades)
    roster[grades]
  end
  
  def sort
    sorted_list = {}
    roster.each do |grades, student_name|
      sorted_list[grades] = student_name.sort
    end 
    sorted_list
  end
end 
