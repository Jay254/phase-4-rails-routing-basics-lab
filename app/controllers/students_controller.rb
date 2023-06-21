class StudentsController < ApplicationController
    # GET /students
    def index
        students = Student.all
        render json: students
    end

    # GET /students/grades
    def grades
        students = Student.order(grade: :desc)
        render json: students
    end

    # GET /students/highest_grade
    def highest_grade
        highest_grade = Student.order(grade: :desc).limit(1)
        render json: highest_grade[0]
    end
end
