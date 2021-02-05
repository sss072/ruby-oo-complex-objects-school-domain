class School 
    attr_accessor :name, :roster 
    
    def initialize(name)
        @name = name 
        @roster = {}
        
    end 

    def add_student(student_name, grade)
        @roster[grade] ||= []
        @roster[grade] << student_name 
    end 

    def grade(grade_given)
        @roster[grade_given]
    end 

    def sort
        sorted = {}
        roster.each do |grade, students|
          sorted[grade] = students.sort
        end
        sorted
    end
end 
