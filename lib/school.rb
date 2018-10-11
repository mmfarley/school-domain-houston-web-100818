require 'pry'
class School

    attr_accessor :roster, :name

    def initialize(name)
        @name = name
        @roster = {}
    end
    
    def add_student(student_name, student_grade)
        if self.roster[student_grade] == nil
            self.roster[student_grade] = []
            self.roster[student_grade] << student_name
        else
            self.roster[student_grade] << student_name
        end
    end

    def grade(level)
        self.roster[level]
    end

    def sort
        sorted = {}
        self.roster.each do |grade, students|
            sorted[grade] = students.sort
        end
        sorted
    end
    #binding.pry
end