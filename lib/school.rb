# code here!
class School
  attr_accessor :school, :roster
def initialize(school)
  @school = school
  @roster = {}
end
def add_student(student, grade)
  roster[grade] ||=[]
  roster[grade]<< student
end
def grade(num)
  roster.detect do |x,y|
    if x == num
      return y
    end
 end
end
def sort 
  new_roster = []
   roster.sort_by do |x,y|
     x.strip
   end
end

end