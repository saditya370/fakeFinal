class DragController < ApplicationController


    def post
        @photo = Photo.find(drag_post_params[:id])
        @photo.insert_at(drag_post_params[:position].to_i + 1 )
    end 
    private

    def drag_post_params 
        params.require(:resource).permit(:id,:position,:image)
    end

end
