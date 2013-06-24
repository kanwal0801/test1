class PhotosController < ApplicationController

    def create
    @album = Album.find(params[:album_id])
    @photo = @album.photos.create(params[:photo])
    redirect_to album_path(@album)
  end


    def show
    @photo = Photo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @photo }
    end
  end
          def index
        if params[:tag]
          @photos=Photo.tagged_with(params[:tag])
           respond_to do |format|
         format.html 
     end
 end
 end
end
