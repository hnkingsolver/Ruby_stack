class LikesController < ApplicationController
    def create
        @likes = Like.create(like_params)
        if @likes
            redirect_to "/ideas/#{current_user.id}"
        else
            render json: @likes.errors
        end
    end
    
    
    private
    def like_params
        params.require(:like).permit(:idea_id,:user_id)
    end
end
