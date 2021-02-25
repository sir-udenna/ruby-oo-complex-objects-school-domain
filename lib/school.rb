# code here!
require 'pry'
class School
    def initialize(name)
        @name = name
        @roster = Hash.new
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        @roster[grade] ||= []
        @roster[grade] << "#{name}"
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        # binding.pry
        @roster.sort

        @roster.each do |grade, students|
            @roster[grade].sort
        end
    end
end
