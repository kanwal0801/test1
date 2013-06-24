class AlbumsController < ApplicationController
   
    def index
      @album = current_user.albums.all

      respond_to do |format|
        format.html # index.html.erb
        format.json { render :json => @album }
        end
    end
    
    
    def new
      @album = Album.new
      
      respond_to do |format|
        format.html # index.html.erb
        format.json { render :json => @album }
        end
    end
    
    
    def create
      @album = current_user.albums.new(params[:album])

     respond_to do |format|
          if @album.save
            format.html { redirect_to @album, :notice => 'Album was successfully created.' }
            format.json { render :json => @album, :status => :created, :location => @album }
          else
            format.html { render :action => "new" }
            format.json { render :json => @album.errors, :status => :unprocessable_entity }
          end
        end
     end
  
 
    def show
      debugger
           @album = Album.find(params[:id])
      respond_to do |format|
         format.html 
         format.json { render :json => @album }
        end
    end
=begin  
    def show
      
      @album = Album.find(params[:id])

      respond_to do |format|
       format.html # show.html.erb
        format.json { render :json => @album }
       end
    end
=end  
    
    
    def edit
      @album = Album.find(params[:id])
    end
  
  
    def update
       @album = Album.find(params[:id])

       respond_to do |format|
           if @album.update_attributes(params[:album])
             format.html { redirect_to @album, :notice => 'Album was successfully updated.' }
             format.json { head :no_content }
           else
             format.html { render :action => "edit" }
             format.json { render :json => @album.errors, :status => :unprocessable_entity }
           end
          end
    end


     def destroy
          @album = Album.find(params[:id])
           @album.destroy

       respond_to do |format|
         format.html { redirect_to albums_url }
         format.json { head :no_content }
       end          
     end
    
end
