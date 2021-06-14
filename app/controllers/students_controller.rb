class StudentsController < ApplicationController
    def index
        students = Student.all 
        render json: students
    end
    def grades
        students = Student.all
        grade = students.sort_by { |student| student.grade }
        grade = grade.reverse
        render json: grade
    end
end
