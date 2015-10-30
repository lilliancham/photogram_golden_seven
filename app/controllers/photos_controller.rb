class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo = Photo.find_by({ :id => params["id"]})
    render("/photos/show.html.erb")
  end

  def new_form
  end

  def create_row
      p = Photo.new
      p.caption = params[:the_caption]
      p.source = params[:the_source]
      p.save

      redirect_to("http://localhost:3000/photos")
  end

  def destroy
    i = Photo.find_by({ :id => params[:id]})
    i.destroy
    redirect_to("http://localhost:3000/photos")
  end

  def edit_form
    @photo = Photo.find_by({:id => params[:id]})
  end

  def update_row
    photo = Photo.find_by({:id => params[:id]})
    photo.caption = params[:the_caption]
    photo.source = params[:the_source]
    photo.save
    redirect_to("http://localhost:3000/photos/#{photo.id}")
  end


end
