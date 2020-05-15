class StudentsController < ApplicationController
    def new
        @dojo = Dojo.find(params[:dojo_id])
        @dojos = Dojo.all
    end
    
    def create
        @student = Student.new(student_params)
        @student.save
        @dojo = Dojo.find(params[:dojo_id])
        redirect_to "/dojos/#{@dojo.id}"
        # @dojo = Dojo.find(params[:dojo_id])
        # @student = Student.create(student_params)
        # puts @dojo.id
        # puts "this is the #{@student}"
        # if @student.save
        #     flash[:success] = "You have successfully added a student to #{@dojo.branch}!"
        #     url = "/dojos/#{@dojo.id}"
        #     redirect_to url
        # else
        #     flash[:errors] = @student.errors.full_messages
        #     redirect_to :back
        # end
    end

    def show
        # @dojo = Dojo.find(params[:id])
        # @students = @dojo.students
        # puts @students.errors.full_messages
        @student = Student.find(params[:id])
        @dojo = Dojo.find(params[:dojo_id])
        @students = @dojo.students.where(created_at:@student.created_at.beginning_of_day..@student.created_at.end_of_day).where.not(id:params[:id]) #gives all the cohort mates if they were made on the same day^^^
    end
  
    def edit
        @student = Student.find(params[:id])
        @dojos = Dojo.all
        @dojo = Dojo.find(params[:dojo_id])
        p @dojo
    end

    def update
    student = Student.find(params[:id])

    if student.update(student_params)
        flash[:success] = "You have successfully updated a Dojo!"
        url = "/dojos/#{student.dojo_id}/students/#{student.id}"
        redirect_to url
    else
        flash[:errors] = student.errors.full_messages
        redirect_to :back 
    end
    end

    def delete
        student = Student.find(params[:id])
  	    student.destroy
  	    redirect_to :back
    end

    
private
    def student_params
        params.require(:student).permit(:first_name, :last_name, :email, :dojo_id)
    end
end
