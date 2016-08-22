class GalleriesController < ApplicationController
  def url_with_protocol(url)
    /^http/i.match(url) ? url : "http://#{url}"
  end

  def index
    @galleries = Gallery.all
    @hash = Gmaps4rails.build_markers(@galleries) do |gallery, marker|
      gallery_path = view_context.link_to gallery.name, gallery_path(gallery)
      marker.lat gallery.latitude
      marker.lng gallery.longitude
      marker.infowindow "<b>#{gallery_path}</b>" + "<br>" + gallery.address + "<br>" + "<em>" + gallery.medium + "</em>" + "<br>" + "<a href='" + url_with_protocol(gallery.website) + "'target='_blank'>" + gallery.website + "</a>"
end
  end

  def show
    @gallery = Gallery.find(params[:id])
  end
end
