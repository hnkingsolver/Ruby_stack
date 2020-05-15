class DojosController < ApplicationController
    def index
        @dojos = Dojo.all
        @students = Student.all
    end

    def new
    end

    def create
        @dojo = Dojo.create(dojo_params)
        puts @dojo.errors.full_messages
        redirect_to '/dojos'
    end

    def show
        @dojo = Dojo.find(params[:id])
        # @students = Student.all
        @students = @dojo.students
    end

    def edit
        @dojo = Dojo.find(params[:id])
    end

    def update
        dojo = Dojo.find(params[:id])
        dojo.update(dojo_params)
        if dojo.valid?
            dojo.save
            redirect_to "/dojos"
        else
            flash[:errors] = dojo.errors.full_messages
            redirect_to "/dojos/#{params[:id]}/edit"
        end
    end

    def delete
        Dojo.find(params[:id]).destroy
        redirect_to '/dojos'
    end

    private #made this function private so it cannot be accessed anywhere but here.. can use it when we need to call params
    def dojo_params
        params.require(:dojo).permit(:branch, :street, :city, :state)
    end
end
