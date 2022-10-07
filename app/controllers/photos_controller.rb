class PhotosController < ApplicationController
  def create
    @album = Album.find(params[:album_id])
    @photo = @album.photos.create(photo_params)
    
    if @photo.save
      redirect_to album_path(@album)
    else
      render :new , status: :unprocessable_entity
    end
  end

  private 

  def photo_params 

      params.require(:photo).permit(:album_id,images: [])

  end
end
