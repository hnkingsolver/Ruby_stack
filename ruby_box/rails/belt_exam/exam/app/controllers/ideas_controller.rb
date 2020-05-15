class IdeasController < ApplicationController

    
    def index
        @ideas = Idea.all
    end
    
    def show
    @idea =  Idea.find(params[:idea_id])
    @users = User.all

    end

    def create
        @idea = Idea.create(idea_params)
        if @idea.valid?
            redirect_to "/ideas/#{current_user.id}"
        else
        flash[:errors] = @idea.errors.full_messages
        redirect_to "/ideas/#{current_user.id}"
        end
    end

    def delete
        Idea.find(params[:idea_id]).destroy
        redirect_to "/ideas/#{current_user.id}"
    end

    private
    def idea_params
        params.require(:idea).permit(:message).merge(user:current_user)
    end
end
