class SiteController < ApplicationController
  def search
    # @artist = Artist.find_by(params[:term])
    # @artists = Artist.where("name like '%#{params[:term]}%'")
    # unless params[:term].nil?
    #   @artists = Artist.where("name like ?", "%#{params[:term]}%")
    # end
    artists = Artist.where("name like ?", "%#{params[:term]}%")
    albums = Album.where("name like ?", "%#{params[:term]}%")
    labels = Label.where("name like ?", "%#{params[:term]}%")
    @results = artists + albums + labels
  end
end
