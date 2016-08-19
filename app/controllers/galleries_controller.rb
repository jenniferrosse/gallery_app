class GalleriesController < ApplicationController

  def index
    @galleries = Gallery.all
    @hash = Gmaps4rails.build_markers(@galleries) do |gallery, marker|
      marker.lat gallery.latitude
      marker.lng gallery.longitude
end
  end

  def show
    @gallery = Gallery.find(params[:id])
  end
end
